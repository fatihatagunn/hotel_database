CREATE TABLE "Rooms"(
   roomID INTEGER NOT NULL PRIMARY KEY,
   roomNumber INTEGER NOT NULL,
   statu TEXT
      CHECK (statu 
         IN ('Single',
             'Double',
             'Triple',
             'Suite',
             'Penthouse',
             'King'
             )
         ),
   bedTypes TEXT
      CHECK (bedTypes
         IN ('Zip&Link', --birleşik ikili tekli yatak
             'King',
             'Standart',
             'Round',  --yuvarlak 
             'Double'
            )
         ),
   bedCount INTEGER
      CHECK (bedCount IN ('1', '2', '3', '4')),
   personCOUNT INTEGER,
   floor INTEGER,
   roomView TEXT,
   price REAL CHECK (price>0),
   staffID INTEGER,
   branchID INTEGER,
   FOREIGN KEY (staffID) REFERENCES Staffs(staffID) ON DELETE NO ACTION ON UPDATE NO ACTION
   FOREIGN KEY (branchID) REFERENCES Branchs(branchID) ON DELETE NO ACTION ON UPDATE NO ACTION
   -- \avgStar
);
