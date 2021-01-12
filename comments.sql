CREATE TABLE "Comments"(
	customerID INTEGER,
	commentsDate TEXT NOT NULL,
	star INTEGER CHECK(star>=1 AND 10>=star),
	comment TEXT NOT NULL,
	CONSTRAINT PK_Comments PRIMARY KEY (customerID,commentsDate),
	FOREIGN KEY (customerID) REFERENCES Customers(customerID) ON DELETE NO ACTION ON UPDATE NO ACTION
	);