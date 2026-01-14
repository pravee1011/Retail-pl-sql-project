--pkg
CREATE OR REPLACE PACKAGE retail_pkg AS
  -- Procedures
  PROCEDURE add_product(p_name VARCHAR2, p_category VARCHAR2, p_price NUMBER, p_stock NUMBER);
  PROCEDURE add_customer(p_name VARCHAR2, p_email VARCHAR2, p_phone VARCHAR2);
  PROCEDURE record_sale(p_customer_id NUMBER, p_product_id NUMBER, p_quantity NUMBER);

  -- Functions
  FUNCTION calculate_bill(p_product_id NUMBER, p_quantity NUMBER) RETURN NUMBER;
  FUNCTION get_stock(p_product_id NUMBER) RETURN NUMBER;

  -- Bulk Collect Procedure
  PROCEDURE sales_report;

  -- Collections & Records
  PROCEDURE process_bulk_sales(p_sales IN SYS.ODCIVARCHAR2LIST);
END retail_pkg;
/

--pkg body
CREATE OR REPLACE PACKAGE BODY retail_pkg AS

  -- Add Product
  PROCEDURE add_product(p_name VARCHAR2, p_category VARCHAR2, p_price NUMBER, p_stock NUMBER) IS
  BEGIN
    INSERT INTO products(product_id, product_name, category, price, stock_quantity)
    VALUES (products_seq.NEXTVAL, p_name, p_category, p_price, p_stock);
  END;

  -- Add Customer
  PROCEDURE add_customer(p_name VARCHAR2, p_email VARCHAR2, p_phone VARCHAR2) IS
  BEGIN
    INSERT INTO customers(customer_id, customer_name, email, phone)
    VALUES (customers_seq.NEXTVAL, p_name, p_email, p_phone);
  END;

  -- Record Sale
  PROCEDURE record_sale(p_customer_id NUMBER, p_product_id NUMBER, p_quantity NUMBER) IS
    v_total NUMBER;
  BEGIN
    v_total := calculate_bill(p_product_id, p_quantity);
    INSERT INTO sales(sale_id, customer_id, product_id, quantity, sale_date, total_amount)
    VALUES (sales_seq.NEXTVAL, p_customer_id, p_product_id, p_quantity, SYSDATE, v_total);
  END;

  -- Function: Calculate Bill
  FUNCTION calculate_bill(p_product_id NUMBER, p_quantity NUMBER) RETURN NUMBER IS
    v_price NUMBER;
  BEGIN
    SELECT price INTO v_price FROM products WHERE product_id = p_product_id;
    RETURN v_price * p_quantity;
  END;

  -- Function: Get Stock
  FUNCTION get_stock(p_product_id NUMBER) RETURN NUMBER IS
    v_stock NUMBER;
  BEGIN
    SELECT stock_quantity INTO v_stock FROM products WHERE product_id = p_product_id;
    RETURN v_stock;
  END;

  -- Bulk Collect: Sales Report
  PROCEDURE sales_report IS
    TYPE sales_tab IS TABLE OF sales%ROWTYPE;
    v_sales sales_tab;
  BEGIN
    SELECT * BULK COLLECT INTO v_sales FROM sales;
    FOR i IN 1..v_sales.COUNT LOOP
      DBMS_OUTPUT.PUT_LINE('Sale ID: ' || v_sales(i).sale_id ||
                           ', Customer: ' || v_sales(i).customer_id ||
                           ', Product: ' || v_sales(i).product_id ||
                           ', Qty: ' || v_sales(i).quantity ||
                           ', Total: ' || v_sales(i).total_amount);
    END LOOP;
  END;

  -- Collections & Records: Process Bulk Sales
  PROCEDURE process_bulk_sales(p_sales IN SYS.ODCIVARCHAR2LIST) IS
    v_product_id NUMBER;
    v_quantity   NUMBER;
    v_total      NUMBER;
  BEGIN
    FOR i IN 1..p_sales.COUNT LOOP
      v_product_id := TO_NUMBER(SUBSTR(p_sales(i),1,INSTR(p_sales(i),':')-1));
      v_quantity   := TO_NUMBER(SUBSTR(p_sales(i),INSTR(p_sales(i),':')+1));
      v_total      := calculate_bill(v_product_id, v_quantity);

      INSERT INTO sales(sale_id, customer_id, product_id, quantity, sale_date, total_amount)
      VALUES (sales_seq.NEXTVAL, 1, v_product_id, v_quantity, SYSDATE, v_total);
    END LOOP;
  END;

END retail_pkg;
/
