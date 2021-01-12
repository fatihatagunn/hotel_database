CREATE TABLE "Visites"(
	roomID INT,
	customerID INT,
	year NUMERIC,
	month TEXT,
	day NUMERIC,
	visitDay NUMERIC,
	personCount INT,
	CONSTRAINT PK_Visites PRIMARY KEY (roomID,customerID,year),
	\totalPrice
	);