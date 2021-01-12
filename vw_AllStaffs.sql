CREATE VIEW vw_AllStaffs AS 
	SELECT F.staffID, 
		   F.fName, 
		   F.lName, 
		   F.age, 
		   F.phoneNumber, 
		   F.startDate, 
		   F.position, 
		   F.salary, 
		   F.branchID, 
		   F.holidayAllowance,
		   P.hourlyRate
	FROM FullTimeStaffs AS F
	LEFT JOIN PartTimeStaffs AS P USING(staffID)
	UNION ALL
	SELECT P.staffID, 
		   P.fName, 
		   P.lName, 
		   P.age, 
		   P.phoneNumber, 
		   P.startDate, 
		   P.position, 
		   P.salary, 
		   P.branchID,
		   F.holidayAllowance,
		   P.hourlyRate
	FROM PartTimeStaffs AS P
	LEFT JOIN FullTimeStaffs AS F USING(staffID);