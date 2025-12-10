DROP TABLE IF EXISTS Anomalies;
DROP TABLE IF EXISTS Events;
DROP TABLE IF EXISTS CrashProbabilities;
DROP TABLE IF EXISTS Coordinates;
DROP TABLE IF EXISTS Objects;
DROP TABLE IF EXISTS SituationTypes;
DROP TABLE IF EXISTS Constellations;
DROP TABLE IF EXISTS Systems;
DROP TABLE IF EXISTS Galaxies;
DROP TABLE IF EXISTS ObjectTypes;

CREATE TABLE ObjectTypes (
    ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE Galaxies (
    Catalog_ID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE Systems (
    System_ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE Constellations (
    Catalog_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE SituationTypes (
    ID INT PRIMARY KEY,
    Type VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE Objects (
    Catalog_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,

    Object_Type_ID INT REFERENCES ObjectTypes(ID)
        ON DELETE CASCADE,

    Galaxy_ID VARCHAR(50) REFERENCES Galaxies(Catalog_ID)
        ON DELETE CASCADE,

    System_ID INT REFERENCES Systems(System_ID)
        ON DELETE CASCADE,

    Constellation_ID VARCHAR(10) REFERENCES Constellations(Catalog_ID)
        ON DELETE CASCADE
)

CREATE TABLE Coordinates (
    Coordinate_ID BIGINT PRIMARY KEY,
    Coordinate_X FLOAT NOT NULL,
    Coordinate_Y FLOAT NOT NULL,
    Coordinate_Z FLOAT NOT NULL,
    Object_ID VARCHAR(10) REFERENCES Objects(Catalog_ID)
        ON DELETE NO ACTION
)

CREATE TABLE CrashProbabilities (
    ID INT PRIMARY KEY,
    Probability FLOAT CHECK (Probability BETWEEN 0 AND 1),
    Calculated_At DATETIME2 DEFAULT SYSUTCDATETIME(),

    Object_1_ID VARCHAR(10) REFERENCES Objects(Catalog_ID)
        ON DELETE NO ACTION,

    Object_2_ID VARCHAR(10) REFERENCES Objects(Catalog_ID)
        ON DELETE NO ACTION
)

CREATE TABLE Events (
    Event_ID int PRIMARY KEY,
    Start_Time DATETIME2 DEFAULT SYSUTCDATETIME(),
    End_Time DATETIME2 DEFAULT SYSUTCDATETIME(),

    Situation_Type_ID INT REFERENCES SituationTypes(ID)
                    ON DELETE NO ACTION,

    CHECK (End_Time > Start_Time)
)

CREATE TABLE Anomalies (
    Anomaly_ID INT PRIMARY KEY,
    Description VARCHAR(500),
    Start_Time DATETIME2 DEFAULT SYSUTCDATETIME(),
    End_Time DATETIME2 DEFAULT SYSUTCDATETIME(),

    Expected_Situation_Type_ID INT REFERENCES SituationTypes(ID)
                    ON DELETE NO ACTION,

    Received_Situation_Type_ID INT REFERENCES Events(Event_ID)
                    ON DELETE NO ACTION,

    CHECK (Expected_Situation_Type_ID != Received_Situation_Type_ID),
    CHECK (End_Time > Start_Time)
)


--