# 📊 Semantic Model Documentation: Store Sales Data Model

## Overview
This document outlines the structure and relationships of the semantic model designed for analyzing store sales data. The model integrates data from multiple dimensions to provide insights into sales performance, customer behavior, product details, and temporal trends.

<a href="https://ibb.co/xt2MYCx8"><img src="https://i.ibb.co/8LmjbK14/semantic-model.png" alt="semantic-model" border="0"></a>

## Data Model Components

### 1. 🌐 `gold_dim_products`
- **Description**: Contains detailed information about products available in the store.
- **Fields**:
  - `category`: Product category.
  - `category_image_URL`: URL of the category image.
  - `category_id`: Unique identifier for the product category.
  - `cost`: Cost of the product.
  - `maintenance`: Maintenance details or cost associated with the product.
  - `product_id`: Unique identifier for the product.
  - `product_key`: Key linking to the fact table.
  - `product_line`: Product line classification.
  - `product_name`: Name of the product.
- **Relationship**: One-to-many relationship with `gold_fact_sales` via `product_key`.

### 2. 👤 `gold_dim_customers`
- **Description**: Stores customer-related data for sales analysis.
- **Fields**:
  - `birthdate`: Customer's birth date.
  - `country`: Customer's country.
  - `create_date`: Date the customer record was created.
  - `customer_id`: Unique identifier for the customer.
  - `customer_key`: Key linking to the fact table.
  - `customer_number`: Customer's assigned number.
  - `first_name`: Customer's first name.
  - `flag_image_URL`: URL of the country flag image.
  - `gender`: Customer's gender.
- **Relationship**: One-to-many relationship with `gold_fact_sales` via `customer_key`.

### 3. 📅 `dim_date`
- **Description**: Provides temporal dimensions for time-based analysis.
- **Fields**:
  - `Date`: Full date.
  - `Month`: Month name or number.
  - `Month Number`: Numerical representation of the month.
  - `Quarter`: Quarter of the year.
  - `Year`: Year of the date.
- **Relationship**: One-to-many relationship with `gold_fact_sales` via date fields (e.g., `order_date`, `due_date`, `shipping_date`).

### 4. 💰 `gold_fact_sales`
- **Description**: Central fact table containing sales transaction data.
- **Fields**:
  - `customer_key`: Foreign key linking to `gold_dim_customers`.
  - `date_diff`: Difference in days between order and due date.
  - `due_date`: Expected delivery date.
  - `order_date`: Date the order was placed.
  - `order_number`: Unique identifier for the order.
  - `price`: Price of the product.
  - `product_key`: Foreign key linking to `gold_dim_products`.
  - `quantity`: Quantity of items sold.
  - `sales_amount`: Total sales amount for the transaction.
- **Relationships**:
  - One-to-one with `gold_dim_products` via `product_key`.
  - One-to-one with `gold_dim_customers` via `customer_key`.
  - One-to-many with `dim_date` via `order_date`, `due_date`, and other date fields.

## Data Relationships
- **Star Schema**: The model follows a star schema design with `gold_fact_sales` as the central fact table, surrounded by dimension tables (`gold_dim_products`, `gold_dim_customers`, and `dim_date`).
- **Cardinality**:
  - `gold_dim_products` to `gold_fact_sales`: 1:N
  - `gold_dim_customers` to `gold_fact_sales`: 1:N
  - `dim_date` to `gold_fact_sales`: 1:N

## Usage
- **Sales Analysis**: Analyze sales performance by product, customer demographics, and time periods.
- **Inventory Management**: Use product cost and maintenance data for inventory planning.
- **Customer Segmentation**: Leverage customer details for targeted marketing campaigns.
- **Trend Analysis**: Utilize date dimensions to identify seasonal trends and patterns.

## Notes
- The model is optimized for reporting and analytical queries, ensuring efficient data retrieval for dashboards and visualizations.
- Ensure data integrity by maintaining unique keys across dimension and fact tables.
