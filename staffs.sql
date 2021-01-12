CREATE TABLE "Staffs" (
	staffID INTEGER NOT NULL PRIMARY KEY,
	fName TEXT NOT NULL CHECK(fName LIKE '__%'),
	lName TEXT NOT NULL CHECK(lName LIKE '__%'),
	age INTEGER NOT NULL CHECK(age >= 18),
	phoneNumber TEXT NOT NULL CHECK(phoneNumber LIKE '05_________'), -- '05...' ile başlayan 11 haneli telefon numarası kısıtlaması.
	startDate DATE NOT NULL,
	position TEXT NOT NULL
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
	reportTo INTEGER NOT NULL,
	salary REAL NOT NULL
		CHECK(position IS 
			   'Manager' AND (15000 <= salary AND salary <= 25000)
			OR 'Room Supervisor' AND (8000 <= salary AND salary <= 14000)
			OR 'Securty Supervisor' AND (8000 <= salary AND salary <= 14000)
			OR 'Kitchen Supervisor' AND (8000 <= salary AND salary <= 14000)
			OR 'Activity Supervisor' AND (8000 <= salary AND salary <= 14000)
			OR 'Housekeeper' AND (3100 <= salary AND salary <= 4500)
			OR 'Securty' AND (3500 <= salary AND salary <= 5000)
			OR 'Chef' AND (8000 <= salary AND salary <= 12000)
			OR 'Waiter' AND (3100 <= salary AND salary <= 4500)
			OR 'Musician' AND (6000 <= salary AND salary <= 9000)
			OR 'Lifeguard' AND (3500 <= salary AND salary <= 5000)
		),
	branchID INTEGER NOT NULL,
	holidayAllowanceForFullTime TEXT,
	hourlyRateForPartTime REAL,
	FOREIGN KEY (branchID) REFERENCES Branchs(branchID) ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY (reportTo) REFERENCES Staffs(staffID) ON DELETE NO ACTION ON UPDATE NO ACTION
);
