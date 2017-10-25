--------------------------------------------------------
--  File created - Wednesday-June-21-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for populating the tables for the video store
--------------------------------------------------------

SPOOL populate_tables.lst;
SET ECHO ON;

--Populating CUSTOMER Table
Insert into CUSTOMER (Customer_ID, Last_Name, First_Name, Street, City, State, Zip_Code,Phone_Number, Videos_Rented_Last_Month, Videos_Rented_This_Year, Total_Videos_Rented)
values (1,'Hussain','Nabeel','20305 Greenriver Terrace','Germantown', 'MD', '20876', '240-498-4458', 5, 30, 160);

Insert into CUSTOMER (Customer_ID, Last_Name, First_Name, Street, City, State, Zip_Code,Phone_Number, Videos_Rented_Last_Month, Videos_Rented_This_Year, Total_Videos_Rented)
values (2,'Smith','John','56943 South Avenue','Germantown', 'MD', '20877', '240-863-8653', 2, 25, 85);

Insert into CUSTOMER (Customer_ID, Last_Name, First_Name, Street, City, State, Zip_Code,Phone_Number, Videos_Rented_Last_Month, Videos_Rented_This_Year, Total_Videos_Rented)
values (3,'Stein','Marc','58476 Lakeview Circle','Gaithersburg', 'MD', '20878', '301-896-7536', 0, 15, 110);

Insert into CUSTOMER (Customer_ID, Last_Name, First_Name, Street, City, State, Zip_Code,Phone_Number, Videos_Rented_Last_Month, Videos_Rented_This_Year, Total_Videos_Rented)
values (4,'Wall','John','92684 Bronco Street','Rockville', 'MD', '20847', '240-856-7896', 3, 12, 90);

Insert into CUSTOMER (Customer_ID, Last_Name, First_Name, Street, City, State, Zip_Code,Phone_Number, Videos_Rented_Last_Month, Videos_Rented_This_Year, Total_Videos_Rented)
values (5,'Kim','Lucy','28947 Willow Circle','Gaithersburg', 'MD', '20885', '301-635-7965', 8, 45, 180);


--Populating VIDEO Table
Insert into VIDEO (Video_ID, Movie_ID, Distributor_ID, Distributor_Serial_Number, Video_Format, Price, Discount_Price, Quantity)
values (1, 2, 3, 165895463,'DVD', 5.50, 4.50, 15);

Insert into VIDEO (Video_ID, Movie_ID, Distributor_ID, Distributor_Serial_Number, Video_Format, Price, Discount_Price, Quantity)
values (2, 2, 3, 635987649,'VHS', 4.50, 3.50, 5);

Insert into VIDEO (Video_ID, Movie_ID, Distributor_ID, Distributor_Serial_Number, Video_Format, Price, Quantity)
values (3, 5, 1, 989568713, 'DVD', 7.50, 20);

Insert into VIDEO (Video_ID, Movie_ID, Distributor_ID, Distributor_Serial_Number, Video_Format, Price, Discount_Price, Quantity)
values (4, 3, 5, 458976356, 'DVD', 7.50, 6.50, 12);

Insert into VIDEO (Video_ID, Movie_ID, Distributor_ID, Distributor_Serial_Number, Video_Format, Price, Quantity)
values (5, 4, 2, 658731235, 'VHS', 6.50, 15);

Insert into VIDEO (Video_ID, Movie_ID, Distributor_ID, Distributor_Serial_Number, Video_Format, Price, Discount_Price, Quantity)
values (6, 4, 2, 639852146, 'DVD', 8.50, 7.50, 25);


--Populating MOVIE Table
Insert into MOVIE (Movie_ID, Distributor_Movie_ID, Title, Genre, Running_Length, Rating, Year_Released)
values (1, 7, 'Jurassic World' , 'Action' ,'124 min', 'PG-13', 2015);

Insert into MOVIE (Movie_ID, Distributor_Movie_ID, Title, Genre, Running_Length, Rating, Year_Released)
values (2, 6, 'Deadpool' , 'Action' ,'108 min', 'R', 2016);

Insert into MOVIE (Movie_ID, Distributor_Movie_ID, Title, Genre, Running_Length, Rating, Year_Released)
values (3, 1, 'Moana' , 'Adventure' ,'107 min', 'PG', 2016);

