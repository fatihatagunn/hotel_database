-- Select Query with personCount for Branchs

SELECT B.branchID, B.branchName, B.street, B.city, B.postcode, COUNT(*) AS personCount
FROM Branchs AS B, Staffs AS S
WHERE B.branchID = S.branchID GROUP BY B.branchID;

-- Select Query with Comment for Visit

SELECT V.roomID, V.customerID, V.visitDate, V.visitDay, C.commentsDate, V.personCount, C.star, C.comment
FROM Visites as V, Comments AS C
WHERE (V.customerID = C.customerID) AND 
	  strftime('%s', V.visitDate) + V.visitDay * 86400 = strftime('%s', C.commentsDate) + 0
GROUP BY V.roomID ORDER BY V.roomID;

-- Selcet Query with avgStar for Rooms
SELECT SUM(C.star) / COUNT(*)
FROM Visites as V, Comments AS C
WHERE (V.customerID = C.customerID) AND 
	  strftime('%s', V.visitDate) + V.visitDay * 86400 = strftime('%s', C.commentsDate) + 0
GROUP BY V.roomID ORDER BY V.roomID;

SELECT R.roomID, R.roomNumber, R.statu, R.type, R.price, R.staffID, R.branchID, SUM(C.star) / COUNT(*) AS avgStar
FROM Visites as V, Comments AS C, Rooms AS R
WHERE (R.roomID = V.roomID)AND 
	  (V.customerID = C.customerID) AND 
	  strftime('%s', V.visitDate) + V.visitDay * 86400 = strftime('%s', C.commentsDate) + 0
GROUP BY V.roomID ORDER BY V.roomID;
