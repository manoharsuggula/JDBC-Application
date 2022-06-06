create database hotel_reservationdb;

use hotel_reservationdb;

CREATE TABLE room (
	room_number INT NOT NULL,
	type INT,
	room_assigned_status BOOLEAN NOT NULL,
	assigned INT,
	PRIMARY KEY (room_number)
);

CREATE TABLE customer (
	id INT NOT NULL AUTO_INCREMENT,
	name TEXT NOT NULL,
	phone_number VARCHAR(255) UNIQUE,
	checkin_date DATE,
	checkout_date DATE,
	room_number INT,
	PRIMARY KEY (id)
);

CREATE TABLE receptionist (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE room_type (
	id INT NOT NULL AUTO_INCREMENT,
	room_type VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);

ALTER TABLE room ADD CONSTRAINT room_fk0 FOREIGN KEY (type) REFERENCES room_type(id);

ALTER TABLE room ADD CONSTRAINT room_fk1 FOREIGN KEY (assigned) REFERENCES customer(id) on delete set null;

ALTER TABLE customer ADD CONSTRAINT customer_fk0 FOREIGN KEY (room_number) REFERENCES room(room_number);


insert into room_type(room_type) values ('Premium Suit');
insert into room_type(room_type) values ('VIP Suit');
insert into room_type(room_type) values ('Connecting room');
insert into room_type(room_type) values ('Double');
insert into room_type(room_type) values ('Single');

insert into room(room_number, type, room_assigned_status) values (101,5,false);
insert into room(room_number, type, room_assigned_status) values (102,5,false);
insert into room(room_number, type, room_assigned_status) values (103,5,false);
insert into room(room_number, type, room_assigned_status) values (201,1,false);
insert into room(room_number, type, room_assigned_status) values (202,1,false);
insert into room(room_number, type, room_assigned_status) values (203,2,false);
insert into room(room_number, type, room_assigned_status) values (301,3,false);
insert into room(room_number, type, room_assigned_status) values (302,4,false);
insert into room(room_number, type, room_assigned_status) values (303,4,false);

insert into receptionist(name) values ('R1');
insert into receptionist(name) values ('R2');
insert into receptionist(name) values ('R3');
