/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.17-MariaDB : Database - admissionmanage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`admissionmanage` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `admissionmanage`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chat_id` int(20) NOT NULL AUTO_INCREMENT,
  `from_id` int(20) DEFAULT NULL,
  `reciever_id` int(20) DEFAULT NULL,
  `message` varchar(60) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

/*Data for the table `chat` */

insert  into `chat`(`chat_id`,`from_id`,`reciever_id`,`message`,`date`,`status`) values 
(1,2,3,'hello','0000-00-00','seen'),
(2,3,5,'hi','2021-02-06','pending'),
(4,5,3,'hello','2021-02-06','pending'),
(5,5,3,'hello','2021-02-06','pending'),
(6,5,7,'how was the class','2021-02-07','pending'),
(7,3,6,'hi','2021-02-07','pending'),
(8,3,5,'hello','2021-02-08','pending'),
(9,3,5,'good evng','2021-02-08','pending'),
(10,5,11,'helli','2021-02-09','pending'),
(11,11,5,'hi sir','2021-02-09','pending'),
(13,3,5,'please reply','2021-02-11','pending'),
(14,3,6,'hi','2021-02-11','pending'),
(15,3,5,'hi','2021-02-11','pending'),
(16,5,2,'hi','2021-02-11','pending'),
(17,3,5,'hey','2021-02-12','pending'),
(18,3,5,'sup','2021-02-12','pending'),
(19,3,6,'hello','2021-02-12','pending'),
(20,3,17,'uhhhh','2021-02-12','pending'),
(21,3,6,'helllooooooooooooooo','2021-02-12','pending'),
(22,3,6,'hi','2021-02-12','pending'),
(23,3,5,'hlo','2021-02-15','pending'),
(24,3,5,'hlo','2021-02-15','pending'),
(25,5,3,'hi','2021-02-15','pending'),
(26,5,13,'hi','2021-02-17','pending');

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(20) NOT NULL AUTO_INCREMENT,
  `student_id` int(20) DEFAULT NULL,
  `complaint_message` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `reply` varchar(50) DEFAULT NULL,
  `staff_id` int(50) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `complaint` */

insert  into `complaint`(`complaint_id`,`student_id`,`complaint_message`,`date`,`reply`,`staff_id`) values 
(1,2,'invalid','2020-11-05','qwerty',NULL),
(2,2,'not good','2020-11-11','will check',NULL),
(3,3,'should imrove','2021-02-08','OK',6),
(4,3,'No good teaching','2021-02-09','ok',15),
(5,3,'very bad class','2021-02-12','thank you',6),
(6,3,'very bad','2021-02-12','jb jbjhb',15),
(7,3,'shit','2021-02-12','pending',6);

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedback_id` int(20) NOT NULL AUTO_INCREMENT,
  `student_id` int(20) DEFAULT NULL,
  `staff_id` int(20) DEFAULT NULL,
  `feedback_message` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `feedback` */

insert  into `feedback`(`feedback_id`,`student_id`,`staff_id`,`feedback_message`,`date`,`status`) values 
(1,3,5,'nice','2020-11-26','pending'),
(2,3,5,'hello','2021-01-12','pending'),
(3,2,5,'ok','2021-02-06','pending'),
(4,7,5,'thanks for the review','2021-02-07','pending'),
(5,2,5,'ok','2021-02-11','pending'),
(6,7,5,'ok thanks ','2021-02-11','pending'),
(7,2,5,'bad','2021-02-12','pending'),
(8,22,5,'ok','2021-02-17','pending');

/*Table structure for table `feeds` */

DROP TABLE IF EXISTS `feeds`;