Insert into MOVIE (Movie_ID, Distributor_Movie_ID, Title, Genre, Running_Length, Rating, Year_Released)
values (4, 9, 'Get Out' , 'Horror' ,'104 min', 'R', 2017);

Insert into MOVIE (Movie_ID, Distributor_Movie_ID, Title, Genre, Running_Length, Rating, Year_Released)
values (5, 2, 'Beauty and the Beast' , 'Romance' ,'129 min', 'PG', 2017);


--Populating ACTOR Table
Insert into ACTOR (Actor_ID, Last_Name, First_Name, Gender)
values (1,'Pratt' , 'Chris' ,'Male');

Insert into ACTOR (Actor_ID, Last_Name, First_Name, Gender)
values (2,'Watson' , 'Emma' ,'Female');

Insert into ACTOR (Actor_ID, Last_Name, First_Name, Gender)
values (3,'Johnson' , 'Dwayne' ,'Male');

Insert into ACTOR (Actor_ID, Last_Name, First_Name, Gender)
values (4,'Reynolds' , 'Ryan' ,'Male');

Insert into ACTOR (Actor_ID, Last_Name, First_Name, Gender)
values (5,'Baccarin' , 'Morena' ,'Female');



--Populating ACTORSINMOVIES Table
Insert into ACTORSINMOVIES (Actors_In_Movies_ID, Actor_ID , Movie_ID)
values (1, 4, 2);

Insert into ACTORSINMOVIES (Actors_In_Movies_ID, Actor_ID , Movie_ID)
values (2, 3, 3);

Insert into ACTORSINMOVIES (Actors_In_Movies_ID, Actor_ID , Movie_ID)
values (3, 2, 5);

Insert into ACTORSINMOVIES (Actors_In_Movies_ID, Actor_ID , Movie_ID)
values (4, 5, 1);

Insert into ACTORSINMOVIES (Actors_In_Movies_ID, Actor_ID , Movie_ID)
values (5, 1, 1);


--Populating DIRECTOR Table
Insert into DIRECTOR  (Director_ID, Last_Name, First_Name, Gender)
values (1,'Trevorrow' , 'Colin' ,'Male');

Insert into DIRECTOR  (Director_ID, Last_Name, First_Name, Gender)
values (2,'Musker' , 'John' ,'Male');

Insert into DIRECTOR  (Director_ID, Last_Name, First_Name, Gender)
values (3,'Clements' , 'Ron' ,'Male');

Insert into DIRECTOR  (Director_ID, Last_Name, First_Name, Gender)
values (4,'Peele' , 'Jordan' ,'Male');

Insert into DIRECTOR  (Director_ID, Last_Name, First_Name, Gender)
values (5,'Miller' , 'Tim' ,'Male');



--Populating DIRECTORSINMOVIES Table
Insert into DIRECTORSINMOVIES (Directors_In_Movies_ID, Director_ID , Movie_ID)
values (1, 1, 1);

Insert into DIRECTORSINMOVIES (Directors_In_Movies_ID, Director_ID , Movie_ID)
values (2, 2, 3);

Insert into DIRECTORSINMOVIES (Directors_In_Movies_ID, Director_ID , Movie_ID)
values (3, 3, 3);

Insert into DIRECTORSINMOVIES (Directors_In_Movies_ID, Director_ID , Movie_ID)
values (4, 4, 4);

Insert into DIRECTORSINMOVIES (Directors_In_Movies_ID, Director_ID , Movie_ID)
values (5, 5, 2);

--Populating AWARDS Table
Insert into AWARDS (Award_ID, Actor_ID , Director_ID, Movie_ID, Category, Year_Won)
values (1, 2, 3, 4, 'Best Actor', 2016);

Insert into AWARDS (Award_ID, Actor_ID , Director_ID, Movie_ID, Category, Year_Won)
values (2, 4, 1, 3, 'Best Actress', 2015);

Insert into AWARDS (Award_ID, Actor_ID , Director_ID, Movie_ID, Category, Year_Won)
values (3, 3, 4, 5, 'Best Actor', 2014);

Insert into AWARDS (Award_ID, Actor_ID , Director_ID, Movie_ID, Category, Year_Won)
values (4, 5, 5, 3, 'Best Actor', 2017);

Insert into AWARDS (Award_ID, Actor_ID , Director_ID, Movie_ID, Category, Year_Won)
values (5, 2, 2, 1, 'Best Actor', 2016);



