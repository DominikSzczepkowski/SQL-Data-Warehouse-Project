# 📊 Store Sales Dashboard Documentation

## Dashboard Screenshots
<a href="https://ibb.co/1J0L0hvZ"><img src="https://i.ibb.co/84m0mTKM/page-1.png" alt="page-1" border="0"></a>
<a href="https://ibb.co/QvhqMp1q"><img src="https://i.ibb.co/Dfm6QzS6/page-2.png" alt="page-2" border="0"></a>
<a href="https://ibb.co/XNX2fHy"><img src="https://i.ibb.co/FN6xkps/page-3.png" alt="page-3" border="0"></a>
<a href="https://ibb.co/fVpJ2Rmv"><img src="https://i.ibb.co/6cPQmh6B/page-4.png" alt="page-4" border="0"></a>

## 🔍 Overview

The **Store Sales Dashboard** provides actionable insights into sales performance, customer details, and shipping data. It is designed to track **order details**, **customer demographics**, **product sales**, and **financial metrics** over a specified period.

## 📅 Period Covered
- **Date Range**: 12/29/2010 - 1/28/2014

## 📈 Overview Page KPIs

Top-level summary cards display key performance indicators with month-over-month (MoM) comparisons.

| KPI            | Value       | MoM Change | Details                          |
|----------------|-------------|------------|----------------------------------|
| 🪙 Total Amount | $43,521,921 | ▲ 3.5%     | Monthly avg: $387,206 (Dec vs Nov) |
| 👕 Units Sold   | 89,849      | ▲ 4.9%     | Monthly avg: 79.9 (Dec vs Nov)   |
| 📦 Orders       | 89,818      | ▲ 4.9%     | Monthly avg: 79.9 (Dec vs Nov)   |

## 📋 Table Views

### Order Details Table
Detailed breakdown of individual orders:

| Column       | Description                  |
|--------------|------------------------------|
| ORDER_NUMBER | Unique order identifier      |
| COUNTRY      | Customer's country           |
| ORDER_DATE   | Date the order was placed    |
| SHIPPING_DATE| Date the order was shipped   |
| DUE_DATE     | Expected delivery date       |
| Date_diff    | Difference in days           |
| COST         | Cost of the order            |
| ITEMS        | Number of items              |
| TOTAL        | Total amount                 |
| NET_PROFIT   | Profit after costs           |

### Product Sales Table
Breakdown of product sales by category and subcategory:

| Column          | Description                  |
|-----------------|------------------------------|
| Category        | Product category (e.g., Accessories) |
| Subcategory     | Product subcategory (e.g., Bike Racks) |
| Product Name    | Specific product (e.g., Hitch Rack - 4 Bike) |
| Units Sold      | Quantity sold                |
| Total Amount    | Total revenue generated      |

### Customer Details Table
Information about customers and their purchasing behavior:

| Column       | Description                  |
|--------------|------------------------------|
| ID           | Unique customer identifier   |
| NUMBER       | Customer number              |
| COUNTRY      | Customer's country           |
| FIRST_NAME   | Customer's first name        |
| LAST_NAME    | Customer's last name         |
| GENDER       | Customer gender              |
| BIRTHDAY     | Customer's birth date        |
| STATUS       | Marital status               |
| ORDERS       | Number of orders             |
| ITEMS        | Number of items purchased    |
| TOTAL        | Total amount spent           |

## 📊 Visual Highlights

- **Trend Line Chart**: Tracks Total Amount, Units Sold, and Orders over time.
- **Category Bar Chart**: Displays sales distribution by product category (e.g., Bikes, Accessories, Clothing).
- **Country Distribution Chart**: Shows customer distribution by country percentage.

## ✅ Stakeholder Benefits

- **Sales Teams**: Identify top-performing products and countries.
- **Finance Teams**: Monitor revenue and profit trends.
- **Logistics Teams**: Analyze shipping timelines and efficiency.
- **Marketing Teams**: Target campaigns based on customer demographics and purchasing patterns.