CREATE TABLE `feeds` (
  `feed_id` int(20) NOT NULL AUTO_INCREMENT,
  `staff_id` int(20) DEFAULT NULL,
  `photos` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `feeds` */

insert  into `feeds`(`feed_id`,`staff_id`,`photos`,`date`,`description`) values 
(1,5,'20210206163322.jpg','2021-02-06','disp'),
(2,6,'20210207180049.jpg','2021-02-07','keys'),
(3,5,'20210212151624.jpg','2021-02-12','wow'),
(4,5,'20210217110639.jpg','2021-02-17','light');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`login_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`type`) values 
(1,'admin','admin1','admin'),
(2,'dev','devika','staff'),
(3,'student','student','student'),
(5,'staff','staff1','staff'),
(6,'prakash','prakash','staff'),
(7,'anu','aneetha','student'),
(8,'aswinzz','aswinzz','student'),
(9,'akhil','akhil3','staff'),
(11,'rohit','rohitku','student'),
(12,'arun','arunkr','pending'),
(13,'tom','thomas','student'),
(14,'anjali','anjali','student'),
(15,'beena','beenag','pending'),
(16,'jame','jamest','pending'),
(17,'shankar','shankar','pending'),
(20,'vishnu','vishnu','student'),
(22,'dev1233556y','devjsjfhh','student');

/*Table structure for table `materials` */

DROP TABLE IF EXISTS `materials`;

CREATE TABLE `materials` (
  `material_id` int(20) NOT NULL AUTO_INCREMENT,
  `file` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `staff_id` int(30) DEFAULT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `materials` */

insert  into `materials`(`material_id`,`file`,`description`,`date`,`staff_id`) values 
(1,'20201209_175012.jpg','cur','2021-02-06',5),
(2,'IMG_7600.JPG','study','2021-02-07',6),
(3,'20210212_121459.jpg','claass','2021-02-12',5),
(4,'20210212_121459.jpg','class','2021-02-12',5),
(5,'IMG-20210111-WA0000.jpg','yuui','2021-02-15',5),
(6,'20210201_170239.jpg','ffghh','2021-02-17',5);

/*Table structure for table `rating` */

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `rating_id` int(20) NOT NULL AUTO_INCREMENT,
  `student_id` int(20) DEFAULT NULL,
  `staff_id` int(20) DEFAULT NULL,
  `review` varchar(50) DEFAULT NULL,
  `ratings` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `rating` */

insert  into `rating`(`rating_id`,`student_id`,`staff_id`,`review`,`ratings`,`date`) values 
(1,2,5,'good',5,'2020-11-07'),
(2,3,5,'best',4,'2020-11-10'),
(3,7,5,'marvellous',3.5,'2021-02-06'),
(4,11,6,'improve the class',4,'2021-02-07'),
(5,13,6,'good',5,'2021-02-08'),
(6,14,9,'good',5,'2021-02-09'),
(7,13,9,'notbad',0,'2021-02-12'),
(8,3,6,'good',0.5,'2021-02-12'),
(9,3,5,'good',1,'2021-02-15');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `request_id` int(20) NOT NULL AUTO_INCREMENT,
  `student_id` int(20) DEFAULT NULL,
  `staff_id` int(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `request` */

/*Table structure for table `staff_registration` */

DROP TABLE IF EXISTS `staff_registration`;

CREATE TABLE `staff_registration` (
  `staff_id` int(20) NOT NULL AUTO_INCREMENT,
  `login_id` int(20) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone_no` varchar(50) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `qualification` varchar(20) DEFAULT NULL,
  `interet_area` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `staff_registration` */

insert  into `staff_registration`(`staff_id`,`login_id`,`first_name`,`middle_name`,`last_name`,`address`,`email`,`phone_no`,`age`,`gender`,`qualification`,`interet_area`) values 
(1,5,'Rahul','S','R','thondayad','rahul@e.com','9255567895',34,'male','Btech','drawing'),
(2,6,'Prakash','Kumar','A','pavangad','prakash@d.com','9245838383',24,'female','MCA','singing'),
(5,9,'Akhil','P','g','Puthyangadi','akhil@yahoo.com','9255484848',30,'Male','MTECH','Violin'),
(7,12,'Arun','Krishnan','S','Nadakkav','arunkris@gmail.com','9234393939',22,'Male','Degree','Violin'),
(8,15,'Beena','','B','Puthyangadi','beena@gmail.com','9365728189',25,'Female','Degree','Guitar'),
(9,16,'James','','T','panthhernkav','james@gmail.com','9999434354',30,'Male','Btec','Violin'),
(10,17,'Shankar','','Uday','Westhill','shankar@gmail.com','9895632568',20,'Female','bca','Yoga');

/*Table structure for table `student_registration` */

DROP TABLE IF EXISTS `student_registration`;

CREATE TABLE `student_registration` (
  `student_id` int(20) NOT NULL AUTO_INCREMENT,
  `login_id` int(20) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `phone_no` varchar(50) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `qualification` varchar(20) DEFAULT NULL,
  `interest_area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `student_registration` */

insert  into `student_registration`(`student_id`,`login_id`,`first_name`,`middle_name`,`last_name`,`address`,`email`,`phone_no`,`age`,`gender`,`qualification`,`interest_area`) values 
(1,2,'Devika','','','pavangad','asd@gmail.com','9895842915',21,'female','BSc','singing'),
(2,3,'Alphy','Paul','','nadakav','brk@gmail.com','9085746464',24,'female','BSc','DANCE'),
(3,7,'Aneetha','P','V','Chathamangalam','anhagshs@gmail.com','9400438765',20,'Female','Degree','Dance'),
(4,8,'Aswin','Kumar','S','Atholi','aswinkumar@gmail.com','8281232381',21,'Male','Btech','KEYBOARD'),
(5,11,'Rohit ','Kumar','A','Pantheerankav','rohitkumar@gmail.com','8064563727',21,'Male','Degree','Guitar'),
(6,13,'Thomas','','Tom','CNetworl','thomastom@gmail.com','9991234354',30,'Male','BsV','Guitar'),
(7,14,'Anjali','','R','Medical College','anjali@gmail.com','9004376828',25,'Female','Degree','Guitar'),
(8,20,'Vishnu','','A','Allappra House, Irin','vishnuallapra@gmail.','9539267051',20,'Male','Degree','Yoga'),
(9,22,'gopika','','a','fffsfgahh','gopika@gmail.com','8876948488',15,'Female','degree','yoga');

/*Table structure for table `videos` */

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `video_id` int(20) NOT NULL AUTO_INCREMENT,
  `staff_id` int(20) DEFAULT NULL,
  `video_name` varchar(20) DEFAULT NULL,
  `video_description` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `video` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `videos` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
