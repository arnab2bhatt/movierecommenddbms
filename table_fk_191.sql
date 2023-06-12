SET SERVEROUTPUT ON;

ALTER TABLE Tickets
ADD CONSTRAINT fk_Tickets_Theatre
FOREIGN KEY (tid)
REFERENCES theatre(tid);

DBMS_OUTPUT.PUT_LINE('Foreign key constraint added successfully.');