CREATE DATABASE OLA;
USE OLA;
SELECT COUNT(*) AS total_records FROM BOOKING;
SELECT * FROM BOOKING;
# SQL Questions:
#1. Retrieve all successful bookings:
SELECT * FROM bookings WHERE Booking_Status = 'Success';

#2. Find the average ride distance for each vehicle type:
select * from booking;
SELECT VEHICLE_TYPE, AVG(RIDE_DISTANCE) AS AVERAGE_DISTANCE FROM BOOKING group by VEHICLE_TYPE;

#3. Get the total number of cancelled rides by customers:
SELECT * FROM BOOKING;
SELECT COUNT(*) FROM BOOKING WHERE BOOKING_STATUS = "Canceled by Customer";


#4. List the top 5 customers who booked the highest number of rides:
select * from booking;
select CUSTOMER_ID , COUNT(BOOKING_ID) AS TOTAL_RIDES FROM BOOKING 
group by CUSTOMER_ID
ORDER BY TOTAL_RIDES DESC 
LIMIT 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT * FROM BOOKING;
select COUNT(*) FROM BOOKING
WHERE CANCELED_RIDES_BY_DRIVER = "Personal & Car related issue";
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from booking;
select max(DRIVER_RATINGS) as max_rating , min(DRIVER_RATINGS) AS MIN_RATINGS
FROM BOOKING
WHERE VEHICLE_TYPE="PRIME SEDAN";

#7. Retrieve all rides where payment was made using UPI:
SELECT * FROM BOOKING;
SELECT COUNT(*) AS TOTAL_COUNT FROM BOOKING where PAYMENT_METHOD="UPI";

#8. Find the average customer rating per vehicle type:
SELECT * FROM BOOKING;
SELECT VEHICLE_TYPE ,avg(CUSTOMER_RATING) AS TOTAL_RATING 
FROM BOOKING
group by VEHICLE_TYPE;

#9. Calculate the total booking value of rides completed successfully:
SELECT * FROM BOOKING;
SELECT SUM(Booking_Value) as total_successful_value FROM booking WHERE
Booking_Status = 'Success';
SELECT SUM(BOOKING_VALUE) AS TOTAL_SUCESSFUL_VALUE FROM BOOKING
WHERE BOOKING_STATUS="SUCCESS";

#10. List all incomplete rides along with the reason:
SELECT * FROM BOOKING;
SELECT Booking_ID, Incomplete_Rides_Reason FROM booking WHERE Incomplete_Rides =
'Yes';

