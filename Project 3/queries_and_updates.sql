--------------------------------------------------------
--  File created - Wednesday-June-21-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for populating the tables for the video store
--------------------------------------------------------

--  Will the output into a file named queries_and_updates.lst
SPOOL queries_and_updates.lst;
SET ECHO ON;

--  Retrieve all of your customers' names, account numbers, and addresses (street and zip code only), sorted by account number(CustomerID).
SELECT Customer_ID, Last_Name, First_Name, Street, Zip_Code FROM Customer ORDER BY Customer_ID;

-- Retrieve all of the videos rented in the last 30 days and sort in chronological rental date order.
SELECT * from CustomerRental WHERE Rental_Date >= (sysdate-30) ORDER BY Rental_Date;

-- Produce a list of your distributors and all their information sorted in order by company name.
SELECT * from Distributor ORDER BY Company_Name;
COMMIT;

-- Will show the current Customer table before we update a customers name.
SELECT * from Customer;
-- Update a customer name to change their maiden name to a married name. You can choose which row to update. Make sure that you use the primary key column in your WHERE clause to affect only a specific row.
UPDATE Customer SET Last_Name = 'Wang' WHERE Customer_ID = 5;
-- Will show the updated Customer table after the customers maiden name has been changed.
SELECT * from Customer;
-- Will Rollback the update, for repeat testing purposes.
ROLLBACK;
-- Will show the current Customer table after the rollback has taken effect to confirm that the update was reversed.
SELECT * from Customer;

-- Delete a customer from the database. You can choose which row to delete. Make sure that you use the primary key column in your WHERE clause to affect only a specific row.
-- Technicially you will get an error since this attribute is also referenced in another table as a FK. As a result when creating the tables I included the ON DELETE CASCADE
-- statement, so that if a record in the parent table is deleted, then the corresponding records in the child table will automatically be deleted. This is called a cascade delete in Oracle.
DELETE FROM Customer WHERE Customer_ID = 2;
-- Will show the new Customer table after deletion of a customer.
SELECT * FROM Customer;
-- Will Rollback the deletion, for repeat testing purposes.
ROLLBACK;
-- Will show the current Customer table after the rollback has taken effect to confirm that the deletion of the customer was reversed.
SELECT * FROM Customer;


SET ECHO OFF;
SPOOL OFF;