-- ====================================
-- Flight Ticket Database
-- ====================================

-- AIRPORT table
CREATE TABLE AIRPORT (
  airport_code VARCHAR(3) PRIMARY KEY,
  location VARCHAR(255),
  elevation INT,
  phone_number VARCHAR(20),
  hub_airline VARCHAR(50)
);

INSERT INTO AIRPORT VALUES
('FLG','Flagstaff, AZ',6920,'6027741897',''),
('PHX','Phoenix, AZ',1257,'6025831971','Air West'),
('MSP','Minneapolis, MN',862,'6123782910','Northwest'),
('LAX','Los Angeles, CA',37,'3102731846',''),
('SFO','San Francisco, CA',78,'4158392371',''),
('IAH','Houston, TX',5,'2816642000','Continental'),
('DFW','Dallas, TX',210,'2146218044','American'),
('JFK','New York, NY',43,'2106732145','United'),
('DTW','Detroit, MI',23,'4158219000','American'),
('OIA','Orlando, FL',20,'5183240912','TWA'),
('MIA','Miami, FL',16,'7175203400','Grand Cayman');

-- FLIGHT table
CREATE TABLE FLIGHT (
  flight_number VARCHAR(10) PRIMARY KEY,
  origin VARCHAR(3),
  destination VARCHAR(3),
  departure_time TIME,
  arrival_time TIME,
  meal_code VARCHAR(10),
  base_fare DECIMAL(10,2),
  mileage INT,
  time_zone_changes INT,
  FOREIGN KEY (origin) REFERENCES AIRPORT(airport_code),
  FOREIGN KEY (destination) REFERENCES AIRPORT(airport_code)
);

INSERT INTO FLIGHT VALUES
('101','FLG','PHX','05:15:00','06:20:00','S',48.50,200,0),
('102','PHX','MSP','09:00:00','01:00:00','L',156.00,1000,1),
('103','MSP','PHX','05:00:00','07:15:00','D',156.00,1000,-1),
('104','PHX','FLG','08:30:00','09:15:00','S',48.50,200,0),
('15','PHX','LAX','07:00:00','07:20:00','B',49.00,400,-1),
('329','LAX','PHX','09:10:00','11:59:00','',49.00,400,1),
('40','PHX','LAX','10:25:00','10:42:00','',49.00,400,-1),
('400','LAX','PHX','10:10:00','12:59:00','',49.00,400,1),
('600','PHX','SFO','06:46:00','07:50:00','B',109.00,750,-1),
('604','PHX','SFO','08:33:00','09:43:00','B',109.00,750,-1),
('606','PHX','SFO','11:45:00','12:50:00','L',109.00,750,-1),
('198','LAX','SFO','11:20:00','01:40:00','',69.00,400,1),
('298','PHX','LAX','05:00:00','05:30:00','',39.00,400,-1),
('60','PHX','SFO','05:45:00','06:36:00','S',139.00,750,-1),
('59','SFO','PHX','10:00:00','11:30:00','S',149.00,750,1),
('691','SFO','PHX','11:25:00','01:04:00','',109.00,750,1),
('518','SFO','PHX','02:23:00','04:16:00','',109.00,750,1),
('1260','SFO','PHX','05:58:00','07:51:00','D',109.00,750,1),
('500','IAH','DFW','08:00:00','08:55:00','',79.00,250,0),
('501','DFW','IAH','09:05:00','10:00:00','',79.00,250,0),
('502','IAH','JFK','08:30:00','12:30:00','B',289.00,1200,-1),
('503','JFK','IAH','01:25:00','03:30:00','S',289.00,1200,1),
('521','IAH','DTW','11:30:00','01:30:00','L',218.00,1000,0),
('723','DTW','JFK','01:30:00','04:05:00','S',189.00,1000,1);

-- PILOTS table
CREATE TABLE PILOTS (
  pilot_id VARCHAR(10) PRIMARY KEY,
  pilot_name VARCHAR(255),
  ssn VARCHAR(11),
  street_address VARCHAR(255),
  city VARCHAR(100),
  state VARCHAR(2),
  zip_code VARCHAR(10),
  flight_pay DECIMAL(10,2),
  date_of_birth DATE,
  date_hired DATE
);

INSERT INTO PILOTS VALUES
('WRP','Pasewark, William B.','523451784','64 RHODA AVENUE','PHOENIX','AZ','84326',2500,'1958-07-02','1958-07-02'),
('ELL','Leiss, Ernst L.','234783222','91 BEVERLY HILL RD','FLAGSTAFF','AZ','85120',2640,'1953-09-12','1953-09-12'),
('SSM','Moore, Sharon S.','452127055','44 THORNHILL TRAIL','LOS ANGELES','CA','92300',3000,'1952-09-03','1952-09-03'),
('RS','Scamell, Richard','452094673','1500 EAST RIVERSIDE','CUPERTINO','CA','94212',560,'1913-02-13','1913-02-13'),
('SL','Long, Stuart','148434500','3722 GEORGETOWN','DALLAS','TX','75090',3000,'1950-10-12','1950-10-12'),
('CG','Gladchuk, Chet','210453278','519 TALL OAKS DRIVE','HOUSTON','TX','77024',3150,'1951-06-03','1951-06-03'),
('KCH','Harris, Kenneth C.','211463278','519 GREEN OAKS DRIVE','HOUSTON','TX','77004',3150,'1970-06-03','1970-06-03'),
('VIT','Tabor, Victor T.','234651322','891 BARONSHIRE','FLAGSTAFF','AZ','85120',2640,'1973-09-12','1973-09-12'),
('ELG','Green, Edward L.','234781000','9211 CANYON HILL RD','FLAGSTAFF','AZ','85120',2640,'1963-09-12','1963-09-12');

