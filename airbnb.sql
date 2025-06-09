CREATE DATABASE IF NOT EXISTS airbnb;
USE airbnb;
CREATE TABLE airbnb_data (
    id INT Primary key,
    log_price FLOAT,
    property_type VARCHAR(100),
    room_type VARCHAR(50),
    accommodates INT,
    bathrooms FLOAT,
    bed_type VARCHAR(50),
    city VARCHAR(50),
    first_review date,
    host_since date,
    instant_bookable CHAR(1),
    last_review date,
    neighbourhood VARCHAR(100),
    number_of_reviews INT,
    review_scores_rating INT,
    zipcode INT,
    price INT
);

select * from airbnb_data;

#1. What is the distribution of listing prices
select count(price) as frequency,
price
from airbnb_data
group by price
order by frequency desc;

#2. How does price vary by room type
select room_type, 
sum(price) as price
from airbnb_data
group by room_type
order by price;

#3. Which city have the most listings
select city, 
count(city) as Listings
from airbnb_data
group by city
order by listings desc;

#4. Relation between price and number of reviews
select price, count(number_of_reviews) as num_reviews
from airbnb_data
group by price
order by num_reviews desc;

#5. how number of reviews have changed over time
select year(last_review) as review_year, count(number_of_reviews) as num_reviews
from airbnb_data
group by review_year
order by num_reviews desc;

# 6. How price vary by property type
select property_type, sum(price) as price
from airbnb_data
group by property_type
order by price desc;







