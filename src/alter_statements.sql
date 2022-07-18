/*///////////////////////////////////////////////////////////////////////////////////////////*/
/* Write 5 different (add, drop and constraints) ALTER TABLE statements */

/* 1) The administration wants to identify each floor with the unique ID assigned to it. */

ALTER TABLE Floor
ADD PRIMARY KEY(Floor_id);

/* 2) The administration wants to make sure that the vehicle ID of each vehicle is inserted. */

ALTER TABLE Vehicle
ALTER Vehicle_id SET NOT NULL;

/* The administration wants to collect one more information about the payment – its currency. */

ALTER TABLE Payment
ADD COLUMN Currency varchar;

/* The administration wants to connect the name of the block from the parking slot table with the name of the block from the block table. */

ALTER TABLE Parking_Slot
ADD FOREIGN KEY(Block_name) REFERENCES Block(Block_name);

/* 5) The administration decided that the currency of the payment is an unnecessary information and decided to delete it. */

ALTER TABLE Payment DROP COLUMN Currency;

