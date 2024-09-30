USE master;
CREATE DATABASE SWP391_FengShuiKoiConsulting_DB;
GO
USE SWP391_FengShuiKoiConsulting_DB;

-- Account Table
CREATE TABLE Account (
    UserID NVARCHAR(50) PRIMARY KEY,
    Password NVARCHAR(50) NOT NULL,
    Role NVARCHAR(255) NOT NULL,
    Email NVARCHAR(50) NOT NULL UNIQUE,
    Status NVARCHAR(255) NOT NULL
);

-- Member Table
CREATE TABLE Member (
    Name NVARCHAR(50) NOT NULL,
    Birthday DATE NOT NULL,
    UserID NVARCHAR(50) PRIMARY KEY,
    FOREIGN KEY (UserID) REFERENCES Account(UserID)
);
-- Element Table
CREATE TABLE Element (
    Element NVARCHAR(50) PRIMARY KEY,
	Mutualism NVARCHAR(50) NOT NULL,
);
-- Package Table
CREATE TABLE Package (
    Rank NVARCHAR(50) PRIMARY KEY,
    Duration INT NOT NULL,
    Description NVARCHAR(255) NOT NULL,
	price FLOAT NOT NULL
);
-- Blog Table
CREATE TABLE Blog (
    BlogID NVARCHAR(50) PRIMARY KEY,
    Heading NVARCHAR(255) NOT NULL,
    Image NVARCHAR(255) NOT NULL,
    Description NVARCHAR(500) NOT NULL,
	status NVARCHAR(20) NOT NULL
);
-- Advertisement Table
CREATE TABLE Advertisement (
    AdID NVARCHAR(50) PRIMARY KEY,
    Heading NVARCHAR(255) NOT NULL,
    Description NVARCHAR(255) NOT NULL,
    Image NVARCHAR(255) NOT NULL,
    Link NVARCHAR(255) NOT NULL,
    UserID NVARCHAR(50) NOT NULL,
    Rank NVARCHAR(50) NOT NULL,
    Element NVARCHAR(50),
	status NVARCHAR(10) NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Member(UserID),
    FOREIGN KEY (Rank) REFERENCES Package(Rank),
    FOREIGN KEY (Element) REFERENCES Element(Element)
);
-- Feedback Table
CREATE TABLE Feedback (
    FbID NVARCHAR(50) PRIMARY KEY,
    Description NVARCHAR(255) NOT NULL,
    AdID NVARCHAR(50) NOT NULL,
    FOREIGN KEY (AdID) REFERENCES Advertisement(AdID),
	UserID NVARCHAR(50) NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Member(UserID)
);

-- Ads_Package Table
CREATE TABLE Ads_Package (
    AdID NVARCHAR(50) NOT NULL,
    Rank NVARCHAR(50) NOT NULL,
	StartDate DATE NOT NULL,
	ExpiredDate DATE NOT NULL,
	Quantity INT NOT NULL,
	Total FLOAT NOT NULL,
	PRIMARY KEY (AdID, Rank),
    FOREIGN KEY (AdID) REFERENCES Advertisement(AdID),
    FOREIGN KEY (Rank) REFERENCES Package(Rank)
);
-- Shape Table
CREATE TABLE Shape (
    Shape NVARCHAR(50) PRIMARY KEY,
	image NVARCHAR(50) NOT NULL
);

-- GoodShape Table
CREATE TABLE GoodShape (
    Shape NVARCHAR(50) NOT NULL,
    Element NVARCHAR(50) NOT NULL,
    PRIMARY KEY (Shape, Element),
    FOREIGN KEY (Shape) REFERENCES Shape(Shape),
    FOREIGN KEY (Element) REFERENCES Element(Element)
);

-- Quantity Table
CREATE TABLE QuantityOfFish (
    Element NVARCHAR(50) NOT NULL,
    Description NVARCHAR(255) NOT NULL,
	PRIMARY KEY (Element),
    FOREIGN KEY (Element) REFERENCES Element(Element)
);

-- PointOfShape Table
CREATE TABLE PointOfShape (
    PointOfShape FLOAT NOT NULL,
    Element NVARCHAR(50) NOT NULL,
    Shape NVARCHAR(50) NOT NULL,
    PRIMARY KEY (Element, Shape),
    FOREIGN KEY (Element) REFERENCES Element(Element),
    FOREIGN KEY (Shape) REFERENCES Shape(Shape)
);

-- Koi_Variety Table
CREATE TABLE Koi_Variety (
    KoiType NVARCHAR(50) PRIMARY KEY,
    Image NVARCHAR(255) NOT NULL,
    Element NVARCHAR(50) NOT NULL,
    Description NVARCHAR(500) NOT NULL
);

-- Color Table
CREATE TABLE Color (
    Color NVARCHAR(50) PRIMARY KEY
);

-- Type_Color Table
CREATE TABLE Type_Color (
    KoiType NVARCHAR(50) NOT NULL,
    Color NVARCHAR(50) NOT NULL,
    Percentage FLOAT NOT NULL,
    PRIMARY KEY (KoiType, Color),
    FOREIGN KEY (KoiType) REFERENCES Koi_Variety(KoiType),
    FOREIGN KEY (Color) REFERENCES Color(Color)
);


-- Element_Color Table
CREATE TABLE Element_Color (
    Element NVARCHAR(50) NOT NULL,
    Color NVARCHAR(50) NOT NULL,
    ColorPoint FLOAT NOT NULL,
    PRIMARY KEY (Element, Color),
    FOREIGN KEY (Element) REFERENCES Element(Element),
    FOREIGN KEY (Color) REFERENCES Color(Color)
);

-- Direction Direction
CREATE TABLE Direction (
    Direction NVARCHAR(50) PRIMARY KEY
);

-- LifePalace LifePalace
CREATE TABLE LifePalace (
    LifePalace NVARCHAR(50) PRIMARY KEY
);

-- LifePalace_Direction Table
CREATE TABLE LifePalace_Direction (
    LifePalace NVARCHAR(50) NOT NULL,
    Direction NVARCHAR(50) NOT NULL,
    EightMansions NVARCHAR(50) NOT NULL,
    PointOfDirection FLOAT NOT NULL,
    Description NVARCHAR(255) NOT NULL,
    PRIMARY KEY (LifePalace, Direction),
    FOREIGN KEY (LifePalace) REFERENCES LifePalace(LifePalace),
    FOREIGN KEY (Direction) REFERENCES Direction(Direction)
);
