# Flight Reservation Database Project

This repository contains the design, implementation, and query reports for a Flight Reservation Database project. The project is structured into three main parts, covering the full lifecycle from conceptual design to data retrieval and reporting.

---

## Project Overview

This database system is designed to manage information related to flights, airports, pilots, aircraft types, departures, reservations, passengers, and tickets. It supports core functionalities required for a basic flight reservation system.

---

## Project Structure.

your-project-name/
├── README.md              
├── documentation/
│   ├── RMilligan_RD.pdf   # Requirement Document
│   ├── RMilligan_ERD.png  # Entity-Relationship Diagram
│   ├── RMilligan_ERDLogicalSchema.png # Logical ERD
│   ├── RMilligan_LogicalSchema.txt # Text representation of Logical Schema
│   └── RMilligan_UML.png  # UML Diagram (possibly for system components/interactions)
├── sql/
│   ├── schema/
│   │   ├── live-sql-demo.sql # Main script for table creation and initial data
│   │   └── RMilligan_queries.sql # Potentially more schema or data scripts
│   ├── queries/
│   │   └── part3_queries.sql # All SQL queries for Part 3 reporting
├── reports/
│   ├── (Your screenshots of query outputs for Part 3)
│   └── MSmith_Part3_SQL.zip # Final zipped submission package
└── 

---

---

## Part 1: Database Design and Requirements

This phase focused on the foundational planning and conceptualization of the flight reservation database system.

* **Requirements Gathering:** Detailed analysis and documentation of the functional and non-functional requirements for the system, outlining what the database needs to achieve. (Refer to `documentation/RMilligan_RD.pdf`)
* **Conceptual Modeling:** Creation of high-level conceptual models to represent the main entities and their relationships, independent of specific database technology. This typically involves:
    * **Entity-Relationship Diagrams (ERDs):** Visualizing entities (e.g., Airport, Flight, Pilot, Reservation, Passenger, Ticket, Equip_Type, Departures) and their relationships. (See `documentation/RMilligan_ERD.png` and `documentation/RMilligan_ERDLogicalSchema.png`)
* **Logical Design:** Translating the conceptual model into a more detailed logical schema, defining tables, columns, data types, primary keys, foreign keys, and constraints. (Detailed in `documentation/RMilligan_LogicalSchema.txt`)
* **UML Diagrams:** Potentially used for visualizing the system's structure or behavior from an object-oriented perspective. (See `documentation/RMilligan_UML.png`)

---

## Part 2: Database Implementation and Data Population

This phase involved bringing the database design to life within a specific Database Management System (DBMS), which in this case appears to be Oracle due to the SQL dialect and error messages encountered.

* **Schema Creation:**
    * Development of SQL Data Definition Language (DDL) scripts to create all the tables (Airport, Flight, Pilots, Equip_Type, Departures, Reservation, Ticket, Passenger) based on the logical design.
    * Definition of primary keys, foreign keys, unique constraints, and other integrity rules to ensure data consistency.
    * (Refer to `sql/schema/live-sql-demo.sql` for table creation scripts.)
* **Data Population:**
    * Writing SQL Data Manipulation Language (DML) scripts to insert initial, sample data into all the created tables. This seeded the database with testable information to allow for query execution in Part 3.
    * (See `sql/schema/live-sql-demo.sql` for `INSERT INTO` statements.)

---

## Part 3: SQL Querying and Reporting

This final phase focuses on interacting with the populated database to extract meaningful information and generate reports based on specific requirements.

* **Complex Query Development:** Crafting a series of SQL queries to answer diverse business questions. These queries involve:
    * Filtering data based on various conditions (e.g., flights in the same timezone, airports without hub airlines, flights originating from specific locations).
    * Joining multiple tables to combine related data (e.g., flight reservations with pilot information).
    * Aggregating data using functions like `COUNT`, `AVG`, `MAX`, `MIN` (e.g., total flights per origin, average pilot pay per state).
    * Performing calculations (e.g., distance divided by fare, age differences, total flyable distance for aircraft).
    * Using subqueries and analytical functions for more advanced data retrieval (e.g., pilots exceeding average pay, most recent departure dates).
    * (All queries for this part are documented in `sql/queries/part3_queries.sql`.)
* **Report Generation:** Executing the developed queries and capturing their output as reports, often in a visual format like screenshots for submission.
* **Project Packaging:** Assembling all project artifacts, including SQL scripts, design documents, and query output reports, into a single `.zip` file for final submission. This package adheres to a specific naming convention to ensure proper identification.

---

## Setup and Usage

To set up and run this project:

1.  **Database Environment:** Ensure you have an Oracle Database environment configured.
2.  **Schema Creation & Data Population:** Execute the `sql/schema/live-sql-demo.sql` script (and potentially `RMilligan_queries.sql` if it contains additional setup) in your Oracle SQL client (e.g., SQL Developer, SQLPlus) to create the tables and populate them with initial data.
3.  **Run Queries:** Execute the queries found in `sql/queries/part3_queries.sql` against your populated database.
4.  **Generate Reports:** Capture the output of each query (e.g., via screenshots or saving results to a file) as required for the project submission.
5.  **Final Submission:** Organize all project files and reports as specified, and zip them into a package named `MSmith_Part3_SQL.zip` (replacing MSmith with your actual initials and last name).

---

## Contact

ryannemilligan@gmail.com

---

*Ryanne Milligan*  
Miami Dade College — A.S. in Applied Artificial Intelligence  
Course: CGS 1540 Database Design — Spring 2025  
Professor: Professor Massad  
April 2025
