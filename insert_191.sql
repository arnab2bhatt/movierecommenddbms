INSERT INTO seats (seat_id, no_of_seats, seat_name) VALUES (1, 50, 'A1');
INSERT INTO seats (seat_id, no_of_seats, seat_name) VALUES (2, 75, 'B3');
INSERT INTO seats (seat_id, no_of_seats, seat_name) VALUES (3, 100, 'C4');
INSERT INTO seats (seat_id, no_of_seats, seat_name) VALUES (4, 120, 'D5');
INSERT INTO seats (seat_id, no_of_seats, seat_name) VALUES (5, 80, 'E2');

INSERT INTO theatre (tid, tname, location) VALUES (1, 'Theatre A', 'New York');
INSERT INTO theatre (tid, tname, location) VALUES (2, 'Theatre B', 'London');
INSERT INTO theatre (tid, tname, location) VALUES (3, 'Theatre C', 'Paris');
INSERT INTO theatre (tid, tname, location) VALUES (4, 'Theatre D', 'Tokyo');
INSERT INTO theatre (tid, tname, location) VALUES (5, 'Theatre E', 'Sydney');

INSERT INTO discount (offer_id, m_name, price) VALUES (1, 'Movie A', 10.99);
INSERT INTO discount (offer_id, m_name, price) VALUES (2, 'Movie B', 8.50);
INSERT INTO discount (offer_id, m_name, price) VALUES (3, 'Movie C', 12.75);
INSERT INTO discount (offer_id, m_name, price) VALUES (4, 'Movie D', 9.99);
INSERT INTO discount (offer_id, m_name, price) VALUES (5, 'Movie E', 7.25);

INSERT INTO customer (cid, c_name, password, email_id, phone_number) VALUES (1, 'John Smith', 'password1', 'johnsmith@example.com', '1234567890');
INSERT INTO customer (cid, c_name, password, email_id, phone_number) VALUES (2, 'Mary Johnson', 'password2', 'maryjohnson@example.com', '2345678901');
INSERT INTO customer (cid, c_name, password, email_id, phone_number) VALUES (3, 'David Lee', 'password3', 'davidlee@example.com', '3456789012');
INSERT INTO customer (cid, c_name, password, email_id, phone_number) VALUES (4, 'Emily Chen', 'password4', 'emilychen@example.com', '4567890123');
INSERT INTO customer (cid, c_name, password, email_id, phone_number) VALUES (5, 'Daniel Kim', 'password5', 'danielkim@example.com', '5678901234');

INSERT INTO booking (ticket_no, booking_date, cid) VALUES (1, TO_DATE('2023-04-24', 'YYYY-MM-DD'), 1);
INSERT INTO booking (ticket_no, booking_date, cid) VALUES (2, TO_DATE('2023-04-25', 'YYYY-MM-DD'), 2);
INSERT INTO booking (ticket_no, booking_date, cid) VALUES (3, TO_DATE('2023-04-26', 'YYYY-MM-DD'), 3);
INSERT INTO booking (ticket_no, booking_date, cid) VALUES (4, TO_DATE('2023-04-27', 'YYYY-MM-DD'), 4);
INSERT INTO booking (ticket_no, booking_date, cid) VALUES (5, TO_DATE('2023-04-28', 'YYYY-MM-DD'), 5);




INSERT INTO show (show_id, st_time, end_time, language) VALUES (1, TO_TIMESTAMP('2023-05-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-05-01 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'English');
INSERT INTO show (show_id, st_time, end_time, language) VALUES (2, TO_TIMESTAMP('2023-05-02 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-05-02 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'French');
INSERT INTO show (show_id, st_time, end_time, language) VALUES (3, TO_TIMESTAMP('2023-05-03 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-05-03 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Spanish');
INSERT INTO show (show_id, st_time, end_time, language) VALUES (4, TO_TIMESTAMP('2023-05-04 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-05-04 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Japanese');
INSERT INTO show (show_id, st_time, end_time, language) VALUES (5, TO_TIMESTAMP('2023-05-05 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-05-06 00:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Korean');

INSERT INTO movie (m_id, actors, director, release_date, m_name) VALUES (1, 'Actor A, Actor B, Actor C', 'Director A', TO_DATE('2023-04-30', 'YYYY-MM-DD'), 'Movie A');
INSERT INTO movie (m_id, actors, director, release_date, m_name) VALUES (2, 'Actor D, Actor E, Actor F', 'Director B', TO_DATE('2023-05-01', 'YYYY-MM-DD'), 'Movie B');
INSERT INTO movie (m_id, actors, director, release_date, m_name) VALUES (3, 'Actor G, Actor H, Actor I', 'Director C', TO_DATE('2023-05-02', 'YYYY-MM-DD'), 'Movie C');
INSERT INTO movie (m_id, actors, director, release_date, m_name) VALUES (4, 'Actor J, Actor K, Actor L', 'Director D', TO_DATE('2023-05-03', 'YYYY-MM-DD'), 'Movie D');
INSERT INTO movie (m_id, actors, director, release_date, m_name) VALUES (5, 'Actor M, Actor N, Actor O', 'Director E', TO_DATE('2023-05-04', 'YYYY-MM-DD'), 'Movie E');




INSERT INTO tickets (admin_id, ticket_no, show_id, show_date, seat_no, price, tid, hall_no) VALUES (1, 1, 1, TO_DATE('2023-05-01', 'YYYY-MM-DD'), 'A1', 12.99, 1, 1);
INSERT INTO tickets (admin_id, ticket_no, show_id, show_date, seat_no, price, tid, hall_no) VALUES (2, 2, 2, TO_DATE('2023-05-02', 'YYYY-MM-DD'), 'B5', 15.99, 1, 1);
INSERT INTO tickets (admin_id, ticket_no, show_id, show_date, seat_no, price, tid, hall_no) VALUES (3, 3, 1, TO_DATE('2023-05-03', 'YYYY-MM-DD'), 'C3', 10.99, 1, 1);
INSERT INTO tickets (admin_id, ticket_no, show_id, show_date, seat_no, price, tid, hall_no) VALUES (4, 4, 3, TO_DATE('2023-05-04', 'YYYY-MM-DD'), 'D2', 8.99, 2, 2);
INSERT INTO tickets (admin_id, ticket_no, show_id, show_date, seat_no, price, tid, hall_no) VALUES (5, 5, 4, TO_DATE('2023-05-05', 'YYYY-MM-DD'), 'E1', 14.99, 2, 2);

INSERT INTO Admin (admin_id, password) VALUES (1, 'admin@123');
INSERT INTO Admin (admin_id, password) VALUES (2, 'securepass');
INSERT INTO Admin (admin_id, password) VALUES (3, 'admin2023');
INSERT INTO Admin (admin_id, password) VALUES (4, 'password123');
INSERT INTO Admin (admin_id, password) VALUES (5, 'secret123');

