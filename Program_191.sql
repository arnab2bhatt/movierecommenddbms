set serveroutput on;
DECLARE
  v_seat_name seats.seat_name%TYPE;
  v_no_of_seats seats.no_of_seats%TYPE;
BEGIN
  SELECT seat_name, no_of_seats
  INTO v_seat_name, v_no_of_seats
  FROM seats
  WHERE seat_id = 1;

  DBMS_OUTPUT.PUT_LINE('Seat Name: ' || v_seat_name || ', No. of Seats: ' || v_no_of_seats);
END;

