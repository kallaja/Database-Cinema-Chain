# 🎬 Cinema Chain Database Project

This project contains the SQL script for building a relational database designed for managing a cinema chain. The structure was created as part of a university course project and reflects real-world business logic 
for handling movies, cinemas, tickets, and customer interactions.

## 🗂️ Overview

The database was developed using **MariaDB** and exported via **Navicat Premium**. It includes tables related to movies, cinema locations, screenings, ticketing, orders, discounts, and user roles.

## 🔧 Technologies

- Database System: **MariaDB**
- Export Tool: **Navicat Premium**

## 📑 Database Structure (Key Tables)

### 🎟️ `bilety` → `tickets`
Stores individual ticket information.

| Field (PL)      | Field (EN)       |
|-----------------|------------------|
| ID              | ID               | 
| ID_zamowienia   | order_id         |
| rzad            | row              | 
| miejsce         | seat             |
| zeskanowane     | scanned          |
| ID_znizka       | discount_id      |

---

### 🧾 `zamowienia` → `orders`
Represents customer orders.

| Field (PL)       | Field (EN)     | 
|------------------|----------------|
| ID               | ID             | 
| ID_uzytkownika   | user_id        |
| data_zamowienia  | order_date     |
| laczna_kwota     | total_price    |

---

### 🏢 `kina` → `cinemas`
Contains information about each cinema location.

| Field (PL)   | Field (EN)    |
|--------------|---------------|
| ID           | ID            | 
| nazwa        | name          | 
| miasto       | city          |

---

### 🎥 `filmy` → `movies`
Stores data about available movies.

| Field (PL)   | Field (EN)     |
|--------------|----------------|
| ID           | ID             |
| tytul        | title          |
| czas_trwania | duration       | 
| gatunek      | genre          | 

---

### ⏰ `seanse` → `screenings`
Links movies to cinemas and shows the scheduled screenings.

| Field (PL)     | Field (EN)     |
|----------------|----------------|
| ID             | ID             | 
| ID_film        | movie_id       |
| ID_kino        | cinema_id      | 
| data_seansu    | screening_date | 
| sala           | hall           | 

---

## 💡 Key Concepts Demonstrated

- **Relational database design** with foreign keys and indexing
- **Normalization** of data (separate tables for discounts, roles, etc.)
- Handling **many-to-one** and **many-to-many** relationships
- **Real-world scenario modeling** for cinema operations

## 📥 How to Use

1. Open your MariaDB/MySQL-compatible environment (e.g., MySQL Workbench, DBeaver, Navicat).
2. Create a new schema/database (e.g., `cinema_chain`).
3. Run the SQL script provided in this repository to build the schema and tables.
4. You can then populate it with data manually or via additional scripts.

## 🌍 Language Notes

The table and column names in the SQL script are in **Polish**, but this README provides English translations to make the project understandable.  


