CREATE TABLE "Supervisors" (
	staffID INTEGER PRIMARY KEY,
	department TEXT,
	-- \staffCount,
	FOREIGN KEY staffID REFERENCES Staffs(staffID)
);