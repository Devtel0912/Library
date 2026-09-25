# Library Management System

A database project built with **PostgreSQL, Liquibase, SQL, and GitHub**.

## Technologies

* PostgreSQL
* SQL
* Liquibase
* Git
* GitHub
* VS Code

## About

A relational database project for managing basic library operations such as members, books, copies, loans, reservations, and fines.

SQL is used to create and manage the database, while Liquibase is used to track database changes.

## Project Structure

```text
Library/
│
├── README.md
├── .gitignore
├── liquibase.properties
│
├── drivers/
│
├── changelog/
│   └── db.changelog-master.xml
│
└── sql/
    ├── 001-create-members.sql
    ├── 002-create-authors.sql
    ├── 003-create-categories.sql
    ├── 004-create-books.sql
    ├── 005-create-book-copies.sql
    ├── 006-create-loans.sql
    ├── 007-create-reservations.sql
    └── 008-create-fines.sql
```

## Database

The project currently includes tables for:

* Members
* Authors
* Categories
* Books
* Book Copies
* Loans
* Reservations
* Fines

## Liquibase

Liquibase manages the SQL database changes and tracks which changes have been applied.

Common commands:

```bash
liquibase validate
liquibase status
liquibase update-sql
liquibase update
```

## Goals

* Practice PostgreSQL and SQL
* Learn database change management with Liquibase
* Practice database design
* Use Git and GitHub for version control

## Status

**In Development**
