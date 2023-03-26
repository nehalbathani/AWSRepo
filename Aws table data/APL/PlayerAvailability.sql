CREATE TABLE `PlayerAvailability` (
  `availabilityCode` varchar(30) NOT NULL,
  `availabilityDesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`availabilityCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
