-- create database
CREATE database Ecommercedb;
-- using the database to enter the tables
USE Ecommercedb;
-- creating brand table
CREATE TABLE brand (
  brand_id int PRIMARY KEY,
  name varchar(255),
  description  text
);
--  creating product_category table
CREATE TABLE product_category (
  category_id int PRIMARY KEY,
  name varchar(255),
  description text
);
-- creating product table
CREATE TABLE product (
  product_id int PRIMARY KEY,
  name  varchar(255),
  brand_id int,
  category_id  int,
  base_price  decimal,
  description  text
);
-- creating  product_image table
CREATE TABLE product_image  (
   image_id  int PRIMARY KEY,
  product_id  int,
  image_url  varchar(255)
);
-- creating color table
CREATE TABLE  color  (
  color_id   int PRIMARY KEY,
   name  varchar(255),
  hex_value  varchar(255)
);
-- creating size_category table
CREATE TABLE size_category (
  size_category_id  int PRIMARY KEY,
  name varchar(255)
);

-- creating size_option table
CREATE TABLE size_option (
  size_option_id  int PRIMARY KEY,
  size_category_id  int,
  size_label varchar(255)
);
-- creating product_variation table
CREATE TABLE product_variation (
  variation_id int PRIMARY KEY,
  product_id int,
  color_id int,
  size_option_id int
);
-- creating product_item  table
CREATE TABLE product_item (
 item_id int PRIMARY KEY,
  variation_id int,
  SKU varchar(255),
  price decimal,
  stock_quantity int
);
-- creating attribute_category  table
CREATE TABLE attribute_category (
  attribute_category_id  int PRIMARY KEY,
   name varchar(255)
);
-- creating attribute_type  table
CREATE TABLE attribute_type (
  attribute_type_id int PRIMARY KEY,
  name varchar(255)
);
-- creating product_attribute table
CREATE TABLE product_attribute (
  attribute_id int PRIMARY KEY,
  product_id int,
  attribute_category_id int,
  attribute_type_id int,
  name varchar(255),
  value varchar(255)
);

