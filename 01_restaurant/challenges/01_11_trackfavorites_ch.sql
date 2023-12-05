-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

UPDATE Customers
SET FavoriteDish=(SELECT DishID FROM Dishes
WHERE Name='Quinoa Salmon Salad')
WHERE CustomerID=(SELECT CustomerID FROM Customers
WHERE FirstName='Cleo' AND LastName='Goldwater');

SELECT Customers.FirstName, Customers.LastName, Dishes.Name
FROM Customers
JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID;
