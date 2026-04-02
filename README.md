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

## 📂 Dataset  

This project uses the **Olist Brazilian E-commerce Dataset**.

🔗 Dataset Link:https://www.kaggle.com/code/yacinerouizi/e-commerce-customer-segmentation/input?select=olist_geolocation_dataset.csv

Dataset includes:
- Customers  
- Orders  
- Payments  

---

## 🧠 Project Approach  

### 🔹 Data Processing (SQL)
- Imported dataset into MySQL  
- Performed joins across customers, orders, and payments  
- Used `customer_unique_id` for accurate customer identification  

### 🔹 Feature Engineering
- Calculated:
  - Total spending per customer  
  - Order frequency  
  - Average Order Value (AOV)  

### 🔹 Customer Segmentation
Customers are divided into:
- High Value → High spending  
- Medium Value → Moderate spending  
- Low Value → Low spending  

### 🔹 Dashboard Development
- Connected MySQL with Python  
- Used Pandas for data handling  
- Built interactive dashboard using Streamlit  

---

## 📊 Features  

- Customer segmentation (High / Medium / Low Value)  
- AOV (Average Order Value) analysis  
- Customer distribution graphs  
- Interactive dashboard  
- Filter customers by type  

---

## 📸 Dashboard Preview  

<img width="984" height="762" alt="image" src="https://github.com/user-attachments/assets/be1f0918-ae74-4edf-b3f3-f8f7029e7921" />
<img width="1344" height="814" alt="image" src="https://github.com/user-attachments/assets/696dafb1-d2df-41ca-a83b-684be97fd865" />


---

## ⚙️ How to Run This Project  

Follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/customer-segmentation-dashboard.git
   cd customer-segmentation-dashboard

Install dependencies:

pip install -r requirements.txt

Setup MySQL database:

CREATE DATABASE segmentation;
CREATE TABLE customer_segment (
    customer_id INT,
    total_payment FLOAT,
    total_orders INT,
    AOV FLOAT,
    customer_type VARCHAR(50)
);
Insert data:
Use dataset and SQL queries from the project

Configure database connection in app.py:

password="YOUR_PASSWORD"

Run the application:

streamlit run app.py

Open in browser:

http://localhost:8501

💡 **Business Insights**
High-value customers contribute the most revenue.

Medium-value customers have growth potential.

Low-value customers need engagement strategies.

📚 **Learning Outcomes**
SQL joins and data processing.

Customer segmentation techniques.

Data visualization using Streamlit.

Converting raw data into business insights.

**🚀 Future Improvements**
Add churn prediction.

Apply machine learning for segmentation.

Deploy dashboard online.
