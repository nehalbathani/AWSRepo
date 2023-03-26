CREATE TABLE `player` (
  `playerId` int(5) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `streetAddr` varchar(100) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `cricClubId` varchar(25) DEFAULT NULL,
  `playerType` varchar(25) DEFAULT NULL,
  `paymentMethod` varchar(25) DEFAULT NULL,
  `teamId` int(5) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `lastUpdatedTime` datetime DEFAULT NULL,
  `availabilityCode` varchar(30) DEFAULT NULL,
  `contactNo` varchar(16) DEFAULT NULL,
  `emailId` varchar(40) DEFAULT NULL,
  `lastYearTeamName` varchar(15) DEFAULT NULL,
  `auctionPoints` int(11) NOT NULL DEFAULT '0',
  `tShirtSize` varchar(5) DEFAULT NULL,
  `profileDescription` varchar(150) DEFAULT NULL,
  `otherLeague` varchar(10) DEFAULT NULL,
  `tournamentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`playerId`),
  UNIQUE KEY `CK_firstName_lastName_Unique` (`firstName`,`lastName`,`emailId`,`tournamentId`),
  KEY `FK_teamId_idx` (`teamId`),
  KEY `FK_availabilityCode_idx` (`availabilityCode`),
  CONSTRAINT `FK_availabilityCode` FOREIGN KEY (`availabilityCode`) REFERENCES `PlayerAvailability` (`availabilityCode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_teamId` FOREIGN KEY (`teamId`) REFERENCES `Team` (`teamId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=latin1 COMMENT='			';
