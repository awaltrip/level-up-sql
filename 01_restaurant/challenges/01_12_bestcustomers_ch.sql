-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT COUNT(Orders.OrderID), Customers.FirstName, Customers.LastName
FROM Orders
JOIN Customers ON Orders.OrderID = Customers.CustomerID
GROUP BY Orders.CustomerID
HAVING COUNT(Orders.OrderID) >= 3
ORDER BY COUNT(Orders.OrderID) DESC;
