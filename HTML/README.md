# CS325
Data base design


 CS 325 - Project Handout - Fall 2023
You are allowed to use any DBMS that is FREE and AVAILABLE to you such as MySQL and
PostgreSQL.
For example,
Database: MySQL Community Version.
Download and MySQL community version, MySQL workbench.
Use online resources for documentation and tutorials.
Project:
Create a 3-tier online order entry system which has the following:
(1) Create User/Password
(2) Create customer profile (Name, Address, Ship-To Address, Bill-To-Address, Credit Card)
(3) Login authentication (validate user)
(4) Create Catalog of items to be sold (SKU, Item Name, Item Description, Price, Available quantity)
(5) Create an order
(6) Add items from catalog to order (if available quantity > 0)
(7) Calculate total price + Sales Tax
(8) Complete Order
(9) Create shipment information for each line item in the order. Process shipment: Possible states -
Pick, Pack, Ship
(10) Show shipment status on the order
(11) Create subscription templates with due dates
(12) Create orders from subscription templates a day before the due dates
Database Objects: User Table, Customer table, Address Table, Catalog table
Transactional Objects: Order table, LineItems Table, Shipment Table, Subscription Template, Subscription Orders
UI Tier – HTML or thick-Client or other your team’s choice.
App Tier – all business logic, UI and database interaction resides here. DB Tier – All data tables needed to support the application.
Key Project Completion Dates (See Syllabus):
Every component below should have a functional UI. A demonstration of the completed work will be held during the class lectures.
Phrase I:
(1) Customer Maintenance
● Create, Update and Delete customer profiles.
● For Delete operation ensure all related orders/shipments are also deleted.
(2) Catalog Maintenance
● Add, modify, update catalog items.
● Change price and available quantity on existing items.

 Phrase II:
(1) Order-Shipments-Returns
● Create, Modify, and Delete orders.
● Report Order status (order will have 4 states: PENDING, SHIPPED, INVOICED,
RETURNED).
● Report shipment status for each line item of an order (shipments will have 3 states: PICK,
PACK, SHIP).
● Process Returns.
(2) Subscription Orders
● Create Subscription orders to be fulfilled, for example, every 2, 4, 6 months.
● Create a timer or trigger to start the creation of the order automatically a day before the
subscription fulfill date.
● Process the order as all other orders.
Class Evaluation:
(1) PowerPoint Presentation: Describe the design of the database using ER diagrams, overview of the architecture of your project, etc. Your PowerPoint Presentation may include (but not limited to) the following items:
a. ER Diagram (including the description of the entities, attributes, keys, cardinality, and participation constraints)
b. Database Schema
c. Show the implementation of tables in the target DBMS (e.g., snapshots of tables in
DBMS)
d. SQL statements for database construction and data population
e. Identify the functional dependencies of the database schema
f. Specify a set of functional dependencies for each relation presented then show the
normalization process and normalized tables for each relation to 3NF (if applicable)
(2) Demo of the full project.
Points for each module:
Customer Maintenance – 20% of the project grade Catalog Maintenance – 20% of the project grade Order-Shipments-Returns – 40% of the project grade Subscription Orders – 20% of the project grade
Bonus (5 points): Implement your ideas on how you would manage load and throughput efficiently during high volumes or/and database security measures.
