📊 Customer Segmentation Dashboard

(Using SQL + Streamlit | Olist Brazilian E-commerce Dataset)

📌 Project Overview

This project focuses on customer segmentation using SQL and visualizing the results through an interactive dashboard built with Python and Streamlit.

The segmentation is performed using rule-based logic on customer purchase behavior (frequency and spending), and the results are displayed in a dynamic dashboard for better understanding and decision-making.

🎯 Project Objectives
Analyze customer behavior using transactional data
Build a customer-level dataset (one row per real customer)
Segment customers based on purchase frequency and spending (AOV)
Visualize insights using an interactive dashboard
Help businesses optimize marketing and retention strategies
🛠️ Tech Stack Used
SQL (MySQL / SQLite)
Python
Streamlit (for dashboard)
Pandas (for data handling)
Dataset: Olist Brazilian E-commerce
📂 Dataset Description

The project uses the following datasets:

Customers – customer identity information
Orders – order activity and timestamps
Payments – transaction/payment details

🔑 Key Learning:
Used customer_unique_id instead of customer_id to correctly identify real customers.

🧠 Project Approach
🔹 Data Processing (SQL)
Imported CSV data into database
Performed joins across tables
Calculated:
Order frequency per customer
Total spending per customer
Created a customer-level table (customer_segment)
Computed:
Average Order Value (AOV)
Customer segmentation using rule-based logic
🔹 Data Visualization (Dashboard)
Connected database to Python using MySQL connector
Loaded data using Pandas
Built interactive dashboard using Streamlit
Displayed:
Customer data table
Customer segmentation graphs
AOV analysis
Key metrics (Total Customers, Avg AOV)
Filtering options
🧩 Customer Segments

Customers are divided into four categories:

Loyal Customers → High frequency & high spending
High-Value At-Risk Customers → Low frequency & high spending
Active Low-Value Customers → High frequency & low spending
Casual / Low-Engagement Customers → Low frequency & low spending
📊 Dashboard Features
📌 Total Customers & Average AOV
📊 Customer Type Distribution
📊 AOV Analysis by Segment
🔍 Filter customers by type
📈 Interactive visualizations
💡 Business Value

This project helps businesses:

Identify high-value customers for retention
Detect at-risk customers early
Improve marketing strategies
Allocate resources efficiently
Understand overall customer behavior
📚 Key Learnings
Importance of correct customer identifiers
Writing structured and efficient SQL queries
Converting raw data into meaningful insights
Integrating SQL with Python for real-world applications
Building end-to-end data analysis + dashboard project
⚙️ Setup & Execution
1️⃣ Install Dependencies
pip install streamlit pandas mysql-connector-python
2️⃣ Setup Database
Create database: segmentation
Create table: customer_segment
Insert processed segmentation data
3️⃣ Configure Database Connection

Update in app.py:

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="YOUR_PASSWORD",
    database="segmentation"
)
4️⃣ Run the Dashboard
streamlit run app.py
🚀 Future Scope
Add time-based dynamic segmentation
Integrate with Power BI / Tableau
Apply machine learning for predictive segmentation
Deploy dashboard online
✅ Conclusion

This project demonstrates a complete pipeline:

SQL Data Processing → Customer Segmentation → Dashboard Visualization

It highlights strong fundamentals in:

Data analysis
SQL
Business understanding
Dashboard development

Making it suitable for academic evaluation, internships, and entry-level data roles.

👨‍💻 Author

Yugansh Sapra
B.Tech CSE Student
