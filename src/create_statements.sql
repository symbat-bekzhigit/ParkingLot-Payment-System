/*///////////////////////////////////////////////////////////////////////////////////////////*/
/* Create databases: tables with entities (tables) and constraints (PK, FK, UK, and etc.); */

CREATE TABLE Block( 
    Block_name varchar, 
    Parking_type varchar, 
    Slots_number int, 
    Slots_list text,
        PRIMARY KEY(Block_name) );
        
CREATE TABLE Floor( 
    Floor_id varchar,
    Lot_id varchar, 
    Floor_number varchar, 
    Block_name varchar,
        FOREIGN KEY(Block_name) REFERENCES Block(Block_name) );
        
CREATE TABLE Parking_slot( 
    Slot_id int,
    Block_name varchar,
    PRIMARY KEY(Slot_id) );
    
CREATE TABLE Vehicle( 
    Vehicle_id varchar, 
    Vehicle_type varchar, 
    Slot_id int,
        PRIMARY KEY(Vehicle_id),
        FOREIGN KEY(Slot_id) REFERENCES Parking_slot(Slot_id) );
        
CREATE TABLE Parking_card( 
    Parking_card_id int, 
    Payment_method varchar,
        PRIMARY KEY(Parking_card_id) );
        
CREATE TABLE Customer( 
    Customer_id int,
    Vehicle_id varchar, 
    Parking_card_id int, 
    Arrival_date date, 
    Arrival_time time, 
    Departure_time time,
        PRIMARY KEY(Customer_id),
        FOREIGN KEY(Vehicle_id) REFERENCES Vehicle(Vehicle_id),
        FOREIGN KEY(Parking_card_id) REFERENCES Parking_card(Parking_card_id)
);

CREATE TABLE Parking_rate( 
    Parking_rate_id varchar,
    Customer_id int, 
    Time_passed time,
        PRIMARY KEY(Parking_rate_id),
        FOREIGN KEY(Customer_id) REFERENCES Customer (Customer_id) );
        
CREATE TABLE Payment( 
    Payment_id varchar, 
    Parking_rate_id varchar, 
    Amount int,
    Payment_status varchar,
        PRIMARY KEY(Payment_id),
        FOREIGN KEY(Parking_rate_id) REFERENCES Parking_rate(Parking_rate_id)
);

CREATE TABLE Gate( 
    Gate_status_id varchar, 
    Gate_type varchar, 
    Gate_status varchar, 
    Customer_id int,
        PRIMARY KEY(Gate_status_id),
        FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id) );

