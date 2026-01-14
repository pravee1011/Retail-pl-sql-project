set serveroutput on
BEGIN
  -- Step 1: Add a product
  retail_pkg.add_product('Tablet', 'Electronics', 20000, 30);

  -- Step 2: Add a customer
  retail_pkg.add_customer('John Doe', 'john.doe@email.com', '9998887776');

  -- Step 3: Record a sale
  retail_pkg.record_sale(1, 1, 2); -- customer_id=1, product_id=1, quantity=2

  -- Step 4: Check stock using function
  DBMS_OUTPUT.PUT_LINE('Remaining Stock: ' || retail_pkg.get_stock(1));

  -- Step 5: Bulk sales processing
  retail_pkg.process_bulk_sales(SYS.ODCIVARCHAR2LIST('2:1','3:2'));

  -- Step 6: Generate sales report
  retail_pkg.sales_report;
END;
/
