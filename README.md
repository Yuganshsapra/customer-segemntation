📊 Customer Segmentation Using SQL

(Olist Brazilian E-commerce Dataset)

📌 Project Overview

This project focuses on customer segmentation using SQL by analyzing customer purchase behavior. The goal is to group customers into meaningful segments based on how often they shop and how much they spend.
The project is rule-based, simple, and designed mainly for learning, exams, and interview preparation.

🎯 Project Objective

The main objectives of this project are:

To understand customer behavior using transactional data

To build a customer-level dataset (one row per real customer)

To segment customers based on purchase frequency and spending

To help businesses use their resources (ads, offers, retention) more effectively

🛠️ Tech Stack Used

SQL (MySQL / SQLite)

CSV Dataset (Olist Brazilian E-commerce)

SQL concepts:

Joins

Aggregations

Grouping

CASE statements

📂 Dataset Description

The project uses the following tables from the dataset:

Customers – customer identity information

Orders – order activity and timestamps

Payments – payment amount details

A key learning point was using customer_unique_id instead of customer_id to correctly identify real customers.

🧠 Project Approach

Imported CSV files into the SQL database

Identified the correct customer identifier (customer_unique_id)

Calculated:

Order frequency per customer

Total spending per customer

Created a customer-level dataset

Calculated dataset averages for frequency and spending

Applied rule-based segmentation using average values

🧩 Customer Segments Created

Customers were divided into four segments:

Loyal Customers
High frequency & high spending

High-Value At-Risk Customers
Low frequency & high spending

Active Low-Value Customers
High frequency & low spending

Casual / Low-Engagement Customers
Low frequency & low spending

📈 Business Value

This segmentation helps a company:

Identify its most valuable customers

Detect customers who are at risk of leaving

Allocate marketing resources efficiently

Understand overall customer behavior patterns

📚 Key Learnings

Importance of correct customer identifiers

Handling real-world data inconsistencies

Writing clean and explainable SQL queries

Translating raw data into business insights

Building end-to-end SQL analysis projects

🚀 Future Scope

Dynamic segmentation using time-based analysis

Integration with dashboards (Power BI / Tableau)

Applying machine learning for automated segmentation

✅ Conclusion

This project demonstrates how SQL alone can be used to build meaningful customer insights. It highlights strong fundamentals in data analysis, logical thinking, and business interpretation, making it suitable for academic evaluation and entry-level data roles.
