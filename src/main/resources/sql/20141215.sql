DROP TABLE IF EXISTS `Role`;
CREATE TABLE `Role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `latestVersion` bigint(20) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_9w2skwb5squ3usiaiml4iw9e7` (`roleName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
INSERT INTO `Role` VALUES (1,0,'ROLE_SITEADMIN'),(2,0,'ROLE_ADMIN'),(3,0,'ROLE_SERVICE_PROVIDER');
UNLOCK TABLES;

DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enabled` bit(1) NOT NULL,
  `lastSignon` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
INSERT INTO `tb_user` VALUES (1,now(),'charnjeet.iotasol@gmail.com',true,'charnjeet','singh',null,'$2a$10$.ORD1APGcNV2l2MAMI8Zvut6xTwhzjlAKG5wgJ1tPwfuXcZP8U/dK',null,'charnjeet');
UNLOCK TABLES;

--
-- Table structure for table `UserRoles`
--

DROP TABLE IF EXISTS `UserRoles`;
CREATE TABLE `UserRoles` (
  `User_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  KEY `FK_etx2i21qttq2a0qy63i5uwgud` (`roles_id`),
  KEY `FK_gi3yprbrs2kgx20qsdtlknrin` (`User_id`),
  CONSTRAINT `FK_etx2i21qttq2a0qy63i5uwgud` FOREIGN KEY (`roles_id`) REFERENCES `Role` (`id`),
  CONSTRAINT `FK_gi3yprbrs2kgx20qsdtlknrin` FOREIGN KEY (`User_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `UserRoles`
--

LOCK TABLES `UserRoles` WRITE;
INSERT INTO `UserRoles` VALUES (1,1),(1,3);
UNLOCK TABLES;