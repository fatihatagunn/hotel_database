CREATE TABLE "FullTimeStaffs" (
	staffID INTEGER NOT NULL PRIMARY KEY,
	fName TEXT NOT NULL CHECK(fName LIKE '__%'),
	lName TEXT NOT NULL CHECK(lName LIKE '__%'),
	age INTEGER NOT NULL CHECK(age >= 18),
	phoneNumber TEXT NOT NULL CHECK(phoneNumber LIKE '05_________'), -- '05...' ile başlayan 11 haneli telefon numarası kısıtlaması.
	startDate DATE DEFAULT date('now'),
	position TEXT 
		CHECK(position 
			IN('Manager', 
			   'Room Supervisor', 
			   'Securty Supervisor', 
			   'Kitchen Supervisor', 
			   'Activity Supervisor', 
			   'Housekeeper',
			   'Securty',
			   'Chef',
			   'Waiter',
			   'Musician',
			   'Lifeguard'
			)
		),
	salary REAL,
	branchID INTEGER,
	holidayAllowance TEXT,
	-- avgStar REAL SUM(avgStar) / Count(*) FROM Rooms WHERE Rooms.staffID = FullTimeStaffs.staffID,
	FOREIGN KEY branchID REFERENCES Branchs(branchID) ON DELETE NO ACTION ON UPDATE NO ACTION
);