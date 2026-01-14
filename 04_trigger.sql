CREATE OR REPLACE TRIGGER trg_update_stock
AFTER INSERT ON sales
FOR EACH ROW
BEGIN
  UPDATE products
  SET stock_quantity = stock_quantity - :NEW.quantity
  WHERE product_id = :NEW.product_id;
END;
/