-- EQUIP_TYPE table
CREATE TABLE EQUIP_TYPE (
  equipment_number VARCHAR(10) PRIMARY KEY,
  equipment_type VARCHAR(50),
  seating_capacity INT,
  fuel_capacity INT,
  miles_per_gallon DECIMAL(5,2)
);

INSERT INTO EQUIP_TYPE VALUES
('1026','BOE 727',188,1882,3.4),
('1194','DC 7',282,2340,3.8),
('1080','BOE 727',188,1882,3.4),
('1368','DC 7',282,2340,3.8),
('1081','BOE 727',188,1882,3.4),
('1345','BOE 737',270,2150,4.1),
('1253','BOE 747',480,2800,3.6),
('1489','CONCORDE',350,2750,3.1),
('1347','BOE 737',270,2150,4.1),
('1082','BOE 727',188,1882,3.4),
('1346','BOE 737',270,2150,4.1),
('1083','BOE 727',188,1882,3.4),
('1084','BOE 727',188,1882,3.4),
('1085','BOE 727',188,1882,3.4);

-- DEPARTURES table
CREATE TABLE DEPARTURES (
  flight_number VARCHAR(10),
  departure_date DATE,
  pilot_id VARCHAR(10),
  equipment_number VARCHAR(10),
  PRIMARY KEY(flight_number, departure_date),
  FOREIGN KEY(flight_number) REFERENCES FLIGHT(flight_number),
  FOREIGN KEY(pilot_id) REFERENCES PILOTS(pilot_id),
  FOREIGN KEY(equipment_number) REFERENCES EQUIP_TYPE(equipment_number)
);


-- RESERVATIONS table
CREATE TABLE RESERVATIONS (
  confirmation_number VARCHAR(20) PRIMARY KEY,
  reservation_date DATE,
  reservation_name VARCHAR(255),
  reservation_phone VARCHAR(20),
  reservation_flight_number VARCHAR(10),
  reservation_flight_date DATE,
  FOREIGN KEY(reservation_flight_number) REFERENCES FLIGHT(flight_number)
);

INSERT INTO RESERVATIONS VALUES
('410','2006-04-01','Ole Olson','2186942221','15','2006-04-01'),
('315','2006-04-01','Pete Peterson','2186943000','101','2006-07-15'),
('345','2006-04-01','Swen Swenson','2186948822','101','2006-04-18'),
('436','2006-04-11','Andy Anderson','6025233510','606','2006-04-21'),
('578','2006-04-17','Torgie Torgenson','2082223333','606','2006-05-17'),
('560','2006-04-17','Andy Anderson','6025233510','102','2006-04-18');

-- TICKET table
CREATE TABLE TICKET (
  itinerary_number VARCHAR(20),
  flight_number VARCHAR(10),
  flight_date DATE,
  seat_assignment VARCHAR(10),
  PRIMARY KEY(itinerary_number,flight_number,flight_date),
  FOREIGN KEY(flight_number) REFERENCES FLIGHT(flight_number)
);

INSERT INTO TICKET VALUES
(1,'15','2006-04-01','10D'),
(1,'329','2006-04-01','12D'),
(2,'15','2006-04-01','10E'),
(2,'329','2006-04-10','12E'),
(3,'101','2006-07-15','3D'),
(3,'104','2006-07-23','4D'),
(4,'101','2006-07-15','3C'),
(4,'104','2006-07-23','4C'),
(5,'101','2006-07-15','3B'),
(5,'104','2006-07-20','4B'),
(6,'101','2006-04-18','10A'),
(6,'104','2006-07-23','8B'),
(7,'101','2006-04-18','10B'),
(7,'104','2006-07-30','8C'),
(8,'101','2006-04-18','10C'),
(8,'104','2006-07-23','8D'),
(9,'606','2006-04-27','12B'),
(9,'691','2006-07-08','12A'),
(10,'606','2006-04-20','12C'),
(11,'606','2006-05-17','12B'),
(11,'691','2006-05-19','13B'),
(12,'102','2006-04-18','10B'),
(12,'103','2006-04-19','7B'),
(13,'102','2006-04-18','7C'),
(13,'103','2006-04-23','3C');

-- PASSENGER table
CREATE TABLE PASSENGER (
  passenger_name VARCHAR(255),
  itinerary_number VARCHAR(20) PRIMARY KEY,
  confirmation_number VARCHAR(20),
  FOREIGN KEY(confirmation_number) REFERENCES RESERVATIONS(confirmation_number)
);

INSERT INTO PASSENGER VALUES
('Ole Olson','1','410'),
('Lena Olson','2','315'),
('Pete Peterson','3','315'),
('Hazel Peterson','4','436'),
('David Peterson','5','578'),
('Swen Swenson','6','345'),
('Olga Swenson','7','315'),
('Pete Swenson','8','409'),
('Andy Anderson','9','436'),
('Gloria Anderson','10','436'),
('Torgie Torgenson','11','578'),
('Andy Anderson','12','560'),
('Gloria Anderson','13','312'); 
