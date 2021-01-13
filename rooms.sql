CREATE TABLE "Rooms"(
   roomID INTEGER NOT NULL PRIMARY KEY,
   roomNumber INTEGER NOT NULL,
   statu TEXT NOT NULL,
   type TEXT NOT NULL
      CHECK (type 
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
      CHECK (1<= bedCount AND bedCount>=4),
   personCOUNT INTEGER CHECK (personCOUNT<6), 
   floor INTEGER,
   roomView TEXT,
   price REAL CHECK (price>0) NOT NULL,
   staffID INTEGER NOT NULL,
   branchID INTEGER NOT NULL,
   FOREIGN KEY (staffID) REFERENCES Staffs(staffID) ON DELETE NO ACTION ON UPDATE NO ACTION
   FOREIGN KEY (branchID) REFERENCES Branchs(branchID) ON DELETE NO ACTION ON UPDATE NO ACTION
   -- \avgStar
);
