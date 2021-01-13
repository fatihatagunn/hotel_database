CREATE TABLE "Customers" (
	customerID INTEGER NOT NULL PRIMARY KEY,
	fName TEXT NOT NULL,
	lName TEXT NOT NULL,
	phoneNumber TEXT CHECK(phoneNumber LIKE '05_________' OR NULL),
	age INTEGER NOT NULL CHECK(age>=3)
	 );