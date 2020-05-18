CREATE DATABASE final;
USE final;

CREATE TABLE `Rooms` (
  `roomId` INT(1) NOT NULL AUTO_INCREMENT,
  `room` varchar(5),
  PRIMARY KEY (`roomId`)
);

CREATE TABLE `Days` (
  `day` char(2),
  `dayId` INT(1) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dayId`)
);

CREATE TABLE `Times` (
  `time` int(2),
  PRIMARY KEY (`time`)
);

CREATE TABLE `Courses` (
  `courseId` varchar(6),
  `type` char(3),
  `name` text(65535),
  `credits` char(1),
  `lectHrs` int,
  `labHrs` int,
  `totalHrs` int,
  PRIMARY KEY (`courseId`)
);

CREATE TABLE `Sections` (
  `sectionId` INT(6) NOT NULL AUTO_INCREMENT,
  `courseId` varchar(6),
  `noDays` INT(1),
  PRIMARY KEY (`sectionId`),
  FOREIGN KEY (`courseId`) REFERENCES Courses(`courseId`)
);

CREATE TABLE `ScheduledClasses` (
  `roomId` int(1),
  `dayId` int(1),
  `time` int(2),
  `sectionId` int(6),
  FOREIGN KEY (`roomId`) REFERENCES Rooms(`roomId`),
  FOREIGN KEY (`dayId`) REFERENCES Days(`dayId`),
  FOREIGN KEY (`time`) REFERENCES Times(`time`),
  PRIMARY KEY (`roomId`, `dayId`, `time`),
  FOREIGN KEY (`sectionId`) REFERENCES Sections(`sectionId`)
);

/* Uses sql local dir and escapes it (xampp/mysql) then imports from csv*/
LOAD DATA INFILE '../../htdocs/sql/courses.csv' 
 INTO TABLE courses 
FIELDS TERMINATED BY ',';
LOAD DATA INFILE '../../htdocs/sql/days.csv' 
 INTO TABLE days 
FIELDS TERMINATED BY ',';
LOAD DATA INFILE '../../htdocs/sql/times.csv' 
 INTO TABLE times 
FIELDS TERMINATED BY ',';