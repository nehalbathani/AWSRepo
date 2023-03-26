CREATE TABLE `page_content` (
  `contentId` int(11) NOT NULL AUTO_INCREMENT,
  `contentName` varchar(45) NOT NULL,
  `content` text,
  `lastUpdatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `content_id_UNIQUE` (`contentId`),
  UNIQUE KEY `contentName_UNIQUE` (`contentName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='table that stores web page contents';

CREATE TABLE `player` (
  `playerId` int(5) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `streetAddr` varchar(50) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `cricClubId` varchar(25) DEFAULT NULL,
  `playerType` varchar(25) DEFAULT NULL,
  `paymentMethod` varchar(25) DEFAULT NULL,
  `tshirtSize` varchar(25) DEFAULT NULL,
  `zoneName` varchar(55) DEFAULT NULL,
  `teamId` int(5) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `lastUpdatedTime` datetime DEFAULT NULL,
  `availabilityCode` varchar(30) DEFAULT NULL,
  `contactNo` varchar(16) DEFAULT NULL,
  `emailId` varchar(40) DEFAULT NULL,
  `lastYearTeamName` varchar(15) DEFAULT NULL,
  `auctionPoint` int(11) DEFAULT '0',
  `tournamentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`playerId`),
  KEY `FK_teamId_idx` (`teamId`),
  CONSTRAINT `FK_teamId` FOREIGN KEY (`teamId`) REFERENCES `Team` (`teamId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1 COMMENT='			';

CREATE TABLE `PlayerAvailability` (
  `availabilityCode` varchar(30) NOT NULL,
  `availabilityDesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`availabilityCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `property` (
  `propertyName` varchar(45) DEFAULT NULL,
  `propertyValue` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='		';


CREATE TABLE `Team` (
  `teamId` int(5) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(30) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `lastUpdatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`teamId`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;

CREATE TABLE `Tournament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `isActive` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


CREATE TABLE `zone` (
  `zoneId` int(11) NOT NULL AUTO_INCREMENT,
  `zoneName` varchar(45) NOT NULL,
  `lastUpdatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`zoneId`),
  UNIQUE KEY `zone_id_UNIQUE` (`zoneId`),
  UNIQUE KEY `zoneName_UNIQUE` (`zoneName`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COMMENT='table that stores zone list';

