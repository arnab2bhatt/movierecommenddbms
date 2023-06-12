CREATE TABLE seats (
  seat_id NUMBER(10) PRIMARY KEY,
  no_of_seats int ,
  seat_name VARCHAR2(50)
);

CREATE TABLE theatre (
  tid NUMBER(10) PRIMARY KEY,
  tname VARCHAR2(50),
  location VARCHAR2(100)
);

CREATE TABLE discount (
  offer_id NUMBER(10) PRIMARY KEY,
  m_name VARCHAR2(50),
  price NUMBER(10,2)
);

CREATE TABLE Customer (
  cid NUMBER(10) PRIMARY KEY,
  c_name VARCHAR2(50),
  password VARCHAR2(50),
  email_id VARCHAR2(100),
  phone_number VARCHAR2(20)
);

CREATE TABLE booking (
  ticket_no NUMBER(10) PRIMARY KEY,
  booking_date DATE,
  cid NUMBER(10),
  CONSTRAINT fk_customer FOREIGN KEY (cid) REFERENCES Customer(cid)
);

CREATE TABLE Show (
  show_id NUMBER(10) PRIMARY KEY,
  st_time TIMESTAMP,
  end_time TIMESTAMP,
  language VARCHAR2(50)
);

CREATE TABLE movie (
  m_id NUMBER(10) PRIMARY KEY,
  actors VARCHAR2(200),
  director VARCHAR2(100),
  release_date DATE,
  m_name VARCHAR2(100)
);

CREATE TABLE Tickets (
  admin_id NUMBER(10) PRIMARY KEY,
  ticket_no NUMBER(10),
  show_id NUMBER(10),
  show_date DATE,
  seat_no VARCHAR2(10),
  Price NUMBER(10,2),
  tid NUMBER(10),
  hall_no NUMBER(10),
  CONSTRAINT fk_booking FOREIGN KEY (ticket_no) REFERENCES booking(ticket_no),
  CONSTRAINT fk_show FOREIGN KEY (show_id) REFERENCES Show(show_id),
  CONSTRAINT fk_theatre FOREIGN KEY (tid) REFERENCES theatre(tid)
);

CREATE TABLE Admin (
  admin_id NUMBER(10),
  password VARCHAR2(50),
  CONSTRAINT fk_tickets FOREIGN KEY (admin_id) REFERENCES Tickets(admin_id)
);






