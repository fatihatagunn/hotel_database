CREATE TABLE "Customers" (
	customerID INT NOT NULL PRIMARY KEY AUTOINCREMENT,
	fName TEXT NOT NULL,
	lName TEXT NOT NULL,
	phoneNumber TEXT NOT NULL CHECK(phoneNumber LIKE '05_________'),
	age INT NOT NULL CHECK(age>=3)
	 );