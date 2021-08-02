SELECT 
    P.ProductName AS Produtos, 
    P.Price AS Preço 
FROM(
SELECT 
    ProductID
FROM w3schools.order_details
WHERE Quantity > 80) AS SUB
INNER JOIN w3schools.products AS P
ON SUB.ProductID = P.ProductID;
