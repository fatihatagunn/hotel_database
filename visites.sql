CREATE TABLE "Visites"(
	roomID INTEGER,
	customerID INTEGER,
	visitDate TEXT NOT NULL,
	visitDay NUMERIC,
	personCount INTEGER CHECK( personCount>0 AND 5>=personCount),
	CONSTRAINT PK_Visites PRIMARY KEY (roomID,customerID,visitDate),
	FOREIGN KEY (roomID) REFERENCES Rooms(roomID) ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY (customerID) REFERENCES Customers(customerID) ON DELETE NO ACTION ON UPDATE NO ACTION
	\totalPrice
	);