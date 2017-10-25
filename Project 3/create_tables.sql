--------------------------------------------------------
--  File created - Wednesday-June-21-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for creating tables for a video store
--------------------------------------------------------

SPOOL create_tables.lst;
SET ECHO ON;

DROP TABLE Customer CASCADE CONSTRAINTS;

CREATE TABLE Customer (
                        Customer_ID    NUMBER(10) PRIMARY KEY,
                        Last_Name      VARCHAR2(30) NOT NULL,
                        First_Name     VARCHAR2(20) NOT NULL,
                        Street        VARCHAR2(30) NOT NULL,
                        City          VARCHAR2(30) NOT NULL,
                        State         CHAR(2) NOT NULL,
                        Zip_Code       CHAR(5) NOT NULL,
                        Phone_Number            VARCHAR2(12) NOT NULL UNIQUE,
                        Videos_Rented_Last_Month  NUMBER(5) NOT NULL,
                        Videos_Rented_This_Year   NUMBER(5) NOT NULL,
                        Total_Videos_Rented      NUMBER(5) NOT NULL
                      );


DROP TABLE Video CASCADE CONSTRAINTS;

CREATE TABLE Video (
                        Video_ID       NUMBER(10) PRIMARY KEY,
                        Movie_ID       NUMBER(10) NOT NULL,
                        Distributor_ID NUMBER(10) NOT NULL,
                        Distributor_Serial_Number NUMBER(10) NOT NULL,
                        Video_Format   VARCHAR2(3) NOT NULL,
                        Price         NUMBER(5,2) NOT NULL,
                        Discount_Price NUMBER(5,2), 
                        Quantity      NUMBER(5) NOT NULL,                 
                        CONSTRAINT FK_MovieID_Video FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID) ON DELETE CASCADE,
                        CONSTRAINT FK_DistributorID_Video FOREIGN KEY (Distributor_ID) REFERENCES Distributor(Distributor_ID) ON DELETE CASCADE
                      );
                      
                      
DROP TABLE Movie CASCADE CONSTRAINTS;

CREATE TABLE Movie (
                        Movie_ID         NUMBER(10) PRIMARY KEY,
                        Distributor_Movie_ID NUMBER(10)NOT NULL UNIQUE,
                        Title           VARCHAR2(30) NOT NULL,
                        Genre           VARCHAR2(30) NOT NULL,
                        Running_Length   VARCHAR2(30) NOT NULL,
                        Rating          VARCHAR2(5) NOT NULL,
                        Year_Released    NUMBER(4) NOT NULL                      
                      );


DROP TABLE Actor CASCADE CONSTRAINTS;

CREATE TABLE Actor (
                        Actor_ID         NUMBER(10) PRIMARY KEY,
                        Last_Name        VARCHAR2(30) NOT NULL,
                        First_Name       VARCHAR2(20) NOT NULL,
                        Gender           VARCHAR2(20) NOT NULL
                      );


DROP TABLE ActorsInMovies CASCADE CONSTRAINTS;

CREATE TABLE ActorsInMovies (
                        Actors_In_Movies_ID   NUMBER(10) PRIMARY KEY,
                        Actor_ID         NUMBER(10) NOT NULL,
                        Movie_ID         NUMBER(10) NOT NULL,
                        CONSTRAINT FK_Actor_ID_Actor FOREIGN KEY (Actor_ID) REFERENCES Actor(Actor_ID) ON DELETE CASCADE,
                        CONSTRAINT FK_MovieID_Actor FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID) ON DELETE CASCADE
                      );


DROP TABLE Director CASCADE CONSTRAINTS;

CREATE TABLE Director (
                        Director_ID      NUMBER(10) PRIMARY KEY,
                        Last_Name        VARCHAR2(30) NOT NULL,
                        First_Name       VARCHAR2(20) NOT NULL,
                        Gender           VARCHAR2(30) NOT NULL
                      );

DROP TABLE DirectorsInMovies CASCADE CONSTRAINTS;

CREATE TABLE DirectorsInMovies (
                        Directors_In_Movies_ID      NUMBER(10) PRIMARY KEY,
                        Director_ID      NUMBER(10) NOT NULL,
                        Movie_ID         NUMBER(10) NOT NULL,
                        CONSTRAINT FK_Director_ID_Directors FOREIGN KEY (Director_ID) REFERENCES Director(Director_ID) ON DELETE CASCADE,
                        CONSTRAINT FK_MovieID_Directors FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID) ON DELETE CASCADE
                      );

DROP TABLE Awards CASCADE CONSTRAINTS;

CREATE TABLE Awards (
                        Award_ID      NUMBER(10) PRIMARY KEY,
                        Actor_ID      NUMBER(10) NOT NULL,
                        Director_ID   NUMBER(10) NOT NULL,
                        Movie_ID      NUMBER(10) NOT NULL,
                        Category      VARCHAR2(30) NOT NULL,
                        Year_Won      NUMBER(4) NOT NULL,
                        CONSTRAINT FK_Actor_ID_Awards FOREIGN KEY (Actor_ID) REFERENCES Actor(Actor_ID) ON DELETE CASCADE,
                        CONSTRAINT FK_Director_ID_Awards FOREIGN KEY (Director_ID) REFERENCES Director(Director_ID) ON DELETE CASCADE,
                        CONSTRAINT FK_MovieID_Awards FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID) ON DELETE CASCADE
                      );


DROP TABLE CustomerRental CASCADE CONSTRAINTS;

CREATE TABLE CustomerRental (
                        Rental_ID       NUMBER(10) PRIMARY KEY,
                        Customer_ID    NUMBER(10) NOT NULL,
                        Video_ID       NUMBER(10) NOT NULL,
                        Rental_Date     DATE NOT NULL,
                        Return_Date    DATE NOT NULL,
                        Payment_Type   VARCHAR2(20) NOT NULL,
                        Tax           NUMBER(10,2) NOT NULL,
                        Total_Payment  NUMBER(10, 2) NOT NULL,
                        CONSTRAINT FK_CustomerID_CustomerRental FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE,
                        CONSTRAINT FK_VideoID_CustomerRental FOREIGN KEY (Video_ID) REFERENCES Video(Video_ID) ON DELETE CASCADE
                      );


DROP TABLE CustomerCharge CASCADE CONSTRAINTS;

CREATE TABLE CustomerCharge (
                        Charge_ID      NUMBER(10) PRIMARY KEY,
                        Customer_ID    NUMBER(10) NOT NULL,
                        Late_Fee       NUMBER(10,2) NOT NULL,
                        Damage_Fee     NUMBER(10,2) NOT NULL,
                        Rewind_Fee     NUMBER(10,2) NOT NULL,
                        CONSTRAINT FK_CustomerID_CustomerCharge FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE
                      );


DROP TABLE Distributor CASCADE CONSTRAINTS;

CREATE TABLE Distributor (
                        Distributor_ID    NUMBER(10) PRIMARY KEY,
                        Company_Name      VARCHAR2(30) NOT NULL,
                        Street           VARCHAR2(30) NOT NULL,
                        City             VARCHAR2(30) NOT NULL,
                        State            CHAR(2) NOT NULL,
                        Zip_Code          CHAR(5) NOT NULL,
                        Phone_Number      VARCHAR2(12) NOT NULL UNIQUE
                      );

SET ECHO OFF;
SPOOL OFF;













