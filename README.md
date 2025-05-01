# Dheeraj-Akash-library-management-system-sql-cs504

# Library Management System (SQL-Based)

This project is a comprehensive Library Management System built using relational database concepts and implemented in SQL. It was developed as part of the CS504 course at George Mason University.

## 📌 Project Overview

The system helps library staff manage books, magazines, digital media, and member information. It supports borrowing transactions, overdue tracking, and generates useful reports for better decision-making.

## 🧱 Key Features

- **Materials Management**: Store and manage data for books, magazines, e-books, audiobooks, etc.
- **Membership Management**: Handle patron contact information and borrowing history.
- **Borrowing System**: Track check-in/check-out, due dates, and return updates.
- **Reporting & Analytics**: Queries for overdue items, most borrowed books, and popular genres.
- **Automation Design**: Alert system for overdue materials and deactivation/reactivation of memberships.

## 🛠️ Technologies Used

- **SQL** (DDL & DML)
- **PostgreSQL / MySQL** (can be adapted)
- **ER Modeling**
- **Data Normalization**

## 🗃️ Database Schema

Includes the following major entities:
- `Material`
- `Catalog`
- `Genre`
- `Author`
- `Authorship`
- `Member`
- `Staff`
- `Borrow`

Relationships are maintained through appropriate foreign keys, and sample data is preloaded.

## 📂 File Structure

- `Fin Proj code.sql` – Full SQL implementation of schema, sample data, and query examples.
- `CS Fin Proj report.pdf` – Detailed project report including ER diagram, features, design decisions, and automation strategies.

## 💡 Sample SQL Queries

- Find top 5 most published authors
- Identify overdue materials
- Track most borrowed genres
- Automate overdue alerts and membership deactivation logic

## 📈 Future Enhancements

- Integrate with a front-end UI using Streamlit or Flask
- Connect with a scheduler (e.g., Python + Cron) for daily alert automation
- Add stored procedures or triggers for tighter logic enforcement

## 🧑‍💻 Author

**Dheeraj Akash Dokuparthy**  
CS504 Project | Fall 2023  
George Mason University  
Student ID: G01446992

---

Feel free to fork this project, suggest improvements, or reach out for collaboration!