--Populating CUSTOMERRENTAL Table  
Insert into CUSTOMERRENTAL (Rental_ID, Customer_ID, Video_ID, Rental_Date, Return_Date, Payment_Type, Tax, Total_Payment )
values (1, 2, 6, TO_DATE('3/1/2017','MM/DD/YYYY'), TO_DATE('3/4/2017','MM/DD/YYYY'), 'Cash', .06, 7.95);

Insert into CUSTOMERRENTAL (Rental_ID, Customer_ID, Video_ID, Rental_Date, Return_Date, Payment_Type, Tax, Total_Payment )
values (2, 1, 3, TO_DATE('5/5/2017','MM/DD/YYYY'), TO_DATE('5/8/2017','MM/DD/YYYY'), 'Cash', .06, 7.95);

Insert into CUSTOMERRENTAL (Rental_ID, Customer_ID, Video_ID, Rental_Date, Return_Date, Payment_Type, Tax, Total_Payment )
values (3, 2, 1, TO_DATE('6/16/2017','MM/DD/YYYY'), TO_DATE('6/19/2017','MM/DD/YYYY'), 'MasterCard', .06, 7.95);

Insert into CUSTOMERRENTAL (Rental_ID, Customer_ID, Video_ID, Rental_Date, Return_Date, Payment_Type, Tax, Total_Payment )
values (4, 3, 4, TO_DATE('6/25/2017','MM/DD/YYYY'), TO_DATE('6/28/2017','MM/DD/YYYY'), 'Discover', .06, 7.95);

Insert into CUSTOMERRENTAL (Rental_ID, Customer_ID, Video_ID, Rental_Date, Return_Date, Payment_Type, Tax, Total_Payment )
values (5, 5, 2, TO_DATE('6/30/2017','MM/DD/YYYY'), TO_DATE('7/3/2017','MM/DD/YYYY'), 'Visa', .06, 7.95);



--Populating CUSTOMERCHARGE Table
Insert into CUSTOMERCHARGE  (Charge_ID, Customer_ID, Late_Fee, Damage_Fee, Rewind_Fee)
values (1, 2, 0, 1.00, 0);

Insert into CUSTOMERCHARGE  (Charge_ID, Customer_ID, Late_Fee, Damage_Fee, Rewind_Fee)
values (2, 2, 0, 1.00, 0);

Insert into CUSTOMERCHARGE  (Charge_ID, Customer_ID, Late_Fee, Damage_Fee, Rewind_Fee)
values (3, 2, 0, 1.00, 0);

Insert into CUSTOMERCHARGE  (Charge_ID, Customer_ID, Late_Fee, Damage_Fee, Rewind_Fee)
values (4, 2, 0, 1.00, 0);

Insert into CUSTOMERCHARGE  (Charge_ID, Customer_ID, Late_Fee, Damage_Fee, Rewind_Fee)
values (5, 2, 0, 1.00, 0);



--Populating DISTRIBUTOR Table  
Insert into DISTRIBUTOR  (Distributor_ID, Company_Name, Street, City, State, Zip_Code,Phone_Number)
values (1, 'Movies and More Inc.', '34678 Autum Lane', 'San Francisco', 'CA', '94016', '415-569-8659');

Insert into DISTRIBUTOR  (Distributor_ID, Company_Name, Street, City, State, Zip_Code,Phone_Number)
values (2, 'Entertainment 123', '89635 Dole Street', 'Los Angeles', 'CA', '90024', '661-896-7635');

Insert into DISTRIBUTOR  (Distributor_ID, Company_Name, Street, City, State, Zip_Code,Phone_Number)
values (3, 'Horizon Films', '58973 Blue Court', 'Los Angeles', 'CA', '90001', '661-369-8194');

Insert into DISTRIBUTOR  (Distributor_ID, Company_Name, Street, City, State, Zip_Code,Phone_Number)
values (4, 'Star Productions', '34678 Bellview Drive', 'Atlanta', 'GA', '30301', '678-103-7893');

Insert into DISTRIBUTOR  (Distributor_ID, Company_Name, Street, City, State, Zip_Code,Phone_Number)
values (5, 'Applegate Media', '34678 Autum Lane', 'Arlington', 'VA', '22202', '757-586-9437');


SET ECHO OFF;
SPOOL OFF;











