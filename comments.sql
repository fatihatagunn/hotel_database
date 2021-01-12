CREATE TABLE "Comments"(
	customerID INT,
	commentsDate NUMERIC,
	star INT,
	comment TEXT,
	CONSTRAINT PK_Comments PRIMARY KEY (customerID,commentsDate)
	);