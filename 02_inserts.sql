--products
INSERT INTO products VALUES (products_seq.NEXTVAL, 'Laptop', 'Electronics', 55000, 20);
INSERT INTO products VALUES (products_seq.NEXTVAL, 'Smartphone', 'Electronics', 30000, 50);
INSERT INTO products VALUES (products_seq.NEXTVAL, 'Headphones', 'Accessories', 2000, 100);
INSERT INTO products VALUES (products_seq.NEXTVAL, 'Television', 'Electronics', 40000, 15);
INSERT INTO products VALUES (products_seq.NEXTVAL, 'Refrigerator', 'Appliances', 25000, 10);
INSERT INTO products VALUES (products_seq.NEXTVAL, 'Microwave Oven', 'Appliances', 8000, 25);
INSERT INTO products VALUES (products_seq.NEXTVAL, 'Washing Machine', 'Appliances', 18000, 12);
INSERT INTO products VALUES (products_seq.NEXTVAL, 'Shoes', 'Fashion', 2500, 200);
INSERT INTO products VALUES (products_seq.NEXTVAL, 'T-Shirt', 'Fashion', 800, 300);
INSERT INTO products VALUES (products_seq.NEXTVAL, 'Jeans', 'Fashion', 1500, 150);

--customers
INSERT INTO customers VALUES (customers_seq.NEXTVAL, 'Arun Kumar', 'arun.kumar@email.com', '9876543210');
INSERT INTO customers VALUES (customers_seq.NEXTVAL, 'Priya Sharma', 'priya.sharma@email.com', '9876543211');
INSERT INTO customers VALUES (customers_seq.NEXTVAL, 'Rahul Mehta', 'rahul.mehta@email.com', '9876543212');
INSERT INTO customers VALUES (customers_seq.NEXTVAL, 'Sneha Reddy', 'sneha.reddy@email.com', '9876543213');
INSERT INTO customers VALUES (customers_seq.NEXTVAL, 'Vikram Singh', 'vikram.singh@email.com', '9876543214');
INSERT INTO customers VALUES (customers_seq.NEXTVAL, 'Anjali Nair', 'anjali.nair@email.com', '9876543215');
INSERT INTO customers VALUES (customers_seq.NEXTVAL, 'Ramesh Iyer', 'ramesh.iyer@email.com', '9876543216');
INSERT INTO customers VALUES (customers_seq.NEXTVAL, 'Divya Patel', 'divya.patel@email.com', '9876543217');
INSERT INTO customers VALUES (customers_seq.NEXTVAL, 'Karthik Raj', 'karthik.raj@email.com', '9876543218');
INSERT INTO customers VALUES (customers_seq.NEXTVAL, 'Meena Joseph', 'meena.joseph@email.com', '9876543219');

--sales
INSERT INTO sales VALUES (sales_seq.NEXTVAL, 1, 1, 1, SYSDATE, 55000);
INSERT INTO sales VALUES (sales_seq.NEXTVAL, 2, 2, 2, SYSDATE, 60000);
INSERT INTO sales VALUES (sales_seq.NEXTVAL, 3, 3, 3, SYSDATE, 6000);
INSERT INTO sales VALUES (sales_seq.NEXTVAL, 4, 4, 1, SYSDATE, 55000);
INSERT INTO sales VALUES (sales_seq.NEXTVAL, 5, 5, 5, SYSDATE, 25000);
INSERT INTO sales VALUES (sales_seq.NEXTVAL, 6, 6, 6, SYSDATE, 16000);
INSERT INTO sales VALUES (sales_seq.NEXTVAL, 7, 7, 7, SYSDATE, 18000);
INSERT INTO sales VALUES (sales_seq.NEXTVAL, 8, 8, 8, SYSDATE, 5000);
INSERT INTO sales VALUES (sales_seq.NEXTVAL, 9, 9, 9, SYSDATE, 2400);
INSERT INTO sales VALUES (sales_seq.NEXTVAL, 10, 10, 10, SYSDATE, 3000);

--suppliers
INSERT INTO suppliers VALUES (suppliers_seq.NEXTVAL, 'ElectroWorld Ltd', 'contact@electroworld.com');
INSERT INTO suppliers VALUES (suppliers_seq.NEXTVAL, 'TechMart Pvt Ltd', 'sales@techmart.com');
INSERT INTO suppliers VALUES (suppliers_seq.NEXTVAL, 'Appliance Hub', 'support@appliancehub.com');
INSERT INTO suppliers VALUES (suppliers_seq.NEXTVAL, 'Fashion Trends', 'info@fashiontrends.com');
INSERT INTO suppliers VALUES (suppliers_seq.NEXTVAL, 'Global Electronics', 'global@electronics.com');
INSERT INTO suppliers VALUES (suppliers_seq.NEXTVAL, 'Smart Appliances', 'smart@appliances.com');
INSERT INTO suppliers VALUES (suppliers_seq.NEXTVAL, 'Urban Wear', 'urban@wear.com');
INSERT INTO suppliers VALUES (suppliers_seq.NEXTVAL, 'MegaMart', 'megastore@mart.com');
INSERT INTO suppliers VALUES (suppliers_seq.NEXTVAL, 'Fresh Supplies', 'fresh@supplies.com');
INSERT INTO suppliers VALUES (suppliers_seq.NEXTVAL, 'Retail Partners', 'partners@retail.com');

--purchase orders
INSERT INTO purchase_orders VALUES (purchase_orders_seq.NEXTVAL, 1, 1, 10, SYSDATE);
INSERT INTO purchase_orders VALUES (purchase_orders_seq.NEXTVAL, 2, 2, 20, SYSDATE);
INSERT INTO purchase_orders VALUES (purchase_orders_seq.NEXTVAL, 3, 3, 50, SYSDATE);
INSERT INTO purchase_orders VALUES (purchase_orders_seq.NEXTVAL, 4, 4, 5, SYSDATE);
INSERT INTO purchase_orders VALUES (purchase_orders_seq.NEXTVAL, 5, 5, 5, SYSDATE);
INSERT INTO purchase_orders VALUES (purchase_orders_seq.NEXTVAL, 6, 6, 15, SYSDATE);
INSERT INTO purchase_orders VALUES (purchase_orders_seq.NEXTVAL, 7, 7, 100, SYSDATE);
INSERT INTO purchase_orders VALUES (purchase_orders_seq.NEXTVAL, 8, 8, 200, SYSDATE);
INSERT INTO purchase_orders VALUES (purchase_orders_seq.NEXTVAL, 9, 9, 300, SYSDATE);
INSERT INTO purchase_orders VALUES (purchase_orders_seq.NEXTVAL, 10, 10, 50, SYSDATE);
