CREATE DATABASE fruitshop;
USE fruitshop;

CREATE TABLE fruits (
    fruit_id INT PRIMARY KEY,
    fruit_name VARCHAR(30),
    price DECIMAL(10,2)
);

INSERT INTO fruits VALUES
(1, 'Apple', 120),(2, 'Banana', 40),(3, 'Mango', 150),(4, 'Orange', 80),(5, 'Grapes', 90);

DELIMITER $$

CREATE FUNCTION avg_price()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE avgPrice DECIMAL(10,2);
    SELECT AVG(price) INTO avgPrice FROM fruits;
    RETURN avgPrice;
END$$

DELIMITER ;

SELECT avg_price() AS Average_Price;

