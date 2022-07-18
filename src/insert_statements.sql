/*///////////////////////////////////////////////////////////////////////////////////////////*/
/* INSERTING VALUES into tables */

INSERT INTO Parking_lot(lot_id, organization_name,address,floors_number,floors_list,blocks_number,
blocks_list) VALUES
('ALA01','Mega center «Alma-Ata»','Rozybakiev street 247A, Almaty',2,'1st floor, 2nd floor',4,'A, B, C, D'),
('ALA02','Mega Park','Makataeva street 127/1, Almaty',2,'1st floor, 2nd floor',4,'E, F, G, H'),
('ALA03','Dostyk Plaza',' Samal-2 111, Almaty',2,'1st floor, 2nd floor',4,'I, J, K, L'),
('ALA04','Colibri','Tashkent highway 17k, Almaty,',2,'1st floor, 2nd floor',2,'Q,R'),
('ALA05','Aport Mall','Ave. Tauelsizdik 34, Nur-Sultan',2,'1st floor, 2nd floor',2,'S,T'),
('AST01','Astana Mall','Ave. Tauelsizdik 34, Nur-Sultan',2,'1st floor, 2nd floor',2,'U,V'),
('AST02','Mega-Astana','4 \ 010000, Korgalzhinskoe highway 1, Nur-Sultan',2,'1st floor, 2nd floor',2,'W,X'),
('AST03','Khan Shatyr','Ave. Turan 37, Nur-Sultan',2,'1st floor, 2nd floor',2,'Y,Z'),
('AST04','Keruen City','Kurgalzhinskoe highway 1, Nur-Sultan',2,'1st floor, 2nd floor',2,'A1,A2'),
('AST05','MEGA Silk Way','Ave. Kabanbay Batyr 62, Nur-Sultan',2,'1st floor, 2nd floor',2,'B1,B2');


INSERT INTO Block(block_name,parking_type,slots_number,slots_list) VALUES
('A','four-wheel',25,'101,102,103,104,105,...,125'), 
('B','four-wheel',25,'126,127,128,129,130,...,150'), 
('C','four-wheel',25,'201,202,203,204,205,...,225'), 
('D','two-wheel',50,'226,227,228,229,230,...,275'), 
('E','four-wheel',25,'101,102,103,104,105,...,125'),
('F','four-wheel',25,'126,127,128,129,130,...,150'), 
('G','four-wheel',25,'201,202,203,204,205,...,225'), 
('H','two-wheel',50,'226,227,228,229,230,...,275'), 
('I','four-wheel',25,'101,102,103,104,105,...,125'), 
('J','four-wheel',25,'126,127,128,129,130,...,150'), 
('K','four-wheel',25,'201,202,203,204,205,...,225'), 
('L','two-wheel',50,'226,227,228,229,230,...,275'), 
('M','two-wheel',25,'275,276,277,278,279,...,300');


INSERT INTO Floor(floor_id,lot_id,floor_number,block_name) VALUES
('1_A','ALA01','1st floor','A'),
('1_B','ALA01','1st floor','B'),
('1_C','ALA01','2nd floor','C'), 
('1_D','ALA01','2nd floor','D'), 
('2_E','ALA02','1st floor','E'), 
('2_F','ALA02','1st floor','F'), 
('2_G','ALA02','2nd floor','G'), 
('2_H','ALA02','2nd floor','H'), 
('3_I','ALA03','1st floor','I'), 
('3_J','ALA03','1st floor','J'), 
('3_K','ALA03','2nd floor','K'), 
('3_L','ALA03','2nd floor','L'), 
('4_M','ALA04','2nd floor','M');



INSERT INTO Parking_slot(slot_id,block_name) VALUES
(101,'A'),
(131,'B'),
(221,'C'), 
(231,'D'), 
(102,'E'), 
(132,'F'), 
(222,'G'), 
(232,'H'), 
(103,'I'), 
(133,'J'), 
(223,'K'), 
(233,'L'), 
(288,'M');


INSERT INTO Vehicle(vehicle_id,vehicle_type,slot_id) VALUES
('111ONE', 'four-wheel', 101),
('222TWO', 'four-wheel', 131),
('333TRI', 'four-wheel', 221), 
('123ABC', 'two-wheel', 231), 
('444FOR', 'four-wheel', 102), 
('555FIV', 'four-wheel', 132), 
('666SIX', 'four-wheel', 222), 
('456DEF', 'two-wheel', 232), 
('777SEV', 'four-wheel', 103), 
('888EIT', 'four-wheel', 133), 
('999NIN', 'four-wheel', 223), 
('789HIJ', 'two-wheel', 233), 
('941HEX', 'two-wheel', 288);


