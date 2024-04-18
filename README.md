# Database Project for Bookster

The objective of this project is to utilize the SQL expertise acquired during the Software Testing course and implement it practically. 

The application under examination is Bookster.

The tools employed include MySQL Workbench.



#### Database Description: Bookster Book Management System

The Bookster Book Management System database is designed to facilitate the management of books and related data for the Bookster application. It serves as a centralized repository for storing and organizing information about books, authors, genres, user reviews, and other relevant entities.

General Information Stored:

Books: Details of individual books, including title, author(s), ISBN, publication date, genre, publisher, and availability status.

Authors: Information about authors, such as name, biography, nationality, and a list of books authored.

Genres: Classification of books into different genres or categories, allowing users to browse and search for books based on their interests.

User Reviews: User-generated reviews and ratings for books, providing feedback and recommendations to other users.
Users: Data about users of the Bookster application, including personal information (name, email, password), preferences, and reading history.

Bookshelves: Virtual bookshelves maintained by users to organize and track their collections of books, with options for categorization and customization.

Other Relevant Information:

The database supports features such as book search, browsing, and recommendation algorithms to help users discover new books based on their interests and preferences.

#### DDL Statements: 

To ensure usability and functionality of the Bookster database, I initiated the process by structuring the database schema and populating it with relevant data. This involved identifying essential data required for querying and manipulation during the testing phase. 

The following steps were undertaken:

Database Creation

Table Creation


![](https://github.com/AlinaRaluca92/mySQL--proiect/blob/main/DDL.JPG)





#### DML Statements

To utilize the database effectively, I populated the tables with diverse data essential for querying and data manipulation. 

Below are the INSERT instructions created for this project:

Insert data into books table, Inserts into Values 


![](https://github.com/AlinaRaluca92/mySQL--proiect/blob/main/DML.JPG)


#### DQL Statements:


Data Query Language (DQL) is used to retrieve specific data or information from one or multiple tables in a database. 

It primarily consists of the SELECT statement, which allows users to extract data based on various criteria and conditions. Here are some exemples 

![](https://github.com/AlinaRaluca92/mySQL--proiect/blob/main/DQL.JPG)


To emulate diverse real-world scenarios, I devised a set of queries that address various potential situations that could arise.


![](https://github.com/AlinaRaluca92/mySQL--proiect/blob/main/Database.JPG)


## Conclusion

In this project, we have successfully designed and implemented a database schema for an online bookstore application.
We created tables for authors, books, customers, orders, and order_items, establishing relationships between them where necessary.
Using DML statements, we populated the tables with sample data to simulate real-world scenarios.
DQL statements were employed to retrieve and analyze data from the database, ensuring the correctness of the results.
Additionally, the execution report from reverse engineering provides insights into the database structure and performance metrics, aiding in further optimization if necessary.


![Execution Report](https://github.com/AlinaRaluca92/mySQL--proiect/blob/main/Capture.JPG)
