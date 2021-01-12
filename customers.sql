CREATE TABLE "Customers" (
	customerID INTEGER NOT NULL PRIMARY KEY,
	fName TEXT NOT NULL,
	lName TEXT NOT NULL,
	phoneNumber TEXT NOT NULL CHECK(phoneNumber LIKE '05_________'),
	age INTEGER NOT NULL CHECK(age>=3)
	 );