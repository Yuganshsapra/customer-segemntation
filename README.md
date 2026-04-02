# 📊 Customer Segmentation Dashboard  
*(Using SQL + Streamlit | Olist E-commerce Dataset)*

---

## 📌 Overview  

This project is a **Customer Segmentation Dashboard** built using SQL, Python, and Streamlit.  
It analyzes customer purchase behavior and segments them based on **spending (AOV)** and **purchase frequency**.

The goal is to transform raw data into **meaningful insights** that help businesses make better decisions.

---

## 🎯 Objectives  

- Analyze customer behavior using transactional data  
- Build a customer-level dataset  
- Segment customers into meaningful groups  
- Visualize insights using an interactive dashboard  

---

## 🛠️ Tech Stack  

- SQL (MySQL)  
- Python  
- Streamlit  
- Pandas  

---

## 📂 Project Structure  


customer-segmentation-dashboard/
│
├── app.py
├── README.md
├── requirements.txt
├── .gitignore
│
├── data/
│ ├── olist_customers_dataset.csv
│ ├── olist_orders_dataset.csv
│
├── sql/
│ ├── table_creation.sql
│ ├── customer_dataset.sql
│ ├── aov_customer_type.sql
│ ├── segmentation.sql
│
└── docs/
└── project_flow.md


---

## 🔄 Project Workflow  

Raw Data → SQL Processing → Customer Segmentation → Streamlit Dashboard → Insights  

---

## 📊 Features  

- Customer segmentation (High / Medium / Low Value)  
- AOV (Average Order Value) analysis  
- Customer distribution graphs  
- Interactive dashboard  
- Filter customers by type  

---

## 📸 Dashboard Preview  


<img width="984" height="762" alt="image" src="https://github.com/user-attachments/assets/c81ccbb2-4b14-4475-98a6-714d78cc8b41" />


<img width="1051" height="789" alt="image" src="https://github.com/user-attachments/assets/0de23ea3-493d-4dd0-9b9e-3b08a5f4c140" />



---

## ⚙️ How to Run This Project  

Follow these steps to run the project on your system:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/customer-segmentation-dashboard.git
   cd customer-segmentation-dashboard

Install required libraries:

pip install -r requirements.txt
Setup MySQL database:
Make sure MySQL is installed and running

Create database:

CREATE DATABASE segmentation;

Create table:

CREATE TABLE customer_segment (
    customer_id INT,
    total_payment FLOAT,
    total_orders INT,
    AOV FLOAT,
    customer_type VARCHAR(50)
);
Insert data manually or use SQL files from sql/ folder
Configure database connection:
Open app.py

Replace:

password="YOUR_PASSWORD"

with your MySQL password

Run the Streamlit app:

streamlit run app.py
Open in browser:
http://localhost:8501

📌 Notes
Ensure MySQL server is running
Table name should be customer_segment
Check column names if facing errors

💡 Business Insights
High-value customers contribute most revenue
Medium-value customers have growth potential
Low-value customers need engagement strategies

📚 Learning Outcomes
SQL data processing and joins
Customer segmentation logic
Data visualization using Streamlit
Converting raw data into business insights

🚀 Future Improvements
Add churn prediction
Use machine learning for segmentation
Deploy dashboard online
