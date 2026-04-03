import streamlit as st
import pandas as pd
import mysql.connector

# Connect to MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="lalipanda",
    database="segmentation"
)

query = "SELECT * FROM customer_segment"
df = pd.read_sql(query, conn)

st.title("Customer Segmentation Dashboard")

# Show data
st.subheader("Customer Data")
st.dataframe(df)

# Segment distribution
st.subheader("Customer Segment Distribution")
st.bar_chart(df['customer_segment'].value_counts())

# Recency distribution
st.subheader("Recency Distribution")
st.bar_chart(df['customer_recency'].value_counts())

# Payment type distribution
st.subheader("Payment Type Distribution")
st.bar_chart(df['payment_type'].value_counts())

st.subheader("Customer Type Distribution")
st.bar_chart(df['customer_type'].value_counts())

st.subheader("AOV by Customer Type")
st.bar_chart(df.groupby('customer_type')['avg_order_value'].mean())

st.metric("Total Customers", len(df))
st.metric("Avg AOV", round(df['avg_order_value'].mean(), 2))

st.write("High Value customers contribute most revenue, so business should focus on retaining them.")