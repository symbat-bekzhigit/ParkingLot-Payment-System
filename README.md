# ParkingLot-Payment-System

The purpose of our Parking Lot Payment System is to ensure the efficient and easy data manipulation of the parking lot system for a particular organization. Our system’s main idea is about storing certain essential information about the customer of the shopping center’s parking lot and making sure that the amount of the parking cost is consistent with the amount of the parking rate for that particular customer.


**Business rules:**
- The parking lot contains one or more floors. Floor contains one or more blocks.
- Block contains one or more parking slots. One customer parks one vehicle.
- One vehicle occupies one parking slot.
- There are two types of parking slots: two-wheel and four-wheel.
- The parking lot has 2 gates: one at the entrance panel and one at exit panel.
- Customers receive a parking card at the entrance panel.
- Each customer receives a unique parking card.
- Each parking card has a unique parking rate (amount of time passed since the start of the parking).
- Payment amount is calculated according to the parking rate.
- Parking rate rules: Staying on the parking from 0-15 minutes – Free of charge. From 15-60 minutes – 100 tenge. For each subsequent hour – 100 tenge.
- Customer can choose only one type of payment method: cash or credit card.
- Customer enters the parking card at the exit panel to make a payment.
- Once the payment is made, the gate opens.
- Customers can stay in the parking lot maximum for 15 hours (from the start of the working hours till the end of the working hours: from 9 am to 00 am).


P.S. This system was created in collaboration with one of my groupmates. I was responsible for the creation of the database and logical organization of its entities, attributes, and constraints. I have also maintained all the technical part of our project related to creating tables, inserting values for them, writing the altering/deleting, query codes, as well as providing explanatory comments for them.
