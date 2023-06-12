SELECT c.c_name
FROM Customer c
WHERE c.cid IN (
  SELECT b.cid
  FROM booking b
  JOIN Tickets t ON b.ticket_no = t.ticket_no
  JOIN Show s ON t.show_id = s.show_id
  JOIN theatre th ON t.tid = th.tid
  WHERE th.location = 'New York'
);

SELECT COUNT(*)
FROM seats
WHERE seat_id NOT IN (
  SELECT seat_no
  FROM Tickets
  WHERE show_id = 1
);

SELECT m.m_name
FROM movie m
WHERE m.m_id IN (
  SELECT s.m_id
  FROM Show s
  JOIN Tickets t ON s.show_id = t.show_id
  JOIN theatre th ON t.tid = th.tid
  WHERE th.location = 'Los Angeles'
);

SELECT c_name
FROM Customer
WHERE cid = (
  SELECT cid
  FROM booking
  GROUP BY cid
  ORDER BY COUNT(*) DESC
  FETCH FIRST 1 ROW ONLY
);

SELECT SUM(price)
FROM discount
WHERE m_name IN (
  SELECT m_name
  FROM movie
  WHERE m_id = 2
);

SELECT *
FROM theatre t
JOIN Show s ON t.tid = s.tid;

SELECT *
FROM theatre t
LEFT JOIN Show s ON t.tid = s.tid;

SELECT *
FROM theatre t
RIGHT JOIN Show s ON t.tid = s.tid;

SELECT *
FROM theatre t
FULL OUTER JOIN Show s ON t.tid = s.tid;

SELECT *
FROM theatre t
CROSS JOIN Show s;



