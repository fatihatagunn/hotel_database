CREATE TABLE "Rooms"(
   roomID INTEGER NOT NULL PRIMARY KEY,
   roomNumber INTEGER NOT NULL,
   statu TEXT,
   bedCount INTEGER,
   personCOUNT INTEGER,
   floor INTEGER,
   view TEXT,
   price REAL,
   FOREIGN KEY staffID REFERENCES Staffs(staffID),
   FOREIGN KEY branchID REFERENCES Branchs(branchID),
   \avgStar
);