# 📊 Customer Segmentation Project Flow

This document explains the complete workflow of the project from raw data to final dashboard.

---

## 🔹 Step 1: Data Collection
- Used Olist Brazilian E-commerce dataset
- Dataset includes customers, orders, and payments data

---

## 🔹 Step 2: Data Import
- Imported CSV files into MySQL database
- Created tables to store structured data

---

## 🔹 Step 3: Data Processing
- Performed joins between:
  - customers
  - orders
  - payments
- Used `customer_unique_id` to identify real customers

---

## 🔹 Step 4: Feature Engineering
Calculated key metrics:
- Total spending per customer
- Order frequency per customer
- Average Order Value (AOV)

---

## 🔹 Step 5: Customer Segmentation
Applied rule-based segmentation:
- High Value → High spending
- Medium Value → Moderate spending
- Low Value → Low spending

---

## 🔹 Step 6: Dashboard Development
- Connected MySQL with Python
- Used Pandas for data handling
- Built dashboard using Streamlit

Dashboard includes:
- Customer distribution graph
- AOV analysis
- Filter options

---

## 🔹 Final Output
- Interactive dashboard
- Business insights from customer data
