CREATE TABLE "Comments"(
	customerID INT,
	commentsDate DATE NOT NULL,
	star INT CHECK(star>=1 AND 5<=star),
	comment TEXT NOT NULL,
	CONSTRAINT PK_Comments PRIMARY KEY (customerID,commentsDate),
	FOREIGN KEY (customerID) REFERENCES Customers(customerID) ON DELETE NO ACTION ON UPDATE NO ACTION
	);