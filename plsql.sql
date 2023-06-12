set serveroutput on;
DECLARE
  CURSOR c_booking IS
    SELECT ticket_no, booking_date, cid
    FROM booking;
BEGIN
  FOR r_booking IN c_booking LOOP
    DBMS_OUTPUT.PUT_LINE('Ticket No.: ' || r_booking.ticket_no || ', Booking Date: ' || r_booking.booking_date || ', Customer ID: ' || r_booking.cid);
  END LOOP;
END;
/