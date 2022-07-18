/*///////////////////////////////////////////////////////////////////////////////////////////*/
/* UPDATING and DELETING from tables */

UPDATE Gate
SET gate_status = 'opened'
WHERE gate_status_id = 'ALA03_E11';

DELETE FROM Gate
WHERE gate_status_id = 'ALA03_E13';

UPDATE Payment
SET payment_status = 'paid' 
WHERE payment_id = 'P813ME';

DELETE FROM Payment 
WHERE payment_id = 'P813ME';

UPDATE Parking_rate
SET time_passed = '02:05' 
WHERE customer_id = 811;

DELETE FROM Parking_rate 
WHERE customer_id = 813;

UPDATE Customer
SET arrival_time = '13:55' 
WHERE customer_id = 813;

DELETE FROM Customer 
WHERE customer_id = 813;

UPDATE Parking_card
SET payment_method = 'credit card'
WHERE parking_card_id = 8813; 

DELETE FROM Parking_card 
WHERE parking_card_id = 8813;

UPDATE Vehicle
SET vehicle_type = 'four-wheel' 
WHERE slot_id = 288;

DELETE FROM Vehicle 
WHERE slot_id = 288;

UPDATE Parking_slot 
SET slot_id = 299
WHERE block_name = 'M';

DELETE FROM Parking_slot 
WHERE block_name = 'M';

UPDATE Floor
SET floor_number = '1st floor' 
WHERE floor_id = '4_M';

DELETE FROM Floor 
WHERE floor_id = '4_M';

UPDATE Block
SET parking_type = 'four-wheel' 
WHERE block_name = 'M';

DELETE FROM Block 
WHERE block_name = 'M';

UPDATE parking_lot
SET organization_name = 'Mega Silk Way' 
WHERE lot_id = 'AST05';

DELETE FROM Parking_lot 
WHERE lot_id = 'ALA04';