INSERT INTO Parking_card(parking_card_id,payment_method) VALUES
(8801, 'cash'),
(8802, 'credit card'),
(8803, 'cash'), 
(8804, 'credit card'), 
(8805, 'cash'), 
(8806, 'credit card'), 
(8807, 'cash'), 
(8808, 'credit card'), 
(8809, 'cash'), 
(8810, 'credit card'), 
(8811, 'credit card'), 
(8812, 'credit card'), 
(8813, 'cash'), 
(8814, 'credit card'), 
(8815, 'cash');

INSERT INTO Customer(customer_id,vehicle_id,parking_card_id,arrival_date,arrival_time,departure_time)
VALUES
(801, '111ONE', 8801,'2020-11-15', '10:00', '11:00'), 
(802, '222TWO', 8802, '2020-11-10', '11:15', '11:29'), 
(803, '333TRI', 8803, '2020-10-28', '13:20', '15:20'), 
(805, '444FOR', 8805, '2020-10-15', '16:00', '20:10'), 
(806, '555FIV', 8806, '2020-10-22', '20:15', '20:30'), 
(808, '456DEF', 8808, '2020-11-10', '20:00', '21:00'), 
(809, '777SEV', 8809, '2020-11-08', '11:00',' 17:00'), 
(810, '888EIT', 8810, '2020-10-07', '13:46', '14:36'), 
(811, '999NIN', 8811, '2020-11-17', '11:00', '15:05');


INSERT INTO Customer(customer_id,vehicle_id,parking_card_id,arrival_date,arrival_time) 
VALUES
(804, '123ABC', 8804, '2020-11-17', '14:12'),
(807, '666SIX', 8807, '2020-11-17', '16:00'),
(812, '789HIJ', 8812, '2020-11-17', '15:12'), 
(813, '941HEX', 8813, '2020-11-17', '13:35');

INSERT INTO Parking_rate(parking_rate_id,customer_id,time_passed) VALUES
('R801RE', 801, '01:00'),
('R802FR', 802,'00:14'),
('R803ED', 803, '03:00'), 
('R805GH', 805, '04:10'), 
('R806DL', 806, '00:15'), 
('R808LD', 808, '01:00'), 
('R809BV', 809, '06:00'), 
('R810LW', 810, '00:50'), 
('R811SA', 811, '01:05');


INSERT INTO Parking_rate(parking_rate_id,customer_id) VALUES
('R804JK', 804),
('R807BG', 807),
('R812KE', 812), 
('R813ME', 813);


INSERT INTO Payment(payment_id,parking_rate_id,amount,payment_status) VALUES
('P801RE', 'R801RE', 100, 'paid'),
('P802FR', 'R802FR', 0, 'paid'),
('P803ED', 'R803ED', 300, 'paid'), 
('P805GH', 'R805GH', 400, 'paid'), 
('P806DL', 'R806DL', 0, 'paid'), 
('P808LD', 'R808LD', 100, 'paid'), 
('P809BV', 'R809BV', 600, 'paid'), 
('P810LW', 'R810LW', 100, 'paid'), 
('P811SA', 'R811SA', 200, 'paid');

INSERT INTO Payment(payment_id,parking_rate_id,payment_status)
VALUES
('P804JK', 'R804JK', 'unpaid'), 
('P807BG', 'R807BG', 'unpaid'), 
('P812KE', 'R812KE', 'unpaid'), 
('P813ME', 'R813ME', 'unpaid');


INSERT INTO Gate(gate_status_id,gate_type,gate_status,customer_id) VALUES
('ALA01_E1', 'Exit gate', 'opened', 801),
('ALA01_E2', 'Exit gate', 'opened', 802),
('ALA01_E3', 'Exit gate', 'opened', 803), 
('ALA01_E4', 'Exit gate', 'closed', 804), 
('ALA02_E5', 'Exit gate', 'opened', 805), 
('ALA02_E6', 'Exit gate', 'opened', 806), 
('ALA02_E7', 'Exit gate', 'closed', 807),
('ALA02_E8', 'Exit gate', 'opened', 808), 
('ALA03_E9', 'Exit gate', 'opened', 809), 
('ALA03_E10', 'Exit gate', 'opened', 810), 
('ALA03_E11', 'Exit gate', 'closed', 811), 
('ALA03_E12', 'Exit gate', 'closed', 812), 
('ALA03_E13','Exit gate', 'closed', 813);
