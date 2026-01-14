--products
CREATE TABLE products (
    product_id     NUMBER PRIMARY KEY,
    product_name   VARCHAR2(100) NOT NULL,
    category       VARCHAR2(50),
    price          NUMBER(10,2) NOT NULL,
    stock_quantity NUMBER DEFAULT 0
);

CREATE SEQUENCE products_seq START WITH 1 INCREMENT BY 1;

-- customers
CREATE TABLE customers (
    customer_id   NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100) NOT NULL,
    email         VARCHAR2(100),
    phone         VARCHAR2(15)
);

CREATE SEQUENCE customers_seq START WITH 1 INCREMENT BY 1;

-- sales
CREATE TABLE sales (
    sale_id      NUMBER PRIMARY KEY,
    customer_id  NUMBER NOT NULL,
    product_id   NUMBER NOT NULL,
    quantity     NUMBER NOT NULL,
    sale_date    DATE DEFAULT SYSDATE,
    total_amount NUMBER(12,2),

    CONSTRAINT fk_sales_customer FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
    CONSTRAINT fk_sales_product FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);


CREATE SEQUENCE sales_seq START WITH 1 INCREMENT BY 1;

-- suppliers
CREATE TABLE suppliers (
    supplier_id   NUMBER PRIMARY KEY,
    supplier_name VARCHAR2(100) NOT NULL,
    contact_info  VARCHAR2(200)
);


CREATE SEQUENCE suppliers_seq START WITH 1 INCREMENT BY 1;

-- purchase_orders
CREATE TABLE purchase_orders (
    order_id      NUMBER PRIMARY KEY,
    supplier_id   NUMBER NOT NULL,
    product_id    NUMBER NOT NULL,
    order_quantity NUMBER NOT NULL,
    order_date    DATE DEFAULT SYSDATE,

    CONSTRAINT fk_po_supplier FOREIGN KEY (supplier_id)
        REFERENCES suppliers(supplier_id),
    CONSTRAINT fk_po_product FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);


CREATE SEQUENCE purchase_orders_seq START WITH 1 INCREMENT BY 1;
