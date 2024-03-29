
/** SCRIPTS FOR CREATING NEW TABLES WHICH ARE REQUIRED FOR THE DISCOVER-SERVICES SPRING BOOT APPLICATION **/

CREATE SCHEMA `DSDB` ;

CREATE TABLE `DSDB`.`EC2_INSTANCE_DETAIL` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `INSTANCE_ID` varchar(45) NOT NULL,
  `IMAGE_ID` varchar(45) DEFAULT NULL,
  `TYPE` varchar(45) DEFAULT NULL,
  `STATE` varchar(45) DEFAULT NULL,
  `MONITORING_STATE` varchar(45) DEFAULT NULL,
  `LAUNCH_DATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `INSTANCE_ID_UNIQUE` (`INSTANCE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1


CREATE TABLE `DSDB`.`S3_BUCKET_DETAIL` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BUCKET_NAME` varchar(63) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `BUCKET_NAME_UNIQUE` (`BUCKET_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=1


CREATE TABLE `DSDB`.`S3_BUCKET_FILE_DETAIL` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BUCKET_NAME` varchar(63) NOT NULL,
  `FILE_NAME` varchar(1024) NOT NULL,
  `FOLDER_NAME` varchar(1024) NOT NULL,
  `SIZE_IN_MBS` bigint DEFAULT '0',
  `OWNER_ID` varchar(100) DEFAULT NULL,
  `LAST_MODIFIED_DATE` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1

CREATE TABLE `DSDB`.`task_detail` (
  `JOB_ID` int NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(10) DEFAULT NULL,
  `TASK` varchar(100) DEFAULT NULL,
  `FAILURE_DETAILS` text,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1
