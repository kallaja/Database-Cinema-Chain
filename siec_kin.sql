/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : siec_kin

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 02/06/2024 12:06:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bilety
-- ----------------------------
DROP TABLE IF EXISTS `bilety`;
CREATE TABLE `bilety`  (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ID_zamowienia` bigint UNSIGNED NOT NULL,
  `rzad` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `miejsce` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `zeskanowane` tinyint(1) NOT NULL DEFAULT 0,
  `ID_znizka` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `ID_zamowienia`(`ID_zamowienia` ASC) USING BTREE,
  INDEX `ID_zniżka`(`ID_znizka` ASC) USING BTREE,
  CONSTRAINT `bilety_ibfk_1` FOREIGN KEY (`ID_zamowienia`) REFERENCES `zamowienia` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bilety_ibfk_3` FOREIGN KEY (`ID_znizka`) REFERENCES `znizki` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bilety
-- ----------------------------
INSERT INTO `bilety` VALUES (6, 5, '2', '5', 0, 2);

-- ----------------------------
-- Table structure for dane_do_faktury
-- ----------------------------
DROP TABLE IF EXISTS `dane_do_faktury`;
CREATE TABLE `dane_do_faktury`  (
  `nazwa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NIP` int NOT NULL,
  `nazwa_uslugi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `adres` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dane_do_faktury
-- ----------------------------
INSERT INTO `dane_do_faktury` VALUES ('POLkinex SA', 123456789, 'Sprzedaż biletów', 'ul. Warszawska 10, Kraków 38-100');

-- ----------------------------
-- Table structure for dyskusja
-- ----------------------------
DROP TABLE IF EXISTS `dyskusja`;
CREATE TABLE `dyskusja`  (
  `ID_dyskusja` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ID_film` int NOT NULL,
  `ID_uzytkownik` bigint NOT NULL,
  `ID_do_dyskusji` int UNSIGNED NULL DEFAULT NULL,
  `tresc_dyskusja` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `data_dys` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_dyskusja`) USING BTREE,
  INDEX `ID_film`(`ID_film` ASC) USING BTREE,
  INDEX `ID_uzytkownik`(`ID_uzytkownik` ASC) USING BTREE,
  INDEX `ID_do_dyskusji`(`ID_do_dyskusji` ASC) USING BTREE,
  CONSTRAINT `dyskusja_ibfk_1` FOREIGN KEY (`ID_do_dyskusji`) REFERENCES `dyskusja` (`ID_dyskusja`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `dyskusja_ibfk_2` FOREIGN KEY (`ID_film`) REFERENCES `filmy` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `dyskusja_ibfk_3` FOREIGN KEY (`ID_uzytkownik`) REFERENCES `logowanie` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dyskusja
-- ----------------------------
INSERT INTO `dyskusja` VALUES (1, 5, 2, NULL, '123', '2024-05-28 18:40:11');
INSERT INTO `dyskusja` VALUES (2, 4, 2, NULL, '456', '2024-06-02 11:26:11');
INSERT INTO `dyskusja` VALUES (3, 1, 2, NULL, 'information', '2024-06-02 11:26:16');
INSERT INTO `dyskusja` VALUES (4, 1, 5, 1, 'Navicat abc', '2024-06-02 11:26:21');
INSERT INTO `dyskusja` VALUES (5, 5, 5, NULL, 'I may not have gone where I intended to go, but I think I have ended up where I needed to be. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Creativity is intelligence having fun. Difficult circumstances serve as a textbook of life for people. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. The reason why a great man is great is that he resolves to be a great man. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. The first step is as good as half over. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections.', '2021-12-14 01:16:39');
INSERT INTO `dyskusja` VALUES (6, 4, 2, 2, 'You cannot save people, you can just love them. If opportunity doesn’t knock, build a door. Creativity is intelligence having fun. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Remember that failure is an event, not a person. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. The reason why a great man is great is that he resolves to be a great man. Optimism is the one quality more associated with success and happiness than any other. Genius is an infinite capacity for taking pains. How we spend our days is, of course, how we spend our lives. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. You will succeed because most people are lazy. Actually it is just in an idea when feel oneself can achieve and cannot achieve. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. If you wait, all that happens is you get older. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. You must be the change you wish to see in the world. Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Creativity is intelligence having fun. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. All journeys have secret destinations of which the traveler is unaware. Remember that failure is an event, not a person. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Anyone who has ever made anything of importance was disciplined. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Champions keep playing until they get it right. Genius is an infinite capacity for taking pains. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The reason why a great man is great is that he resolves to be a great man. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Navicat 15 has added support for the system-wide dark mode. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Optimism is the one quality more associated with success and happiness than any other. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Typically, it is employed as an encrypted version of Telnet. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The Synchronize to Database function will give you a full picture of all database differences. Creativity is intelligence having fun. Flexible settings enable you to set up a custom key for comparison and synchronization. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Navicat 15 has added support for the system-wide dark mode. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Flexible settings enable you to set up a custom key for comparison and synchronization. A query is used to extract data from the database in a readable format according to the user\'s request. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat 15 has added support for the system-wide dark mode. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. A man is not old until regrets take the place of dreams. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Sometimes you win, sometimes you learn. There is no way to happiness. Happiness is the way. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane.', '2001-10-20 18:10:35');
INSERT INTO `dyskusja` VALUES (7, 2, 2, NULL, 'Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. I destroy my enemies when I make them my friends. If the plan doesn’t work, change the plan, but never the goal. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature.', '2012-10-13 19:18:43');
INSERT INTO `dyskusja` VALUES (9, 5, 5, 2, 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. A man is not old until regrets take the place of dreams. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. You cannot save people, you can just love them. If it scares you, it might be a good thing to try. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Flexible settings enable you to set up a custom key for comparison and synchronization. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. There is no way to happiness. Happiness is the way. Difficult circumstances serve as a textbook of life for people. I may not have gone where I intended to go, but I think I have ended up where I needed to be. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Difficult circumstances serve as a textbook of life for people. How we spend our days is, of course, how we spend our lives. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. The first step is as good as half over. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. To connect to a database or schema, simply double-click it in the pane. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Remember that failure is an event, not a person. I may not have gone where I intended to go, but I think I have ended up where I needed to be. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Navicat 15 has added support for the system-wide dark mode. You will succeed because most people are lazy. I destroy my enemies when I make them my friends. I destroy my enemies when I make them my friends. If you wait, all that happens is you get older. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. If the plan doesn’t work, change the plan, but never the goal. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. The On Startup feature allows you to control what tabs appear when you launch Navicat. Flexible settings enable you to set up a custom key for comparison and synchronization. The first step is as good as half over. Anyone who has ever made anything of importance was disciplined. Anyone who has ever made anything of importance was disciplined. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. There is no way to happiness. Happiness is the way. You will succeed because most people are lazy. I may not have gone where I intended to go, but I think I have ended up where I needed to be. In the middle of winter I at last discovered that there was in me an invincible summer. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The On Startup feature allows you to control what tabs appear when you launch Navicat. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. If the plan doesn’t work, change the plan, but never the goal. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. All journeys have secret destinations of which the traveler is unaware. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. A man is not old until regrets take the place of dreams. The first step is as good as half over. Difficult circumstances serve as a textbook of life for people. I may not have gone where I intended to go, but I think I have ended up where I needed to be. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Champions keep playing until they get it right. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. If you wait, all that happens is you get older. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. What you get by achieving your goals is not as important as what you become by achieving your goals. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. If you wait, all that happens is you get older. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server.', '2001-03-11 01:01:46');
INSERT INTO `dyskusja` VALUES (10, 3, 2, 1, '8080', '2024-06-02 11:26:33');
INSERT INTO `dyskusja` VALUES (11, 5, 2, 4, 'Success consists of going from failure to failure without loss of enthusiasm. The first step is as good as half over. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. A man’s best friends are his ten fingers. To connect to a database or schema, simply double-click it in the pane. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. A comfort zone is a beautiful place, but nothing ever grows there. It wasn’t raining when Noah built the ark. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. A query is used to extract data from the database in a readable format according to the user\'s request. You cannot save people, you can just love them. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. You must be the change you wish to see in the world. You will succeed because most people are lazy. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Champions keep playing until they get it right. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. The Synchronize to Database function will give you a full picture of all database differences. If the plan doesn’t work, change the plan, but never the goal. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Anyone who has ever made anything of importance was disciplined. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Actually it is just in an idea when feel oneself can achieve and cannot achieve. A man is not old until regrets take the place of dreams. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Champions keep playing until they get it right. I may not have gone where I intended to go, but I think I have ended up where I needed to be. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. Actually it is just in an idea when feel oneself can achieve and cannot achieve. A man’s best friends are his ten fingers. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Champions keep playing until they get it right. If it scares you, it might be a good thing to try. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration.', '2024-05-28 18:42:05');
INSERT INTO `dyskusja` VALUES (12, 2, 5, 10, 'The On Startup feature allows you to control what tabs appear when you launch Navicat. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. What you get by achieving your goals is not as important as what you become by achieving your goals. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. There is no way to happiness. Happiness is the way. I will greet this day with love in my heart. Remember that failure is an event, not a person. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. The reason why a great man is great is that he resolves to be a great man. In the middle of winter I at last discovered that there was in me an invincible summer. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. The Synchronize to Database function will give you a full picture of all database differences. You cannot save people, you can just love them. How we spend our days is, of course, how we spend our lives. I may not have gone where I intended to go, but I think I have ended up where I needed to be. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. In the middle of winter I at last discovered that there was in me an invincible summer. A comfort zone is a beautiful place, but nothing ever grows there. The past has no power over the present moment. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. You will succeed because most people are lazy. Navicat 15 has added support for the system-wide dark mode. The Synchronize to Database function will give you a full picture of all database differences. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat 15 has added support for the system-wide dark mode. To connect to a database or schema, simply double-click it in the pane. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. I destroy my enemies when I make them my friends. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. A query is used to extract data from the database in a readable format according to the user\'s request. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. If the plan doesn’t work, change the plan, but never the goal. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Typically, it is employed as an encrypted version of Telnet. The On Startup feature allows you to control what tabs appear when you launch Navicat. There is no way to happiness. Happiness is the way. Difficult circumstances serve as a textbook of life for people. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. Success consists of going from failure to failure without loss of enthusiasm. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Flexible settings enable you to set up a custom key for comparison and synchronization. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Actually it is just in an idea when feel oneself can achieve and cannot achieve. A query is used to extract data from the database in a readable format according to the user\'s request. Genius is an infinite capacity for taking pains. Genius is an infinite capacity for taking pains. I may not have gone where I intended to go, but I think I have ended up where I needed to be. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. You must be the change you wish to see in the world. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Champions keep playing until they get it right. How we spend our days is, of course, how we spend our lives. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. If you wait, all that happens is you get older. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. It wasn’t raining when Noah built the ark. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. It wasn’t raining when Noah built the ark. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. If the plan doesn’t work, change the plan, but never the goal. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target.', '2024-05-28 18:42:08');
INSERT INTO `dyskusja` VALUES (13, 1, 5, 10, 'man i love otters', '2024-06-02 11:27:22');
INSERT INTO `dyskusja` VALUES (14, 1, 2, NULL, 'To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. To connect to a database or schema, simply double-click it in the pane. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Champions keep playing until they get it right. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Genius is an infinite capacity for taking pains. The Synchronize to Database function will give you a full picture of all database differences. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. I may not have gone where I intended to go, but I think I have ended up where I needed to be. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Sometimes you win, sometimes you learn. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. I may not have gone where I intended to go, but I think I have ended up where I needed to be. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. If opportunity doesn’t knock, build a door. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Success consists of going from failure to failure without loss of enthusiasm. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Creativity is intelligence having fun. The reason why a great man is great is that he resolves to be a great man. The reason why a great man is great is that he resolves to be a great man. A comfort zone is a beautiful place, but nothing ever grows there. The reason why a great man is great is that he resolves to be a great man. Actually it is just in an idea when feel oneself can achieve and cannot achieve. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration.', '2011-02-25 17:58:46');
INSERT INTO `dyskusja` VALUES (15, 3, 5, 2, 'I may not have gone where I intended to go, but I think I have ended up where I needed to be. If opportunity doesn’t knock, build a door. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. A man is not old until regrets take the place of dreams. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. I destroy my enemies when I make them my friends. Optimism is the one quality more associated with success and happiness than any other. If you wait, all that happens is you get older. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Typically, it is employed as an encrypted version of Telnet. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. A man’s best friends are his ten fingers. Anyone who has never made a mistake has never tried anything new. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Champions keep playing until they get it right. A man’s best friends are his ten fingers.', '2020-07-31 19:58:09');
INSERT INTO `dyskusja` VALUES (16, 1, 5, 2, 'If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. A man’s best friends are his ten fingers. Anyone who has never made a mistake has never tried anything new. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Remember that failure is an event, not a person. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Success consists of going from failure to failure without loss of enthusiasm. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. The Synchronize to Database function will give you a full picture of all database differences. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Typically, it is employed as an encrypted version of Telnet. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat 15 has added support for the system-wide dark mode. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. What you get by achieving your goals is not as important as what you become by achieving your goals. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. What you get by achieving your goals is not as important as what you become by achieving your goals. The reason why a great man is great is that he resolves to be a great man. In the middle of winter I at last discovered that there was in me an invincible summer. The reason why a great man is great is that he resolves to be a great man. Success consists of going from failure to failure without loss of enthusiasm. If it scares you, it might be a good thing to try. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Sometimes you win, sometimes you learn. What you get by achieving your goals is not as important as what you become by achieving your goals. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. To connect to a database or schema, simply double-click it in the pane. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. A man’s best friends are his ten fingers. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy.', '2013-02-15 04:44:38');
INSERT INTO `dyskusja` VALUES (17, 3, 5, NULL, 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Champions keep playing until they get it right. If you wait, all that happens is you get older. You will succeed because most people are lazy. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. The past has no power over the present moment. You cannot save people, you can just love them. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. How we spend our days is, of course, how we spend our lives. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. All journeys have secret destinations of which the traveler is unaware. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. What you get by achieving your goals is not as important as what you become by achieving your goals. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. You cannot save people, you can just love them. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. How we spend our days is, of course, how we spend our lives. A query is used to extract data from the database in a readable format according to the user\'s request. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. You must be the change you wish to see in the world. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat 15 has added support for the system-wide dark mode. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Genius is an infinite capacity for taking pains. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way.', '2013-08-04 06:01:54');
INSERT INTO `dyskusja` VALUES (18, 1, 5, 2, 'Creativity is intelligence having fun. Genius is an infinite capacity for taking pains. Genius is an infinite capacity for taking pains. Remember that failure is an event, not a person. Genius is an infinite capacity for taking pains. To connect to a database or schema, simply double-click it in the pane. If the plan doesn’t work, change the plan, but never the goal. There is no way to happiness. Happiness is the way. If you wait, all that happens is you get older. Creativity is intelligence having fun. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Sometimes you win, sometimes you learn. If opportunity doesn’t knock, build a door. If you wait, all that happens is you get older. Champions keep playing until they get it right. Navicat 15 has added support for the system-wide dark mode. The first step is as good as half over. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. A man is not old until regrets take the place of dreams. Genius is an infinite capacity for taking pains. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. What you get by achieving your goals is not as important as what you become by achieving your goals. The reason why a great man is great is that he resolves to be a great man. The reason why a great man is great is that he resolves to be a great man. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. I destroy my enemies when I make them my friends. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. If you wait, all that happens is you get older. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Difficult circumstances serve as a textbook of life for people. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. There is no way to happiness. Happiness is the way. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. If it scares you, it might be a good thing to try. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. If you wait, all that happens is you get older. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. The past has no power over the present moment. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Success consists of going from failure to failure without loss of enthusiasm. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. I will greet this day with love in my heart. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. All journeys have secret destinations of which the traveler is unaware. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. In the middle of winter I at last discovered that there was in me an invincible summer. The reason why a great man is great is that he resolves to be a great man. A man’s best friends are his ten fingers. Anyone who has never made a mistake has never tried anything new. Remember that failure is an event, not a person. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The first step is as good as half over. Success consists of going from failure to failure without loss of enthusiasm. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. A man is not old until regrets take the place of dreams. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. It wasn’t raining when Noah built the ark. Sometimes you win, sometimes you learn. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Anyone who has never made a mistake has never tried anything new. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Optimism is the one quality more associated with success and happiness than any other. In the middle of winter I at last discovered that there was in me an invincible summer. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Remember that failure is an event, not a person. I will greet this day with love in my heart. You must be the change you wish to see in the world. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Champions keep playing until they get it right. A man’s best friends are his ten fingers. A man’s best friends are his ten fingers. Success consists of going from failure to failure without loss of enthusiasm. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. The Synchronize to Database function will give you a full picture of all database differences. If opportunity doesn’t knock, build a door. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms.', '2000-10-25 15:11:26');
INSERT INTO `dyskusja` VALUES (19, 2, 2, NULL, 'If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. How we spend our days is, of course, how we spend our lives. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. A man’s best friends are his ten fingers. A man’s best friends are his ten fingers. Genius is an infinite capacity for taking pains. A query is used to extract data from the database in a readable format according to the user\'s request. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The past has no power over the present moment. The reason why a great man is great is that he resolves to be a great man. The Synchronize to Database function will give you a full picture of all database differences. You cannot save people, you can just love them. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. If the plan doesn’t work, change the plan, but never the goal. To connect to a database or schema, simply double-click it in the pane. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Optimism is the one quality more associated with success and happiness than any other. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. There is no way to happiness. Happiness is the way. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The first step is as good as half over. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. There is no way to happiness. Happiness is the way. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. It wasn’t raining when Noah built the ark. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Optimism is the one quality more associated with success and happiness than any other. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. In the middle of winter I at last discovered that there was in me an invincible summer. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually.', '2012-12-04 02:47:40');
INSERT INTO `dyskusja` VALUES (20, 2, 2, 2, 'If the plan doesn’t work, change the plan, but never the goal. All journeys have secret destinations of which the traveler is unaware. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Difficult circumstances serve as a textbook of life for people. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. I destroy my enemies when I make them my friends. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Sometimes you win, sometimes you learn. You will succeed because most people are lazy. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Flexible settings enable you to set up a custom key for comparison and synchronization. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. If you wait, all that happens is you get older. The first step is as good as half over. If the plan doesn’t work, change the plan, but never the goal. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. A query is used to extract data from the database in a readable format according to the user\'s request. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. I may not have gone where I intended to go, but I think I have ended up where I needed to be. If opportunity doesn’t knock, build a door. Remember that failure is an event, not a person. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Genius is an infinite capacity for taking pains. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. To connect to a database or schema, simply double-click it in the pane. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. All journeys have secret destinations of which the traveler is unaware. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Champions keep playing until they get it right. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. A man’s best friends are his ten fingers. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Typically, it is employed as an encrypted version of Telnet. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually.', '2023-01-23 21:52:12');

-- ----------------------------
-- Table structure for dyskusja_archiwum
-- ----------------------------
DROP TABLE IF EXISTS `dyskusja_archiwum`;
CREATE TABLE `dyskusja_archiwum`  (
  `ID_dyskusja` int NOT NULL,
  `ID_film` int NOT NULL,
  `ID_uzytkownik` bigint NOT NULL,
  `ID_do_dyskusji` int NULL DEFAULT NULL,
  `tresc_dyskusja` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `data_dys` datetime NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dyskusja_archiwum
-- ----------------------------
INSERT INTO `dyskusja_archiwum` VALUES (8, 1, 2, NULL, 'All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Sometimes you win, sometimes you learn. You cannot save people, you can just love them. Champions keep playing until they get it right. What you get by achieving your goals is not as important as what you become by achieving your goals. Anyone who has ever made anything of importance was disciplined. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. I destroy my enemies when I make them my friends. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Genius is an infinite capacity for taking pains. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. A man is not old until regrets take the place of dreams. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. What you get by achieving your goals is not as important as what you become by achieving your goals. The past has no power over the present moment. Creativity is intelligence having fun. Genius is an infinite capacity for taking pains. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. All journeys have secret destinations of which the traveler is unaware. To connect to a database or schema, simply double-click it in the pane. Optimism is the one quality more associated with success and happiness than any other. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another.', '2000-07-19 11:29:23');

-- ----------------------------
-- Table structure for film_gatunek
-- ----------------------------
DROP TABLE IF EXISTS `film_gatunek`;
CREATE TABLE `film_gatunek`  (
  `ID_film` int NOT NULL,
  `ID_gatunek` int NOT NULL,
  UNIQUE INDEX `ID_film`(`ID_film` ASC, `ID_gatunek` ASC) USING BTREE,
  INDEX `ID_gatunek`(`ID_gatunek` ASC) USING BTREE,
  CONSTRAINT `film_gatunek_ibfk_1` FOREIGN KEY (`ID_film`) REFERENCES `filmy` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `film_gatunek_ibfk_2` FOREIGN KEY (`ID_gatunek`) REFERENCES `gatunki` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_gatunek
-- ----------------------------
INSERT INTO `film_gatunek` VALUES (1, 1);
INSERT INTO `film_gatunek` VALUES (1, 2);
INSERT INTO `film_gatunek` VALUES (6, 2);
INSERT INTO `film_gatunek` VALUES (6, 3);

-- ----------------------------
-- Table structure for film_rezyser
-- ----------------------------
DROP TABLE IF EXISTS `film_rezyser`;
CREATE TABLE `film_rezyser`  (
  `ID_film` int NOT NULL,
  `ID_rezyser` int NOT NULL,
  UNIQUE INDEX `ID_film`(`ID_film` ASC, `ID_rezyser` ASC) USING BTREE,
  INDEX `ID_rezyser`(`ID_rezyser` ASC) USING BTREE,
  CONSTRAINT `film_rezyser_ibfk_1` FOREIGN KEY (`ID_film`) REFERENCES `filmy` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `film_rezyser_ibfk_2` FOREIGN KEY (`ID_rezyser`) REFERENCES `rezyserzy` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_rezyser
-- ----------------------------
INSERT INTO `film_rezyser` VALUES (1, 2);
INSERT INTO `film_rezyser` VALUES (1, 3);
INSERT INTO `film_rezyser` VALUES (1, 4);
INSERT INTO `film_rezyser` VALUES (2, 1);
INSERT INTO `film_rezyser` VALUES (3, 4);
INSERT INTO `film_rezyser` VALUES (4, 5);
INSERT INTO `film_rezyser` VALUES (5, 1);
INSERT INTO `film_rezyser` VALUES (6, 3);
INSERT INTO `film_rezyser` VALUES (6, 4);

-- ----------------------------
-- Table structure for filmy
-- ----------------------------
DROP TABLE IF EXISTS `filmy`;
CREATE TABLE `filmy`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `opis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_premiery` datetime NULL DEFAULT NULL,
  `lokalizacja` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  FULLTEXT INDEX `nazwa`(`nazwa`, `opis`),
  FULLTEXT INDEX `opis`(`opis`)
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of filmy
-- ----------------------------
INSERT INTO `filmy` VALUES (1, 'Zielona Mila', 'database', '2024-05-10 18:16:12', 'Stany Zjednoczone');
INSERT INTO `filmy` VALUES (2, 'Władca Pierścieni: Powrót Króla', 'Pierścień Pierścień Pierścień 1231112231', NULL, '');
INSERT INTO `filmy` VALUES (3, 'Incepcja', 'Pierścień', NULL, '');
INSERT INTO `filmy` VALUES (4, 'Strażnicy Galaktyki', 'mariaDB database', NULL, '');
INSERT INTO `filmy` VALUES (5, 'Osiem Gór', 'mariaDB', NULL, '');
INSERT INTO `filmy` VALUES (6, 'Titanic', 'Titanic – film fabularny produkcji amerykańskiej z 1997, oparty na historycznym wydarzeniu – zatonięciu „Titanica” w 1912. Został wyreżyserowany na podstawie własnego scenariusza przez Jamesa Camerona. Produkcją zajęły się studia filmowe 20th Century Fox, Paramount Pictures i Lightstorm Entertainment.', '1997-12-19 00:00:00', 'Stany Zjednoczone');

-- ----------------------------
-- Table structure for gatunki
-- ----------------------------
DROP TABLE IF EXISTS `gatunki`;
CREATE TABLE `gatunki`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `nazwa`(`nazwa` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gatunki
-- ----------------------------
INSERT INTO `gatunki` VALUES (2, 'dramat');
INSERT INTO `gatunki` VALUES (10, 'familijny');
INSERT INTO `gatunki` VALUES (5, 'fantasy');
INSERT INTO `gatunki` VALUES (8, 'historyczny');
INSERT INTO `gatunki` VALUES (4, 'horror');
INSERT INTO `gatunki` VALUES (1, 'komedia');
INSERT INTO `gatunki` VALUES (6, 'science fiction');
INSERT INTO `gatunki` VALUES (7, 'thriller');
INSERT INTO `gatunki` VALUES (3, 'western');
INSERT INTO `gatunki` VALUES (9, 'wojenny');

-- ----------------------------
-- Table structure for jezyki
-- ----------------------------
DROP TABLE IF EXISTS `jezyki`;
CREATE TABLE `jezyki`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `nazwa`(`nazwa` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jezyki
-- ----------------------------
INSERT INTO `jezyki` VALUES (2, 'angielski');
INSERT INTO `jezyki` VALUES (4, 'francuski');
INSERT INTO `jezyki` VALUES (3, 'niemiecki');
INSERT INTO `jezyki` VALUES (1, 'polski');

-- ----------------------------
-- Table structure for kina
-- ----------------------------
DROP TABLE IF EXISTS `kina`;
CREATE TABLE `kina`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_miejscowosc` int NOT NULL,
  `dokladny_adres` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `dokladny_adres`(`dokladny_adres` ASC) USING BTREE,
  INDEX `ID_miejscowosc`(`ID_miejscowosc` ASC) USING BTREE,
  CONSTRAINT `kina_ibfk_1` FOREIGN KEY (`ID_miejscowosc`) REFERENCES `miejscowosci` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kina
-- ----------------------------
INSERT INTO `kina` VALUES (1, 1, 'ul. Złota 44');
INSERT INTO `kina` VALUES (2, 1, 'ul. Kościuszki 3');
INSERT INTO `kina` VALUES (3, 2, 'ul. Kołłątaja 15');
INSERT INTO `kina` VALUES (4, 2, 'ul. Daniela M. 100');
INSERT INTO `kina` VALUES (5, 2, 'ul. Jana Eukaliptusa IV 10');
INSERT INTO `kina` VALUES (6, 3, 'ul. Dworcowa 10');

-- ----------------------------
-- Table structure for klienci
-- ----------------------------
DROP TABLE IF EXISTS `klienci`;
CREATE TABLE `klienci`  (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `nazwisko` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `imie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nr_telefonu` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adres` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1006 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of klienci
-- ----------------------------
INSERT INTO `klienci` VALUES (1, 'kowalski', 'jan', 'jk@gmail.com', '765890763', '');
INSERT INTO `klienci` VALUES (2, 'nowak', 'maria', 'mk@gmail.com', '936826749', '');
INSERT INTO `klienci` VALUES (3, 'dąbrowski', 'kacper', 'kd@gmail.com', NULL, '');
INSERT INTO `klienci` VALUES (4, 'kowal', 'barbara', 'bk@gmail.com', NULL, '');
INSERT INTO `klienci` VALUES (5, 'pawlak', 'nikodem', 'np@gmail.com', '856378026', '');
INSERT INTO `klienci` VALUES (6, 'Yeow', 'Cho Yee', 'yeochoyee@gmail.com', '421837839', '');
INSERT INTO `klienci` VALUES (7, 'Morris', 'Leslie', 'morrisl@gmail.com', '908008694', '');
INSERT INTO `klienci` VALUES (8, 'Fan', 'On Na', 'onnafan@gmail.com', '480238746', '');
INSERT INTO `klienci` VALUES (9, 'Dixon', 'Sean', 'seadix507@gmail.com', '614434803', '');
INSERT INTO `klienci` VALUES (10, 'Brown', 'Alan', 'brownal@gmail.com', '833606165', '');
INSERT INTO `klienci` VALUES (11, 'Ryan', 'Debra', 'ryadebra63@gmail.com', '196253600', '');
INSERT INTO `klienci` VALUES (12, 'Hernandez', 'Russell', 'hernruss3@gmail.com', '903421110', '');
INSERT INTO `klienci` VALUES (13, 'Johnson', 'Norma', 'normajoh@gmail.com', '282994909', '');
INSERT INTO `klienci` VALUES (14, 'Yau', 'Wing Kuen', 'yau5@gmail.com', '625863591', '');
INSERT INTO `klienci` VALUES (15, 'Fong', 'Ching Wan', 'cwfong12@gmail.com', '174126813', '');
INSERT INTO `klienci` VALUES (16, 'Meyer', 'Don', 'meyer2@gmail.com', '948341629', '');
INSERT INTO `klienci` VALUES (17, 'Campbell', 'Nicholas', 'campbellnicholas@gmail.com', '390243366', '');
INSERT INTO `klienci` VALUES (18, 'Dai', 'Sai Wing', 'daisw1954@gmail.com', '067535697', '');
INSERT INTO `klienci` VALUES (19, 'Kwong', 'Hok Yau', 'kwong17@gmail.com', '876302894', '');
INSERT INTO `klienci` VALUES (20, 'Yuen', 'Wing Sze', 'yuenws@gmail.com', '535105862', '');
INSERT INTO `klienci` VALUES (21, 'Hunter', 'Amanda', 'hamanda@gmail.com', '298427042', '');
INSERT INTO `klienci` VALUES (22, 'Takagi', 'Minato', 'takagi92@gmail.com', '801040863', '');
INSERT INTO `klienci` VALUES (23, 'Matsumoto', 'Itsuki', 'matsumotoitsuki7@gmail.com', '192087166', '');
INSERT INTO `klienci` VALUES (24, 'Chavez', 'Keith', 'chavezk@gmail.com', '687432516', '');
INSERT INTO `klienci` VALUES (25, 'Ellis', 'Jerry', 'jerrye5@gmail.com', '478334738', '');
INSERT INTO `klienci` VALUES (26, 'Diaz', 'Rebecca', 'rebdiaz9@gmail.com', '543751067', '');
INSERT INTO `klienci` VALUES (27, 'Wu', 'Fu Shing', 'fushingwu720@gmail.com', '074226377', '');
INSERT INTO `klienci` VALUES (28, 'Man', 'Wai Man', 'manwm@gmail.com', '722714802', '');
INSERT INTO `klienci` VALUES (29, 'Chin', 'Wing Fat', 'wingfatchin@gmail.com', '013592352', '');
INSERT INTO `klienci` VALUES (30, 'Man', 'On Na', 'onman@gmail.com', '777676238', '');
INSERT INTO `klienci` VALUES (31, 'Rivera', 'Rachel', 'riverr6@gmail.com', '855722494', '');
INSERT INTO `klienci` VALUES (32, 'Kam', 'Ka Fai', 'kamkf45@gmail.com', '605682016', '');
INSERT INTO `klienci` VALUES (33, 'Nomura', 'Misaki', 'misakinomu1977@gmail.com', '449828232', '');
INSERT INTO `klienci` VALUES (34, 'Ono', 'Itsuki', 'onoitsuki90@gmail.com', '066845212', '');
INSERT INTO `klienci` VALUES (35, 'Kojima', 'Daisuke', 'dak@gmail.com', '877399382', '');
INSERT INTO `klienci` VALUES (36, 'Lo', 'Kwok Wing', 'kwokwinglo64@gmail.com', '483953001', '');
INSERT INTO `klienci` VALUES (37, 'Martin', 'Amanda', 'martinamanda@gmail.com', '960983527', '');
INSERT INTO `klienci` VALUES (38, 'Rogers', 'Sean', 'seanrogers@gmail.com', '542833367', '');
INSERT INTO `klienci` VALUES (39, 'Kao', 'Hiu Tung', 'htka@gmail.com', '233878393', '');
INSERT INTO `klienci` VALUES (40, 'Hamilton', 'Rita', 'hamri427@gmail.com', '490030215', '');
INSERT INTO `klienci` VALUES (41, 'Choi', 'On Kay', 'choionkay@gmail.com', '530331314', '');
INSERT INTO `klienci` VALUES (42, 'Sheh', 'Fu Shing', 'shfs5@gmail.com', '710363422', '');
INSERT INTO `klienci` VALUES (43, 'Tong', 'Tsz Ching', 'tctong@gmail.com', '330540299', '');
INSERT INTO `klienci` VALUES (44, 'Choi', 'Wing Sze', 'choiwing@gmail.com', '523854456', '');
INSERT INTO `klienci` VALUES (45, 'Thompson', 'Harold', 'thompsonh@gmail.com', '506045288', '');
INSERT INTO `klienci` VALUES (46, 'Kono', 'Nanami', 'kono612@gmail.com', '486350938', '');
INSERT INTO `klienci` VALUES (47, 'Owens', 'Ricky', 'riowens@gmail.com', '189692422', '');
INSERT INTO `klienci` VALUES (48, 'Shimizu', 'Ayano', 'ayano706@gmail.com', '627399347', '');
INSERT INTO `klienci` VALUES (49, 'Pak', 'Hok Yau', 'phokya1009@gmail.com', '963718866', '');
INSERT INTO `klienci` VALUES (50, 'Dunn', 'Edna', 'dedna@gmail.com', '599664815', '');
INSERT INTO `klienci` VALUES (51, 'Saito', 'Yuna', 'sayu10@gmail.com', '614225216', '');
INSERT INTO `klienci` VALUES (52, 'Man', 'Lai Yan', 'manlaiyan@gmail.com', '300521111', '');
INSERT INTO `klienci` VALUES (53, 'Nelson', 'Micheal', 'michenelso@gmail.com', '925682742', '');
INSERT INTO `klienci` VALUES (54, 'Mori', 'Riku', 'rikum@gmail.com', '424570545', '');
INSERT INTO `klienci` VALUES (55, 'Sugiyama', 'Ryota', 'rysugiyama8@gmail.com', '515758420', '');
INSERT INTO `klienci` VALUES (56, 'Nakamura', 'Kasumi', 'nakkasu@gmail.com', '782086107', '');
INSERT INTO `klienci` VALUES (57, 'Kojima', 'Mai', 'komai@gmail.com', '799490704', '');
INSERT INTO `klienci` VALUES (58, 'Wright', 'Emma', 'wemma5@gmail.com', '654927462', '');
INSERT INTO `klienci` VALUES (59, 'Ando', 'Yuto', 'andoy@gmail.com', '391245941', '');
INSERT INTO `klienci` VALUES (60, 'Aoki', 'Eita', 'eita63@gmail.com', '691806907', '');
INSERT INTO `klienci` VALUES (61, 'Kong', 'Chi Yuen', 'kongchiyuen8@gmail.com', '800667369', '');
INSERT INTO `klienci` VALUES (62, 'Chic', 'Kwok Yin', 'kwokyin1986@gmail.com', '521805646', '');
INSERT INTO `klienci` VALUES (63, 'Chang', 'Hui Mei', 'chang501@gmail.com', '795945404', '');
INSERT INTO `klienci` VALUES (64, 'Kao', 'On Na', 'kaoonna@gmail.com', '197782775', '');
INSERT INTO `klienci` VALUES (65, 'Ruiz', 'Howard', 'howardrui@gmail.com', '195754767', '');
INSERT INTO `klienci` VALUES (66, 'Liao', 'Kar Yan', 'liky3@gmail.com', '228264032', '');
INSERT INTO `klienci` VALUES (67, 'Imai', 'Mai', 'mai8@gmail.com', '798598612', '');
INSERT INTO `klienci` VALUES (68, 'Stevens', 'Connie', 'connstevens430@gmail.com', '469341928', '');
INSERT INTO `klienci` VALUES (69, 'Takeuchi', 'Ryota', 'rtakeuchi@gmail.com', '674964841', '');
INSERT INTO `klienci` VALUES (70, 'To', 'Hui Mei', 'thm9@gmail.com', '028645643', '');
INSERT INTO `klienci` VALUES (71, 'Hsuan', 'Ming', 'hsmin9@gmail.com', '505478100', '');
INSERT INTO `klienci` VALUES (72, 'Sakai', 'Kaito', 'kaitosakai1@gmail.com', '220059579', '');
INSERT INTO `klienci` VALUES (73, 'Wong', 'Siu Wai', 'swwong812@gmail.com', '576398631', '');
INSERT INTO `klienci` VALUES (74, 'Ku', 'Ting Fung', 'ktf@gmail.com', '389841943', '');
INSERT INTO `klienci` VALUES (75, 'Wada', 'Sakura', 'sw905@gmail.com', '353450476', '');
INSERT INTO `klienci` VALUES (76, 'Maeda', 'Momoe', 'maeda72@gmail.com', '188804217', '');
INSERT INTO `klienci` VALUES (77, 'Snyder', 'Christina', 'snyder2@gmail.com', '431763849', '');
INSERT INTO `klienci` VALUES (78, 'Sasaki', 'Riku', 'sasakri@gmail.com', '862953266', '');
INSERT INTO `klienci` VALUES (79, 'Matsuda', 'Shino', 'shinmats6@gmail.com', '826684622', '');
INSERT INTO `klienci` VALUES (80, 'Kwong', 'Fu Shing', 'fushing11@gmail.com', '095220887', '');
INSERT INTO `klienci` VALUES (81, 'Chin', 'Kar Yan', 'kychin71@gmail.com', '496679627', '');
INSERT INTO `klienci` VALUES (82, 'Kaneko', 'Sakura', 'sakura9@gmail.com', '203764755', '');
INSERT INTO `klienci` VALUES (83, 'Gonzalez', 'Debbie', 'debbie6@gmail.com', '905754707', '');
INSERT INTO `klienci` VALUES (84, 'Evans', 'Willie', 'evanswi10@gmail.com', '407522772', '');
INSERT INTO `klienci` VALUES (85, 'Dai', 'Sai Wing', 'saiwingda@gmail.com', '005594087', '');
INSERT INTO `klienci` VALUES (86, 'Maruyama', 'Hana', 'maruyhan405@gmail.com', '920053834', '');
INSERT INTO `klienci` VALUES (87, 'Watanabe', 'Yuna', 'ywata426@gmail.com', '265912269', '');
INSERT INTO `klienci` VALUES (88, 'Robinson', 'Janet', 'jrobinson@gmail.com', '110128709', '');
INSERT INTO `klienci` VALUES (89, 'Woods', 'Phyllis', 'woodsphyl10@gmail.com', '561396168', '');
INSERT INTO `klienci` VALUES (90, 'Chic', 'Fat', 'fat2000@gmail.com', '736091268', '');
INSERT INTO `klienci` VALUES (91, 'Takagi', 'Yuna', 'takagi3@gmail.com', '776606241', '');
INSERT INTO `klienci` VALUES (92, 'Takeuchi', 'Yuito', 'tay@gmail.com', '414138140', '');
INSERT INTO `klienci` VALUES (93, 'Kobayashi', 'Rin', 'kobayashi2016@gmail.com', '318149219', '');
INSERT INTO `klienci` VALUES (94, 'Patterson', 'Philip', 'pattephilip@gmail.com', '626176070', '');
INSERT INTO `klienci` VALUES (95, 'Yuen', 'Ka Man', 'kmy@gmail.com', '928764850', '');
INSERT INTO `klienci` VALUES (96, 'Arai', 'Ikki', 'ikki1963@gmail.com', '533205661', '');
INSERT INTO `klienci` VALUES (97, 'Miura', 'Sara', 'miurasara@gmail.com', '012582411', '');
INSERT INTO `klienci` VALUES (98, 'Cook', 'Lawrence', 'cook925@gmail.com', '467943386', '');
INSERT INTO `klienci` VALUES (99, 'Lam', 'Sai Wing', 'saiwinglam@gmail.com', '423399492', '');
INSERT INTO `klienci` VALUES (100, 'Goto', 'Kenta', 'kengo68@gmail.com', '586682983', '');
INSERT INTO `klienci` VALUES (101, 'Tsui', 'Wai Lam', 'twl1108@gmail.com', '005916677', '');
INSERT INTO `klienci` VALUES (102, 'Jimenez', 'Peggy', 'jpe@gmail.com', '444374880', '');
INSERT INTO `klienci` VALUES (103, 'Chung', 'Ling Ling', 'lingling1943@gmail.com', '804720524', '');
INSERT INTO `klienci` VALUES (104, 'Lau', 'Kwok Wing', 'kwokwl@gmail.com', '899067366', '');
INSERT INTO `klienci` VALUES (105, 'Takahashi', 'Sakura', 'tsakura@gmail.com', '598360352', '');
INSERT INTO `klienci` VALUES (106, 'Cheng', 'Wing Fat', 'cwingfat@gmail.com', '248769380', '');
INSERT INTO `klienci` VALUES (107, 'Lewis', 'Connie', 'connilewi@gmail.com', '222800971', '');
INSERT INTO `klienci` VALUES (108, 'Murray', 'Nancy', 'namurray93@gmail.com', '551331895', '');
INSERT INTO `klienci` VALUES (109, 'Hughes', 'Marie', 'hughes1118@gmail.com', '558063349', '');
INSERT INTO `klienci` VALUES (110, 'Yuen', 'Lik Sun', 'yliksun@gmail.com', '158417353', '');
INSERT INTO `klienci` VALUES (111, 'Rice', 'Beverly', 'ricebeverly2014@gmail.com', '316222990', '');
INSERT INTO `klienci` VALUES (112, 'Alvarez', 'Carol', 'alvarez3@gmail.com', '045959762', '');
INSERT INTO `klienci` VALUES (113, 'Wong', 'Wai Han', 'wwaihan@gmail.com', '824921034', '');
INSERT INTO `klienci` VALUES (114, 'Kondo', 'Aoi', 'kondoa@gmail.com', '912524793', '');
INSERT INTO `klienci` VALUES (115, 'Aoki', 'Rin', 'aokrin1112@gmail.com', '843906756', '');
INSERT INTO `klienci` VALUES (116, 'Sasaki', 'Shino', 'shinosasaki80@gmail.com', '442290147', '');
INSERT INTO `klienci` VALUES (117, 'Harada', 'Eita', 'eh50@gmail.com', '486974506', '');
INSERT INTO `klienci` VALUES (118, 'Wong', 'Hok Yau', 'hokyauwong@gmail.com', '558737633', '');
INSERT INTO `klienci` VALUES (119, 'Kojima', 'Akina', 'akinakojima53@gmail.com', '277043421', '');
INSERT INTO `klienci` VALUES (120, 'Takada', 'Misaki', 'misaktakada@gmail.com', '617348267', '');
INSERT INTO `klienci` VALUES (121, 'Schmidt', 'Scott', 'schmidt19@gmail.com', '391710929', '');
INSERT INTO `klienci` VALUES (122, 'Chin', 'Hiu Tung', 'chin1@gmail.com', '881545198', '');
INSERT INTO `klienci` VALUES (123, 'Chung', 'Hiu Tung', 'chunhiutung1222@gmail.com', '781301878', '');
INSERT INTO `klienci` VALUES (124, 'Ono', 'Kazuma', 'kazon@gmail.com', '302734105', '');
INSERT INTO `klienci` VALUES (125, 'Stone', 'Christopher', 'cst824@gmail.com', '476223548', '');
INSERT INTO `klienci` VALUES (126, 'Ito', 'Momoka', 'momoka70@gmail.com', '097808421', '');
INSERT INTO `klienci` VALUES (127, 'Carter', 'Gregory', 'cartergre@gmail.com', '393515399', '');
INSERT INTO `klienci` VALUES (128, 'Aguilar', 'Todd', 'aguilar6@gmail.com', '454081479', '');
INSERT INTO `klienci` VALUES (129, 'Jones', 'Steven', 'jones719@gmail.com', '646472073', '');
INSERT INTO `klienci` VALUES (130, 'Romero', 'Judy', 'romerojud@gmail.com', '840239193', '');
INSERT INTO `klienci` VALUES (131, 'Nishimura', 'Itsuki', 'nishimurai70@gmail.com', '929735388', '');
INSERT INTO `klienci` VALUES (132, 'Aguilar', 'Debra', 'agudebra@gmail.com', '922139015', '');
INSERT INTO `klienci` VALUES (133, 'Chiba', 'Rena', 'rech07@gmail.com', '611127800', '');
INSERT INTO `klienci` VALUES (134, 'Boyd', 'Dorothy', 'boyddorothy@gmail.com', '937635509', '');
INSERT INTO `klienci` VALUES (135, 'Miller', 'Jamie', 'milljamie@gmail.com', '696057190', '');
INSERT INTO `klienci` VALUES (136, 'Soto', 'Edna', 'soto530@gmail.com', '262199328', '');
INSERT INTO `klienci` VALUES (137, 'Siu', 'Kwok Kuen', 'siukwokkuen313@gmail.com', '199591454', '');
INSERT INTO `klienci` VALUES (138, 'Choi', 'Wai Man', 'waimanchoi@gmail.com', '771229830', '');
INSERT INTO `klienci` VALUES (139, 'Sullivan', 'Sean', 'seans4@gmail.com', '635302334', '');
INSERT INTO `klienci` VALUES (140, 'Hashimoto', 'Itsuki', 'itsukhashi@gmail.com', '783024744', '');
INSERT INTO `klienci` VALUES (141, 'Ramos', 'Laura', 'lauraramos@gmail.com', '973278705', '');
INSERT INTO `klienci` VALUES (142, 'Chin', 'Tin Wing', 'tinwing7@gmail.com', '072291026', '');
INSERT INTO `klienci` VALUES (143, 'Koyama', 'Kenta', 'koyama88@gmail.com', '143328711', '');
INSERT INTO `klienci` VALUES (144, 'Choi', 'Suk Yee', 'choi829@gmail.com', '810375769', '');
INSERT INTO `klienci` VALUES (145, 'Sit', 'Ching Wan', 'chingwansit@gmail.com', '862332439', '');
INSERT INTO `klienci` VALUES (146, 'Cruz', 'Catherine', 'ccruz@gmail.com', '866921669', '');
INSERT INTO `klienci` VALUES (147, 'Masuda', 'Eita', 'masudaeita@gmail.com', '255668776', '');
INSERT INTO `klienci` VALUES (148, 'Chen', 'Debra', 'cdebra15@gmail.com', '952822273', '');
INSERT INTO `klienci` VALUES (149, 'Bailey', 'Steven', 'stevenbailey501@gmail.com', '547130805', '');
INSERT INTO `klienci` VALUES (150, 'Vargas', 'Phillip', 'phillipvargas@gmail.com', '056810595', '');
INSERT INTO `klienci` VALUES (151, 'Mak', 'Siu Wai', 'swm@gmail.com', '049743516', '');
INSERT INTO `klienci` VALUES (152, 'Sasaki', 'Ayano', 'sasaki522@gmail.com', '713232815', '');
INSERT INTO `klienci` VALUES (153, 'Tamura', 'Ikki', 'itamura1111@gmail.com', '818034244', '');
INSERT INTO `klienci` VALUES (154, 'Jimenez', 'Johnny', 'jimejohnny@gmail.com', '493997054', '');
INSERT INTO `klienci` VALUES (155, 'Olson', 'Howard', 'howardolson@gmail.com', '493779675', '');
INSERT INTO `klienci` VALUES (156, 'Hirano', 'Yuto', 'yutohir@gmail.com', '220816897', '');
INSERT INTO `klienci` VALUES (157, 'Hara', 'Rena', 'rena612@gmail.com', '266602443', '');
INSERT INTO `klienci` VALUES (158, 'Takahashi', 'Misaki', 'mit@gmail.com', '588813257', '');
INSERT INTO `klienci` VALUES (159, 'Okada', 'Miu', 'miuoka@gmail.com', '277274026', '');
INSERT INTO `klienci` VALUES (160, 'Ono', 'Minato', 'onminato@gmail.com', '134032264', '');
INSERT INTO `klienci` VALUES (161, 'Yamazaki', 'Itsuki', 'itsukyamazaki@gmail.com', '587967087', '');
INSERT INTO `klienci` VALUES (162, 'James', 'Wayne', 'jw6@gmail.com', '277092235', '');
INSERT INTO `klienci` VALUES (163, 'Sit', 'Wing Kuen', 'swk97@gmail.com', '489765806', '');
INSERT INTO `klienci` VALUES (164, 'Sato', 'Takuya', 'takuysa4@gmail.com', '003480072', '');
INSERT INTO `klienci` VALUES (165, 'Uchida', 'Seiko', 'seiko9@gmail.com', '022482426', '');
INSERT INTO `klienci` VALUES (166, 'Shimizu', 'Hikari', 'shimizu927@gmail.com', '298221179', '');
INSERT INTO `klienci` VALUES (167, 'Salazar', 'Bernard', 'salazbe2@gmail.com', '323130747', '');
INSERT INTO `klienci` VALUES (168, 'Yung', 'Sze Kwan', 'yung424@gmail.com', '746398052', '');
INSERT INTO `klienci` VALUES (169, 'Sato', 'Eita', 'sei@gmail.com', '526306089', '');
INSERT INTO `klienci` VALUES (170, 'Otsuka', 'Itsuki', 'oits48@gmail.com', '738962628', '');
INSERT INTO `klienci` VALUES (171, 'Koyama', 'Sara', 'koyamsara@gmail.com', '116438183', '');
INSERT INTO `klienci` VALUES (172, 'Nakano', 'Ikki', 'ikkin43@gmail.com', '893569561', '');
INSERT INTO `klienci` VALUES (173, 'Liao', 'Suk Yee', 'liaosy@gmail.com', '031392537', '');
INSERT INTO `klienci` VALUES (174, 'Allen', 'Nicholas', 'allen90@gmail.com', '707441101', '');
INSERT INTO `klienci` VALUES (175, 'Weaver', 'Ray', 'rweaver@gmail.com', '333705946', '');
INSERT INTO `klienci` VALUES (176, 'Ikeda', 'Ikki', 'ikki7@gmail.com', '590360921', '');
INSERT INTO `klienci` VALUES (177, 'Siu', 'Wai Lam', 'siu1949@gmail.com', '122941979', '');
INSERT INTO `klienci` VALUES (178, 'Simmons', 'Kyle', 'simmons50@gmail.com', '390619591', '');
INSERT INTO `klienci` VALUES (179, 'Che', 'Chun Yu', 'chchunyu03@gmail.com', '767338279', '');
INSERT INTO `klienci` VALUES (180, 'Lee', 'Ming', 'minle207@gmail.com', '288361041', '');
INSERT INTO `klienci` VALUES (181, 'Inoue', 'Kaito', 'kaitoinou@gmail.com', '399149319', '');
INSERT INTO `klienci` VALUES (182, 'Wong', 'Ka Man', 'kaman417@gmail.com', '046200524', '');
INSERT INTO `klienci` VALUES (183, 'Goto', 'Ayano', 'ayanogoto@gmail.com', '558535712', '');
INSERT INTO `klienci` VALUES (184, 'Ishida', 'Momoka', 'mishida@gmail.com', '138935618', '');
INSERT INTO `klienci` VALUES (185, 'Williams', 'Alan', 'awilliams@gmail.com', '804365915', '');
INSERT INTO `klienci` VALUES (186, 'Shibata', 'Takuya', 'shibatat@gmail.com', '545764439', '');
INSERT INTO `klienci` VALUES (187, 'Hall', 'Kathryn', 'kathrha@gmail.com', '829340254', '');
INSERT INTO `klienci` VALUES (188, 'Ortiz', 'Ann', 'ortian@gmail.com', '183855774', '');
INSERT INTO `klienci` VALUES (189, 'Yamamoto', 'Kenta', 'yamamotokenta@gmail.com', '754753679', '');
INSERT INTO `klienci` VALUES (190, 'Tsang', 'Ho Yin', 'hoyintsang@gmail.com', '446038870', '');
INSERT INTO `klienci` VALUES (191, 'Fujita', 'Kazuma', 'kazuma614@gmail.com', '506413884', '');
INSERT INTO `klienci` VALUES (192, 'Brooks', 'Timothy', 'tibrooks@gmail.com', '951745443', '');
INSERT INTO `klienci` VALUES (193, 'Jackson', 'Julia', 'julijacks@gmail.com', '990024098', '');
INSERT INTO `klienci` VALUES (194, 'Shing', 'Wai Man', 'shingwaiman@gmail.com', '078401373', '');
INSERT INTO `klienci` VALUES (195, 'Hsuan', 'Cho Yee', 'choyee725@gmail.com', '180060284', '');
INSERT INTO `klienci` VALUES (196, 'Sanders', 'Bruce', 'sandebru64@gmail.com', '641847314', '');
INSERT INTO `klienci` VALUES (197, 'Ueda', 'Shino', 'sueda@gmail.com', '234757084', '');
INSERT INTO `klienci` VALUES (198, 'So', 'Kwok Wing', 'so75@gmail.com', '573231746', '');
INSERT INTO `klienci` VALUES (199, 'Kwan', 'Wing Sze', 'wsk@gmail.com', '121660044', '');
INSERT INTO `klienci` VALUES (200, 'Yip', 'Wai Yee', 'waiyeeyi@gmail.com', '864063088', '');
INSERT INTO `klienci` VALUES (201, 'Nelson', 'Leonard', 'leonanelson@gmail.com', '510967093', '');
INSERT INTO `klienci` VALUES (202, 'Stone', 'Arthur', 'stonea@gmail.com', '352732486', '');
INSERT INTO `klienci` VALUES (203, 'Sullivan', 'Leroy', 'leroysul@gmail.com', '587179164', '');
INSERT INTO `klienci` VALUES (204, 'Takeda', 'Ayano', 'ayanotakeda206@gmail.com', '587948708', '');
INSERT INTO `klienci` VALUES (205, 'Yeow', 'Kwok Ming', 'kmyeow47@gmail.com', '401203165', '');
INSERT INTO `klienci` VALUES (206, 'Ortiz', 'Diane', 'ortiz6@gmail.com', '613669254', '');
INSERT INTO `klienci` VALUES (207, 'Wada', 'Takuya', 'takuwa@gmail.com', '254688831', '');
INSERT INTO `klienci` VALUES (208, 'Cole', 'Joseph', 'joseph1@gmail.com', '571166756', '');
INSERT INTO `klienci` VALUES (209, 'Sakurai', 'Yuito', 'sakuraiyuito@gmail.com', '952194189', '');
INSERT INTO `klienci` VALUES (210, 'Arimura', 'Hazuki', 'hari@gmail.com', '539408394', '');
INSERT INTO `klienci` VALUES (211, 'Allen', 'Thelma', 'thelmall@gmail.com', '793893993', '');
INSERT INTO `klienci` VALUES (212, 'Ando', 'Itsuki', 'anditsuki@gmail.com', '495107262', '');
INSERT INTO `klienci` VALUES (213, 'Kondo', 'Kaito', 'kka1972@gmail.com', '230642763', '');
INSERT INTO `klienci` VALUES (214, 'Koo', 'Sai Wing', 'koosw@gmail.com', '293421895', '');
INSERT INTO `klienci` VALUES (215, 'Kojima', 'Yamato', 'kojimayamato65@gmail.com', '635524057', '');
INSERT INTO `klienci` VALUES (216, 'Ramos', 'Shawn', 'rsh@gmail.com', '366804614', '');
INSERT INTO `klienci` VALUES (217, 'Wu', 'Ming Sze', 'mingszewu619@gmail.com', '262567175', '');
INSERT INTO `klienci` VALUES (218, 'Holmes', 'Joyce', 'joyceholm@gmail.com', '258323419', '');
INSERT INTO `klienci` VALUES (219, 'Edwards', 'William', 'williame208@gmail.com', '499053061', '');
INSERT INTO `klienci` VALUES (220, 'Davis', 'Benjamin', 'benjamindavis2@gmail.com', '430551813', '');
INSERT INTO `klienci` VALUES (221, 'Nakano', 'Yota', 'nakanoyota98@gmail.com', '904861978', '');
INSERT INTO `klienci` VALUES (222, 'Chan', 'Hui Mei', 'chan809@gmail.com', '244992547', '');
INSERT INTO `klienci` VALUES (223, 'Arimura', 'Aoi', 'arimuraa@gmail.com', '210546885', '');
INSERT INTO `klienci` VALUES (224, 'Hirano', 'Aoi', 'hia@gmail.com', '970766950', '');
INSERT INTO `klienci` VALUES (225, 'Hung', 'Ming', 'mhu@gmail.com', '102292086', '');
INSERT INTO `klienci` VALUES (226, 'Gray', 'Samuel', 'graysamu614@gmail.com', '560867895', '');
INSERT INTO `klienci` VALUES (227, 'Cox', 'Nancy', 'nancy1975@gmail.com', '975306963', '');
INSERT INTO `klienci` VALUES (228, 'Mendez', 'Jeffery', 'mjeffery5@gmail.com', '341208331', '');
INSERT INTO `klienci` VALUES (229, 'Takagi', 'Itsuki', 'takagitsu9@gmail.com', '287685425', '');
INSERT INTO `klienci` VALUES (230, 'Dixon', 'Tony', 'tonydixon@gmail.com', '717619882', '');
INSERT INTO `klienci` VALUES (231, 'Kam', 'Chi Ming', 'chika10@gmail.com', '119589300', '');
INSERT INTO `klienci` VALUES (232, 'Otsuka', 'Ikki', 'otsukaikki@gmail.com', '183708871', '');
INSERT INTO `klienci` VALUES (233, 'Shibata', 'Hina', 'hshiba@gmail.com', '111559569', '');
INSERT INTO `klienci` VALUES (234, 'Medina', 'Todd', 'mt301@gmail.com', '971477922', '');
INSERT INTO `klienci` VALUES (235, 'Davis', 'Scott', 'dscot20@gmail.com', '719046216', '');
INSERT INTO `klienci` VALUES (236, 'Miura', 'Ayano', 'miayano@gmail.com', '423632963', '');
INSERT INTO `klienci` VALUES (237, 'Ishikawa', 'Aoi', 'ishikawa8@gmail.com', '387598584', '');
INSERT INTO `klienci` VALUES (238, 'Perry', 'Mario', 'perrymario2004@gmail.com', '005611638', '');
INSERT INTO `klienci` VALUES (239, 'Tin', 'Tak Wah', 'titw1@gmail.com', '378623204', '');
INSERT INTO `klienci` VALUES (240, 'Suzuki', 'Eita', 'esu327@gmail.com', '183750604', '');
INSERT INTO `klienci` VALUES (241, 'Choi', 'Wai Yee', 'waiyeec10@gmail.com', '778575606', '');
INSERT INTO `klienci` VALUES (242, 'Yamamoto', 'Hikaru', 'hikyamamoto@gmail.com', '593523569', '');
INSERT INTO `klienci` VALUES (243, 'Kwong', 'On Kay', 'okkw@gmail.com', '639210348', '');
INSERT INTO `klienci` VALUES (244, 'Dunn', 'Randy', 'durandy126@gmail.com', '018953785', '');
INSERT INTO `klienci` VALUES (245, 'Takahashi', 'Yamato', 'takahashi1982@gmail.com', '628807607', '');
INSERT INTO `klienci` VALUES (246, 'Murata', 'Mitsuki', 'murmitsuki@gmail.com', '772430656', '');
INSERT INTO `klienci` VALUES (247, 'Cheung', 'Wai Han', 'chwaihan1004@gmail.com', '354328593', '');
INSERT INTO `klienci` VALUES (248, 'Choi', 'Hok Yau', 'hychoi91@gmail.com', '668845814', '');
INSERT INTO `klienci` VALUES (249, 'Liao', 'Kwok Yin', 'kyli@gmail.com', '170178027', '');
INSERT INTO `klienci` VALUES (250, 'Nakamura', 'Hikaru', 'hikarunakamura66@gmail.com', '979204994', '');
INSERT INTO `klienci` VALUES (251, 'Takeuchi', 'Takuya', 'takeuchitakuya@gmail.com', '799575791', '');
INSERT INTO `klienci` VALUES (252, 'Yuen', 'Tak Wah', 'yueta@gmail.com', '560594827', '');
INSERT INTO `klienci` VALUES (253, 'Foster', 'Frank', 'frankfost4@gmail.com', '099643747', '');
INSERT INTO `klienci` VALUES (254, 'Fong', 'Wai Han', 'fonwaihan@gmail.com', '807500487', '');
INSERT INTO `klienci` VALUES (255, 'Nakano', 'Aoi', 'anakano403@gmail.com', '908892433', '');
INSERT INTO `klienci` VALUES (256, 'Wallace', 'Carl', 'carlwal20@gmail.com', '576583528', '');
INSERT INTO `klienci` VALUES (257, 'Chavez', 'Jennifer', 'chavjen@gmail.com', '308858837', '');
INSERT INTO `klienci` VALUES (258, 'Edwards', 'Sandra', 'sandedwards@gmail.com', '543742412', '');
INSERT INTO `klienci` VALUES (259, 'Stevens', 'Randall', 'stever2@gmail.com', '507724872', '');
INSERT INTO `klienci` VALUES (260, 'Arai', 'Mai', 'maarai1@gmail.com', '708112198', '');
INSERT INTO `klienci` VALUES (261, 'Rice', 'Francis', 'ricef4@gmail.com', '500305900', '');
INSERT INTO `klienci` VALUES (262, 'Harada', 'Minato', 'minatoharada@gmail.com', '098545898', '');
INSERT INTO `klienci` VALUES (263, 'Miyamoto', 'Minato', 'miyamotom2@gmail.com', '268916592', '');
INSERT INTO `klienci` VALUES (264, 'Hamilton', 'Alexander', 'hamilalexander@gmail.com', '068896731', '');
INSERT INTO `klienci` VALUES (265, 'Gutierrez', 'Billy', 'gutierrez6@gmail.com', '247973799', '');
INSERT INTO `klienci` VALUES (266, 'Che', 'Tak Wah', 'twche@gmail.com', '318041281', '');
INSERT INTO `klienci` VALUES (267, 'Morita', 'Shino', 'moritshino@gmail.com', '401506569', '');
INSERT INTO `klienci` VALUES (268, 'Palmer', 'Ryan', 'ryan312@gmail.com', '835942888', '');
INSERT INTO `klienci` VALUES (269, 'Hayes', 'Clara', 'clarh2@gmail.com', '261214914', '');
INSERT INTO `klienci` VALUES (270, 'Endo', 'Yota', 'endo10@gmail.com', '298380978', '');
INSERT INTO `klienci` VALUES (271, 'Hasegawa', 'Hazuki', 'hhaseg@gmail.com', '502341076', '');
INSERT INTO `klienci` VALUES (272, 'Lewis', 'Stanley', 'lstanl@gmail.com', '740048028', '');
INSERT INTO `klienci` VALUES (273, 'Patterson', 'Phyllis', 'phyllis109@gmail.com', '581192354', '');
INSERT INTO `klienci` VALUES (274, 'Tam', 'Sau Man', 'smta@gmail.com', '174325016', '');
INSERT INTO `klienci` VALUES (275, 'Ford', 'Ricky', 'rickyf7@gmail.com', '477338338', '');
INSERT INTO `klienci` VALUES (276, 'Walker', 'Jean', 'jewalker@gmail.com', '908037091', '');
INSERT INTO `klienci` VALUES (277, 'Fong', 'Kwok Kuen', 'fonkk@gmail.com', '645834362', '');
INSERT INTO `klienci` VALUES (278, 'Sano', 'Takuya', 'sataku1962@gmail.com', '451797619', '');
INSERT INTO `klienci` VALUES (279, 'Ishikawa', 'Eita', 'ie316@gmail.com', '671408611', '');
INSERT INTO `klienci` VALUES (280, 'Murakami', 'Hazuki', 'hazmurakami2@gmail.com', '072146420', '');
INSERT INTO `klienci` VALUES (281, 'Marshall', 'Heather', 'marshall10@gmail.com', '140968123', '');
INSERT INTO `klienci` VALUES (282, 'Yam', 'Ming Sze', 'yam60@gmail.com', '822243932', '');
INSERT INTO `klienci` VALUES (283, 'Imai', 'Yuna', 'yunaima1@gmail.com', '859986868', '');
INSERT INTO `klienci` VALUES (284, 'Maeda', 'Sakura', 'smaeda@gmail.com', '289488964', '');
INSERT INTO `klienci` VALUES (285, 'Burns', 'Victor', 'victorburn@gmail.com', '956168292', '');
INSERT INTO `klienci` VALUES (286, 'Kato', 'Aoi', 'aoi323@gmail.com', '114860924', '');
INSERT INTO `klienci` VALUES (287, 'Fan', 'Ka Ming', 'kamf@gmail.com', '550775825', '');
INSERT INTO `klienci` VALUES (288, 'Soto', 'Anna', 'asoto3@gmail.com', '965549070', '');
INSERT INTO `klienci` VALUES (289, 'Matsui', 'Shino', 'shino701@gmail.com', '651888966', '');
INSERT INTO `klienci` VALUES (290, 'Tam', 'Ching Wan', 'cwt@gmail.com', '473718625', '');
INSERT INTO `klienci` VALUES (291, 'Ogawa', 'Momoka', 'ogamomok@gmail.com', '675116037', '');
INSERT INTO `klienci` VALUES (292, 'Tucker', 'Sara', 'tusara@gmail.com', '911324280', '');
INSERT INTO `klienci` VALUES (293, 'Clark', 'Brenda', 'clb@gmail.com', '631943270', '');
INSERT INTO `klienci` VALUES (294, 'Tin', 'Lai Yan', 'laiyan10@gmail.com', '942592129', '');
INSERT INTO `klienci` VALUES (295, 'Harada', 'Kaito', 'hakaito4@gmail.com', '129556760', '');
INSERT INTO `klienci` VALUES (296, 'Lo', 'Wai Man', 'lowaiman@gmail.com', '104251816', '');
INSERT INTO `klienci` VALUES (297, 'Cox', 'Danny', 'cdanny@gmail.com', '995419489', '');
INSERT INTO `klienci` VALUES (298, 'Wu', 'Ka Ling', 'wkl@gmail.com', '149226585', '');
INSERT INTO `klienci` VALUES (299, 'Takahashi', 'Yamato', 'takahashi4@gmail.com', '371645315', '');
INSERT INTO `klienci` VALUES (300, 'Otsuka', 'Rena', 'orena2@gmail.com', '669290340', '');
INSERT INTO `klienci` VALUES (301, 'Meng', 'Wai Han', 'waihanmeng@gmail.com', '555012127', '');
INSERT INTO `klienci` VALUES (302, 'Gonzalez', 'Karen', 'gonzakar@gmail.com', '519321171', '');
INSERT INTO `klienci` VALUES (303, 'Morgan', 'Beverly', 'morganbev@gmail.com', '861551436', '');
INSERT INTO `klienci` VALUES (304, 'Long', 'Diane', 'dianelong107@gmail.com', '013779151', '');
INSERT INTO `klienci` VALUES (305, 'Yau', 'Wing Kuen', 'yauwingkuen915@gmail.com', '011555857', '');
INSERT INTO `klienci` VALUES (306, 'Murphy', 'Debbie', 'murphydebbie4@gmail.com', '590071848', '');
INSERT INTO `klienci` VALUES (307, 'Matsumoto', 'Miu', 'miu64@gmail.com', '985838044', '');
INSERT INTO `klienci` VALUES (308, 'Gomez', 'Edward', 'edward1@gmail.com', '830943392', '');
INSERT INTO `klienci` VALUES (309, 'Chic', 'Hui Mei', 'chhm46@gmail.com', '098661756', '');
INSERT INTO `klienci` VALUES (310, 'Yung', 'Kwok Wing', 'yung430@gmail.com', '573136530', '');
INSERT INTO `klienci` VALUES (311, 'Ono', 'Airi', 'ono7@gmail.com', '243147854', '');
INSERT INTO `klienci` VALUES (312, 'Butler', 'Sylvia', 'sybutler@gmail.com', '027869223', '');
INSERT INTO `klienci` VALUES (313, 'Tong', 'Sze Yu', 'syto827@gmail.com', '266075276', '');
INSERT INTO `klienci` VALUES (314, 'Sanchez', 'Danny', 'dannysanc1025@gmail.com', '518965886', '');
INSERT INTO `klienci` VALUES (315, 'Yeung', 'Ting Fung', 'tfyeung@gmail.com', '462507641', '');
INSERT INTO `klienci` VALUES (316, 'Uchida', 'Hikaru', 'uchidahika83@gmail.com', '443037597', '');
INSERT INTO `klienci` VALUES (317, 'Kam', 'Wing Suen', 'wingsuenkam@gmail.com', '511738956', '');
INSERT INTO `klienci` VALUES (318, 'Myers', 'Irene', 'irene19@gmail.com', '839516689', '');
INSERT INTO `klienci` VALUES (319, 'Lo', 'Sai Wing', 'swlo4@gmail.com', '290553873', '');
INSERT INTO `klienci` VALUES (320, 'Kong', 'Wai Yee', 'kongwaiyee@gmail.com', '754752742', '');
INSERT INTO `klienci` VALUES (321, 'Wan', 'Sau Man', 'saumanw@gmail.com', '094752168', '');
INSERT INTO `klienci` VALUES (322, 'Takeuchi', 'Hikaru', 'takeuhikaru68@gmail.com', '257453851', '');
INSERT INTO `klienci` VALUES (323, 'Endo', 'Eita', 'endoe2@gmail.com', '849144732', '');
INSERT INTO `klienci` VALUES (324, 'Miura', 'Hina', 'mihina1223@gmail.com', '009239520', '');
INSERT INTO `klienci` VALUES (325, 'Yamada', 'Momoe', 'momoeyamada@gmail.com', '544569183', '');
INSERT INTO `klienci` VALUES (326, 'Martinez', 'Fred', 'martinezfred@gmail.com', '648669756', '');
INSERT INTO `klienci` VALUES (327, 'Shimada', 'Yamato', 'shimadayamat1120@gmail.com', '283415873', '');
INSERT INTO `klienci` VALUES (328, 'Lewis', 'Emma', 'emmale@gmail.com', '037877270', '');
INSERT INTO `klienci` VALUES (329, 'Masuda', 'Airi', 'airi4@gmail.com', '146554298', '');
INSERT INTO `klienci` VALUES (330, 'Daniels', 'Kathy', 'danielsk605@gmail.com', '559208398', '');
INSERT INTO `klienci` VALUES (331, 'Romero', 'Sara', 'sara1981@gmail.com', '973750386', '');
INSERT INTO `klienci` VALUES (332, 'Simpson', 'Laura', 'laura6@gmail.com', '392633790', '');
INSERT INTO `klienci` VALUES (333, 'Sakamoto', 'Tsubasa', 'stsub@gmail.com', '816854668', '');
INSERT INTO `klienci` VALUES (334, 'Nakagawa', 'Takuya', 'tn49@gmail.com', '577377546', '');
INSERT INTO `klienci` VALUES (335, 'Meyer', 'Gregory', 'gmeyer@gmail.com', '010362742', '');
INSERT INTO `klienci` VALUES (336, 'Vargas', 'Rosa', 'rosavar10@gmail.com', '365998598', '');
INSERT INTO `klienci` VALUES (337, 'Miller', 'Sheila', 'millers@gmail.com', '021050070', '');
INSERT INTO `klienci` VALUES (338, 'Sato', 'Ayano', 'ayanosato1028@gmail.com', '224586635', '');
INSERT INTO `klienci` VALUES (339, 'Robertson', 'Brandon', 'roberbrandon@gmail.com', '618460894', '');
INSERT INTO `klienci` VALUES (340, 'Kobayashi', 'Daichi', 'kobayashid@gmail.com', '997676704', '');
INSERT INTO `klienci` VALUES (341, 'Turner', 'Barry', 'turner1958@gmail.com', '712261373', '');
INSERT INTO `klienci` VALUES (342, 'Kwok', 'Fat', 'kwok2@gmail.com', '934783847', '');
INSERT INTO `klienci` VALUES (343, 'Kim', 'Larry', 'kiml@gmail.com', '912149967', '');
INSERT INTO `klienci` VALUES (344, 'Lewis', 'Kelly', 'lewis18@gmail.com', '512967462', '');
INSERT INTO `klienci` VALUES (345, 'Murakami', 'Daisuke', 'daisuke815@gmail.com', '199985067', '');
INSERT INTO `klienci` VALUES (346, 'Ti', 'Sze Yu', 'tiszeyu@gmail.com', '395590347', '');
INSERT INTO `klienci` VALUES (347, 'Garcia', 'Clarence', 'clarence3@gmail.com', '738656879', '');
INSERT INTO `klienci` VALUES (348, 'Shaw', 'Leslie', 'lesshaw@gmail.com', '230049693', '');
INSERT INTO `klienci` VALUES (349, 'Nichols', 'Janet', 'janetn@gmail.com', '758006836', '');
INSERT INTO `klienci` VALUES (350, 'Garza', 'Linda', 'garzalinda@gmail.com', '831043761', '');
INSERT INTO `klienci` VALUES (351, 'Palmer', 'Theresa', 'palmertheresa04@gmail.com', '132042782', '');
INSERT INTO `klienci` VALUES (352, 'Stone', 'Annie', 'annis@gmail.com', '568947335', '');
INSERT INTO `klienci` VALUES (353, 'Cheung', 'Tsz Hin', 'cheung6@gmail.com', '115067014', '');
INSERT INTO `klienci` VALUES (354, 'Mak', 'Kwok Wing', 'mak9@gmail.com', '582484089', '');
INSERT INTO `klienci` VALUES (355, 'Lui', 'Chi Ming', 'chiminglu@gmail.com', '963739008', '');
INSERT INTO `klienci` VALUES (356, 'Chavez', 'Ronald', 'cronald2004@gmail.com', '860036582', '');
INSERT INTO `klienci` VALUES (357, 'Porter', 'Harry', 'porter8@gmail.com', '873543765', '');
INSERT INTO `klienci` VALUES (358, 'Maeda', 'Sakura', 'sakurama97@gmail.com', '169212004', '');
INSERT INTO `klienci` VALUES (359, 'Chiang', 'Ho Yin', 'hychiang301@gmail.com', '197124495', '');
INSERT INTO `klienci` VALUES (360, 'Nishimura', 'Mitsuki', 'mnishimura@gmail.com', '636550114', '');
INSERT INTO `klienci` VALUES (361, 'Sakurai', 'Momoka', 'momoksaku@gmail.com', '736768391', '');
INSERT INTO `klienci` VALUES (362, 'Harrison', 'Luis', 'harluis@gmail.com', '841784510', '');
INSERT INTO `klienci` VALUES (363, 'Fong', 'Kar Yan', 'fongkaryan@gmail.com', '383853467', '');
INSERT INTO `klienci` VALUES (364, 'Anderson', 'Anne', 'annander@gmail.com', '217583473', '');
INSERT INTO `klienci` VALUES (365, 'Lam', 'Chung Yin', 'lamcy@gmail.com', '355956656', '');
INSERT INTO `klienci` VALUES (366, 'Cole', 'Susan', 'susancole822@gmail.com', '187865080', '');
INSERT INTO `klienci` VALUES (367, 'Koyama', 'Rin', 'rin67@gmail.com', '804001082', '');
INSERT INTO `klienci` VALUES (368, 'Yamada', 'Kasumi', 'yamadak@gmail.com', '705908903', '');
INSERT INTO `klienci` VALUES (369, 'Ku', 'Sze Kwan', 'szekwan7@gmail.com', '893045667', '');
INSERT INTO `klienci` VALUES (370, 'Otsuka', 'Ren', 'oren@gmail.com', '830047462', '');
INSERT INTO `klienci` VALUES (371, 'Tran', 'Sean', 'sean7@gmail.com', '509872980', '');
INSERT INTO `klienci` VALUES (372, 'Fan', 'Wing Fat', 'fanwf1117@gmail.com', '387475742', '');
INSERT INTO `klienci` VALUES (373, 'Harris', 'Mildred', 'mh124@gmail.com', '905867797', '');
INSERT INTO `klienci` VALUES (374, 'Mendez', 'Jeff', 'jmendez96@gmail.com', '887262120', '');
INSERT INTO `klienci` VALUES (375, 'Fan', 'Wai Yee', 'fawy@gmail.com', '736221029', '');
INSERT INTO `klienci` VALUES (376, 'Aguilar', 'Edna', 'aguilaredna6@gmail.com', '002809636', '');
INSERT INTO `klienci` VALUES (377, 'Murata', 'Momoe', 'momoem67@gmail.com', '079169070', '');
INSERT INTO `klienci` VALUES (378, 'Tao', 'Tin Wing', 'ttinwing@gmail.com', '854380082', '');
INSERT INTO `klienci` VALUES (379, 'Simpson', 'Eva', 'simpsoneva43@gmail.com', '783042262', '');
INSERT INTO `klienci` VALUES (380, 'Fujii', 'Tsubasa', 'fujii7@gmail.com', '444796113', '');
INSERT INTO `klienci` VALUES (381, 'Miu', 'Sze Yu', 'miu1011@gmail.com', '011928600', '');
INSERT INTO `klienci` VALUES (382, 'Ng', 'Yun Fat', 'ngyf628@gmail.com', '691644103', '');
INSERT INTO `klienci` VALUES (383, 'Henry', 'Kevin', 'henrkevin@gmail.com', '977571150', '');
INSERT INTO `klienci` VALUES (384, 'Ortiz', 'Frank', 'ortizfrank@gmail.com', '239150031', '');
INSERT INTO `klienci` VALUES (385, 'Baker', 'Linda', 'lindabaker1991@gmail.com', '168942409', '');
INSERT INTO `klienci` VALUES (386, 'Nomura', 'Akina', 'nomuakina922@gmail.com', '007558143', '');
INSERT INTO `klienci` VALUES (387, 'Hara', 'Yuna', 'yunah212@gmail.com', '980749105', '');
INSERT INTO `klienci` VALUES (388, 'Murphy', 'Bernard', 'bmurp727@gmail.com', '599143113', '');
INSERT INTO `klienci` VALUES (389, 'Taniguchi', 'Akina', 'taniguchiak@gmail.com', '324791259', '');
INSERT INTO `klienci` VALUES (390, 'Miyamoto', 'Hina', 'miyamotohi@gmail.com', '327172290', '');
INSERT INTO `klienci` VALUES (391, 'Murphy', 'Ruby', 'rumurphy121@gmail.com', '262342518', '');
INSERT INTO `klienci` VALUES (392, 'Otsuka', 'Ayato', 'ayatootsuka@gmail.com', '170857046', '');
INSERT INTO `klienci` VALUES (393, 'Fong', 'Kwok Ming', 'kmfo@gmail.com', '092225248', '');
INSERT INTO `klienci` VALUES (394, 'Yeow', 'Chi Yuen', 'yeowcy@gmail.com', '141151951', '');
INSERT INTO `klienci` VALUES (395, 'Murata', 'Hazuki', 'hazumurata5@gmail.com', '418520057', '');
INSERT INTO `klienci` VALUES (396, 'Ishikawa', 'Mio', 'miois8@gmail.com', '075057342', '');
INSERT INTO `klienci` VALUES (397, 'Ng', 'Kwok Yin', 'kwokyng@gmail.com', '226876570', '');
INSERT INTO `klienci` VALUES (398, 'Lui', 'On Na', 'luon@gmail.com', '476036495', '');
INSERT INTO `klienci` VALUES (399, 'Uchida', 'Airi', 'auchid@gmail.com', '066103481', '');
INSERT INTO `klienci` VALUES (400, 'Aoki', 'Mai', 'maia59@gmail.com', '009095478', '');
INSERT INTO `klienci` VALUES (401, 'Abe', 'Miu', 'miuabe13@gmail.com', '718913548', '');
INSERT INTO `klienci` VALUES (402, 'Uchida', 'Momoe', 'ucmo@gmail.com', '237865389', '');
INSERT INTO `klienci` VALUES (403, 'Tamura', 'Riku', 'rtamura929@gmail.com', '376450793', '');
INSERT INTO `klienci` VALUES (404, 'Hsuan', 'Cho Yee', 'hsuachoyee9@gmail.com', '849293956', '');
INSERT INTO `klienci` VALUES (405, 'Dai', 'Ka Keung', 'daikakeung@gmail.com', '849250352', '');
INSERT INTO `klienci` VALUES (406, 'Miu', 'Cho Yee', 'cymiu7@gmail.com', '648639132', '');
INSERT INTO `klienci` VALUES (407, 'Takada', 'Akina', 'akinatakad@gmail.com', '741737160', '');
INSERT INTO `klienci` VALUES (408, 'Sanchez', 'Bernard', 'bernasa@gmail.com', '294773592', '');
INSERT INTO `klienci` VALUES (409, 'Ku', 'Tin Wing', 'tinwingku@gmail.com', '020207533', '');
INSERT INTO `klienci` VALUES (410, 'Yau', 'Fat', 'yaufat@gmail.com', '660906881', '');
INSERT INTO `klienci` VALUES (411, 'Schmidt', 'Herbert', 'sherbert@gmail.com', '127294723', '');
INSERT INTO `klienci` VALUES (412, 'Sato', 'Miu', 'smiu72@gmail.com', '703815627', '');
INSERT INTO `klienci` VALUES (413, 'Jenkins', 'Ray', 'jenkiray1@gmail.com', '927986528', '');
INSERT INTO `klienci` VALUES (414, 'Maeda', 'Kazuma', 'kazumamaeda@gmail.com', '349155887', '');
INSERT INTO `klienci` VALUES (415, 'Ng', 'Ming Sze', 'mingsze1125@gmail.com', '272986295', '');
INSERT INTO `klienci` VALUES (416, 'Ellis', 'Ruby', 'ruby903@gmail.com', '791259072', '');
INSERT INTO `klienci` VALUES (417, 'Fan', 'Lai Yan', 'fanla@gmail.com', '874806604', '');
INSERT INTO `klienci` VALUES (418, 'Hara', 'Shino', 'sh8@gmail.com', '624220422', '');
INSERT INTO `klienci` VALUES (419, 'Marshall', 'Anthony', 'maanthony@gmail.com', '186791238', '');
INSERT INTO `klienci` VALUES (420, 'Tong', 'Sze Kwan', 'sktong@gmail.com', '033198084', '');
INSERT INTO `klienci` VALUES (421, 'Au', 'Kwok Kuen', 'aukw612@gmail.com', '972814428', '');
INSERT INTO `klienci` VALUES (422, 'Chan', 'Kar Yan', 'cky@gmail.com', '703495922', '');
INSERT INTO `klienci` VALUES (423, 'Gutierrez', 'Raymond', 'gutierrezraymo1128@gmail.com', '423606536', '');
INSERT INTO `klienci` VALUES (424, 'Wong', 'Ka Fai', 'wkf@gmail.com', '736802999', '');
INSERT INTO `klienci` VALUES (425, 'Jackson', 'Alice', 'jackson1995@gmail.com', '866651711', '');
INSERT INTO `klienci` VALUES (426, 'Ramirez', 'Matthew', 'ramma@gmail.com', '846679503', '');
INSERT INTO `klienci` VALUES (427, 'Morgan', 'Ruby', 'rm1008@gmail.com', '787584720', '');
INSERT INTO `klienci` VALUES (428, 'Shimada', 'Kazuma', 'shimadakazuma7@gmail.com', '191962433', '');
INSERT INTO `klienci` VALUES (429, 'White', 'Eva', 'evaw@gmail.com', '563147536', '');
INSERT INTO `klienci` VALUES (430, 'Tsui', 'Lai Yan', 'laiyan1213@gmail.com', '404228721', '');
INSERT INTO `klienci` VALUES (431, 'Sit', 'Chun Yu', 'cysit@gmail.com', '651708385', '');
INSERT INTO `klienci` VALUES (432, 'Fujita', 'Kenta', 'kenta92@gmail.com', '476985810', '');
INSERT INTO `klienci` VALUES (433, 'Takagi', 'Hana', 'hanata@gmail.com', '144695685', '');
INSERT INTO `klienci` VALUES (434, 'Yuen', 'Sai Wing', 'saiwingyuen@gmail.com', '881990985', '');
INSERT INTO `klienci` VALUES (435, 'Ota', 'Daisuke', 'otadaisuke5@gmail.com', '793622375', '');
INSERT INTO `klienci` VALUES (436, 'Wada', 'Ren', 'renwa@gmail.com', '730299994', '');
INSERT INTO `klienci` VALUES (437, 'Siu', 'Lik Sun', 'liksunsiu@gmail.com', '293971784', '');
INSERT INTO `klienci` VALUES (438, 'Pak', 'On Na', 'onpa@gmail.com', '341652886', '');
INSERT INTO `klienci` VALUES (439, 'Gutierrez', 'Mario', 'gmario@gmail.com', '458883214', '');
INSERT INTO `klienci` VALUES (440, 'Romero', 'Jonathan', 'romerjonathan@gmail.com', '006937862', '');
INSERT INTO `klienci` VALUES (441, 'Hawkins', 'Sean', 'seanhawkins@gmail.com', '876352221', '');
INSERT INTO `klienci` VALUES (442, 'Ferguson', 'Randy', 'randferguson@gmail.com', '890465720', '');
INSERT INTO `klienci` VALUES (443, 'Murata', 'Akina', 'akinamurata@gmail.com', '239671344', '');
INSERT INTO `klienci` VALUES (444, 'Wright', 'Marjorie', 'wright7@gmail.com', '519737620', '');
INSERT INTO `klienci` VALUES (445, 'Cruz', 'Curtis', 'cruzcur@gmail.com', '572168058', '');
INSERT INTO `klienci` VALUES (446, 'Maruyama', 'Airi', 'maruyamaairi@gmail.com', '702685890', '');
INSERT INTO `klienci` VALUES (447, 'Mo', 'Sum Wing', 'sumwingmo@gmail.com', '539910031', '');
INSERT INTO `klienci` VALUES (448, 'Takeuchi', 'Rin', 'tri501@gmail.com', '612444076', '');
INSERT INTO `klienci` VALUES (449, 'Holmes', 'Victor', 'victorholm@gmail.com', '118737117', '');
INSERT INTO `klienci` VALUES (450, 'Aoki', 'Ayano', 'aokiay@gmail.com', '175415889', '');
INSERT INTO `klienci` VALUES (451, 'Yuen', 'Tin Lok', 'yuen8@gmail.com', '991284721', '');
INSERT INTO `klienci` VALUES (452, 'Boyd', 'Edna', 'boyedna5@gmail.com', '357111341', '');
INSERT INTO `klienci` VALUES (453, 'Chiba', 'Hikari', 'hikari429@gmail.com', '462427937', '');
INSERT INTO `klienci` VALUES (454, 'Takada', 'Sara', 'stak@gmail.com', '538063902', '');
INSERT INTO `klienci` VALUES (455, 'Miu', 'Ho Yin', 'hymiu1989@gmail.com', '512205521', '');
INSERT INTO `klienci` VALUES (456, 'Watanabe', 'Ren', 'watanaber1222@gmail.com', '319184617', '');
INSERT INTO `klienci` VALUES (457, 'Ying', 'Yu Ling', 'yulingying930@gmail.com', '366568105', '');
INSERT INTO `klienci` VALUES (458, 'Kwok', 'Tsz Ching', 'tckwok4@gmail.com', '097158342', '');
INSERT INTO `klienci` VALUES (459, 'Sato', 'Riku', 'satoriku@gmail.com', '206604556', '');
INSERT INTO `klienci` VALUES (460, 'Kinoshita', 'Mitsuki', 'mitsukikino10@gmail.com', '992180203', '');
INSERT INTO `klienci` VALUES (461, 'Fujita', 'Takuya', 'ftakuya4@gmail.com', '907496438', '');
INSERT INTO `klienci` VALUES (462, 'Noguchi', 'Hikari', 'hikari49@gmail.com', '651125176', '');
INSERT INTO `klienci` VALUES (463, 'Kwok', 'Ling Ling', 'llkwok@gmail.com', '089286067', '');
INSERT INTO `klienci` VALUES (464, 'Yuen', 'Wing Suen', 'yuenwingsuen@gmail.com', '773167384', '');
INSERT INTO `klienci` VALUES (465, 'Takagi', 'Miu', 'tamiu3@gmail.com', '910263349', '');
INSERT INTO `klienci` VALUES (466, 'Mok', 'Sai Wing', 'mok1995@gmail.com', '544275603', '');
INSERT INTO `klienci` VALUES (467, 'Cheung', 'Chung Yin', 'chungyincheung@gmail.com', '560681699', '');
INSERT INTO `klienci` VALUES (468, 'Kono', 'Ren', 'konr@gmail.com', '098519738', '');
INSERT INTO `klienci` VALUES (469, 'Aguilar', 'Dawn', 'daguilar5@gmail.com', '205603937', '');
INSERT INTO `klienci` VALUES (470, 'Loui', 'Tak Wah', 'twloui@gmail.com', '263245990', '');
INSERT INTO `klienci` VALUES (471, 'Hirano', 'Kenta', 'kenthirano@gmail.com', '421916834', '');
INSERT INTO `klienci` VALUES (472, 'Ueno', 'Momoe', 'momoe7@gmail.com', '082837468', '');
INSERT INTO `klienci` VALUES (473, 'Tao', 'Kwok Wing', 'kwokwingta8@gmail.com', '528578758', '');
INSERT INTO `klienci` VALUES (474, 'Man', 'Chi Ming', 'mchiming1943@gmail.com', '026225164', '');
INSERT INTO `klienci` VALUES (475, 'Ma', 'Siu Wai', 'siuwma@gmail.com', '352393578', '');
INSERT INTO `klienci` VALUES (476, 'Cook', 'Chad', 'cookchad@gmail.com', '638964009', '');
INSERT INTO `klienci` VALUES (477, 'Patel', 'Bernard', 'bpatel79@gmail.com', '149993224', '');
INSERT INTO `klienci` VALUES (478, 'Hill', 'Douglas', 'hilldouglas111@gmail.com', '940385619', '');
INSERT INTO `klienci` VALUES (479, 'Cole', 'Grace', 'gracecole60@gmail.com', '515780753', '');
INSERT INTO `klienci` VALUES (480, 'Meng', 'Sum Wing', 'mengsumwing@gmail.com', '412891764', '');
INSERT INTO `klienci` VALUES (481, 'Henry', 'Thomas', 'thomas1120@gmail.com', '656929063', '');
INSERT INTO `klienci` VALUES (482, 'Cheung', 'Tin Lok', 'ctl@gmail.com', '792485675', '');
INSERT INTO `klienci` VALUES (483, 'Dai', 'Tak Wah', 'takwadai@gmail.com', '913202452', '');
INSERT INTO `klienci` VALUES (484, 'Kojima', 'Rin', 'kojrin@gmail.com', '625253338', '');
INSERT INTO `klienci` VALUES (485, 'Mak', 'Ka Ling', 'mak924@gmail.com', '300685826', '');
INSERT INTO `klienci` VALUES (486, 'Saito', 'Kasumi', 'sak@gmail.com', '895382727', '');
INSERT INTO `klienci` VALUES (487, 'Munoz', 'Dale', 'dalemun@gmail.com', '866511813', '');
INSERT INTO `klienci` VALUES (488, 'Evans', 'Jamie', 'evanjamie@gmail.com', '102021860', '');
INSERT INTO `klienci` VALUES (489, 'Tang', 'Lik Sun', 'liksun4@gmail.com', '347083808', '');
INSERT INTO `klienci` VALUES (490, 'Tam', 'Kar Yan', 'tamkaryan7@gmail.com', '994501649', '');
INSERT INTO `klienci` VALUES (491, 'Kaneko', 'Aoi', 'kaaoi@gmail.com', '444216190', '');
INSERT INTO `klienci` VALUES (492, 'Davis', 'Marilyn', 'marilyndavis95@gmail.com', '060048774', '');
INSERT INTO `klienci` VALUES (493, 'Guzman', 'Danny', 'dguzman5@gmail.com', '190020238', '');
INSERT INTO `klienci` VALUES (494, 'Cheng', 'Wai Yee', 'chwy@gmail.com', '839495315', '');
INSERT INTO `klienci` VALUES (495, 'Clark', 'Debra', 'clardebra@gmail.com', '926347961', '');
INSERT INTO `klienci` VALUES (496, 'Lui', 'Chieh Lun', 'cllu@gmail.com', '092625169', '');
INSERT INTO `klienci` VALUES (497, 'Silva', 'Mary', 'silvama@gmail.com', '755830487', '');
INSERT INTO `klienci` VALUES (498, 'Gonzalez', 'Marvin', 'gonzma@gmail.com', '543745415', '');
INSERT INTO `klienci` VALUES (499, 'Rodriguez', 'Brian', 'brod2@gmail.com', '365902506', '');
INSERT INTO `klienci` VALUES (500, 'Sit', 'Wai Man', 'siwm4@gmail.com', '794602872', '');
INSERT INTO `klienci` VALUES (501, 'Ford', 'Karen', 'ford99@gmail.com', '945202968', '');
INSERT INTO `klienci` VALUES (502, 'Gomez', 'Eric', 'ergomez9@gmail.com', '348719559', '');
INSERT INTO `klienci` VALUES (503, 'Cruz', 'Tony', 'tocruz@gmail.com', '120249782', '');
INSERT INTO `klienci` VALUES (504, 'Murray', 'Kenneth', 'kennethmur109@gmail.com', '959959868', '');
INSERT INTO `klienci` VALUES (505, 'Maruyama', 'Mio', 'mamio@gmail.com', '082269735', '');
INSERT INTO `klienci` VALUES (506, 'Hall', 'Kyle', 'hallk@gmail.com', '299748794', '');
INSERT INTO `klienci` VALUES (507, 'Leung', 'Ka Ling', 'kaling09@gmail.com', '232994531', '');
INSERT INTO `klienci` VALUES (508, 'Maruyama', 'Ayato', 'maruyamaaya88@gmail.com', '596577990', '');
INSERT INTO `klienci` VALUES (509, 'Maruyama', 'Kazuma', 'markazum@gmail.com', '293609372', '');
INSERT INTO `klienci` VALUES (510, 'Ichikawa', 'Yota', 'ichikawayo@gmail.com', '208226750', '');
INSERT INTO `klienci` VALUES (511, 'Munoz', 'Rose', 'munozr@gmail.com', '613376454', '');
INSERT INTO `klienci` VALUES (512, 'Morita', 'Itsuki', 'moritait9@gmail.com', '000220711', '');
INSERT INTO `klienci` VALUES (513, 'Goto', 'Ayano', 'goto94@gmail.com', '756651889', '');
INSERT INTO `klienci` VALUES (514, 'Kennedy', 'Emma', 'eken@gmail.com', '962006529', '');
INSERT INTO `klienci` VALUES (515, 'Mendoza', 'Theresa', 'theresam@gmail.com', '803644857', '');
INSERT INTO `klienci` VALUES (516, 'Yamashita', 'Hazuki', 'hazuki1992@gmail.com', '726151982', '');
INSERT INTO `klienci` VALUES (517, 'Mendoza', 'Diane', 'dianem@gmail.com', '297301168', '');
INSERT INTO `klienci` VALUES (518, 'Griffin', 'Teresa', 'tg2@gmail.com', '942107975', '');
INSERT INTO `klienci` VALUES (519, 'Yamaguchi', 'Daichi', 'daichi2018@gmail.com', '312056038', '');
INSERT INTO `klienci` VALUES (520, 'Hasegawa', 'Hikaru', 'hikaruh@gmail.com', '048160156', '');
INSERT INTO `klienci` VALUES (521, 'Simpson', 'Esther', 'esthsimpson@gmail.com', '457046987', '');
INSERT INTO `klienci` VALUES (522, 'Fernandez', 'Gary', 'garyfernandez420@gmail.com', '215875217', '');
INSERT INTO `klienci` VALUES (523, 'Yuen', 'Wing Fat', 'yuwingfat814@gmail.com', '418531284', '');
INSERT INTO `klienci` VALUES (524, 'Kaneko', 'Takuya', 'kanekota@gmail.com', '155180008', '');
INSERT INTO `klienci` VALUES (525, 'Rogers', 'Kevin', 'kevin1125@gmail.com', '807695200', '');
INSERT INTO `klienci` VALUES (526, 'Fan', 'Wai Yee', 'fan8@gmail.com', '861973379', '');
INSERT INTO `klienci` VALUES (527, 'James', 'Willie', 'willie15@gmail.com', '195935010', '');
INSERT INTO `klienci` VALUES (528, 'Fox', 'Thomas', 'thomas93@gmail.com', '755996405', '');
INSERT INTO `klienci` VALUES (529, 'Ono', 'Hikaru', 'hono2@gmail.com', '285483082', '');
INSERT INTO `klienci` VALUES (530, 'Nakajima', 'Yamato', 'nakajyam310@gmail.com', '390987552', '');
INSERT INTO `klienci` VALUES (531, 'Sheh', 'Ka Keung', 'shekk@gmail.com', '843805094', '');
INSERT INTO `klienci` VALUES (532, 'Shibata', 'Hina', 'hina629@gmail.com', '491203271', '');
INSERT INTO `klienci` VALUES (533, 'King', 'Eleanor', 'eking2@gmail.com', '507411744', '');
INSERT INTO `klienci` VALUES (534, 'Jackson', 'Hazel', 'jacksonh@gmail.com', '981007658', '');
INSERT INTO `klienci` VALUES (535, 'Yamada', 'Riku', 'riya2@gmail.com', '380044714', '');
INSERT INTO `klienci` VALUES (536, 'Noguchi', 'Ayato', 'nogayato89@gmail.com', '150738674', '');
INSERT INTO `klienci` VALUES (537, 'Nakayama', 'Daichi', 'nakad@gmail.com', '549531072', '');
INSERT INTO `klienci` VALUES (538, 'Lam', 'Tak Wah', 'takwah927@gmail.com', '011587631', '');
INSERT INTO `klienci` VALUES (539, 'Johnson', 'Juanita', 'juanijohnson@gmail.com', '885464967', '');
INSERT INTO `klienci` VALUES (540, 'Owens', 'Gregory', 'owgre@gmail.com', '836151017', '');
INSERT INTO `klienci` VALUES (541, 'Yuen', 'Sai Wing', 'yusw@gmail.com', '478051019', '');
INSERT INTO `klienci` VALUES (542, 'Saito', 'Yota', 'saito516@gmail.com', '615560893', '');
INSERT INTO `klienci` VALUES (543, 'Yam', 'Tsz Hin', 'yamtszhin@gmail.com', '108759496', '');
INSERT INTO `klienci` VALUES (544, 'Miyamoto', 'Aoshi', 'aoshimiyamoto@gmail.com', '735531216', '');
INSERT INTO `klienci` VALUES (545, 'Ortiz', 'Bradley', 'ortizbrad426@gmail.com', '807517663', '');
INSERT INTO `klienci` VALUES (546, 'Ono', 'Daichi', 'dono@gmail.com', '812466836', '');
INSERT INTO `klienci` VALUES (547, 'Hashimoto', 'Seiko', 'seiko625@gmail.com', '553161701', '');
INSERT INTO `klienci` VALUES (548, 'Rice', 'Eva', 'evarice@gmail.com', '353666711', '');
INSERT INTO `klienci` VALUES (549, 'Dai', 'Lai Yan', 'daily@gmail.com', '612945459', '');
INSERT INTO `klienci` VALUES (550, 'Ando', 'Misaki', 'andomisaki@gmail.com', '311554225', '');
INSERT INTO `klienci` VALUES (551, 'Taniguchi', 'Hazuki', 'htaniguchi8@gmail.com', '746391029', '');
INSERT INTO `klienci` VALUES (552, 'To', 'Chi Yuen', 'to828@gmail.com', '877559038', '');
INSERT INTO `klienci` VALUES (553, 'Chang', 'Ka Ming', 'chang1951@gmail.com', '949499980', '');
INSERT INTO `klienci` VALUES (554, 'Choi', 'Kwok Kuen', 'choikwokkuen@gmail.com', '624006427', '');
INSERT INTO `klienci` VALUES (555, 'Yung', 'Tin Wing', 'yung3@gmail.com', '090682945', '');
INSERT INTO `klienci` VALUES (556, 'Ota', 'Sara', 'osara@gmail.com', '351826808', '');
INSERT INTO `klienci` VALUES (557, 'Hara', 'Kazuma', 'hakazuma@gmail.com', '990843555', '');
INSERT INTO `klienci` VALUES (558, 'Perry', 'Debbie', 'perryd1@gmail.com', '596849316', '');
INSERT INTO `klienci` VALUES (559, 'Che', 'Wai Yee', 'waiyche5@gmail.com', '120274858', '');
INSERT INTO `klienci` VALUES (560, 'Patel', 'Jacob', 'jacpatel@gmail.com', '531689686', '');
INSERT INTO `klienci` VALUES (561, 'Fu', 'Sau Man', 'smfu@gmail.com', '936079474', '');
INSERT INTO `klienci` VALUES (562, 'Yeung', 'Hui Mei', 'yeung6@gmail.com', '521721681', '');
INSERT INTO `klienci` VALUES (563, 'Davis', 'Tammy', 'datam@gmail.com', '189100081', '');
INSERT INTO `klienci` VALUES (564, 'Lopez', 'Monica', 'mlopez@gmail.com', '004110080', '');
INSERT INTO `klienci` VALUES (565, 'Siu', 'Wai Lam', 'siuwl318@gmail.com', '663408597', '');
INSERT INTO `klienci` VALUES (566, 'Yip', 'Wing Sze', 'wsyip@gmail.com', '875554632', '');
INSERT INTO `klienci` VALUES (567, 'Lewis', 'Sheila', 'sheila67@gmail.com', '481940158', '');
INSERT INTO `klienci` VALUES (568, 'Sakurai', 'Hikaru', 'hikars324@gmail.com', '196769804', '');
INSERT INTO `klienci` VALUES (569, 'Arimura', 'Sakura', 'sakua@gmail.com', '862177924', '');
INSERT INTO `klienci` VALUES (570, 'Wilson', 'Francis', 'wf901@gmail.com', '241786887', '');
INSERT INTO `klienci` VALUES (571, 'Nelson', 'Jean', 'jeann8@gmail.com', '813768440', '');
INSERT INTO `klienci` VALUES (572, 'Chic', 'Chieh Lun', 'chichiehlun@gmail.com', '228560296', '');
INSERT INTO `klienci` VALUES (573, 'Fu', 'Fu Shing', 'fushing95@gmail.com', '174629244', '');
INSERT INTO `klienci` VALUES (574, 'Nakajima', 'Yuna', 'nakajimayuna@gmail.com', '029062484', '');
INSERT INTO `klienci` VALUES (575, 'Ku', 'Chun Yu', 'kucy@gmail.com', '878600311', '');
INSERT INTO `klienci` VALUES (576, 'Ti', 'Cho Yee', 'tchoyee8@gmail.com', '190128909', '');
INSERT INTO `klienci` VALUES (577, 'Moore', 'Judith', 'moojudit@gmail.com', '855592473', '');
INSERT INTO `klienci` VALUES (578, 'Kennedy', 'Frederick', 'kennedyfrede1999@gmail.com', '870426694', '');
INSERT INTO `klienci` VALUES (579, 'Fujita', 'Ayano', 'fuja@gmail.com', '866346663', '');
INSERT INTO `klienci` VALUES (580, 'Munoz', 'Kathleen', 'kathmu@gmail.com', '594399288', '');
INSERT INTO `klienci` VALUES (581, 'Au', 'Tak Wah', 'twau10@gmail.com', '330233758', '');
INSERT INTO `klienci` VALUES (582, 'Fisher', 'Wendy', 'fiswend@gmail.com', '010537775', '');
INSERT INTO `klienci` VALUES (583, 'Takeuchi', 'Akina', 'aktakeuchi1@gmail.com', '009536241', '');
INSERT INTO `klienci` VALUES (584, 'Sano', 'Ren', 'sanren@gmail.com', '486938722', '');
INSERT INTO `klienci` VALUES (585, 'Cheng', 'Wai Man', 'chenwm5@gmail.com', '629158102', '');
INSERT INTO `klienci` VALUES (586, 'Wan', 'Cho Yee', 'wan928@gmail.com', '777301977', '');
INSERT INTO `klienci` VALUES (587, 'Yung', 'Lai Yan', 'yly@gmail.com', '446374272', '');
INSERT INTO `klienci` VALUES (588, 'Tong', 'Hui Mei', 'huimei2@gmail.com', '227331384', '');
INSERT INTO `klienci` VALUES (589, 'Mak', 'Wai Man', 'mak5@gmail.com', '677776637', '');
INSERT INTO `klienci` VALUES (590, 'Myers', 'Catherine', 'catherinem@gmail.com', '513941314', '');
INSERT INTO `klienci` VALUES (591, 'Hayashi', 'Itsuki', 'itsuki2@gmail.com', '510108036', '');
INSERT INTO `klienci` VALUES (592, 'Tamura', 'Mitsuki', 'tamuramitsuki@gmail.com', '040408761', '');
INSERT INTO `klienci` VALUES (593, 'Stephens', 'Paul', 'pstephens@gmail.com', '525809328', '');
INSERT INTO `klienci` VALUES (594, 'Matsumoto', 'Nanami', 'matsumotonanami622@gmail.com', '569740716', '');
INSERT INTO `klienci` VALUES (595, 'Mendez', 'Lucille', 'lucillemende@gmail.com', '991756006', '');
INSERT INTO `klienci` VALUES (596, 'Henry', 'Albert', 'henryalb@gmail.com', '061067133', '');
INSERT INTO `klienci` VALUES (597, 'Fisher', 'Steve', 'stevefisher316@gmail.com', '130485383', '');
INSERT INTO `klienci` VALUES (598, 'Choi', 'Wing Suen', 'cwingsuen@gmail.com', '074310415', '');
INSERT INTO `klienci` VALUES (599, 'Hayashi', 'Yota', 'hayashiy@gmail.com', '633380689', '');
INSERT INTO `klienci` VALUES (600, 'Soto', 'Gary', 'gasoto@gmail.com', '302790800', '');
INSERT INTO `klienci` VALUES (601, 'Alvarez', 'Randall', 'ralvarez1027@gmail.com', '502806871', '');
INSERT INTO `klienci` VALUES (602, 'Chiba', 'Mio', 'miochiba6@gmail.com', '696408374', '');
INSERT INTO `klienci` VALUES (603, 'Ferguson', 'Dorothy', 'dorothyfer@gmail.com', '856084401', '');
INSERT INTO `klienci` VALUES (604, 'Sit', 'Ka Ming', 'kamingsit@gmail.com', '041459268', '');
INSERT INTO `klienci` VALUES (605, 'Black', 'Ray', 'blackray7@gmail.com', '061088784', '');
INSERT INTO `klienci` VALUES (606, 'Lam', 'Kwok Kuen', 'lam5@gmail.com', '923668983', '');
INSERT INTO `klienci` VALUES (607, 'Miller', 'Joe', 'millejoe3@gmail.com', '182397135', '');
INSERT INTO `klienci` VALUES (608, 'Anderson', 'Peter', 'andepet90@gmail.com', '547304162', '');
INSERT INTO `klienci` VALUES (609, 'Chang', 'Tak Wah', 'takwahchang4@gmail.com', '130281592', '');
INSERT INTO `klienci` VALUES (610, 'Mo', 'Kar Yan', 'karyan02@gmail.com', '185517929', '');
INSERT INTO `klienci` VALUES (611, 'Saito', 'Kasumi', 'saito1005@gmail.com', '513311460', '');
INSERT INTO `klienci` VALUES (612, 'Nomura', 'Kaito', 'nomura6@gmail.com', '982253724', '');
INSERT INTO `klienci` VALUES (613, 'Nakamori', 'Yota', 'nakay1967@gmail.com', '779512135', '');
INSERT INTO `klienci` VALUES (614, 'Lo', 'Lai Yan', 'lo7@gmail.com', '654694660', '');
INSERT INTO `klienci` VALUES (615, 'Okamoto', 'Daichi', 'dokamo@gmail.com', '604997979', '');
INSERT INTO `klienci` VALUES (616, 'Ramos', 'Danielle', 'rdanie@gmail.com', '771364335', '');
INSERT INTO `klienci` VALUES (617, 'Masuda', 'Aoshi', 'masuda3@gmail.com', '134677079', '');
INSERT INTO `klienci` VALUES (618, 'Salazar', 'Eugene', 'salaeugene8@gmail.com', '329340797', '');
INSERT INTO `klienci` VALUES (619, 'Crawford', 'Bradley', 'bradley44@gmail.com', '951615570', '');
INSERT INTO `klienci` VALUES (620, 'Morgan', 'Benjamin', 'morgan1988@gmail.com', '805247976', '');
INSERT INTO `klienci` VALUES (621, 'Ishii', 'Tsubasa', 'tishii@gmail.com', '415327483', '');
INSERT INTO `klienci` VALUES (622, 'Cheung', 'Kwok Wing', 'kwcheung9@gmail.com', '558177947', '');
INSERT INTO `klienci` VALUES (623, 'Tsui', 'Sze Kwan', 'szekwan00@gmail.com', '534641133', '');
INSERT INTO `klienci` VALUES (624, 'Ortiz', 'Bobby', 'ortiz1023@gmail.com', '563120751', '');
INSERT INTO `klienci` VALUES (625, 'Masuda', 'Ayato', 'masuda41@gmail.com', '172599721', '');
INSERT INTO `klienci` VALUES (626, 'Yau', 'Ka Ling', 'yaukl2@gmail.com', '307958026', '');
INSERT INTO `klienci` VALUES (627, 'Ti', 'Tin Lok', 'titl1@gmail.com', '807593155', '');
INSERT INTO `klienci` VALUES (628, 'Lok', 'Kwok Yin', 'kwokyinl@gmail.com', '715485693', '');
INSERT INTO `klienci` VALUES (629, 'Reed', 'Ray', 'reed519@gmail.com', '254226681', '');
INSERT INTO `klienci` VALUES (630, 'Uchida', 'Nanami', 'uchida1945@gmail.com', '940216786', '');
INSERT INTO `klienci` VALUES (631, 'Heung', 'Wing Fat', 'heungwf7@gmail.com', '098373675', '');
INSERT INTO `klienci` VALUES (632, 'Ota', 'Takuya', 'ottakuya@gmail.com', '834593567', '');
INSERT INTO `klienci` VALUES (633, 'Liao', 'Kwok Ming', 'kwokmingl@gmail.com', '258939517', '');
INSERT INTO `klienci` VALUES (634, 'Meyer', 'Eugene', 'eugemeyer@gmail.com', '948100494', '');
INSERT INTO `klienci` VALUES (635, 'Yokoyama', 'Mai', 'mayokoyama75@gmail.com', '707113150', '');
INSERT INTO `klienci` VALUES (636, 'Yung', 'Wing Kuen', 'wingkuen827@gmail.com', '802387447', '');
INSERT INTO `klienci` VALUES (637, 'Yeung', 'Sai Wing', 'yeunsw4@gmail.com', '591337595', '');
INSERT INTO `klienci` VALUES (638, 'Otsuka', 'Eita', 'eotsuka@gmail.com', '375145616', '');
INSERT INTO `klienci` VALUES (639, 'Wong', 'Ching Wan', 'cww@gmail.com', '719144991', '');
INSERT INTO `klienci` VALUES (640, 'Che', 'Ka Ling', 'klche@gmail.com', '533602168', '');
INSERT INTO `klienci` VALUES (641, 'Yamaguchi', 'Misaki', 'yamisaki@gmail.com', '790256946', '');
INSERT INTO `klienci` VALUES (642, 'Hasegawa', 'Daichi', 'hadaichi44@gmail.com', '598177491', '');
INSERT INTO `klienci` VALUES (643, 'Kobayashi', 'Daisuke', 'kobdaisuke@gmail.com', '237212443', '');
INSERT INTO `klienci` VALUES (644, 'Ku', 'Chi Yuen', 'cyku@gmail.com', '958942958', '');
INSERT INTO `klienci` VALUES (645, 'Tang', 'Ka Fai', 'tkafai@gmail.com', '128469346', '');
INSERT INTO `klienci` VALUES (646, 'Lewis', 'Gloria', 'glorialewis@gmail.com', '387452633', '');
INSERT INTO `klienci` VALUES (647, 'Uchida', 'Kenta', 'kenta403@gmail.com', '509610617', '');
INSERT INTO `klienci` VALUES (648, 'Ikeda', 'Hazuki', 'ikedahaz8@gmail.com', '187064527', '');
INSERT INTO `klienci` VALUES (649, 'James', 'April', 'ajames@gmail.com', '797019370', '');
INSERT INTO `klienci` VALUES (650, 'Kudo', 'Sakura', 'kudosa68@gmail.com', '991409050', '');
INSERT INTO `klienci` VALUES (651, 'Sato', 'Ryota', 'ryotas4@gmail.com', '467291807', '');
INSERT INTO `klienci` VALUES (652, 'Mendez', 'Sharon', 'sharonmende@gmail.com', '526552428', '');
INSERT INTO `klienci` VALUES (653, 'Kim', 'Bernard', 'bernkim6@gmail.com', '756991721', '');
INSERT INTO `klienci` VALUES (654, 'Miura', 'Hazuki', 'hazukim1108@gmail.com', '640762774', '');
INSERT INTO `klienci` VALUES (655, 'Salazar', 'Larry', 'salazarl@gmail.com', '386188577', '');
INSERT INTO `klienci` VALUES (656, 'So', 'Chung Yin', 'socy@gmail.com', '597558073', '');
INSERT INTO `klienci` VALUES (657, 'Lok', 'Cho Yee', 'cylok6@gmail.com', '018443871', '');
INSERT INTO `klienci` VALUES (658, 'Sato', 'Rena', 'rena924@gmail.com', '077810017', '');
INSERT INTO `klienci` VALUES (659, 'Kobayashi', 'Akina', 'kobayashiakina@gmail.com', '042004106', '');
INSERT INTO `klienci` VALUES (660, 'Fu', 'Wing Suen', 'wingsuenfu@gmail.com', '581181246', '');
INSERT INTO `klienci` VALUES (661, 'Ng', 'Siu Wai', 'ngsw@gmail.com', '817573589', '');
INSERT INTO `klienci` VALUES (662, 'Webb', 'Adam', 'adamweb90@gmail.com', '564824184', '');
INSERT INTO `klienci` VALUES (663, 'Liao', 'Wing Sze', 'liaows5@gmail.com', '262258665', '');
INSERT INTO `klienci` VALUES (664, 'Hirano', 'Daichi', 'hd1@gmail.com', '647574790', '');
INSERT INTO `klienci` VALUES (665, 'Choi', 'On Na', 'choi1@gmail.com', '288705798', '');
INSERT INTO `klienci` VALUES (666, 'Dai', 'Tsz Ching', 'daitszc504@gmail.com', '629085513', '');
INSERT INTO `klienci` VALUES (667, 'Cole', 'Curtis', 'colecurt2@gmail.com', '754601810', '');
INSERT INTO `klienci` VALUES (668, 'Davis', 'Manuel', 'davima@gmail.com', '868088512', '');
INSERT INTO `klienci` VALUES (669, 'Cox', 'Robert', 'rocox1@gmail.com', '169235552', '');
INSERT INTO `klienci` VALUES (670, 'Lau', 'Ming', 'ml421@gmail.com', '372711453', '');
INSERT INTO `klienci` VALUES (671, 'Sakai', 'Aoshi', 'aoshisak@gmail.com', '843589962', '');
INSERT INTO `klienci` VALUES (672, 'Murray', 'Fred', 'murray09@gmail.com', '976375135', '');
INSERT INTO `klienci` VALUES (673, 'Lui', 'Tak Wah', 'takwahlui2001@gmail.com', '371149195', '');
INSERT INTO `klienci` VALUES (674, 'Murata', 'Rin', 'mur@gmail.com', '885653108', '');
INSERT INTO `klienci` VALUES (675, 'Ying', 'Chung Yin', 'chungyinying@gmail.com', '928844526', '');
INSERT INTO `klienci` VALUES (676, 'Pang', 'Wing Sze', 'wspan@gmail.com', '705985277', '');
INSERT INTO `klienci` VALUES (677, 'Woods', 'Gladys', 'wg10@gmail.com', '281357030', '');
INSERT INTO `klienci` VALUES (678, 'Yip', 'Ching Wan', 'yichingwan@gmail.com', '659924544', '');
INSERT INTO `klienci` VALUES (679, 'Cruz', 'Wanda', 'wandacruz@gmail.com', '657799470', '');
INSERT INTO `klienci` VALUES (680, 'Crawford', 'Shannon', 'shannoncrawford@gmail.com', '594259440', '');
INSERT INTO `klienci` VALUES (681, 'Arimura', 'Misaki', 'misaarimura@gmail.com', '695717167', '');
INSERT INTO `klienci` VALUES (682, 'Olson', 'Eddie', 'olsone@gmail.com', '491504927', '');
INSERT INTO `klienci` VALUES (683, 'Mo', 'Wing Suen', 'wsmo@gmail.com', '261226852', '');
INSERT INTO `klienci` VALUES (684, 'Hui', 'Chieh Lun', 'chiehlun3@gmail.com', '437319179', '');
INSERT INTO `klienci` VALUES (685, 'Nakagawa', 'Takuya', 'nt95@gmail.com', '391935824', '');
INSERT INTO `klienci` VALUES (686, 'Cox', 'Earl', 'coxearl1988@gmail.com', '435547895', '');
INSERT INTO `klienci` VALUES (687, 'Ying', 'Yu Ling', 'yyuli@gmail.com', '231889503', '');
INSERT INTO `klienci` VALUES (688, 'Chic', 'Hok Yau', 'chichokyau10@gmail.com', '050722683', '');
INSERT INTO `klienci` VALUES (689, 'Miyazaki', 'Ryota', 'ryota4@gmail.com', '706097340', '');
INSERT INTO `klienci` VALUES (690, 'Perry', 'Laura', 'laurap@gmail.com', '642562058', '');
INSERT INTO `klienci` VALUES (691, 'Yamada', 'Sakura', 'yamadasakura@gmail.com', '444007215', '');
INSERT INTO `klienci` VALUES (692, 'Kong', 'Tsz Hin', 'tszhko@gmail.com', '151053881', '');
INSERT INTO `klienci` VALUES (693, 'Taniguchi', 'Momoka', 'taniguchimom@gmail.com', '471661074', '');
INSERT INTO `klienci` VALUES (694, 'Han', 'Chi Yuen', 'hancy@gmail.com', '705127322', '');
INSERT INTO `klienci` VALUES (695, 'Hashimoto', 'Nanami', 'hashimoto1959@gmail.com', '691055733', '');
INSERT INTO `klienci` VALUES (696, 'Sanchez', 'Jose', 'sajose1978@gmail.com', '412172641', '');
INSERT INTO `klienci` VALUES (697, 'Sugiyama', 'Eita', 'sugiyamaeit@gmail.com', '351602945', '');
INSERT INTO `klienci` VALUES (698, 'Suzuki', 'Momoe', 'momsuzuki@gmail.com', '107776055', '');
INSERT INTO `klienci` VALUES (699, 'Kwok', 'Wai San', 'kwokws@gmail.com', '470432763', '');
INSERT INTO `klienci` VALUES (700, 'Lok', 'Chun Yu', 'cylok@gmail.com', '724771318', '');
INSERT INTO `klienci` VALUES (701, 'Koo', 'Tak Wah', 'takwk1@gmail.com', '563719555', '');
INSERT INTO `klienci` VALUES (702, 'Okada', 'Mai', 'omai44@gmail.com', '228472628', '');
INSERT INTO `klienci` VALUES (703, 'Shimizu', 'Yuto', 'yutoshim42@gmail.com', '426212233', '');
INSERT INTO `klienci` VALUES (704, 'Han', 'Fat', 'fathan48@gmail.com', '986347478', '');
INSERT INTO `klienci` VALUES (705, 'Palmer', 'Andrew', 'andrewpalmer922@gmail.com', '747108907', '');
INSERT INTO `klienci` VALUES (706, 'Mills', 'Valerie', 'milva10@gmail.com', '744030231', '');
INSERT INTO `klienci` VALUES (707, 'Yamaguchi', 'Yuna', 'yuna801@gmail.com', '057385019', '');
INSERT INTO `klienci` VALUES (708, 'Cheng', 'Kwok Yin', 'cheng1221@gmail.com', '668550342', '');
INSERT INTO `klienci` VALUES (709, 'Arimura', 'Ren', 'arimurar9@gmail.com', '256507947', '');
INSERT INTO `klienci` VALUES (710, 'Yoshida', 'Seiko', 'seiyoshida418@gmail.com', '375001719', '');
INSERT INTO `klienci` VALUES (711, 'Takagi', 'Mio', 'miotakagi712@gmail.com', '955178322', '');
INSERT INTO `klienci` VALUES (712, 'Alexander', 'Ruth', 'ruth43@gmail.com', '957496799', '');
INSERT INTO `klienci` VALUES (713, 'Woods', 'Sara', 'sara97@gmail.com', '982213077', '');
INSERT INTO `klienci` VALUES (714, 'Takeuchi', 'Mio', 'takeuchimio@gmail.com', '384913246', '');
INSERT INTO `klienci` VALUES (715, 'Fukuda', 'Rin', 'fukur1004@gmail.com', '763946699', '');
INSERT INTO `klienci` VALUES (716, 'Snyder', 'Beverly', 'besnyd@gmail.com', '998131492', '');
INSERT INTO `klienci` VALUES (717, 'Miyazaki', 'Miu', 'mium817@gmail.com', '850684089', '');
INSERT INTO `klienci` VALUES (718, 'Simpson', 'Christopher', 'simpsonchristopher@gmail.com', '503855684', '');
INSERT INTO `klienci` VALUES (719, 'Lam', 'Lik Sun', 'lli@gmail.com', '581847886', '');
INSERT INTO `klienci` VALUES (720, 'Herrera', 'Randy', 'herrra47@gmail.com', '591807578', '');
INSERT INTO `klienci` VALUES (721, 'Kwan', 'Wai Han', 'kwanwai1964@gmail.com', '846565882', '');
INSERT INTO `klienci` VALUES (722, 'Hirano', 'Minato', 'minato710@gmail.com', '076074180', '');
INSERT INTO `klienci` VALUES (723, 'Ng', 'Hui Mei', 'huimeing2@gmail.com', '052582355', '');
INSERT INTO `klienci` VALUES (724, 'Fong', 'Wai San', 'wsfong@gmail.com', '459832752', '');
INSERT INTO `klienci` VALUES (725, 'Stevens', 'Russell', 'stevensru@gmail.com', '303629938', '');
INSERT INTO `klienci` VALUES (726, 'Lui', 'Siu Wai', 'swlui7@gmail.com', '207168201', '');
INSERT INTO `klienci` VALUES (727, 'Fujii', 'Ayano', 'fuja@gmail.com', '184416748', '');
INSERT INTO `klienci` VALUES (728, 'Yau', 'Ling Ling', 'lly97@gmail.com', '100935304', '');
INSERT INTO `klienci` VALUES (729, 'Ueno', 'Rena', 'renaueno@gmail.com', '185517554', '');
INSERT INTO `klienci` VALUES (730, 'Tang', 'Kar Yan', 'tkaryan58@gmail.com', '241006549', '');
INSERT INTO `klienci` VALUES (731, 'Taylor', 'Donald', 'donaldtaylor20@gmail.com', '693464746', '');
INSERT INTO `klienci` VALUES (732, 'Han', 'Wing Fat', 'wingfatha4@gmail.com', '312837468', '');
INSERT INTO `klienci` VALUES (733, 'Hasegawa', 'Hana', 'hasegawa4@gmail.com', '965480632', '');
INSERT INTO `klienci` VALUES (734, 'Ueda', 'Eita', 'ueda66@gmail.com', '268179257', '');
INSERT INTO `klienci` VALUES (735, 'Bell', 'Mary', 'marybell1205@gmail.com', '242061764', '');
INSERT INTO `klienci` VALUES (736, 'Hawkins', 'Allen', 'hawkinsalle@gmail.com', '563892405', '');
INSERT INTO `klienci` VALUES (737, 'Sato', 'Seiko', 'seikosato@gmail.com', '050369494', '');
INSERT INTO `klienci` VALUES (738, 'Nakagawa', 'Aoshi', 'aoshinak@gmail.com', '463896814', '');
INSERT INTO `klienci` VALUES (739, 'Koyama', 'Hana', 'hanakoyama@gmail.com', '220179536', '');
INSERT INTO `klienci` VALUES (740, 'Murakami', 'Seiko', 'murakami1978@gmail.com', '032275315', '');
INSERT INTO `klienci` VALUES (741, 'Siu', 'Tsz Hin', 'siu8@gmail.com', '787904435', '');
INSERT INTO `klienci` VALUES (742, 'Spencer', 'Florence', 'sflorence43@gmail.com', '226148720', '');
INSERT INTO `klienci` VALUES (743, 'Lau', 'Kwok Yin', 'kylau@gmail.com', '749492953', '');
INSERT INTO `klienci` VALUES (744, 'Mo', 'Tsz Ching', 'tszchingm05@gmail.com', '365840912', '');
INSERT INTO `klienci` VALUES (745, 'Tin', 'Chi Yuen', 'chtin@gmail.com', '970243006', '');
INSERT INTO `klienci` VALUES (746, 'Ti', 'On Kay', 'onkayti7@gmail.com', '427714794', '');
INSERT INTO `klienci` VALUES (747, 'Olson', 'Dennis', 'olsondenni9@gmail.com', '911371608', '');
INSERT INTO `klienci` VALUES (748, 'Griffin', 'Daniel', 'dgriffin@gmail.com', '118582176', '');
INSERT INTO `klienci` VALUES (749, 'To', 'Chung Yin', 'tocy@gmail.com', '517099780', '');
INSERT INTO `klienci` VALUES (750, 'Marshall', 'Katherine', 'kamarshall@gmail.com', '840582087', '');
INSERT INTO `klienci` VALUES (751, 'Tsui', 'Kwok Kuen', 'kkts@gmail.com', '012321176', '');
INSERT INTO `klienci` VALUES (752, 'Simmons', 'George', 'simmogeo69@gmail.com', '531588502', '');
INSERT INTO `klienci` VALUES (753, 'Taniguchi', 'Misaki', 'taniguchimis224@gmail.com', '594078390', '');
INSERT INTO `klienci` VALUES (754, 'Loui', 'Ka Ming', 'loui19@gmail.com', '459586019', '');
INSERT INTO `klienci` VALUES (755, 'Morris', 'Jeffrey', 'mjeff@gmail.com', '647304875', '');
INSERT INTO `klienci` VALUES (756, 'Graham', 'Hazel', 'grahamha@gmail.com', '466249593', '');
INSERT INTO `klienci` VALUES (757, 'Siu', 'Kwok Wing', 'siu8@gmail.com', '518421077', '');
INSERT INTO `klienci` VALUES (758, 'Yeow', 'Wing Fat', 'wfye85@gmail.com', '273903771', '');
INSERT INTO `klienci` VALUES (759, 'Chu', 'Hok Yau', 'hychu@gmail.com', '259943492', '');
INSERT INTO `klienci` VALUES (760, 'Cooper', 'Cynthia', 'ccooper@gmail.com', '156858567', '');
INSERT INTO `klienci` VALUES (761, 'Chiba', 'Itsuki', 'chiba10@gmail.com', '228422239', '');
INSERT INTO `klienci` VALUES (762, 'Sano', 'Seiko', 'saseiko@gmail.com', '730435548', '');
INSERT INTO `klienci` VALUES (763, 'Nichols', 'Leslie', 'leslie4@gmail.com', '555069707', '');
INSERT INTO `klienci` VALUES (764, 'Patel', 'Howard', 'patelho@gmail.com', '840039314', '');
INSERT INTO `klienci` VALUES (765, 'Ono', 'Seiko', 'onose@gmail.com', '156908202', '');
INSERT INTO `klienci` VALUES (766, 'Cheung', 'On Na', 'conna126@gmail.com', '546518859', '');
INSERT INTO `klienci` VALUES (767, 'Gardner', 'Eva', 'evagardn@gmail.com', '593520996', '');
INSERT INTO `klienci` VALUES (768, 'Lui', 'Ka Ling', 'kalinglui@gmail.com', '848466253', '');
INSERT INTO `klienci` VALUES (769, 'Chung', 'Ho Yin', 'chunghoyin@gmail.com', '054206840', '');
INSERT INTO `klienci` VALUES (770, 'Hirano', 'Nanami', 'hiranonan@gmail.com', '541122710', '');
INSERT INTO `klienci` VALUES (771, 'Murphy', 'Don', 'murd52@gmail.com', '714106477', '');
INSERT INTO `klienci` VALUES (772, 'Chic', 'Kar Yan', 'karc@gmail.com', '178808464', '');
INSERT INTO `klienci` VALUES (773, 'Gutierrez', 'Wayne', 'guwayne@gmail.com', '764437463', '');
INSERT INTO `klienci` VALUES (774, 'Liao', 'Wing Fat', 'wfliao@gmail.com', '331760190', '');
INSERT INTO `klienci` VALUES (775, 'Morales', 'Todd', 'toddmorales@gmail.com', '990423089', '');
INSERT INTO `klienci` VALUES (776, 'Chow', 'Ling Ling', 'chowll@gmail.com', '174431831', '');
INSERT INTO `klienci` VALUES (777, 'Lui', 'Wai Lam', 'wailam4@gmail.com', '508040127', '');
INSERT INTO `klienci` VALUES (778, 'Kikuchi', 'Aoi', 'aoikikuchi423@gmail.com', '209573292', '');
INSERT INTO `klienci` VALUES (779, 'West', 'Marie', 'marw@gmail.com', '168336112', '');
INSERT INTO `klienci` VALUES (780, 'Lee', 'Jesse', 'lee1@gmail.com', '479167849', '');
INSERT INTO `klienci` VALUES (781, 'Tsui', 'Ming', 'tsuiming@gmail.com', '695113847', '');
INSERT INTO `klienci` VALUES (782, 'Yamada', 'Ayano', 'ayayamada@gmail.com', '165117156', '');
INSERT INTO `klienci` VALUES (783, 'Castro', 'Martha', 'castro1215@gmail.com', '110440062', '');
INSERT INTO `klienci` VALUES (784, 'Chiba', 'Airi', 'chibaa@gmail.com', '721548454', '');
INSERT INTO `klienci` VALUES (785, 'Mak', 'Fat', 'fatmak@gmail.com', '493628365', '');
INSERT INTO `klienci` VALUES (786, 'Ichikawa', 'Ren', 'renichik@gmail.com', '258263409', '');
INSERT INTO `klienci` VALUES (787, 'Ueda', 'Nanami', 'nanau904@gmail.com', '023783802', '');
INSERT INTO `klienci` VALUES (788, 'Hsuan', 'Kar Yan', 'karyan10@gmail.com', '662246513', '');
INSERT INTO `klienci` VALUES (789, 'Tam', 'Sau Man', 'saumant@gmail.com', '513768620', '');
INSERT INTO `klienci` VALUES (790, 'Lo', 'Lai Yan', 'lylo@gmail.com', '946389472', '');
INSERT INTO `klienci` VALUES (791, 'Takada', 'Sara', 'stakada@gmail.com', '609503873', '');
INSERT INTO `klienci` VALUES (792, 'Hara', 'Ayato', 'haayato@gmail.com', '387591464', '');
INSERT INTO `klienci` VALUES (793, 'Bennett', 'Diana', 'dianaben817@gmail.com', '485693857', '');
INSERT INTO `klienci` VALUES (794, 'Flores', 'Walter', 'floreswalte@gmail.com', '865878732', '');
INSERT INTO `klienci` VALUES (795, 'Arimura', 'Misaki', 'misarimu1966@gmail.com', '446225579', '');
INSERT INTO `klienci` VALUES (796, 'Ng', 'On Na', 'ngonna@gmail.com', '796520108', '');
INSERT INTO `klienci` VALUES (797, 'Fukuda', 'Airi', 'fuairi106@gmail.com', '877991327', '');
INSERT INTO `klienci` VALUES (798, 'Gordon', 'Chris', 'gordonchris@gmail.com', '448921990', '');
INSERT INTO `klienci` VALUES (799, 'Ogawa', 'Miu', 'omiu1979@gmail.com', '388741491', '');
INSERT INTO `klienci` VALUES (800, 'Payne', 'Marvin', 'mp54@gmail.com', '866771491', '');
INSERT INTO `klienci` VALUES (801, 'Chiba', 'Yuito', 'yuitochiba1970@gmail.com', '697016259', '');
INSERT INTO `klienci` VALUES (802, 'Yuen', 'Yun Fat', 'yfy59@gmail.com', '059394094', '');
INSERT INTO `klienci` VALUES (803, 'Nakano', 'Rin', 'rinnakano@gmail.com', '503075997', '');
INSERT INTO `klienci` VALUES (804, 'Tao', 'Hui Mei', 'hmta@gmail.com', '779440399', '');
INSERT INTO `klienci` VALUES (805, 'Ota', 'Rin', 'otarin09@gmail.com', '906276765', '');
INSERT INTO `klienci` VALUES (806, 'Shaw', 'Esther', 'esther63@gmail.com', '977503665', '');
INSERT INTO `klienci` VALUES (807, 'Sanchez', 'Rebecca', 'rsan1964@gmail.com', '634553066', '');
INSERT INTO `klienci` VALUES (808, 'Scott', 'Joyce', 'scottjoyce@gmail.com', '740793092', '');
INSERT INTO `klienci` VALUES (809, 'Koon', 'Tsz Hin', 'tszko8@gmail.com', '753997583', '');
INSERT INTO `klienci` VALUES (810, 'Yuen', 'Lik Sun', 'yuenls@gmail.com', '565643423', '');
INSERT INTO `klienci` VALUES (811, 'Aguilar', 'Ralph', 'ra910@gmail.com', '257487458', '');
INSERT INTO `klienci` VALUES (812, 'Freeman', 'Norman', 'normafreeman@gmail.com', '427757736', '');
INSERT INTO `klienci` VALUES (813, 'Dai', 'Wing Fat', 'wingdai@gmail.com', '546593305', '');
INSERT INTO `klienci` VALUES (814, 'Tang', 'Ka Man', 'kamantang81@gmail.com', '488834444', '');
INSERT INTO `klienci` VALUES (815, 'Reed', 'Doris', 'reed1129@gmail.com', '937057568', '');
INSERT INTO `klienci` VALUES (816, 'Mak', 'Hok Yau', 'hymak@gmail.com', '815290035', '');
INSERT INTO `klienci` VALUES (817, 'Siu', 'Ming', 'siu7@gmail.com', '877553152', '');
INSERT INTO `klienci` VALUES (818, 'Gonzalez', 'Jeremy', 'gonzalez215@gmail.com', '767942229', '');
INSERT INTO `klienci` VALUES (819, 'Vasquez', 'Diana', 'dianav@gmail.com', '847843123', '');
INSERT INTO `klienci` VALUES (820, 'Wu', 'Kar Yan', 'wukaryan@gmail.com', '163478899', '');
INSERT INTO `klienci` VALUES (821, 'Wright', 'Anne', 'annewri@gmail.com', '648465423', '');
INSERT INTO `klienci` VALUES (822, 'Yuen', 'On Kay', 'yuenok@gmail.com', '683935620', '');
INSERT INTO `klienci` VALUES (823, 'Masuda', 'Akina', 'akinamasu79@gmail.com', '665618553', '');
INSERT INTO `klienci` VALUES (824, 'Yokoyama', 'Ikki', 'ikki76@gmail.com', '544185377', '');
INSERT INTO `klienci` VALUES (825, 'Masuda', 'Takuya', 'tmasud@gmail.com', '893219202', '');
INSERT INTO `klienci` VALUES (826, 'Okamoto', 'Kenta', 'keokamoto@gmail.com', '467710818', '');
INSERT INTO `klienci` VALUES (827, 'Nichols', 'Mario', 'nicholsmario@gmail.com', '479251739', '');
INSERT INTO `klienci` VALUES (828, 'Kao', 'Wai Han', 'kaowaihan@gmail.com', '951128318', '');
INSERT INTO `klienci` VALUES (829, 'Yip', 'Tak Wah', 'yip226@gmail.com', '356374970', '');
INSERT INTO `klienci` VALUES (830, 'Otsuka', 'Nanami', 'otnanami@gmail.com', '663510978', '');
INSERT INTO `klienci` VALUES (831, 'Sato', 'Takuya', 'takuyasato@gmail.com', '861956815', '');
INSERT INTO `klienci` VALUES (832, 'Kwong', 'Wing Suen', 'wskwong5@gmail.com', '046847496', '');
INSERT INTO `klienci` VALUES (833, 'Fukuda', 'Airi', 'fukudaairi806@gmail.com', '139982391', '');
INSERT INTO `klienci` VALUES (834, 'Yeung', 'Siu Wai', 'siuwai1997@gmail.com', '561775183', '');
INSERT INTO `klienci` VALUES (835, 'Goto', 'Ren', 'goto315@gmail.com', '738378805', '');
INSERT INTO `klienci` VALUES (836, 'Gomez', 'Elizabeth', 'gomez917@gmail.com', '362341107', '');
INSERT INTO `klienci` VALUES (837, 'Moreno', 'Laura', 'mlau1214@gmail.com', '455100899', '');
INSERT INTO `klienci` VALUES (838, 'Saito', 'Nanami', 'saiton8@gmail.com', '870737541', '');
INSERT INTO `klienci` VALUES (839, 'Tucker', 'Jesse', 'tjes@gmail.com', '926186025', '');
INSERT INTO `klienci` VALUES (840, 'Hayashi', 'Sara', 'shayashi@gmail.com', '126891453', '');
INSERT INTO `klienci` VALUES (841, 'Cruz', 'Tracy', 'ctrac8@gmail.com', '576379114', '');
INSERT INTO `klienci` VALUES (842, 'Ku', 'Wing Fat', 'wfk@gmail.com', '615337620', '');
INSERT INTO `klienci` VALUES (843, 'Kwok', 'Chieh Lun', 'clkw@gmail.com', '789942061', '');
INSERT INTO `klienci` VALUES (844, 'Nakano', 'Hikaru', 'nakanohikaru@gmail.com', '969544375', '');
INSERT INTO `klienci` VALUES (845, 'Mills', 'Louise', 'milllo74@gmail.com', '789895862', '');
INSERT INTO `klienci` VALUES (846, 'Wallace', 'Billy', 'bwallace63@gmail.com', '545578257', '');
INSERT INTO `klienci` VALUES (847, 'Murata', 'Mai', 'muratmai@gmail.com', '654418486', '');
INSERT INTO `klienci` VALUES (848, 'Lau', 'Chi Yuen', 'lau4@gmail.com', '864387388', '');
INSERT INTO `klienci` VALUES (849, 'Tsui', 'Ka Ling', 'tsuikl@gmail.com', '763333591', '');
INSERT INTO `klienci` VALUES (850, 'Meyer', 'Steve', 'stevmeye@gmail.com', '947738005', '');
INSERT INTO `klienci` VALUES (851, 'Sato', 'Kazuma', 'satokazuma@gmail.com', '490493308', '');
INSERT INTO `klienci` VALUES (852, 'Tong', 'Ling Ling', 'tong413@gmail.com', '198227409', '');
INSERT INTO `klienci` VALUES (853, 'Payne', 'Lawrence', 'lawpay@gmail.com', '667542711', '');
INSERT INTO `klienci` VALUES (854, 'Wallace', 'Alan', 'wallaalan82@gmail.com', '044903704', '');
INSERT INTO `klienci` VALUES (855, 'Suzuki', 'Ren', 'resuzuk@gmail.com', '085415041', '');
INSERT INTO `klienci` VALUES (856, 'Koon', 'Wai Man', 'wmkoon226@gmail.com', '324920581', '');
INSERT INTO `klienci` VALUES (857, 'Kaneko', 'Momoka', 'momokak68@gmail.com', '784155222', '');
INSERT INTO `klienci` VALUES (858, 'Collins', 'Glenn', 'collinsglenn@gmail.com', '770661931', '');
INSERT INTO `klienci` VALUES (859, 'Kaneko', 'Momoka', 'kanmomoka@gmail.com', '222067320', '');
INSERT INTO `klienci` VALUES (860, 'Tanaka', 'Nanami', 'nanamt607@gmail.com', '208969920', '');
INSERT INTO `klienci` VALUES (861, 'Wong', 'Kar Yan', 'wonkaryan@gmail.com', '719899467', '');
INSERT INTO `klienci` VALUES (862, 'Yokoyama', 'Shino', 'shinoyok@gmail.com', '386195884', '');
INSERT INTO `klienci` VALUES (863, 'Miyamoto', 'Kenta', 'kmiy@gmail.com', '116120907', '');
INSERT INTO `klienci` VALUES (864, 'Munoz', 'William', 'munozwilliam311@gmail.com', '231601594', '');
INSERT INTO `klienci` VALUES (865, 'Bryant', 'Crystal', 'cbrya@gmail.com', '106996888', '');
INSERT INTO `klienci` VALUES (866, 'Wada', 'Airi', 'wadaa6@gmail.com', '580639748', '');
INSERT INTO `klienci` VALUES (867, 'Ku', 'Kwok Yin', 'kwokyinku58@gmail.com', '339889980', '');
INSERT INTO `klienci` VALUES (868, 'Parker', 'Tina', 'tinaparker@gmail.com', '493910608', '');
INSERT INTO `klienci` VALUES (869, 'Kim', 'Rhonda', 'rhonki522@gmail.com', '141476923', '');
INSERT INTO `klienci` VALUES (870, 'Powell', 'Donna', 'donnapo61@gmail.com', '383762666', '');
INSERT INTO `klienci` VALUES (871, 'Choi', 'Wai Man', 'waimanchoi@gmail.com', '439677183', '');
INSERT INTO `klienci` VALUES (872, 'Heung', 'Wai Lam', 'wailam313@gmail.com', '117722838', '');
INSERT INTO `klienci` VALUES (873, 'Hunt', 'Mary', 'maryhunt814@gmail.com', '544063319', '');
INSERT INTO `klienci` VALUES (874, 'Ku', 'Cho Yee', 'choyeku@gmail.com', '844140488', '');
INSERT INTO `klienci` VALUES (875, 'Griffin', 'Roy', 'roygriffin@gmail.com', '558886810', '');
INSERT INTO `klienci` VALUES (876, 'Chow', 'Hiu Tung', 'chowhi@gmail.com', '558412813', '');
INSERT INTO `klienci` VALUES (877, 'Mori', 'Ren', 'ren325@gmail.com', '326575596', '');
INSERT INTO `klienci` VALUES (878, 'Harada', 'Mai', 'maiharada@gmail.com', '614032724', '');
INSERT INTO `klienci` VALUES (879, 'Gray', 'Rachel', 'rachel2@gmail.com', '722267600', '');
INSERT INTO `klienci` VALUES (880, 'Wood', 'Brandon', 'wood51@gmail.com', '254795010', '');
INSERT INTO `klienci` VALUES (881, 'Ikeda', 'Takuya', 'taikeda7@gmail.com', '348613949', '');
INSERT INTO `klienci` VALUES (882, 'Tanaka', 'Seiko', 'tanakaseik@gmail.com', '946588265', '');
INSERT INTO `klienci` VALUES (883, 'Yuen', 'Lai Yan', 'yuenlaiyan@gmail.com', '499284939', '');
INSERT INTO `klienci` VALUES (884, 'Chang', 'Wing Sze', 'changwingsze92@gmail.com', '690975971', '');
INSERT INTO `klienci` VALUES (885, 'Saito', 'Shino', 'sashino@gmail.com', '674797036', '');
INSERT INTO `klienci` VALUES (886, 'Man', 'Wing Sze', 'wsman@gmail.com', '764576390', '');
INSERT INTO `klienci` VALUES (887, 'Chin', 'Wing Fat', 'cwf@gmail.com', '507246659', '');
INSERT INTO `klienci` VALUES (888, 'Han', 'Yu Ling', 'yulingh@gmail.com', '135186776', '');
INSERT INTO `klienci` VALUES (889, 'Yin', 'Tin Lok', 'yin1982@gmail.com', '514083374', '');
INSERT INTO `klienci` VALUES (890, 'Sheh', 'Kwok Ming', 'sheh08@gmail.com', '600853584', '');
INSERT INTO `klienci` VALUES (891, 'Uchida', 'Momoka', 'muchida@gmail.com', '708501145', '');
INSERT INTO `klienci` VALUES (892, 'Yeung', 'Kwok Wing', 'ykwokwing1941@gmail.com', '696122637', '');
INSERT INTO `klienci` VALUES (893, 'Siu', 'Chi Ming', 'siucm@gmail.com', '531218900', '');
INSERT INTO `klienci` VALUES (894, 'Stephens', 'Debbie', 'stephensdebbi@gmail.com', '579851728', '');
INSERT INTO `klienci` VALUES (895, 'Spencer', 'Emma', 'emmaspencer@gmail.com', '895338292', '');
INSERT INTO `klienci` VALUES (896, 'Matsuda', 'Sara', 'matsudasar9@gmail.com', '092271993', '');
INSERT INTO `klienci` VALUES (897, 'Dai', 'Ho Yin', 'hyd47@gmail.com', '522788985', '');
INSERT INTO `klienci` VALUES (898, 'Yung', 'Lai Yan', 'yunglai1222@gmail.com', '726239240', '');
INSERT INTO `klienci` VALUES (899, 'Cheung', 'Kwok Yin', 'cheung623@gmail.com', '511570733', '');
INSERT INTO `klienci` VALUES (900, 'Taylor', 'Edward', 'edwataylor@gmail.com', '632210466', '');
INSERT INTO `klienci` VALUES (901, 'Clark', 'Leonard', 'leonard2@gmail.com', '434609822', '');
INSERT INTO `klienci` VALUES (902, 'Hayashi', 'Yuito', 'yuito5@gmail.com', '150826676', '');
INSERT INTO `klienci` VALUES (903, 'Nakamura', 'Momoka', 'momokanakamura@gmail.com', '852219659', '');
INSERT INTO `klienci` VALUES (904, 'Tong', 'Kwok Yin', 'kyt@gmail.com', '267668792', '');
INSERT INTO `klienci` VALUES (905, 'Miura', 'Rena', 'renami1@gmail.com', '971275929', '');
INSERT INTO `klienci` VALUES (906, 'Ichikawa', 'Nanami', 'icnanam1017@gmail.com', '792042044', '');
INSERT INTO `klienci` VALUES (907, 'Mcdonald', 'Frank', 'mfr@gmail.com', '011346033', '');
INSERT INTO `klienci` VALUES (908, 'Loui', 'Sze Yu', 'loui107@gmail.com', '235871146', '');
INSERT INTO `klienci` VALUES (909, 'Fujiwara', 'Kenta', 'kfuj1231@gmail.com', '727283873', '');
INSERT INTO `klienci` VALUES (910, 'Ito', 'Hikaru', 'ithikar706@gmail.com', '894444592', '');
INSERT INTO `klienci` VALUES (911, 'Pak', 'Lai Yan', 'paly@gmail.com', '417923838', '');
INSERT INTO `klienci` VALUES (912, 'Saito', 'Hana', 'sahana80@gmail.com', '198061377', '');
INSERT INTO `klienci` VALUES (913, 'Murphy', 'Deborah', 'mdeborah726@gmail.com', '299282265', '');
INSERT INTO `klienci` VALUES (914, 'Ishii', 'Mitsuki', 'ishii02@gmail.com', '998574400', '');
INSERT INTO `klienci` VALUES (915, 'Williams', 'Ann', 'annwilli10@gmail.com', '839125021', '');
INSERT INTO `klienci` VALUES (916, 'Fujita', 'Hana', 'fujitah2@gmail.com', '178687943', '');
INSERT INTO `klienci` VALUES (917, 'Nakamori', 'Kasumi', 'nkasumi@gmail.com', '503790333', '');
INSERT INTO `klienci` VALUES (918, 'Daniels', 'Juanita', 'jud01@gmail.com', '845880110', '');
INSERT INTO `klienci` VALUES (919, 'Rodriguez', 'Adam', 'rodriguezadam1993@gmail.com', '823897557', '');
INSERT INTO `klienci` VALUES (920, 'Sit', 'Ming Sze', 'sit51@gmail.com', '095591385', '');
INSERT INTO `klienci` VALUES (921, 'Ford', 'Timothy', 'timothyford@gmail.com', '036853408', '');
INSERT INTO `klienci` VALUES (922, 'Takeda', 'Riku', 'takedariku@gmail.com', '786786893', '');
INSERT INTO `klienci` VALUES (923, 'Ramos', 'Rita', 'ramosrita@gmail.com', '557298186', '');
INSERT INTO `klienci` VALUES (924, 'Hui', 'Lik Sun', 'liksun10@gmail.com', '588572369', '');
INSERT INTO `klienci` VALUES (925, 'Ichikawa', 'Miu', 'ichikawa59@gmail.com', '541440801', '');
INSERT INTO `klienci` VALUES (926, 'Yip', 'Fat', 'yif@gmail.com', '527420161', '');
INSERT INTO `klienci` VALUES (927, 'Kam', 'Sze Kwan', 'skkam@gmail.com', '246240795', '');
INSERT INTO `klienci` VALUES (928, 'Kong', 'Sum Wing', 'sumwing628@gmail.com', '149970661', '');
INSERT INTO `klienci` VALUES (929, 'Yoshida', 'Kazuma', 'kazuyoshida@gmail.com', '496824152', '');
INSERT INTO `klienci` VALUES (930, 'Medina', 'Jeremy', 'medinajeremy@gmail.com', '417753731', '');
INSERT INTO `klienci` VALUES (931, 'Lau', 'On Na', 'lauonna1@gmail.com', '301782243', '');
INSERT INTO `klienci` VALUES (932, 'Takeda', 'Daisuke', 'takeda8@gmail.com', '155061958', '');
INSERT INTO `klienci` VALUES (933, 'Sato', 'Nanami', 'sato1988@gmail.com', '010729007', '');
INSERT INTO `klienci` VALUES (934, 'Yuen', 'Ming', 'yueming@gmail.com', '902153339', '');
INSERT INTO `klienci` VALUES (935, 'Takahashi', 'Hazuki', 'hataka@gmail.com', '582691085', '');
INSERT INTO `klienci` VALUES (936, 'Kong', 'Ho Yin', 'hoyinkong@gmail.com', '678865648', '');
INSERT INTO `klienci` VALUES (937, 'Morita', 'Minato', 'morita718@gmail.com', '235723819', '');
INSERT INTO `klienci` VALUES (938, 'Wright', 'Joan', 'joanwright67@gmail.com', '507015105', '');
INSERT INTO `klienci` VALUES (939, 'Fujiwara', 'Hana', 'fujhan@gmail.com', '966652122', '');
INSERT INTO `klienci` VALUES (940, 'Ikeda', 'Yuto', 'yuikeda@gmail.com', '639580900', '');
INSERT INTO `klienci` VALUES (941, 'Yuen', 'Yun Fat', 'yfy77@gmail.com', '309173180', '');
INSERT INTO `klienci` VALUES (942, 'Ikeda', 'Mai', 'mai5@gmail.com', '790505969', '');
INSERT INTO `klienci` VALUES (943, 'Noguchi', 'Misaki', 'noguchimisaki@gmail.com', '404105167', '');
INSERT INTO `klienci` VALUES (944, 'Yoshida', 'Miu', 'miuyosh@gmail.com', '534439594', '');
INSERT INTO `klienci` VALUES (945, 'Sullivan', 'William', 'william8@gmail.com', '779995473', '');
INSERT INTO `klienci` VALUES (946, 'Meyer', 'Louis', 'lomeye@gmail.com', '847381586', '');
INSERT INTO `klienci` VALUES (947, 'Heung', 'Cho Yee', 'heungchoyee306@gmail.com', '504562695', '');
INSERT INTO `klienci` VALUES (948, 'Mok', 'Chi Ming', 'cmmok3@gmail.com', '835716780', '');
INSERT INTO `klienci` VALUES (949, 'Takeuchi', 'Tsubasa', 'tsubasa1982@gmail.com', '387268834', '');
INSERT INTO `klienci` VALUES (950, 'Fung', 'Wai Yee', 'wyfung10@gmail.com', '012631576', '');
INSERT INTO `klienci` VALUES (951, 'Chang', 'Tsz Ching', 'chatszching@gmail.com', '645212908', '');
INSERT INTO `klienci` VALUES (952, 'Ono', 'Eita', 'eitao420@gmail.com', '926010167', '');
INSERT INTO `klienci` VALUES (953, 'Munoz', 'Dawn', 'dawmunoz@gmail.com', '428617181', '');
INSERT INTO `klienci` VALUES (954, 'Abe', 'Misaki', 'misakiab@gmail.com', '013949813', '');
INSERT INTO `klienci` VALUES (955, 'Ku', 'Wai Han', 'kuwh@gmail.com', '956645153', '');
INSERT INTO `klienci` VALUES (956, 'Hashimoto', 'Hikaru', 'hikaru1970@gmail.com', '414972023', '');
INSERT INTO `klienci` VALUES (957, 'Meng', 'Wai Man', 'mwm811@gmail.com', '053602011', '');
INSERT INTO `klienci` VALUES (958, 'Grant', 'Eddie', 'granteddie@gmail.com', '483029407', '');
INSERT INTO `klienci` VALUES (959, 'Munoz', 'Rosa', 'munozr@gmail.com', '647360976', '');
INSERT INTO `klienci` VALUES (960, 'Hui', 'Ming Sze', 'huims90@gmail.com', '251298771', '');
INSERT INTO `klienci` VALUES (961, 'Lee', 'Glenn', 'lee9@gmail.com', '405403858', '');
INSERT INTO `klienci` VALUES (962, 'Ogawa', 'Kasumi', 'kasumiogaw3@gmail.com', '424534443', '');
INSERT INTO `klienci` VALUES (963, 'Rose', 'Jacqueline', 'rjacqueline4@gmail.com', '042629055', '');
INSERT INTO `klienci` VALUES (964, 'Chung', 'Hui Mei', 'huichung@gmail.com', '015731885', '');
INSERT INTO `klienci` VALUES (965, 'Bell', 'Dennis', 'dennisbell@gmail.com', '597686123', '');
INSERT INTO `klienci` VALUES (966, 'Leung', 'Suk Yee', 'leungsy4@gmail.com', '305441552', '');
INSERT INTO `klienci` VALUES (967, 'Fong', 'Ming Sze', 'fongmingsze56@gmail.com', '872540317', '');
INSERT INTO `klienci` VALUES (968, 'Nguyen', 'Anita', 'nguyen6@gmail.com', '039355233', '');
INSERT INTO `klienci` VALUES (969, 'Ando', 'Seiko', 'ando1212@gmail.com', '816759285', '');
INSERT INTO `klienci` VALUES (970, 'Nakamori', 'Aoshi', 'naoshi@gmail.com', '876400723', '');
INSERT INTO `klienci` VALUES (971, 'Ramos', 'Diane', 'ramosdi@gmail.com', '324411697', '');
INSERT INTO `klienci` VALUES (972, 'Thompson', 'Josephine', 'josephinethompson@gmail.com', '942539762', '');
INSERT INTO `klienci` VALUES (973, 'Hamilton', 'Aaron', 'aahami@gmail.com', '280448502', '');
INSERT INTO `klienci` VALUES (974, 'Rodriguez', 'Helen', 'rodriguezh@gmail.com', '747267738', '');
INSERT INTO `klienci` VALUES (975, 'Sit', 'Ka Man', 'kamansi329@gmail.com', '306983050', '');
INSERT INTO `klienci` VALUES (976, 'Tam', 'Chieh Lun', 'chiehlun58@gmail.com', '577235838', '');
INSERT INTO `klienci` VALUES (977, 'Sit', 'Hui Mei', 'huimeisit3@gmail.com', '033592020', '');
INSERT INTO `klienci` VALUES (978, 'Tang', 'Sze Kwan', 'tsk@gmail.com', '152589139', '');
INSERT INTO `klienci` VALUES (979, 'Stevens', 'Jeremy', 'jeremy3@gmail.com', '410569183', '');
INSERT INTO `klienci` VALUES (980, 'Bailey', 'Benjamin', 'benjaminbailey@gmail.com', '737420180', '');
INSERT INTO `klienci` VALUES (981, 'Sanchez', 'Ann', 'annsa@gmail.com', '707862080', '');
INSERT INTO `klienci` VALUES (982, 'Fujii', 'Seiko', 'fujiiseiko@gmail.com', '462332810', '');
INSERT INTO `klienci` VALUES (983, 'Reynolds', 'Andrew', 'randrew5@gmail.com', '920103191', '');
INSERT INTO `klienci` VALUES (984, 'Tao', 'Wai Lam', 'wailtao@gmail.com', '829731481', '');
INSERT INTO `klienci` VALUES (985, 'Russell', 'Jeremy', 'rusje@gmail.com', '478014668', '');
INSERT INTO `klienci` VALUES (986, 'Liao', 'Tin Lok', 'liatl8@gmail.com', '479835123', '');
INSERT INTO `klienci` VALUES (987, 'White', 'Katherine', 'whk@gmail.com', '024459100', '');
INSERT INTO `klienci` VALUES (988, 'Rodriguez', 'Russell', 'rodriguezrussell@gmail.com', '422561834', '');
INSERT INTO `klienci` VALUES (989, 'Wells', 'Tony', 'tony5@gmail.com', '020614136', '');
INSERT INTO `klienci` VALUES (990, 'Gomez', 'Ashley', 'ashg@gmail.com', '780517086', '');
INSERT INTO `klienci` VALUES (991, 'Hasegawa', 'Kazuma', 'hasegawaka@gmail.com', '437291455', '');
INSERT INTO `klienci` VALUES (992, 'Ito', 'Yamato', 'iy10@gmail.com', '219318503', '');
INSERT INTO `klienci` VALUES (993, 'Lo', 'Lai Yan', 'lolaiyan@gmail.com', '642367176', '');
INSERT INTO `klienci` VALUES (994, 'Hunter', 'Brian', 'hunter116@gmail.com', '416657856', '');
INSERT INTO `klienci` VALUES (995, 'Miu', 'Cho Yee', 'choyee3@gmail.com', '448577094', '');
INSERT INTO `klienci` VALUES (996, 'Arimura', 'Itsuki', 'itsukiarimura@gmail.com', '366647940', '');
INSERT INTO `klienci` VALUES (997, 'Mo', 'Chieh Lun', 'mochiehlun@gmail.com', '727419344', '');
INSERT INTO `klienci` VALUES (998, 'Schmidt', 'Gregory', 'gregory103@gmail.com', '386709523', '');
INSERT INTO `klienci` VALUES (999, 'Tamura', 'Shino', 'shinotamura@gmail.com', '578654696', '');
INSERT INTO `klienci` VALUES (1000, 'Phillips', 'Tammy', 'tammyphi77@gmail.com', '961535002', '');
INSERT INTO `klienci` VALUES (1001, 'Robinson', 'Matthew', 'matrobinson@gmail.com', '371922782', '');
INSERT INTO `klienci` VALUES (1002, 'Garcia', 'Phyllis', 'phyllisg@gmail.com', '669763724', '');
INSERT INTO `klienci` VALUES (1003, 'Marshall', 'Donna', 'marshall9@gmail.com', '287718402', '');
INSERT INTO `klienci` VALUES (1004, 'Fujita', 'Yuito', 'yufuji@gmail.com', '768637541', '');
INSERT INTO `klienci` VALUES (1005, 'Rogers', 'Tammy', 'rogerstammy19@gmail.com', '611421800', '');

-- ----------------------------
-- Table structure for logowanie
-- ----------------------------
DROP TABLE IF EXISTS `logowanie`;
CREATE TABLE `logowanie`  (
  `ID` bigint NOT NULL,
  `login` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE INDEX `login`(`login` ASC) USING BTREE,
  UNIQUE INDEX `ID`(`ID` ASC) USING BTREE,
  CONSTRAINT `logowanie_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `klienci` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logowanie
-- ----------------------------
INSERT INTO `logowanie` VALUES (2, 'amongus15', '$2y$15$38zvT6mbMcnNK0zztCXmyeFFrKBeVw74T03t.pwBjYv5CFFKMRgBi');
INSERT INTO `logowanie` VALUES (5, 'idziemydokina', '$2y$15$4n.IBKoddzTkavsfLUuvYuQ7S.41Neu6/VUNTBvdRL/2ZCy5vPpbC');

-- ----------------------------
-- Table structure for miejscowosci
-- ----------------------------
DROP TABLE IF EXISTS `miejscowosci`;
CREATE TABLE `miejscowosci`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kod_pocztowy` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ID_powiat` int NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `nazwa`(`nazwa` ASC, `kod_pocztowy` ASC) USING BTREE,
  INDEX `ID_powiat`(`ID_powiat` ASC) USING BTREE,
  CONSTRAINT `miejscowosci_ibfk_2` FOREIGN KEY (`ID_powiat`) REFERENCES `powiaty` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1004 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of miejscowosci
-- ----------------------------
INSERT INTO `miejscowosci` VALUES (1, 'Gorlice', '38-300', 6);
INSERT INTO `miejscowosci` VALUES (2, 'Kraków', '30-000', 4);
INSERT INTO `miejscowosci` VALUES (3, 'Tarnów', '33-100', 5);
INSERT INTO `miejscowosci` VALUES (4, 'Port Louis', '95-138', 10);
INSERT INTO `miejscowosci` VALUES (5, 'Libreville', '92-270', 13);
INSERT INTO `miejscowosci` VALUES (6, 'Tirana', '09-197', 14);
INSERT INTO `miejscowosci` VALUES (7, 'Abuja', '72-392', 11);
INSERT INTO `miejscowosci` VALUES (8, 'Kigali', '05-853', 8);
INSERT INTO `miejscowosci` VALUES (9, 'Chișinău', '97-476', 7);
INSERT INTO `miejscowosci` VALUES (10, 'Prague', '42-882', 7);
INSERT INTO `miejscowosci` VALUES (11, 'Vienna', '22-565', 11);
INSERT INTO `miejscowosci` VALUES (12, 'Niamey', '38-021', 6);
INSERT INTO `miejscowosci` VALUES (13, 'Tripoli', '73-417', 12);
INSERT INTO `miejscowosci` VALUES (14, 'Managua', '64-034', 15);
INSERT INTO `miejscowosci` VALUES (15, 'Seoul', '32-089', 14);
INSERT INTO `miejscowosci` VALUES (16, 'Prague', '82-298', 15);
INSERT INTO `miejscowosci` VALUES (17, 'Bujumbura', '72-842', 6);
INSERT INTO `miejscowosci` VALUES (18, 'Andorra la Vella', '63-605', 12);
INSERT INTO `miejscowosci` VALUES (19, 'Madrid', '44-902', 8);
INSERT INTO `miejscowosci` VALUES (20, 'Maputo', '49-546', 8);
INSERT INTO `miejscowosci` VALUES (21, 'Ottawa', '08-440', 7);
INSERT INTO `miejscowosci` VALUES (22, 'Nukuʻalofa', '05-481', 11);
INSERT INTO `miejscowosci` VALUES (23, 'Port Louis', '72-659', 4);
INSERT INTO `miejscowosci` VALUES (24, 'Zagreb', '83-155', 6);
INSERT INTO `miejscowosci` VALUES (25, 'Kathmandu', '32-198', 10);
INSERT INTO `miejscowosci` VALUES (26, 'Cairo', '91-058', 16);
INSERT INTO `miejscowosci` VALUES (27, 'Basseterre', '07-047', 13);
INSERT INTO `miejscowosci` VALUES (28, 'Zhongshan', '30-448', 4);
INSERT INTO `miejscowosci` VALUES (29, 'Baghdad', '16-418', 10);
INSERT INTO `miejscowosci` VALUES (30, 'Damascus', '90-928', 15);
INSERT INTO `miejscowosci` VALUES (31, 'Seoul', '91-700', 9);
INSERT INTO `miejscowosci` VALUES (32, 'Caracas', '68-701', 11);
INSERT INTO `miejscowosci` VALUES (33, 'Paramaribo', '14-002', 11);
INSERT INTO `miejscowosci` VALUES (34, 'Ashgabat', '83-801', 7);
INSERT INTO `miejscowosci` VALUES (35, 'Conakry', '17-747', 7);
INSERT INTO `miejscowosci` VALUES (36, 'Cape Town', '00-122', 13);
INSERT INTO `miejscowosci` VALUES (37, 'Ashgabat', '98-254', 10);
INSERT INTO `miejscowosci` VALUES (38, 'Jerusalem', '91-838', 10);
INSERT INTO `miejscowosci` VALUES (39, 'Amman', '59-449', 12);
INSERT INTO `miejscowosci` VALUES (40, 'Albany', '69-804', 6);
INSERT INTO `miejscowosci` VALUES (41, 'Kuala Lumpur', '67-221', 7);
INSERT INTO `miejscowosci` VALUES (42, 'Funafuti', '14-406', 4);
INSERT INTO `miejscowosci` VALUES (43, 'Baku', '11-159', 10);
INSERT INTO `miejscowosci` VALUES (44, 'Podgorica', '04-199', 5);
INSERT INTO `miejscowosci` VALUES (45, 'Brooklyn', '20-579', 8);
INSERT INTO `miejscowosci` VALUES (46, 'Oxford', '89-755', 7);
INSERT INTO `miejscowosci` VALUES (47, 'Kampala', '32-529', 7);
INSERT INTO `miejscowosci` VALUES (48, 'Yerevan', '07-162', 10);
INSERT INTO `miejscowosci` VALUES (49, 'Pyongyang', '79-281', 4);
INSERT INTO `miejscowosci` VALUES (50, 'Podgorica', '79-257', 9);
INSERT INTO `miejscowosci` VALUES (51, 'Copenhagen', '42-914', 4);
INSERT INTO `miejscowosci` VALUES (52, 'Mbabane', '46-618', 5);
INSERT INTO `miejscowosci` VALUES (53, 'Ottawa', '71-770', 10);
INSERT INTO `miejscowosci` VALUES (54, 'Freetown', '96-053', 16);
INSERT INTO `miejscowosci` VALUES (55, 'Kinshasa', '07-577', 11);
INSERT INTO `miejscowosci` VALUES (56, 'Kathmandu', '33-369', 4);
INSERT INTO `miejscowosci` VALUES (57, 'Chengdu', '99-117', 7);
INSERT INTO `miejscowosci` VALUES (58, 'Port of Spain', '69-232', 14);
INSERT INTO `miejscowosci` VALUES (59, 'Freetown', '99-424', 14);
INSERT INTO `miejscowosci` VALUES (60, 'Moroni', '37-772', 10);
INSERT INTO `miejscowosci` VALUES (61, 'Libreville', '62-738', 16);
INSERT INTO `miejscowosci` VALUES (62, 'Banjul', '15-509', 16);
INSERT INTO `miejscowosci` VALUES (63, 'Bujumbura', '52-633', 4);
INSERT INTO `miejscowosci` VALUES (64, 'Maputo', '44-568', 14);
INSERT INTO `miejscowosci` VALUES (65, 'Juba', '60-810', 11);
INSERT INTO `miejscowosci` VALUES (66, 'Guatemala City', '95-622', 6);
INSERT INTO `miejscowosci` VALUES (67, 'Algiers', '19-592', 12);
INSERT INTO `miejscowosci` VALUES (68, 'Buenos Aires', '49-373', 14);
INSERT INTO `miejscowosci` VALUES (69, 'Podgorica', '88-434', 7);
INSERT INTO `miejscowosci` VALUES (70, 'Dili', '81-453', 11);
INSERT INTO `miejscowosci` VALUES (71, 'London', '40-495', 16);
INSERT INTO `miejscowosci` VALUES (72, 'Santiago', '58-700', 6);
INSERT INTO `miejscowosci` VALUES (73, 'Rabat', '43-088', 4);
INSERT INTO `miejscowosci` VALUES (74, 'Naypyidaw', '01-765', 16);
INSERT INTO `miejscowosci` VALUES (75, 'Georgetown', '56-975', 12);
INSERT INTO `miejscowosci` VALUES (76, 'Quito', '28-684', 13);
INSERT INTO `miejscowosci` VALUES (77, 'London', '56-038', 6);
INSERT INTO `miejscowosci` VALUES (78, 'Ankara', '96-292', 14);
INSERT INTO `miejscowosci` VALUES (79, 'Luxembourg City', '99-232', 16);
INSERT INTO `miejscowosci` VALUES (80, 'Oxford', '02-383', 8);
INSERT INTO `miejscowosci` VALUES (81, 'Port Vila', '15-739', 5);
INSERT INTO `miejscowosci` VALUES (82, 'Honiara', '62-885', 14);
INSERT INTO `miejscowosci` VALUES (83, 'Port Louis', '19-375', 15);
INSERT INTO `miejscowosci` VALUES (84, 'Sofia', '71-570', 8);
INSERT INTO `miejscowosci` VALUES (85, 'Los Angeles', '88-279', 13);
INSERT INTO `miejscowosci` VALUES (86, 'Freetown', '61-679', 9);
INSERT INTO `miejscowosci` VALUES (87, 'Algiers', '30-498', 9);
INSERT INTO `miejscowosci` VALUES (88, 'Singapore', '70-974', 15);
INSERT INTO `miejscowosci` VALUES (89, 'Vaduz', '23-876', 10);
INSERT INTO `miejscowosci` VALUES (90, 'Vilnius', '94-198', 9);
INSERT INTO `miejscowosci` VALUES (91, 'Jakarta', '44-936', 9);
INSERT INTO `miejscowosci` VALUES (92, 'Manila', '24-630', 11);
INSERT INTO `miejscowosci` VALUES (93, 'Vilnius', '80-208', 12);
INSERT INTO `miejscowosci` VALUES (94, 'Bissau', '92-706', 15);
INSERT INTO `miejscowosci` VALUES (95, 'Budapest', '13-406', 7);
INSERT INTO `miejscowosci` VALUES (96, 'Chișinău', '73-515', 14);
INSERT INTO `miejscowosci` VALUES (97, 'Tunis', '02-724', 9);
INSERT INTO `miejscowosci` VALUES (98, 'Akron', '67-495', 14);
INSERT INTO `miejscowosci` VALUES (99, 'Ljubljana', '33-769', 4);
INSERT INTO `miejscowosci` VALUES (100, 'Ashgabat', '36-926', 9);
INSERT INTO `miejscowosci` VALUES (101, 'Tbilisi', '35-400', 9);
INSERT INTO `miejscowosci` VALUES (102, 'Zagreb', '91-855', 5);
INSERT INTO `miejscowosci` VALUES (103, 'Georgetown', '43-721', 9);
INSERT INTO `miejscowosci` VALUES (104, 'Beijing', '52-731', 4);
INSERT INTO `miejscowosci` VALUES (105, 'Cambridge', '98-770', 9);
INSERT INTO `miejscowosci` VALUES (106, 'Baghdad', '78-444', 11);
INSERT INTO `miejscowosci` VALUES (107, 'Malé', '50-625', 8);
INSERT INTO `miejscowosci` VALUES (108, 'New Delhi', '98-134', 7);
INSERT INTO `miejscowosci` VALUES (109, 'Kathmandu', '28-657', 7);
INSERT INTO `miejscowosci` VALUES (110, 'Beijing', '59-453', 16);
INSERT INTO `miejscowosci` VALUES (111, 'Chicago', '60-907', 16);
INSERT INTO `miejscowosci` VALUES (112, 'Helsinki', '87-803', 11);
INSERT INTO `miejscowosci` VALUES (113, 'Sri Jayawardenepura Kotte', '64-493', 16);
INSERT INTO `miejscowosci` VALUES (114, 'Banjul', '39-784', 4);
INSERT INTO `miejscowosci` VALUES (115, 'Shenzhen', '90-054', 10);
INSERT INTO `miejscowosci` VALUES (116, 'Doha', '13-687', 9);
INSERT INTO `miejscowosci` VALUES (117, 'Moscow', '43-801', 14);
INSERT INTO `miejscowosci` VALUES (118, 'Gaborone', '14-685', 14);
INSERT INTO `miejscowosci` VALUES (119, 'San José', '31-562', 16);
INSERT INTO `miejscowosci` VALUES (120, 'Riga', '95-473', 4);
INSERT INTO `miejscowosci` VALUES (121, 'Moroni', '54-946', 7);
INSERT INTO `miejscowosci` VALUES (122, 'Port Vila', '43-142', 11);
INSERT INTO `miejscowosci` VALUES (123, 'Asunción', '47-959', 8);
INSERT INTO `miejscowosci` VALUES (124, 'Tunis', '31-434', 5);
INSERT INTO `miejscowosci` VALUES (125, 'Osaka', '65-207', 8);
INSERT INTO `miejscowosci` VALUES (126, 'Sapporo', '16-733', 15);
INSERT INTO `miejscowosci` VALUES (127, 'Kigali', '70-743', 5);
INSERT INTO `miejscowosci` VALUES (128, 'Bandar Seri Begawan', '23-536', 7);
INSERT INTO `miejscowosci` VALUES (129, 'Tripoli', '49-051', 5);
INSERT INTO `miejscowosci` VALUES (130, 'Dhaka', '32-273', 9);
INSERT INTO `miejscowosci` VALUES (131, 'Lomé', '45-703', 7);
INSERT INTO `miejscowosci` VALUES (132, 'Columbus', '27-148', 16);
INSERT INTO `miejscowosci` VALUES (133, 'Abu Dhabi', '50-242', 8);
INSERT INTO `miejscowosci` VALUES (134, 'Nassau', '94-098', 15);
INSERT INTO `miejscowosci` VALUES (135, 'Praia', '26-110', 7);
INSERT INTO `miejscowosci` VALUES (136, 'Panama City', '49-836', 14);
INSERT INTO `miejscowosci` VALUES (137, 'Funafuti', '39-767', 9);
INSERT INTO `miejscowosci` VALUES (138, 'Funafuti', '13-783', 4);
INSERT INTO `miejscowosci` VALUES (139, 'Ljubljana', '67-165', 15);
INSERT INTO `miejscowosci` VALUES (140, 'Antananarivo', '26-211', 6);
INSERT INTO `miejscowosci` VALUES (141, 'Belgrade', '25-432', 8);
INSERT INTO `miejscowosci` VALUES (142, 'Nassau', '88-718', 8);
INSERT INTO `miejscowosci` VALUES (143, 'Mexico City', '39-975', 9);
INSERT INTO `miejscowosci` VALUES (144, 'Nouakchott', '34-266', 7);
INSERT INTO `miejscowosci` VALUES (145, 'Brooklyn', '53-015', 15);
INSERT INTO `miejscowosci` VALUES (146, 'Saint Vincent and the Grenadines', '39-369', 7);
INSERT INTO `miejscowosci` VALUES (147, 'Nur-Sultan', '94-380', 10);
INSERT INTO `miejscowosci` VALUES (148, 'Doha', '35-608', 8);
INSERT INTO `miejscowosci` VALUES (149, 'Cape Town', '26-844', 13);
INSERT INTO `miejscowosci` VALUES (150, 'Apia', '54-224', 6);
INSERT INTO `miejscowosci` VALUES (151, 'Buenos Aires', '22-705', 13);
INSERT INTO `miejscowosci` VALUES (152, 'Prague', '08-550', 9);
INSERT INTO `miejscowosci` VALUES (153, 'Muscat', '76-168', 12);
INSERT INTO `miejscowosci` VALUES (154, 'Rome', '01-330', 9);
INSERT INTO `miejscowosci` VALUES (155, 'Basseterre', '19-234', 8);
INSERT INTO `miejscowosci` VALUES (156, 'Manama', '43-906', 15);
INSERT INTO `miejscowosci` VALUES (157, 'St. Johns', '63-553', 14);
INSERT INTO `miejscowosci` VALUES (158, 'Maseru', '60-775', 12);
INSERT INTO `miejscowosci` VALUES (159, 'Reykjavík', '48-648', 12);
INSERT INTO `miejscowosci` VALUES (160, 'Freetown', '71-171', 11);
INSERT INTO `miejscowosci` VALUES (161, 'Shanghai', '45-951', 5);
INSERT INTO `miejscowosci` VALUES (162, 'Chengdu', '71-378', 12);
INSERT INTO `miejscowosci` VALUES (163, 'Abu Dhabi', '75-456', 6);
INSERT INTO `miejscowosci` VALUES (164, 'Jerusalem', '37-889', 4);
INSERT INTO `miejscowosci` VALUES (165, 'St. Georges', '31-634', 13);
INSERT INTO `miejscowosci` VALUES (166, 'NDjamena', '84-551', 14);
INSERT INTO `miejscowosci` VALUES (167, 'Dushanbe', '83-024', 14);
INSERT INTO `miejscowosci` VALUES (168, 'Prague', '57-525', 7);
INSERT INTO `miejscowosci` VALUES (169, 'Saint Vincent and the Grenadines', '39-992', 13);
INSERT INTO `miejscowosci` VALUES (170, 'Yerevan', '35-963', 5);
INSERT INTO `miejscowosci` VALUES (171, 'Zagreb', '01-077', 10);
INSERT INTO `miejscowosci` VALUES (172, 'Port Vila', '65-133', 10);
INSERT INTO `miejscowosci` VALUES (173, 'Brazzaville', '56-566', 8);
INSERT INTO `miejscowosci` VALUES (174, '聖多明哥', '18-894', 6);
INSERT INTO `miejscowosci` VALUES (175, 'Conakry', '14-525', 6);
INSERT INTO `miejscowosci` VALUES (176, 'Rio de Janeiro', '06-278', 11);
INSERT INTO `miejscowosci` VALUES (177, 'St. Georges', '64-516', 15);
INSERT INTO `miejscowosci` VALUES (178, 'Vilnius', '15-387', 8);
INSERT INTO `miejscowosci` VALUES (179, 'Oslo', '05-569', 11);
INSERT INTO `miejscowosci` VALUES (180, 'Yamoussoukro', '86-764', 4);
INSERT INTO `miejscowosci` VALUES (181, 'Tallinn', '22-262', 4);
INSERT INTO `miejscowosci` VALUES (182, 'Podgorica', '82-287', 4);
INSERT INTO `miejscowosci` VALUES (183, 'Skopje', '73-516', 15);
INSERT INTO `miejscowosci` VALUES (184, 'Tegucigalpa', '43-014', 14);
INSERT INTO `miejscowosci` VALUES (185, 'Porto-Novo', '95-549', 5);
INSERT INTO `miejscowosci` VALUES (186, 'Riyadh', '22-372', 5);
INSERT INTO `miejscowosci` VALUES (187, 'Damascus', '73-689', 12);
INSERT INTO `miejscowosci` VALUES (188, 'Birmingham', '60-944', 7);
INSERT INTO `miejscowosci` VALUES (189, '聖多明哥', '71-153', 6);
INSERT INTO `miejscowosci` VALUES (190, 'Yerevan', '99-188', 9);
INSERT INTO `miejscowosci` VALUES (191, 'Rio de Janeiro', '33-594', 10);
INSERT INTO `miejscowosci` VALUES (192, 'Funafuti', '54-404', 5);
INSERT INTO `miejscowosci` VALUES (193, 'St. Johns', '25-064', 14);
INSERT INTO `miejscowosci` VALUES (194, 'Mbabane', '64-949', 16);
INSERT INTO `miejscowosci` VALUES (195, 'Belgrade', '32-223', 13);
INSERT INTO `miejscowosci` VALUES (196, 'Bissau', '96-463', 11);
INSERT INTO `miejscowosci` VALUES (197, 'Tirana', '88-551', 8);
INSERT INTO `miejscowosci` VALUES (198, 'Lisbon', '15-452', 4);
INSERT INTO `miejscowosci` VALUES (199, 'Budapest', '38-829', 7);
INSERT INTO `miejscowosci` VALUES (200, 'Brazzaville', '34-430', 6);
INSERT INTO `miejscowosci` VALUES (201, 'Amman', '57-619', 12);
INSERT INTO `miejscowosci` VALUES (202, 'Moroni', '84-588', 16);
INSERT INTO `miejscowosci` VALUES (203, 'Warsaw', '36-719', 14);
INSERT INTO `miejscowosci` VALUES (204, 'Hanoi', '42-179', 5);
INSERT INTO `miejscowosci` VALUES (205, 'Sarajevo', '13-634', 8);
INSERT INTO `miejscowosci` VALUES (206, 'Managua', '10-409', 6);
INSERT INTO `miejscowosci` VALUES (207, 'Harare', '23-071', 12);
INSERT INTO `miejscowosci` VALUES (208, 'Chengdu', '58-702', 10);
INSERT INTO `miejscowosci` VALUES (209, 'Bandar Seri Begawan', '35-631', 14);
INSERT INTO `miejscowosci` VALUES (210, 'Kuwait City', '48-348', 11);
INSERT INTO `miejscowosci` VALUES (211, 'Los Angeles', '22-136', 11);
INSERT INTO `miejscowosci` VALUES (212, 'Ljubljana', '99-829', 16);
INSERT INTO `miejscowosci` VALUES (213, 'Vilnius', '99-311', 5);
INSERT INTO `miejscowosci` VALUES (214, 'Stockholm', '35-381', 8);
INSERT INTO `miejscowosci` VALUES (215, 'Asmara', '93-006', 10);
INSERT INTO `miejscowosci` VALUES (216, 'Albany', '63-715', 13);
INSERT INTO `miejscowosci` VALUES (217, 'Zhongshan', '72-872', 12);
INSERT INTO `miejscowosci` VALUES (218, 'Naypyidaw', '41-647', 16);
INSERT INTO `miejscowosci` VALUES (219, 'Baku', '90-344', 12);
INSERT INTO `miejscowosci` VALUES (220, 'Brussels', '85-819', 9);
INSERT INTO `miejscowosci` VALUES (221, 'Cairo', '71-989', 13);
INSERT INTO `miejscowosci` VALUES (222, 'Tripoli', '13-681', 10);
INSERT INTO `miejscowosci` VALUES (223, 'Liverpool', '40-129', 14);
INSERT INTO `miejscowosci` VALUES (224, 'St. Johns', '73-672', 10);
INSERT INTO `miejscowosci` VALUES (225, 'Conakry', '35-060', 14);
INSERT INTO `miejscowosci` VALUES (226, 'Moroni', '25-518', 6);
INSERT INTO `miejscowosci` VALUES (227, 'Valletta', '93-706', 6);
INSERT INTO `miejscowosci` VALUES (228, 'Paramaribo', '75-652', 12);
INSERT INTO `miejscowosci` VALUES (229, 'Nouakchott', '39-048', 16);
INSERT INTO `miejscowosci` VALUES (230, 'Abu Dhabi', '47-599', 13);
INSERT INTO `miejscowosci` VALUES (231, 'Singapore', '52-196', 9);
INSERT INTO `miejscowosci` VALUES (232, 'Yaoundé', '83-347', 15);
INSERT INTO `miejscowosci` VALUES (233, 'New York', '39-380', 16);
INSERT INTO `miejscowosci` VALUES (234, 'Manchester', '33-827', 10);
INSERT INTO `miejscowosci` VALUES (235, 'Brooklyn', '51-695', 14);
INSERT INTO `miejscowosci` VALUES (236, 'Ankara', '13-125', 13);
INSERT INTO `miejscowosci` VALUES (237, 'Liverpool', '54-482', 9);
INSERT INTO `miejscowosci` VALUES (238, 'San José', '78-928', 6);
INSERT INTO `miejscowosci` VALUES (239, 'Tegucigalpa', '40-411', 15);
INSERT INTO `miejscowosci` VALUES (240, 'Abu Dhabi', '66-080', 15);
INSERT INTO `miejscowosci` VALUES (241, 'Sofia', '73-732', 8);
INSERT INTO `miejscowosci` VALUES (242, 'Bangui', '32-634', 11);
INSERT INTO `miejscowosci` VALUES (243, 'Canberra', '09-970', 14);
INSERT INTO `miejscowosci` VALUES (244, 'Tbilisi', '01-467', 11);
INSERT INTO `miejscowosci` VALUES (245, 'Dushanbe', '15-013', 16);
INSERT INTO `miejscowosci` VALUES (246, 'Islamabad', '61-012', 15);
INSERT INTO `miejscowosci` VALUES (247, 'Dodoma', '56-883', 6);
INSERT INTO `miejscowosci` VALUES (248, 'Brazzaville', '29-972', 7);
INSERT INTO `miejscowosci` VALUES (249, 'Tegucigalpa', '36-429', 4);
INSERT INTO `miejscowosci` VALUES (250, 'Nagoya', '94-776', 9);
INSERT INTO `miejscowosci` VALUES (251, 'Algiers', '75-509', 15);
INSERT INTO `miejscowosci` VALUES (252, 'Baku', '52-869', 14);
INSERT INTO `miejscowosci` VALUES (253, 'Kingston', '38-264', 4);
INSERT INTO `miejscowosci` VALUES (254, 'Tokyo', '32-931', 6);
INSERT INTO `miejscowosci` VALUES (255, 'Athens', '54-478', 5);
INSERT INTO `miejscowosci` VALUES (256, 'Tripoli', '39-389', 9);
INSERT INTO `miejscowosci` VALUES (257, 'Monte Carlo', '24-820', 16);
INSERT INTO `miejscowosci` VALUES (258, 'Islamabad', '33-785', 9);
INSERT INTO `miejscowosci` VALUES (259, 'Tokyo', '43-973', 11);
INSERT INTO `miejscowosci` VALUES (260, 'Guangzhou', '70-831', 11);
INSERT INTO `miejscowosci` VALUES (261, 'Oxford', '40-593', 12);
INSERT INTO `miejscowosci` VALUES (262, 'Kathmandu', '30-444', 4);
INSERT INTO `miejscowosci` VALUES (263, 'Kinshasa', '51-897', 11);
INSERT INTO `miejscowosci` VALUES (264, 'Victoria', '79-387', 13);
INSERT INTO `miejscowosci` VALUES (265, 'Vientiane', '98-173', 12);
INSERT INTO `miejscowosci` VALUES (266, 'Managua', '09-014', 10);
INSERT INTO `miejscowosci` VALUES (267, 'Seoul', '45-275', 8);
INSERT INTO `miejscowosci` VALUES (268, 'Nicosia ', '70-804', 4);
INSERT INTO `miejscowosci` VALUES (269, 'Moroni', '60-092', 12);
INSERT INTO `miejscowosci` VALUES (270, 'Tehran', '10-073', 10);
INSERT INTO `miejscowosci` VALUES (271, 'Monte Carlo', '77-787', 8);
INSERT INTO `miejscowosci` VALUES (272, 'Reykjavík', '74-021', 4);
INSERT INTO `miejscowosci` VALUES (273, 'Liverpool', '08-450', 14);
INSERT INTO `miejscowosci` VALUES (274, 'Rabat', '68-211', 12);
INSERT INTO `miejscowosci` VALUES (275, 'La Paz', '24-574', 12);
INSERT INTO `miejscowosci` VALUES (276, 'Luxembourg City', '78-636', 11);
INSERT INTO `miejscowosci` VALUES (277, 'Doha', '54-539', 4);
INSERT INTO `miejscowosci` VALUES (278, 'Ottawa', '30-676', 9);
INSERT INTO `miejscowosci` VALUES (279, 'Kabul', '19-711', 6);
INSERT INTO `miejscowosci` VALUES (280, 'Saint Vincent and the Grenadines', '78-423', 13);
INSERT INTO `miejscowosci` VALUES (281, 'Yamoussoukro', '98-760', 8);
INSERT INTO `miejscowosci` VALUES (282, 'Harare', '60-648', 10);
INSERT INTO `miejscowosci` VALUES (283, 'Tripoli', '86-420', 15);
INSERT INTO `miejscowosci` VALUES (284, 'São Tomé', '05-185', 10);
INSERT INTO `miejscowosci` VALUES (285, 'Wellington', '55-172', 6);
INSERT INTO `miejscowosci` VALUES (286, 'Djibouti', '64-044', 4);
INSERT INTO `miejscowosci` VALUES (287, 'Nicosia ', '63-759', 4);
INSERT INTO `miejscowosci` VALUES (288, 'Port Louis', '81-518', 8);
INSERT INTO `miejscowosci` VALUES (289, 'Nagoya', '34-922', 8);
INSERT INTO `miejscowosci` VALUES (290, 'Palikir', '10-197', 5);
INSERT INTO `miejscowosci` VALUES (291, 'Managua', '85-380', 11);
INSERT INTO `miejscowosci` VALUES (292, 'Montevideo', '21-513', 7);
INSERT INTO `miejscowosci` VALUES (293, 'Sarajevo', '19-887', 16);
INSERT INTO `miejscowosci` VALUES (294, 'Dublin', '74-777', 16);
INSERT INTO `miejscowosci` VALUES (295, 'Prague', '84-656', 13);
INSERT INTO `miejscowosci` VALUES (296, 'Columbus', '68-932', 12);
INSERT INTO `miejscowosci` VALUES (297, 'Kuwait City', '40-377', 8);
INSERT INTO `miejscowosci` VALUES (298, 'Panama City', '77-021', 15);
INSERT INTO `miejscowosci` VALUES (299, 'Belgrade', '38-558', 16);
INSERT INTO `miejscowosci` VALUES (300, 'Singapore', '09-359', 7);
INSERT INTO `miejscowosci` VALUES (301, 'Vaduz', '67-273', 10);
INSERT INTO `miejscowosci` VALUES (302, 'Ljubljana', '63-740', 6);
INSERT INTO `miejscowosci` VALUES (303, 'Bratislava', '68-649', 16);
INSERT INTO `miejscowosci` VALUES (304, 'Juba', '18-361', 5);
INSERT INTO `miejscowosci` VALUES (305, 'Palikir', '53-476', 10);
INSERT INTO `miejscowosci` VALUES (306, 'Lomé', '42-116', 5);
INSERT INTO `miejscowosci` VALUES (307, '聖多明哥', '14-679', 16);
INSERT INTO `miejscowosci` VALUES (308, 'Conakry', '92-635', 13);
INSERT INTO `miejscowosci` VALUES (309, 'Baku', '06-314', 10);
INSERT INTO `miejscowosci` VALUES (310, 'London', '40-720', 16);
INSERT INTO `miejscowosci` VALUES (311, 'Monte Carlo', '22-029', 14);
INSERT INTO `miejscowosci` VALUES (312, 'Manila', '94-744', 14);
INSERT INTO `miejscowosci` VALUES (313, 'St. Johns', '41-500', 6);
INSERT INTO `miejscowosci` VALUES (314, 'Andorra la Vella', '18-883', 7);
INSERT INTO `miejscowosci` VALUES (315, 'Moscow', '70-464', 6);
INSERT INTO `miejscowosci` VALUES (316, 'Akron', '39-882', 15);
INSERT INTO `miejscowosci` VALUES (317, 'Palikir', '22-798', 7);
INSERT INTO `miejscowosci` VALUES (318, 'St. Georges', '57-024', 11);
INSERT INTO `miejscowosci` VALUES (319, 'Chișinău', '77-433', 9);
INSERT INTO `miejscowosci` VALUES (320, 'Tallinn', '10-894', 4);
INSERT INTO `miejscowosci` VALUES (321, 'Albany', '96-733', 14);
INSERT INTO `miejscowosci` VALUES (322, 'Phnom Penh', '73-873', 11);
INSERT INTO `miejscowosci` VALUES (323, 'Minsk', '85-226', 11);
INSERT INTO `miejscowosci` VALUES (324, 'Thimphu', '71-887', 13);
INSERT INTO `miejscowosci` VALUES (325, 'Maputo', '55-618', 9);
INSERT INTO `miejscowosci` VALUES (326, 'Yamoussoukro', '26-877', 14);
INSERT INTO `miejscowosci` VALUES (327, 'Baku', '32-065', 15);
INSERT INTO `miejscowosci` VALUES (328, 'Manila', '35-348', 5);
INSERT INTO `miejscowosci` VALUES (329, 'Abu Dhabi', '57-429', 5);
INSERT INTO `miejscowosci` VALUES (330, 'Malé', '26-458', 8);
INSERT INTO `miejscowosci` VALUES (331, 'Castries', '00-565', 14);
INSERT INTO `miejscowosci` VALUES (332, 'Copenhagen', '23-719', 13);
INSERT INTO `miejscowosci` VALUES (333, 'Zhongshan', '54-664', 10);
INSERT INTO `miejscowosci` VALUES (334, 'Paramaribo', '34-998', 4);
INSERT INTO `miejscowosci` VALUES (335, 'Valletta', '86-875', 13);
INSERT INTO `miejscowosci` VALUES (336, 'Kingston', '31-252', 16);
INSERT INTO `miejscowosci` VALUES (337, 'Kathmandu', '04-249', 16);
INSERT INTO `miejscowosci` VALUES (338, 'Dili', '39-170', 6);
INSERT INTO `miejscowosci` VALUES (339, 'Mbabane', '34-675', 7);
INSERT INTO `miejscowosci` VALUES (340, 'Guangzhou', '27-364', 10);
INSERT INTO `miejscowosci` VALUES (341, 'Praia', '53-816', 7);
INSERT INTO `miejscowosci` VALUES (342, 'Tehran', '79-698', 12);
INSERT INTO `miejscowosci` VALUES (343, 'Riyadh', '88-476', 6);
INSERT INTO `miejscowosci` VALUES (344, 'New York', '70-065', 8);
INSERT INTO `miejscowosci` VALUES (345, 'Bishkek', '72-501', 16);
INSERT INTO `miejscowosci` VALUES (346, 'Ankara', '09-754', 9);
INSERT INTO `miejscowosci` VALUES (347, 'Lilongwe', '14-388', 15);
INSERT INTO `miejscowosci` VALUES (348, 'Majuro', '62-461', 9);
INSERT INTO `miejscowosci` VALUES (349, 'Moroni', '75-073', 13);
INSERT INTO `miejscowosci` VALUES (350, 'Ankara', '84-648', 10);
INSERT INTO `miejscowosci` VALUES (351, 'Algiers', '48-765', 9);
INSERT INTO `miejscowosci` VALUES (352, 'Kabul', '12-389', 4);
INSERT INTO `miejscowosci` VALUES (353, 'Apia', '70-479', 8);
INSERT INTO `miejscowosci` VALUES (354, 'Dhaka', '39-074', 16);
INSERT INTO `miejscowosci` VALUES (355, 'Damascus', '87-190', 15);
INSERT INTO `miejscowosci` VALUES (356, 'Ouagadougou', '49-239', 8);
INSERT INTO `miejscowosci` VALUES (357, 'Kuwait City', '32-321', 10);
INSERT INTO `miejscowosci` VALUES (358, 'Kyiv', '31-794', 4);
INSERT INTO `miejscowosci` VALUES (359, 'Leicester', '66-023', 15);
INSERT INTO `miejscowosci` VALUES (360, 'Ankara', '15-407', 9);
INSERT INTO `miejscowosci` VALUES (361, 'Madrid', '78-299', 14);
INSERT INTO `miejscowosci` VALUES (362, 'Beirut', '48-286', 11);
INSERT INTO `miejscowosci` VALUES (363, 'Brussels', '76-271', 4);
INSERT INTO `miejscowosci` VALUES (364, 'Belgrade', '42-722', 16);
INSERT INTO `miejscowosci` VALUES (365, 'Los Angeles', '88-928', 4);
INSERT INTO `miejscowosci` VALUES (366, 'Abu Dhabi', '75-627', 13);
INSERT INTO `miejscowosci` VALUES (367, 'Victoria', '00-184', 16);
INSERT INTO `miejscowosci` VALUES (368, 'Zagreb', '80-814', 9);
INSERT INTO `miejscowosci` VALUES (369, 'Saint Vincent and the Grenadines', '31-510', 16);
INSERT INTO `miejscowosci` VALUES (370, 'Doha', '74-021', 7);
INSERT INTO `miejscowosci` VALUES (371, 'Bangui', '00-152', 5);
INSERT INTO `miejscowosci` VALUES (372, 'Thimphu', '17-433', 5);
INSERT INTO `miejscowosci` VALUES (373, 'Bishkek', '14-507', 15);
INSERT INTO `miejscowosci` VALUES (374, 'Los Angeles', '95-935', 7);
INSERT INTO `miejscowosci` VALUES (375, 'Amman', '98-488', 9);
INSERT INTO `miejscowosci` VALUES (376, 'Manama', '42-046', 11);
INSERT INTO `miejscowosci` VALUES (377, 'Vienna', '78-706', 7);
INSERT INTO `miejscowosci` VALUES (378, 'Mogadishu', '83-664', 6);
INSERT INTO `miejscowosci` VALUES (379, 'Sri Jayawardenepura Kotte', '44-237', 5);
INSERT INTO `miejscowosci` VALUES (380, 'Abuja', '18-313', 13);
INSERT INTO `miejscowosci` VALUES (381, 'Banjul', '51-424', 8);
INSERT INTO `miejscowosci` VALUES (382, 'Djibouti', '31-822', 6);
INSERT INTO `miejscowosci` VALUES (383, 'Pyongyang', '29-188', 12);
INSERT INTO `miejscowosci` VALUES (384, 'Columbus', '10-737', 9);
INSERT INTO `miejscowosci` VALUES (385, 'Luanda', '58-476', 12);
INSERT INTO `miejscowosci` VALUES (386, 'Khartoum', '48-352', 5);
INSERT INTO `miejscowosci` VALUES (387, 'Stockholm', '83-006', 12);
INSERT INTO `miejscowosci` VALUES (388, 'Saint Vincent and the Grenadines', '94-192', 15);
INSERT INTO `miejscowosci` VALUES (389, 'Algiers', '12-439', 6);
INSERT INTO `miejscowosci` VALUES (390, 'Manama', '21-890', 13);
INSERT INTO `miejscowosci` VALUES (391, 'Ankara', '66-663', 5);
INSERT INTO `miejscowosci` VALUES (392, 'Tallinn', '91-272', 6);
INSERT INTO `miejscowosci` VALUES (393, 'Niamey', '38-344', 6);
INSERT INTO `miejscowosci` VALUES (394, 'New Delhi', '56-283', 10);
INSERT INTO `miejscowosci` VALUES (395, 'Bangkok', '90-049', 9);
INSERT INTO `miejscowosci` VALUES (396, 'Minsk', '37-550', 12);
INSERT INTO `miejscowosci` VALUES (397, 'Addis Ababa', '52-754', 14);
INSERT INTO `miejscowosci` VALUES (398, 'Libreville', '32-726', 15);
INSERT INTO `miejscowosci` VALUES (399, 'Yamoussoukro', '96-759', 15);
INSERT INTO `miejscowosci` VALUES (400, 'Liverpool', '19-140', 14);
INSERT INTO `miejscowosci` VALUES (401, 'Bratislava', '59-404', 12);
INSERT INTO `miejscowosci` VALUES (402, 'Basseterre', '09-529', 16);
INSERT INTO `miejscowosci` VALUES (403, 'Georgetown', '98-611', 7);
INSERT INTO `miejscowosci` VALUES (404, 'New York', '90-482', 9);
INSERT INTO `miejscowosci` VALUES (405, 'Asunción', '99-744', 6);
INSERT INTO `miejscowosci` VALUES (406, 'Dodoma', '35-872', 13);
INSERT INTO `miejscowosci` VALUES (407, 'Prague', '26-608', 15);
INSERT INTO `miejscowosci` VALUES (408, 'Honiara', '09-162', 9);
INSERT INTO `miejscowosci` VALUES (409, 'Kyiv', '27-764', 4);
INSERT INTO `miejscowosci` VALUES (410, 'Ashgabat', '50-494', 11);
INSERT INTO `miejscowosci` VALUES (411, 'Kathmandu', '35-342', 6);
INSERT INTO `miejscowosci` VALUES (412, 'Dili', '61-637', 14);
INSERT INTO `miejscowosci` VALUES (413, 'Riga', '05-977', 10);
INSERT INTO `miejscowosci` VALUES (414, 'Nassau', '82-607', 6);
INSERT INTO `miejscowosci` VALUES (415, 'Libreville', '04-332', 5);
INSERT INTO `miejscowosci` VALUES (416, 'Budapest', '50-181', 13);
INSERT INTO `miejscowosci` VALUES (417, 'Tripoli', '16-356', 12);
INSERT INTO `miejscowosci` VALUES (418, 'Andorra la Vella', '50-272', 13);
INSERT INTO `miejscowosci` VALUES (419, 'São Tomé', '81-915', 4);
INSERT INTO `miejscowosci` VALUES (420, 'Tbilisi', '97-001', 10);
INSERT INTO `miejscowosci` VALUES (421, 'Guangzhou', '65-826', 7);
INSERT INTO `miejscowosci` VALUES (422, 'Yamoussoukro', '98-803', 14);
INSERT INTO `miejscowosci` VALUES (423, 'Roseau', '23-667', 14);
INSERT INTO `miejscowosci` VALUES (424, 'Suva', '02-006', 7);
INSERT INTO `miejscowosci` VALUES (425, 'Saint Vincent and the Grenadines', '87-796', 8);
INSERT INTO `miejscowosci` VALUES (426, 'Manila', '46-636', 8);
INSERT INTO `miejscowosci` VALUES (427, 'Columbus', '41-112', 12);
INSERT INTO `miejscowosci` VALUES (428, 'Shenzhen', '09-695', 15);
INSERT INTO `miejscowosci` VALUES (429, 'Reykjavík', '04-679', 7);
INSERT INTO `miejscowosci` VALUES (430, 'Bucharest', '74-150', 15);
INSERT INTO `miejscowosci` VALUES (431, 'Nagoya', '49-847', 8);
INSERT INTO `miejscowosci` VALUES (432, 'La Paz', '87-529', 7);
INSERT INTO `miejscowosci` VALUES (433, 'Warsaw', '95-791', 14);
INSERT INTO `miejscowosci` VALUES (434, 'Minsk', '27-986', 9);
INSERT INTO `miejscowosci` VALUES (435, 'Libreville', '92-334', 9);
INSERT INTO `miejscowosci` VALUES (436, 'Kinshasa', '09-634', 7);
INSERT INTO `miejscowosci` VALUES (437, 'Basseterre', '59-216', 13);
INSERT INTO `miejscowosci` VALUES (438, 'Brussels', '86-466', 9);
INSERT INTO `miejscowosci` VALUES (439, 'Sofia', '42-184', 6);
INSERT INTO `miejscowosci` VALUES (440, 'Oxford', '21-111', 13);
INSERT INTO `miejscowosci` VALUES (441, 'Doha', '78-459', 7);
INSERT INTO `miejscowosci` VALUES (442, 'Athens', '79-304', 5);
INSERT INTO `miejscowosci` VALUES (443, 'Cambridge', '88-198', 15);
INSERT INTO `miejscowosci` VALUES (444, 'Ulaanbaatar', '44-968', 12);
INSERT INTO `miejscowosci` VALUES (445, 'Vaduz', '09-282', 8);
INSERT INTO `miejscowosci` VALUES (446, 'Bishkek', '56-814', 15);
INSERT INTO `miejscowosci` VALUES (447, 'Belgrade', '84-596', 13);
INSERT INTO `miejscowosci` VALUES (448, 'Vaduz', '53-206', 4);
INSERT INTO `miejscowosci` VALUES (449, 'Praia', '95-794', 9);
INSERT INTO `miejscowosci` VALUES (450, 'St. Georges', '55-314', 5);
INSERT INTO `miejscowosci` VALUES (451, 'Minsk', '24-024', 13);
INSERT INTO `miejscowosci` VALUES (452, 'Brazzaville', '61-857', 15);
INSERT INTO `miejscowosci` VALUES (453, 'Conakry', '86-459', 15);
INSERT INTO `miejscowosci` VALUES (454, 'Saint Vincent and the Grenadines', '81-234', 13);
INSERT INTO `miejscowosci` VALUES (455, 'Amsterdam', '85-702', 5);
INSERT INTO `miejscowosci` VALUES (456, 'Yamoussoukro', '02-462', 6);
INSERT INTO `miejscowosci` VALUES (457, 'Singapore', '52-138', 7);
INSERT INTO `miejscowosci` VALUES (458, 'Windhoek', '08-208', 13);
INSERT INTO `miejscowosci` VALUES (459, 'Yaoundé', '25-930', 8);
INSERT INTO `miejscowosci` VALUES (460, 'Asunción', '16-619', 9);
INSERT INTO `miejscowosci` VALUES (461, 'Bissau', '66-787', 4);
INSERT INTO `miejscowosci` VALUES (462, 'Kathmandu', '58-199', 8);
INSERT INTO `miejscowosci` VALUES (463, 'Liverpool', '63-088', 7);
INSERT INTO `miejscowosci` VALUES (464, 'Baghdad', '20-064', 15);
INSERT INTO `miejscowosci` VALUES (465, 'Nouakchott', '22-421', 7);
INSERT INTO `miejscowosci` VALUES (466, 'Suva', '65-762', 11);
INSERT INTO `miejscowosci` VALUES (467, 'Manchester', '71-734', 6);
INSERT INTO `miejscowosci` VALUES (468, 'Chicago', '17-855', 4);
INSERT INTO `miejscowosci` VALUES (469, 'Shenzhen', '13-865', 7);
INSERT INTO `miejscowosci` VALUES (470, 'Baghdad', '00-045', 6);
INSERT INTO `miejscowosci` VALUES (471, 'Abu Dhabi', '57-131', 15);
INSERT INTO `miejscowosci` VALUES (472, 'Dodoma', '00-696', 9);
INSERT INTO `miejscowosci` VALUES (473, 'Valletta', '39-302', 11);
INSERT INTO `miejscowosci` VALUES (474, 'Baku', '22-344', 9);
INSERT INTO `miejscowosci` VALUES (475, 'Guangzhou', '65-232', 15);
INSERT INTO `miejscowosci` VALUES (476, 'Mogadishu', '81-344', 12);
INSERT INTO `miejscowosci` VALUES (477, 'Bujumbura', '80-292', 10);
INSERT INTO `miejscowosci` VALUES (478, 'Georgetown', '73-302', 10);
INSERT INTO `miejscowosci` VALUES (479, 'Columbus', '55-100', 8);
INSERT INTO `miejscowosci` VALUES (480, 'Bissau', '47-947', 9);
INSERT INTO `miejscowosci` VALUES (481, 'Valletta', '19-471', 11);
INSERT INTO `miejscowosci` VALUES (482, 'Doha', '96-555', 10);
INSERT INTO `miejscowosci` VALUES (483, 'Apia', '88-766', 12);
INSERT INTO `miejscowosci` VALUES (484, 'Cairo', '71-832', 5);
INSERT INTO `miejscowosci` VALUES (485, 'Vilnius', '29-655', 5);
INSERT INTO `miejscowosci` VALUES (486, 'Podgorica', '64-898', 13);
INSERT INTO `miejscowosci` VALUES (487, 'Bratislava', '53-881', 8);
INSERT INTO `miejscowosci` VALUES (488, 'Chicago', '16-322', 11);
INSERT INTO `miejscowosci` VALUES (489, 'Palikir', '70-090', 14);
INSERT INTO `miejscowosci` VALUES (490, 'Sri Jayawardenepura Kotte', '77-457', 8);
INSERT INTO `miejscowosci` VALUES (491, 'La Paz', '16-939', 13);
INSERT INTO `miejscowosci` VALUES (492, 'Shanghai', '66-543', 9);
INSERT INTO `miejscowosci` VALUES (493, 'Georgetown', '55-349', 14);
INSERT INTO `miejscowosci` VALUES (494, 'Amman', '98-344', 5);
INSERT INTO `miejscowosci` VALUES (495, 'Jakarta', '08-229', 13);
INSERT INTO `miejscowosci` VALUES (496, 'Beirut', '51-850', 4);
INSERT INTO `miejscowosci` VALUES (497, 'Dodoma', '79-427', 16);
INSERT INTO `miejscowosci` VALUES (498, 'Cambridge', '37-579', 15);
INSERT INTO `miejscowosci` VALUES (499, 'Freetown', '03-356', 12);
INSERT INTO `miejscowosci` VALUES (500, 'Dakar', '20-930', 15);
INSERT INTO `miejscowosci` VALUES (501, 'Luanda', '95-225', 10);
INSERT INTO `miejscowosci` VALUES (502, 'Doha', '57-391', 14);
INSERT INTO `miejscowosci` VALUES (503, 'Panama City', '49-691', 16);
INSERT INTO `miejscowosci` VALUES (504, 'Prague', '09-387', 5);
INSERT INTO `miejscowosci` VALUES (505, 'Harare', '45-773', 5);
INSERT INTO `miejscowosci` VALUES (506, 'Bandar Seri Begawan', '85-394', 5);
INSERT INTO `miejscowosci` VALUES (507, 'Cape Town', '32-585', 14);
INSERT INTO `miejscowosci` VALUES (508, 'Tirana', '30-571', 13);
INSERT INTO `miejscowosci` VALUES (509, 'Dhaka', '76-900', 11);
INSERT INTO `miejscowosci` VALUES (510, 'Rabat', '07-448', 16);
INSERT INTO `miejscowosci` VALUES (511, 'Vaduz', '16-994', 14);
INSERT INTO `miejscowosci` VALUES (512, 'Nassau', '85-134', 5);
INSERT INTO `miejscowosci` VALUES (513, 'Bissau', '81-886', 12);
INSERT INTO `miejscowosci` VALUES (514, 'Birmingham', '79-933', 13);
INSERT INTO `miejscowosci` VALUES (515, 'Dili', '80-884', 5);
INSERT INTO `miejscowosci` VALUES (516, 'Rabat', '70-896', 11);
INSERT INTO `miejscowosci` VALUES (517, 'São Tomé', '51-224', 16);
INSERT INTO `miejscowosci` VALUES (518, 'Dakar', '76-072', 8);
INSERT INTO `miejscowosci` VALUES (519, 'Andorra la Vella', '79-108', 12);
INSERT INTO `miejscowosci` VALUES (520, 'Asmara', '01-403', 5);
INSERT INTO `miejscowosci` VALUES (521, 'Columbus', '14-055', 10);
INSERT INTO `miejscowosci` VALUES (522, 'Juba', '42-766', 9);
INSERT INTO `miejscowosci` VALUES (523, 'Zagreb', '60-877', 11);
INSERT INTO `miejscowosci` VALUES (524, 'Managua', '92-856', 8);
INSERT INTO `miejscowosci` VALUES (525, 'Zagreb', '97-852', 16);
INSERT INTO `miejscowosci` VALUES (526, 'Monte Carlo', '21-074', 15);
INSERT INTO `miejscowosci` VALUES (527, 'Nukuʻalofa', '33-108', 10);
INSERT INTO `miejscowosci` VALUES (528, 'Thimphu', '92-684', 13);
INSERT INTO `miejscowosci` VALUES (529, 'Bissau', '17-327', 12);
INSERT INTO `miejscowosci` VALUES (530, 'Abu Dhabi', '82-841', 5);
INSERT INTO `miejscowosci` VALUES (531, 'Bangkok', '54-375', 5);
INSERT INTO `miejscowosci` VALUES (532, 'Nairobi', '37-182', 14);
INSERT INTO `miejscowosci` VALUES (533, '聖多明哥', '99-801', 16);
INSERT INTO `miejscowosci` VALUES (534, 'Ottawa', '74-576', 9);
INSERT INTO `miejscowosci` VALUES (535, 'Kingston', '55-621', 16);
INSERT INTO `miejscowosci` VALUES (536, 'San Marino', '60-028', 15);
INSERT INTO `miejscowosci` VALUES (537, 'Zagreb', '27-810', 9);
INSERT INTO `miejscowosci` VALUES (538, 'Kampala', '35-247', 16);
INSERT INTO `miejscowosci` VALUES (539, 'Kabul', '06-780', 12);
INSERT INTO `miejscowosci` VALUES (540, 'Bangkok', '48-983', 14);
INSERT INTO `miejscowosci` VALUES (541, 'Columbus', '79-188', 16);
INSERT INTO `miejscowosci` VALUES (542, 'El Salvador', '67-101', 13);
INSERT INTO `miejscowosci` VALUES (543, 'Ottawa', '40-138', 8);
INSERT INTO `miejscowosci` VALUES (544, 'Dongguan', '40-334', 11);
INSERT INTO `miejscowosci` VALUES (545, 'Stockholm', '13-879', 9);
INSERT INTO `miejscowosci` VALUES (546, 'Tokyo', '11-029', 12);
INSERT INTO `miejscowosci` VALUES (547, 'Wellington', '48-761', 16);
INSERT INTO `miejscowosci` VALUES (548, 'Palikir', '78-997', 10);
INSERT INTO `miejscowosci` VALUES (549, 'Maputo', '69-420', 15);
INSERT INTO `miejscowosci` VALUES (550, 'Beijing', '90-388', 5);
INSERT INTO `miejscowosci` VALUES (551, 'Vilnius', '13-955', 13);
INSERT INTO `miejscowosci` VALUES (552, 'Canberra', '99-635', 9);
INSERT INTO `miejscowosci` VALUES (553, 'New York', '04-429', 7);
INSERT INTO `miejscowosci` VALUES (554, 'Mexico City', '46-810', 4);
INSERT INTO `miejscowosci` VALUES (555, 'Tunis', '91-862', 14);
INSERT INTO `miejscowosci` VALUES (556, 'Freetown', '64-522', 16);
INSERT INTO `miejscowosci` VALUES (557, 'Reykjavík', '56-279', 12);
INSERT INTO `miejscowosci` VALUES (558, 'Monte Carlo', '47-669', 5);
INSERT INTO `miejscowosci` VALUES (559, 'Buenos Aires', '34-846', 13);
INSERT INTO `miejscowosci` VALUES (560, 'Beijing', '47-695', 5);
INSERT INTO `miejscowosci` VALUES (561, 'Vaduz', '76-484', 7);
INSERT INTO `miejscowosci` VALUES (562, 'Kampala', '54-090', 15);
INSERT INTO `miejscowosci` VALUES (563, 'Oxford', '11-567', 8);
INSERT INTO `miejscowosci` VALUES (564, 'Funafuti', '84-993', 10);
INSERT INTO `miejscowosci` VALUES (565, '聖多明哥', '64-788', 16);
INSERT INTO `miejscowosci` VALUES (566, 'Caracas', '89-958', 14);
INSERT INTO `miejscowosci` VALUES (567, 'Nara', '79-392', 13);
INSERT INTO `miejscowosci` VALUES (568, 'Manila', '73-985', 14);
INSERT INTO `miejscowosci` VALUES (569, 'Dili', '78-588', 16);
INSERT INTO `miejscowosci` VALUES (570, 'Yamoussoukro', '53-972', 12);
INSERT INTO `miejscowosci` VALUES (571, 'Dongguan', '85-249', 11);
INSERT INTO `miejscowosci` VALUES (572, 'Ljubljana', '40-986', 12);
INSERT INTO `miejscowosci` VALUES (573, 'Vaduz', '65-212', 13);
INSERT INTO `miejscowosci` VALUES (574, 'Manama', '83-342', 9);
INSERT INTO `miejscowosci` VALUES (575, 'Dongguan', '75-094', 7);
INSERT INTO `miejscowosci` VALUES (576, 'Seoul', '75-451', 13);
INSERT INTO `miejscowosci` VALUES (577, 'Manama', '39-725', 8);
INSERT INTO `miejscowosci` VALUES (578, 'Montevideo', '74-139', 15);
INSERT INTO `miejscowosci` VALUES (579, 'Niamey', '87-727', 6);
INSERT INTO `miejscowosci` VALUES (580, 'Beijing', '21-906', 12);
INSERT INTO `miejscowosci` VALUES (581, 'Osaka', '56-456', 7);
INSERT INTO `miejscowosci` VALUES (582, 'Cape Town', '48-472', 14);
INSERT INTO `miejscowosci` VALUES (583, 'Luanda', '21-598', 10);
INSERT INTO `miejscowosci` VALUES (584, 'Bratislava', '41-289', 8);
INSERT INTO `miejscowosci` VALUES (585, 'Budapest', '99-885', 15);
INSERT INTO `miejscowosci` VALUES (586, 'Chișinău', '95-028', 9);
INSERT INTO `miejscowosci` VALUES (587, 'Hanoi', '17-185', 5);
INSERT INTO `miejscowosci` VALUES (588, 'Buenos Aires', '80-066', 15);
INSERT INTO `miejscowosci` VALUES (589, 'St. Johns', '70-164', 8);
INSERT INTO `miejscowosci` VALUES (590, 'Sarajevo', '97-853', 4);
INSERT INTO `miejscowosci` VALUES (591, 'Podgorica', '56-933', 14);
INSERT INTO `miejscowosci` VALUES (592, 'Baku', '86-500', 6);
INSERT INTO `miejscowosci` VALUES (593, 'Liverpool', '81-529', 14);
INSERT INTO `miejscowosci` VALUES (594, 'Lima', '88-317', 11);
INSERT INTO `miejscowosci` VALUES (595, 'Amman', '98-163', 13);
INSERT INTO `miejscowosci` VALUES (596, 'Nouakchott', '04-043', 9);
INSERT INTO `miejscowosci` VALUES (597, 'Yamoussoukro', '77-830', 13);
INSERT INTO `miejscowosci` VALUES (598, 'Dushanbe', '89-956', 6);
INSERT INTO `miejscowosci` VALUES (599, 'Bratislava', '77-447', 10);
INSERT INTO `miejscowosci` VALUES (600, 'Nouakchott', '86-049', 15);
INSERT INTO `miejscowosci` VALUES (601, 'Kabul', '14-797', 4);
INSERT INTO `miejscowosci` VALUES (602, 'Georgetown', '55-046', 5);
INSERT INTO `miejscowosci` VALUES (603, 'Rome', '63-967', 9);
INSERT INTO `miejscowosci` VALUES (604, 'Skopje', '60-349', 14);
INSERT INTO `miejscowosci` VALUES (605, 'Sanaa', '62-307', 15);
INSERT INTO `miejscowosci` VALUES (606, 'Dhaka', '65-348', 9);
INSERT INTO `miejscowosci` VALUES (607, 'Budapest', '87-427', 6);
INSERT INTO `miejscowosci` VALUES (608, 'Juba', '06-657', 13);
INSERT INTO `miejscowosci` VALUES (609, 'Praia', '84-479', 7);
INSERT INTO `miejscowosci` VALUES (610, 'Harare', '04-864', 4);
INSERT INTO `miejscowosci` VALUES (611, 'Port of Spain', '09-244', 6);
INSERT INTO `miejscowosci` VALUES (612, 'Beirut', '53-587', 11);
INSERT INTO `miejscowosci` VALUES (613, 'Canberra', '03-410', 12);
INSERT INTO `miejscowosci` VALUES (614, 'Lisbon', '76-608', 9);
INSERT INTO `miejscowosci` VALUES (615, 'Zagreb', '71-500', 11);
INSERT INTO `miejscowosci` VALUES (616, 'Luanda', '02-409', 5);
INSERT INTO `miejscowosci` VALUES (617, 'Singapore', '88-787', 8);
INSERT INTO `miejscowosci` VALUES (618, 'Nairobi', '99-508', 14);
INSERT INTO `miejscowosci` VALUES (619, 'Majuro', '99-845', 9);
INSERT INTO `miejscowosci` VALUES (620, 'Windhoek', '23-817', 5);
INSERT INTO `miejscowosci` VALUES (621, 'Rabat', '07-185', 10);
INSERT INTO `miejscowosci` VALUES (622, 'Oslo', '91-675', 12);
INSERT INTO `miejscowosci` VALUES (623, 'Port-au-Prince', '96-743', 11);
INSERT INTO `miejscowosci` VALUES (624, 'Beirut', '22-486', 5);
INSERT INTO `miejscowosci` VALUES (625, 'Belgrade', '08-288', 13);
INSERT INTO `miejscowosci` VALUES (626, 'Lomé', '35-727', 15);
INSERT INTO `miejscowosci` VALUES (627, 'Tashkent', '06-359', 10);
INSERT INTO `miejscowosci` VALUES (628, 'Lusaka', '94-927', 8);
INSERT INTO `miejscowosci` VALUES (629, 'Nara', '81-854', 11);
INSERT INTO `miejscowosci` VALUES (630, 'Amman', '37-176', 4);
INSERT INTO `miejscowosci` VALUES (631, 'Kathmandu', '55-971', 13);
INSERT INTO `miejscowosci` VALUES (632, 'Singapore', '30-374', 13);
INSERT INTO `miejscowosci` VALUES (633, 'Bishkek', '38-335', 12);
INSERT INTO `miejscowosci` VALUES (634, 'Tokyo', '80-972', 6);
INSERT INTO `miejscowosci` VALUES (635, 'San Marino', '44-979', 14);
INSERT INTO `miejscowosci` VALUES (636, 'Nara', '88-487', 12);
INSERT INTO `miejscowosci` VALUES (637, 'Bandar Seri Begawan', '94-165', 11);
INSERT INTO `miejscowosci` VALUES (638, 'Majuro', '16-625', 14);
INSERT INTO `miejscowosci` VALUES (639, 'Sapporo', '78-181', 9);
INSERT INTO `miejscowosci` VALUES (640, 'Nouakchott', '42-110', 13);
INSERT INTO `miejscowosci` VALUES (641, 'Caracas', '85-890', 9);
INSERT INTO `miejscowosci` VALUES (642, 'Luxembourg City', '49-686', 7);
INSERT INTO `miejscowosci` VALUES (643, 'Manchester', '00-957', 8);
INSERT INTO `miejscowosci` VALUES (644, 'El Salvador', '32-244', 7);
INSERT INTO `miejscowosci` VALUES (645, 'Luxembourg City', '30-718', 13);
INSERT INTO `miejscowosci` VALUES (646, 'Georgetown', '79-557', 7);
INSERT INTO `miejscowosci` VALUES (647, 'Vienna', '50-910', 11);
INSERT INTO `miejscowosci` VALUES (648, 'Belgrade', '40-813', 9);
INSERT INTO `miejscowosci` VALUES (649, 'Moscow', '24-591', 15);
INSERT INTO `miejscowosci` VALUES (650, 'Tokyo', '39-380', 9);
INSERT INTO `miejscowosci` VALUES (651, 'Managua', '73-746', 16);
INSERT INTO `miejscowosci` VALUES (652, 'Victoria', '94-147', 16);
INSERT INTO `miejscowosci` VALUES (653, 'Ljubljana', '98-006', 11);
INSERT INTO `miejscowosci` VALUES (654, 'Akron', '03-195', 11);
INSERT INTO `miejscowosci` VALUES (655, 'Chicago', '63-605', 10);
INSERT INTO `miejscowosci` VALUES (656, 'Belmopan', '53-256', 4);
INSERT INTO `miejscowosci` VALUES (657, 'Juba', '00-581', 13);
INSERT INTO `miejscowosci` VALUES (658, 'Moroni', '48-835', 16);
INSERT INTO `miejscowosci` VALUES (659, 'New York', '88-989', 7);
INSERT INTO `miejscowosci` VALUES (660, 'Baghdad', '32-511', 5);
INSERT INTO `miejscowosci` VALUES (661, 'Osaka', '03-876', 13);
INSERT INTO `miejscowosci` VALUES (662, 'Damascus', '93-362', 16);
INSERT INTO `miejscowosci` VALUES (663, 'Brussels', '48-919', 6);
INSERT INTO `miejscowosci` VALUES (664, 'Zhongshan', '42-989', 16);
INSERT INTO `miejscowosci` VALUES (665, 'Akron', '14-830', 6);
INSERT INTO `miejscowosci` VALUES (666, 'Port-au-Prince', '89-366', 9);
INSERT INTO `miejscowosci` VALUES (667, 'Nairobi', '93-880', 7);
INSERT INTO `miejscowosci` VALUES (668, 'Tirana', '27-876', 5);
INSERT INTO `miejscowosci` VALUES (669, 'Brooklyn', '40-974', 7);
INSERT INTO `miejscowosci` VALUES (670, 'New Delhi', '12-359', 16);
INSERT INTO `miejscowosci` VALUES (671, 'Algiers', '43-882', 16);
INSERT INTO `miejscowosci` VALUES (672, 'Canberra', '45-774', 8);
INSERT INTO `miejscowosci` VALUES (673, 'Dhaka', '96-330', 7);
INSERT INTO `miejscowosci` VALUES (674, 'Addis Ababa', '41-648', 7);
INSERT INTO `miejscowosci` VALUES (675, 'Bangkok', '41-009', 7);
INSERT INTO `miejscowosci` VALUES (676, 'Bangkok', '76-111', 4);
INSERT INTO `miejscowosci` VALUES (677, 'Lilongwe', '09-440', 4);
INSERT INTO `miejscowosci` VALUES (678, 'El Salvador', '83-751', 15);
INSERT INTO `miejscowosci` VALUES (679, 'Honiara', '23-199', 10);
INSERT INTO `miejscowosci` VALUES (680, 'Paris', '69-225', 6);
INSERT INTO `miejscowosci` VALUES (681, 'Wellington', '36-024', 5);
INSERT INTO `miejscowosci` VALUES (682, 'Ulaanbaatar', '85-013', 5);
INSERT INTO `miejscowosci` VALUES (683, 'Manama', '35-863', 12);
INSERT INTO `miejscowosci` VALUES (684, 'Rabat', '06-718', 12);
INSERT INTO `miejscowosci` VALUES (685, 'Nairobi', '33-212', 6);
INSERT INTO `miejscowosci` VALUES (686, 'Cambridge', '62-666', 11);
INSERT INTO `miejscowosci` VALUES (687, 'Rabat', '78-429', 11);
INSERT INTO `miejscowosci` VALUES (688, 'Port Vila', '81-117', 4);
INSERT INTO `miejscowosci` VALUES (689, 'Roseau', '63-481', 12);
INSERT INTO `miejscowosci` VALUES (690, 'Malabo', '60-349', 5);
INSERT INTO `miejscowosci` VALUES (691, 'Manama', '81-600', 15);
INSERT INTO `miejscowosci` VALUES (692, 'Tehran', '64-916', 11);
INSERT INTO `miejscowosci` VALUES (693, 'Chișinău', '40-408', 14);
INSERT INTO `miejscowosci` VALUES (694, 'Mogadishu', '00-402', 13);
INSERT INTO `miejscowosci` VALUES (695, 'Algiers', '64-208', 12);
INSERT INTO `miejscowosci` VALUES (696, 'Kampala', '47-184', 5);
INSERT INTO `miejscowosci` VALUES (697, 'Wellington', '08-958', 12);
INSERT INTO `miejscowosci` VALUES (698, 'Paris', '48-977', 4);
INSERT INTO `miejscowosci` VALUES (699, 'Kathmandu', '91-564', 12);
INSERT INTO `miejscowosci` VALUES (700, 'Brussels', '85-561', 12);
INSERT INTO `miejscowosci` VALUES (701, 'Palikir', '42-778', 16);
INSERT INTO `miejscowosci` VALUES (702, 'Kathmandu', '55-021', 14);
INSERT INTO `miejscowosci` VALUES (703, 'Albany', '91-466', 12);
INSERT INTO `miejscowosci` VALUES (704, 'Port Louis', '79-997', 10);
INSERT INTO `miejscowosci` VALUES (705, 'Brussels', '91-079', 11);
INSERT INTO `miejscowosci` VALUES (706, 'Albany', '29-054', 16);
INSERT INTO `miejscowosci` VALUES (707, 'Vilnius', '12-554', 7);
INSERT INTO `miejscowosci` VALUES (708, 'Kabul', '41-000', 13);
INSERT INTO `miejscowosci` VALUES (709, 'Castries', '19-093', 9);
INSERT INTO `miejscowosci` VALUES (710, 'Tallinn', '72-862', 5);
INSERT INTO `miejscowosci` VALUES (711, 'Malé', '60-681', 7);
INSERT INTO `miejscowosci` VALUES (712, 'Warsaw', '99-246', 11);
INSERT INTO `miejscowosci` VALUES (713, 'London', '23-709', 7);
INSERT INTO `miejscowosci` VALUES (714, 'Athens', '25-204', 11);
INSERT INTO `miejscowosci` VALUES (715, 'Columbus', '60-031', 15);
INSERT INTO `miejscowosci` VALUES (716, 'Port Louis', '74-297', 15);
INSERT INTO `miejscowosci` VALUES (717, 'San Marino', '68-897', 12);
INSERT INTO `miejscowosci` VALUES (718, 'Liverpool', '65-363', 4);
INSERT INTO `miejscowosci` VALUES (719, 'Bratislava', '11-959', 12);
INSERT INTO `miejscowosci` VALUES (720, 'Managua', '30-560', 8);
INSERT INTO `miejscowosci` VALUES (721, 'Tripoli', '02-708', 7);
INSERT INTO `miejscowosci` VALUES (722, 'Bujumbura', '32-625', 12);
INSERT INTO `miejscowosci` VALUES (723, 'Brussels', '42-158', 8);
INSERT INTO `miejscowosci` VALUES (724, 'Malabo', '29-645', 9);
INSERT INTO `miejscowosci` VALUES (725, 'Nairobi', '32-511', 7);
INSERT INTO `miejscowosci` VALUES (726, 'Frankfurt', '14-544', 11);
INSERT INTO `miejscowosci` VALUES (727, 'Suva', '81-235', 12);
INSERT INTO `miejscowosci` VALUES (728, 'Ankara', '06-701', 8);
INSERT INTO `miejscowosci` VALUES (729, 'Bratislava', '90-237', 14);
INSERT INTO `miejscowosci` VALUES (730, 'Abuja', '01-610', 6);
INSERT INTO `miejscowosci` VALUES (731, 'Seoul', '20-218', 16);
INSERT INTO `miejscowosci` VALUES (732, 'Libreville', '46-006', 13);
INSERT INTO `miejscowosci` VALUES (733, 'Rome', '26-591', 9);
INSERT INTO `miejscowosci` VALUES (734, 'Banjul', '99-295', 6);
INSERT INTO `miejscowosci` VALUES (735, 'Albany', '17-422', 13);
INSERT INTO `miejscowosci` VALUES (736, 'Porto-Novo', '30-434', 5);
INSERT INTO `miejscowosci` VALUES (737, 'New Delhi', '81-124', 12);
INSERT INTO `miejscowosci` VALUES (738, 'Vienna', '15-542', 11);
INSERT INTO `miejscowosci` VALUES (739, 'Mbabane', '20-490', 15);
INSERT INTO `miejscowosci` VALUES (740, 'Cairo', '76-321', 7);
INSERT INTO `miejscowosci` VALUES (741, 'Banjul', '76-306', 14);
INSERT INTO `miejscowosci` VALUES (742, 'Conakry', '13-642', 9);
INSERT INTO `miejscowosci` VALUES (743, 'Warsaw', '23-020', 15);
INSERT INTO `miejscowosci` VALUES (744, 'Caracas', '07-889', 10);
INSERT INTO `miejscowosci` VALUES (745, 'Roseau', '54-376', 10);
INSERT INTO `miejscowosci` VALUES (746, 'Niamey', '90-754', 6);
INSERT INTO `miejscowosci` VALUES (747, 'Ankara', '08-806', 5);
INSERT INTO `miejscowosci` VALUES (748, 'Sanaa', '71-577', 10);
INSERT INTO `miejscowosci` VALUES (749, 'Rabat', '68-398', 16);
INSERT INTO `miejscowosci` VALUES (750, 'St. Johns', '32-243', 9);
INSERT INTO `miejscowosci` VALUES (751, 'Algiers', '32-217', 14);
INSERT INTO `miejscowosci` VALUES (752, 'Kathmandu', '60-940', 8);
INSERT INTO `miejscowosci` VALUES (753, 'Moscow', '10-464', 7);
INSERT INTO `miejscowosci` VALUES (754, 'Liverpool', '33-625', 13);
INSERT INTO `miejscowosci` VALUES (755, 'Manchester', '04-248', 5);
INSERT INTO `miejscowosci` VALUES (756, 'Dodoma', '46-156', 12);
INSERT INTO `miejscowosci` VALUES (757, 'Praia', '29-197', 6);
INSERT INTO `miejscowosci` VALUES (758, 'Maseru', '23-289', 15);
INSERT INTO `miejscowosci` VALUES (759, 'Amman', '13-958', 11);
INSERT INTO `miejscowosci` VALUES (760, 'Athens', '76-324', 7);
INSERT INTO `miejscowosci` VALUES (761, 'Kuwait City', '01-817', 9);
INSERT INTO `miejscowosci` VALUES (762, 'Zagreb', '80-107', 15);
INSERT INTO `miejscowosci` VALUES (763, 'Islamabad', '44-490', 8);
INSERT INTO `miejscowosci` VALUES (764, 'Helsinki', '56-168', 12);
INSERT INTO `miejscowosci` VALUES (765, 'Moscow', '06-341', 4);
INSERT INTO `miejscowosci` VALUES (766, 'Chișinău', '84-155', 10);
INSERT INTO `miejscowosci` VALUES (767, 'Belmopan', '05-444', 15);
INSERT INTO `miejscowosci` VALUES (768, 'Skopje', '71-988', 8);
INSERT INTO `miejscowosci` VALUES (769, 'Mbabane', '44-156', 5);
INSERT INTO `miejscowosci` VALUES (770, 'El Salvador', '06-182', 6);
INSERT INTO `miejscowosci` VALUES (771, 'Buenos Aires', '41-699', 8);
INSERT INTO `miejscowosci` VALUES (772, 'Yamoussoukro', '98-960', 13);
INSERT INTO `miejscowosci` VALUES (773, 'Mogadishu', '77-744', 9);
INSERT INTO `miejscowosci` VALUES (774, 'Sofia', '08-005', 10);
INSERT INTO `miejscowosci` VALUES (775, 'Lisbon', '19-229', 6);
INSERT INTO `miejscowosci` VALUES (776, 'San Marino', '27-195', 8);
INSERT INTO `miejscowosci` VALUES (777, 'Bern', '41-437', 9);
INSERT INTO `miejscowosci` VALUES (778, 'Lisbon', '34-564', 13);
INSERT INTO `miejscowosci` VALUES (779, 'Singapore', '25-905', 14);
INSERT INTO `miejscowosci` VALUES (780, 'Ljubljana', '22-372', 6);
INSERT INTO `miejscowosci` VALUES (781, 'Luxembourg City', '33-464', 10);
INSERT INTO `miejscowosci` VALUES (782, 'Zhongshan', '43-059', 11);
INSERT INTO `miejscowosci` VALUES (783, 'Dhaka', '62-760', 6);
INSERT INTO `miejscowosci` VALUES (784, 'Tbilisi', '09-249', 12);
INSERT INTO `miejscowosci` VALUES (785, 'Athens', '46-877', 16);
INSERT INTO `miejscowosci` VALUES (786, 'Victoria', '38-672', 14);
INSERT INTO `miejscowosci` VALUES (787, 'Helsinki', '66-239', 9);
INSERT INTO `miejscowosci` VALUES (788, 'Harare', '82-650', 11);
INSERT INTO `miejscowosci` VALUES (789, 'Port Vila', '97-788', 13);
INSERT INTO `miejscowosci` VALUES (790, 'Mexico City', '83-868', 16);
INSERT INTO `miejscowosci` VALUES (791, 'Ottawa', '11-120', 8);
INSERT INTO `miejscowosci` VALUES (792, 'Dushanbe', '70-552', 4);
INSERT INTO `miejscowosci` VALUES (793, 'Zhongshan', '21-597', 10);
INSERT INTO `miejscowosci` VALUES (794, 'Stockholm', '46-804', 8);
INSERT INTO `miejscowosci` VALUES (795, 'Niamey', '94-050', 8);
INSERT INTO `miejscowosci` VALUES (796, 'Guangzhou', '66-065', 11);
INSERT INTO `miejscowosci` VALUES (797, 'Honiara', '02-019', 5);
INSERT INTO `miejscowosci` VALUES (798, 'Sri Jayawardenepura Kotte', '44-864', 7);
INSERT INTO `miejscowosci` VALUES (799, 'La Paz', '27-451', 4);
INSERT INTO `miejscowosci` VALUES (800, 'Freetown', '34-772', 13);
INSERT INTO `miejscowosci` VALUES (801, 'New Delhi', '63-138', 9);
INSERT INTO `miejscowosci` VALUES (802, 'Birmingham', '64-289', 6);
INSERT INTO `miejscowosci` VALUES (803, 'Sarajevo', '87-057', 11);
INSERT INTO `miejscowosci` VALUES (804, 'Santiago', '45-230', 10);
INSERT INTO `miejscowosci` VALUES (805, 'Nara', '46-384', 8);
INSERT INTO `miejscowosci` VALUES (806, 'Nouakchott', '22-651', 15);
INSERT INTO `miejscowosci` VALUES (807, 'Leicester', '91-761', 14);
INSERT INTO `miejscowosci` VALUES (808, 'Basseterre', '98-895', 4);
INSERT INTO `miejscowosci` VALUES (809, 'Vaduz', '46-391', 6);
INSERT INTO `miejscowosci` VALUES (810, 'Rome', '68-282', 13);
INSERT INTO `miejscowosci` VALUES (811, 'Rabat', '87-946', 4);
INSERT INTO `miejscowosci` VALUES (812, 'Antananarivo', '74-692', 16);
INSERT INTO `miejscowosci` VALUES (813, 'Manama', '32-831', 11);
INSERT INTO `miejscowosci` VALUES (814, 'Bujumbura', '54-766', 7);
INSERT INTO `miejscowosci` VALUES (815, 'Managua', '06-048', 7);
INSERT INTO `miejscowosci` VALUES (816, 'Mexico City', '34-817', 4);
INSERT INTO `miejscowosci` VALUES (817, 'Asmara', '57-737', 16);
INSERT INTO `miejscowosci` VALUES (818, 'Birmingham', '84-097', 9);
INSERT INTO `miejscowosci` VALUES (819, 'Suva', '55-615', 11);
INSERT INTO `miejscowosci` VALUES (820, 'Paramaribo', '60-053', 15);
INSERT INTO `miejscowosci` VALUES (821, 'Dodoma', '61-649', 13);
INSERT INTO `miejscowosci` VALUES (822, 'Vientiane', '89-469', 7);
INSERT INTO `miejscowosci` VALUES (823, 'Sri Jayawardenepura Kotte', '16-074', 12);
INSERT INTO `miejscowosci` VALUES (824, 'Porto-Novo', '00-909', 13);
INSERT INTO `miejscowosci` VALUES (825, 'Basseterre', '33-726', 10);
INSERT INTO `miejscowosci` VALUES (826, '聖多明哥', '86-642', 8);
INSERT INTO `miejscowosci` VALUES (827, 'Honiara', '56-433', 10);
INSERT INTO `miejscowosci` VALUES (828, 'Yamoussoukro', '01-702', 12);
INSERT INTO `miejscowosci` VALUES (829, 'Paris', '49-636', 9);
INSERT INTO `miejscowosci` VALUES (830, 'Ankara', '24-496', 10);
INSERT INTO `miejscowosci` VALUES (831, 'Jerusalem', '78-685', 13);
INSERT INTO `miejscowosci` VALUES (832, 'Oslo', '06-301', 13);
INSERT INTO `miejscowosci` VALUES (833, 'Amman', '67-259', 6);
INSERT INTO `miejscowosci` VALUES (834, 'Warsaw', '68-734', 11);
INSERT INTO `miejscowosci` VALUES (835, 'Kyiv', '35-846', 14);
INSERT INTO `miejscowosci` VALUES (836, 'Oxford', '06-384', 11);
INSERT INTO `miejscowosci` VALUES (837, 'Moscow', '91-682', 14);
INSERT INTO `miejscowosci` VALUES (838, 'Tirana', '51-561', 10);
INSERT INTO `miejscowosci` VALUES (839, 'Juba', '76-992', 13);
INSERT INTO `miejscowosci` VALUES (840, 'Manila', '03-362', 7);
INSERT INTO `miejscowosci` VALUES (841, 'Managua', '31-303', 13);
INSERT INTO `miejscowosci` VALUES (842, 'Malé', '35-569', 4);
INSERT INTO `miejscowosci` VALUES (843, 'Amman', '53-824', 13);
INSERT INTO `miejscowosci` VALUES (844, 'Guangzhou', '75-806', 9);
INSERT INTO `miejscowosci` VALUES (845, 'Asmara', '84-034', 5);
INSERT INTO `miejscowosci` VALUES (846, 'Abu Dhabi', '50-363', 11);
INSERT INTO `miejscowosci` VALUES (847, 'Vilnius', '67-088', 10);
INSERT INTO `miejscowosci` VALUES (848, 'Brooklyn', '86-344', 14);
INSERT INTO `miejscowosci` VALUES (849, 'Warsaw', '44-658', 4);
INSERT INTO `miejscowosci` VALUES (850, 'Tegucigalpa', '17-919', 14);
INSERT INTO `miejscowosci` VALUES (851, 'Sarajevo', '38-467', 15);
INSERT INTO `miejscowosci` VALUES (852, 'Belgrade', '89-826', 9);
INSERT INTO `miejscowosci` VALUES (853, 'Moroni', '02-075', 6);
INSERT INTO `miejscowosci` VALUES (854, 'Paris', '87-829', 6);
INSERT INTO `miejscowosci` VALUES (855, 'Zagreb', '76-857', 11);
INSERT INTO `miejscowosci` VALUES (856, 'São Tomé', '28-937', 9);
INSERT INTO `miejscowosci` VALUES (857, 'Tegucigalpa', '15-769', 7);
INSERT INTO `miejscowosci` VALUES (858, 'Skopje', '17-777', 6);
INSERT INTO `miejscowosci` VALUES (859, 'Rio de Janeiro', '62-770', 12);
INSERT INTO `miejscowosci` VALUES (860, 'Baku', '28-762', 6);
INSERT INTO `miejscowosci` VALUES (861, 'Monte Carlo', '40-408', 7);
INSERT INTO `miejscowosci` VALUES (862, 'Lima', '90-425', 12);
INSERT INTO `miejscowosci` VALUES (863, 'Baku', '17-074', 16);
INSERT INTO `miejscowosci` VALUES (864, 'Accra', '28-771', 15);
INSERT INTO `miejscowosci` VALUES (865, 'Kigali', '12-686', 6);
INSERT INTO `miejscowosci` VALUES (866, 'Islamabad', '44-898', 5);
INSERT INTO `miejscowosci` VALUES (867, 'Mexico City', '88-443', 11);
INSERT INTO `miejscowosci` VALUES (868, 'Malé', '09-755', 10);
INSERT INTO `miejscowosci` VALUES (869, 'Lusaka', '62-041', 4);
INSERT INTO `miejscowosci` VALUES (870, 'Tallinn', '51-421', 11);
INSERT INTO `miejscowosci` VALUES (871, 'Tbilisi', '86-746', 7);
INSERT INTO `miejscowosci` VALUES (872, 'Stockholm', '29-475', 5);
INSERT INTO `miejscowosci` VALUES (873, 'Caracas', '81-122', 16);
INSERT INTO `miejscowosci` VALUES (874, 'Moroni', '08-934', 11);
INSERT INTO `miejscowosci` VALUES (875, 'Kigali', '45-740', 9);
INSERT INTO `miejscowosci` VALUES (876, 'Honiara', '69-499', 12);
INSERT INTO `miejscowosci` VALUES (877, 'El Salvador', '58-741', 16);
INSERT INTO `miejscowosci` VALUES (878, 'Tehran', '80-004', 6);
INSERT INTO `miejscowosci` VALUES (879, 'Banjul', '47-280', 9);
INSERT INTO `miejscowosci` VALUES (880, 'Djibouti', '53-547', 13);
INSERT INTO `miejscowosci` VALUES (881, 'Los Angeles', '12-904', 13);
INSERT INTO `miejscowosci` VALUES (882, 'Warsaw', '88-938', 13);
INSERT INTO `miejscowosci` VALUES (883, 'New Delhi', '11-535', 12);
INSERT INTO `miejscowosci` VALUES (884, 'Doha', '50-355', 9);
INSERT INTO `miejscowosci` VALUES (885, 'Lomé', '47-422', 5);
INSERT INTO `miejscowosci` VALUES (886, 'Praia', '60-390', 7);
INSERT INTO `miejscowosci` VALUES (887, 'Sanaa', '04-665', 6);
INSERT INTO `miejscowosci` VALUES (888, 'Brazzaville', '83-308', 8);
INSERT INTO `miejscowosci` VALUES (889, 'Lusaka', '94-109', 12);
INSERT INTO `miejscowosci` VALUES (890, 'Roseau', '88-732', 16);
INSERT INTO `miejscowosci` VALUES (891, 'Tehran', '86-917', 10);
INSERT INTO `miejscowosci` VALUES (892, 'Sri Jayawardenepura Kotte', '88-145', 11);
INSERT INTO `miejscowosci` VALUES (893, 'Jerusalem', '39-477', 13);
INSERT INTO `miejscowosci` VALUES (894, 'Tallinn', '88-552', 11);
INSERT INTO `miejscowosci` VALUES (895, 'Djibouti', '90-267', 7);
INSERT INTO `miejscowosci` VALUES (896, 'Andorra la Vella', '77-792', 12);
INSERT INTO `miejscowosci` VALUES (897, 'Tallinn', '15-344', 15);
INSERT INTO `miejscowosci` VALUES (898, 'Monrovia', '26-377', 13);
INSERT INTO `miejscowosci` VALUES (899, 'Guatemala City', '35-393', 7);
INSERT INTO `miejscowosci` VALUES (900, 'San Marino', '60-211', 16);
INSERT INTO `miejscowosci` VALUES (901, 'Seoul', '13-478', 5);
INSERT INTO `miejscowosci` VALUES (902, 'Damascus', '75-168', 9);
INSERT INTO `miejscowosci` VALUES (903, 'Asunción', '24-709', 11);
INSERT INTO `miejscowosci` VALUES (904, 'Kigali', '22-915', 6);
INSERT INTO `miejscowosci` VALUES (905, 'Singapore', '44-729', 10);
INSERT INTO `miejscowosci` VALUES (906, 'Kyiv', '74-194', 15);
INSERT INTO `miejscowosci` VALUES (907, 'Khartoum', '40-479', 15);
INSERT INTO `miejscowosci` VALUES (908, 'Ouagadougou', '72-463', 16);
INSERT INTO `miejscowosci` VALUES (909, 'Monrovia', '64-104', 6);
INSERT INTO `miejscowosci` VALUES (910, 'Nukuʻalofa', '69-569', 6);
INSERT INTO `miejscowosci` VALUES (911, 'Georgetown', '90-600', 10);
INSERT INTO `miejscowosci` VALUES (912, 'Lima', '66-908', 6);
INSERT INTO `miejscowosci` VALUES (913, 'Kuala Lumpur', '19-659', 5);
INSERT INTO `miejscowosci` VALUES (914, 'Saint Vincent and the Grenadines', '60-889', 14);
INSERT INTO `miejscowosci` VALUES (915, 'Columbus', '06-634', 11);
INSERT INTO `miejscowosci` VALUES (916, 'Tegucigalpa', '12-678', 16);
INSERT INTO `miejscowosci` VALUES (917, 'Lisbon', '15-209', 5);
INSERT INTO `miejscowosci` VALUES (918, 'Tripoli', '04-910', 14);
INSERT INTO `miejscowosci` VALUES (919, 'Nur-Sultan', '46-891', 10);
INSERT INTO `miejscowosci` VALUES (920, 'Shenzhen', '66-087', 16);
INSERT INTO `miejscowosci` VALUES (921, 'Dodoma', '77-779', 5);
INSERT INTO `miejscowosci` VALUES (922, 'Kabul', '22-506', 12);
INSERT INTO `miejscowosci` VALUES (923, 'Yamoussoukro', '05-866', 13);
INSERT INTO `miejscowosci` VALUES (924, 'Sofia', '23-715', 11);
INSERT INTO `miejscowosci` VALUES (925, 'Bangui', '38-362', 9);
INSERT INTO `miejscowosci` VALUES (926, 'Madrid', '37-573', 11);
INSERT INTO `miejscowosci` VALUES (927, 'Budapest', '35-145', 14);
INSERT INTO `miejscowosci` VALUES (928, 'Santiago', '14-464', 6);
INSERT INTO `miejscowosci` VALUES (929, 'Oxford', '36-732', 15);
INSERT INTO `miejscowosci` VALUES (930, 'Harare', '48-320', 12);
INSERT INTO `miejscowosci` VALUES (931, 'Jakarta', '88-094', 16);
INSERT INTO `miejscowosci` VALUES (932, 'Tbilisi', '61-772', 14);
INSERT INTO `miejscowosci` VALUES (933, 'Helsinki', '44-009', 11);
INSERT INTO `miejscowosci` VALUES (934, 'Monte Carlo', '38-197', 12);
INSERT INTO `miejscowosci` VALUES (935, 'Bujumbura', '27-809', 8);
INSERT INTO `miejscowosci` VALUES (936, 'Helsinki', '46-362', 10);
INSERT INTO `miejscowosci` VALUES (937, 'Khartoum', '60-074', 12);
INSERT INTO `miejscowosci` VALUES (938, 'Ashgabat', '10-692', 14);
INSERT INTO `miejscowosci` VALUES (939, 'Madrid', '81-380', 8);
INSERT INTO `miejscowosci` VALUES (940, 'Cairo', '41-007', 5);
INSERT INTO `miejscowosci` VALUES (941, 'Lima', '86-085', 11);
INSERT INTO `miejscowosci` VALUES (942, 'Luxembourg City', '24-725', 10);
INSERT INTO `miejscowosci` VALUES (943, 'Khartoum', '50-317', 4);
INSERT INTO `miejscowosci` VALUES (944, 'San Marino', '65-447', 11);
INSERT INTO `miejscowosci` VALUES (945, 'Amman', '78-342', 11);
INSERT INTO `miejscowosci` VALUES (946, 'Frankfurt', '39-572', 14);
INSERT INTO `miejscowosci` VALUES (947, 'Niamey', '28-081', 11);
INSERT INTO `miejscowosci` VALUES (948, 'Juba', '57-306', 7);
INSERT INTO `miejscowosci` VALUES (949, 'Paris', '72-420', 16);
INSERT INTO `miejscowosci` VALUES (950, 'Dushanbe', '05-759', 5);
INSERT INTO `miejscowosci` VALUES (951, 'Montevideo', '98-930', 4);
INSERT INTO `miejscowosci` VALUES (952, 'Windhoek', '30-366', 4);
INSERT INTO `miejscowosci` VALUES (953, 'Kabul', '58-858', 14);
INSERT INTO `miejscowosci` VALUES (954, 'Port Louis', '81-225', 6);
INSERT INTO `miejscowosci` VALUES (955, 'Port-au-Prince', '09-957', 7);
INSERT INTO `miejscowosci` VALUES (956, 'Brazzaville', '61-282', 10);
INSERT INTO `miejscowosci` VALUES (957, 'Shenzhen', '19-372', 16);
INSERT INTO `miejscowosci` VALUES (958, '聖多明哥', '75-057', 9);
INSERT INTO `miejscowosci` VALUES (959, 'Helsinki', '24-148', 4);
INSERT INTO `miejscowosci` VALUES (960, 'Palikir', '19-492', 6);
INSERT INTO `miejscowosci` VALUES (961, 'Akron', '39-684', 12);
INSERT INTO `miejscowosci` VALUES (962, 'Yerevan', '69-596', 8);
INSERT INTO `miejscowosci` VALUES (963, 'Nairobi', '06-817', 8);
INSERT INTO `miejscowosci` VALUES (964, 'Lima', '93-806', 10);
INSERT INTO `miejscowosci` VALUES (965, 'Amsterdam', '71-872', 14);
INSERT INTO `miejscowosci` VALUES (966, 'Prague', '11-105', 16);
INSERT INTO `miejscowosci` VALUES (967, 'St. Johns', '65-456', 8);
INSERT INTO `miejscowosci` VALUES (968, 'Riga', '39-640', 11);
INSERT INTO `miejscowosci` VALUES (969, 'NDjamena', '25-499', 10);
INSERT INTO `miejscowosci` VALUES (970, 'Porto-Novo', '16-099', 13);
INSERT INTO `miejscowosci` VALUES (971, 'Yaoundé', '26-018', 9);
INSERT INTO `miejscowosci` VALUES (972, 'Sarajevo', '35-978', 9);
INSERT INTO `miejscowosci` VALUES (973, 'Saint Vincent and the Grenadines', '09-514', 5);
INSERT INTO `miejscowosci` VALUES (974, 'Tirana', '84-605', 7);
INSERT INTO `miejscowosci` VALUES (975, 'Sofia', '31-683', 12);
INSERT INTO `miejscowosci` VALUES (976, 'Amsterdam', '19-505', 14);
INSERT INTO `miejscowosci` VALUES (977, 'Dublin', '02-882', 5);
INSERT INTO `miejscowosci` VALUES (978, 'Pyongyang', '03-260', 10);
INSERT INTO `miejscowosci` VALUES (979, 'Bamako', '06-009', 15);
INSERT INTO `miejscowosci` VALUES (980, 'Shanghai', '45-202', 6);
INSERT INTO `miejscowosci` VALUES (981, 'Damascus', '49-922', 9);
INSERT INTO `miejscowosci` VALUES (982, 'Bridgetown', '63-828', 7);
INSERT INTO `miejscowosci` VALUES (983, 'Albany', '89-031', 16);
INSERT INTO `miejscowosci` VALUES (984, 'San Marino', '11-958', 10);
INSERT INTO `miejscowosci` VALUES (985, 'Nukuʻalofa', '67-151', 15);
INSERT INTO `miejscowosci` VALUES (986, 'Dushanbe', '18-416', 6);
INSERT INTO `miejscowosci` VALUES (987, 'Accra', '23-569', 8);
INSERT INTO `miejscowosci` VALUES (988, 'Porto-Novo', '71-368', 9);
INSERT INTO `miejscowosci` VALUES (989, 'Shenzhen', '29-367', 12);
INSERT INTO `miejscowosci` VALUES (990, 'Asmara', '67-915', 4);
INSERT INTO `miejscowosci` VALUES (991, 'Roseau', '65-842', 16);
INSERT INTO `miejscowosci` VALUES (992, 'Moroni', '55-546', 8);
INSERT INTO `miejscowosci` VALUES (993, 'Jerusalem', '56-957', 12);
INSERT INTO `miejscowosci` VALUES (994, 'Tunis', '14-938', 4);
INSERT INTO `miejscowosci` VALUES (995, 'Bern', '00-587', 7);
INSERT INTO `miejscowosci` VALUES (996, 'Caracas', '94-963', 14);
INSERT INTO `miejscowosci` VALUES (997, 'Nouakchott', '29-336', 7);
INSERT INTO `miejscowosci` VALUES (998, 'Baghdad', '89-106', 13);
INSERT INTO `miejscowosci` VALUES (999, 'Muscat', '59-676', 15);
INSERT INTO `miejscowosci` VALUES (1000, 'Tokyo', '28-941', 10);
INSERT INTO `miejscowosci` VALUES (1001, 'Dongguan', '18-418', 7);
INSERT INTO `miejscowosci` VALUES (1002, 'Maputo', '24-838', 8);
INSERT INTO `miejscowosci` VALUES (1003, 'Bangui', '35-580', 8);

-- ----------------------------
-- Table structure for podsumowanie_miesiaca
-- ----------------------------
DROP TABLE IF EXISTS `podsumowanie_miesiaca`;
CREATE TABLE `podsumowanie_miesiaca`  (
  `ID_pracownik` int NOT NULL,
  `rok` year NOT NULL,
  `miesiac` int NOT NULL,
  `stawka` float NOT NULL,
  `ilosc_godzin` int NOT NULL,
  `premia` float NULL DEFAULT NULL,
  `zarobek` float GENERATED ALWAYS AS (`stawka` * `ilosc_godzin` + `premia`) VIRTUAL NULL,
  UNIQUE INDEX `ID_pracownik_2`(`ID_pracownik` ASC, `rok` ASC, `miesiac` ASC) USING BTREE,
  INDEX `ID_pracownik`(`ID_pracownik` ASC) USING BTREE,
  CONSTRAINT `podsumowanie_miesiaca_ibfk_1` FOREIGN KEY (`ID_pracownik`) REFERENCES `pracownicy` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of podsumowanie_miesiaca
-- ----------------------------
INSERT INTO `podsumowanie_miesiaca` VALUES (1, 2024, 12, 31.4, 160, 100, DEFAULT);

-- ----------------------------
-- Table structure for powiaty
-- ----------------------------
DROP TABLE IF EXISTS `powiaty`;
CREATE TABLE `powiaty`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_wojewodztwo` int NOT NULL,
  `nazwa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `nazwa`(`nazwa` ASC) USING BTREE,
  INDEX `ID_wojewodztwo`(`ID_wojewodztwo` ASC) USING BTREE,
  CONSTRAINT `powiaty_ibfk_1` FOREIGN KEY (`ID_wojewodztwo`) REFERENCES `wojewodztwa` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of powiaty
-- ----------------------------
INSERT INTO `powiaty` VALUES (4, 1, 'Kraków');
INSERT INTO `powiaty` VALUES (5, 1, 'tarnowski');
INSERT INTO `powiaty` VALUES (6, 1, 'gorlicki');
INSERT INTO `powiaty` VALUES (7, 2, 'Wałbrzych');
INSERT INTO `powiaty` VALUES (8, 2, 'Wrocław');
INSERT INTO `powiaty` VALUES (9, 2, 'kłodzki');
INSERT INTO `powiaty` VALUES (10, 7, 'Warszawa');
INSERT INTO `powiaty` VALUES (11, 7, 'Płock');
INSERT INTO `powiaty` VALUES (12, 7, 'ostrołęcki');
INSERT INTO `powiaty` VALUES (13, 15, 'gnieźnieński');
INSERT INTO `powiaty` VALUES (14, 15, 'kaliski');
INSERT INTO `powiaty` VALUES (15, 9, 'jasielski');
INSERT INTO `powiaty` VALUES (16, 9, 'Krosno');

-- ----------------------------
-- Table structure for pracownicy
-- ----------------------------
DROP TABLE IF EXISTS `pracownicy`;
CREATE TABLE `pracownicy`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nazwisko` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ID_kino` int NOT NULL,
  `telefon` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nr_rachunku` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stawka_godzinowa` float NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `ID_kino`(`ID_kino` ASC) USING BTREE,
  CONSTRAINT `pracownicy_ibfk_1` FOREIGN KEY (`ID_kino`) REFERENCES `kina` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pracownicy
-- ----------------------------
INSERT INTO `pracownicy` VALUES (1, 'jan', 'kowalski', 1, '3123', '1241', 12);

-- ----------------------------
-- Table structure for pracownicy_role
-- ----------------------------
DROP TABLE IF EXISTS `pracownicy_role`;
CREATE TABLE `pracownicy_role`  (
  `ID_pracownik` int NOT NULL,
  `ID_rola` int NOT NULL,
  UNIQUE INDEX `ID_pracownik`(`ID_pracownik` ASC, `ID_rola` ASC) USING BTREE,
  INDEX `ID_rola`(`ID_rola` ASC) USING BTREE,
  CONSTRAINT `pracownicy_role_ibfk_1` FOREIGN KEY (`ID_pracownik`) REFERENCES `pracownicy` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pracownicy_role_ibfk_2` FOREIGN KEY (`ID_rola`) REFERENCES `role` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pracownicy_role
-- ----------------------------

-- ----------------------------
-- Table structure for rezyserzy
-- ----------------------------
DROP TABLE IF EXISTS `rezyserzy`;
CREATE TABLE `rezyserzy`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazwisko` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Imie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lokalizacja` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_urodzenia` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `nazwisko`(`nazwisko` ASC, `Imie` ASC) USING BTREE,
  FULLTEXT INDEX `fulltext_test`(`nazwisko`, `Imie`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rezyserzy
-- ----------------------------
INSERT INTO `rezyserzy` VALUES (1, 'King', 'Stephen', '', '2024-05-07 16:58:21');
INSERT INTO `rezyserzy` VALUES (2, 'Jackson', 'Peter', '', '2024-05-07 16:58:21');
INSERT INTO `rezyserzy` VALUES (3, 'Nolan', 'Christopher', '', '2024-05-07 16:58:21');
INSERT INTO `rezyserzy` VALUES (4, 'Gunn', 'James', '', '2024-05-07 16:58:21');
INSERT INTO `rezyserzy` VALUES (5, 'Van Groeningen', 'Felix', '', '2024-05-07 16:58:21');
INSERT INTO `rezyserzy` VALUES (6, 'Nolann', 'Helix', '', NULL);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_kino` int NOT NULL,
  `nazwa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ilosc_miejsc` int NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `ID_kino`(`ID_kino` ASC) USING BTREE,
  CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`ID_kino`) REFERENCES `kina` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES (1, 1, 'Sala 1', 46);
INSERT INTO `sale` VALUES (2, 1, 'Sala 2', 46);
INSERT INTO `sale` VALUES (3, 1, 'Sala 3', 68);
INSERT INTO `sale` VALUES (4, 3, 'Sala 1', 25);
INSERT INTO `sale` VALUES (5, 3, 'Sala 2', 34);
INSERT INTO `sale` VALUES (6, 4, 'Sala 1', 34);
INSERT INTO `sale` VALUES (7, 4, 'Sala 2', 45);

-- ----------------------------
-- Table structure for seanse
-- ----------------------------
DROP TABLE IF EXISTS `seanse`;
CREATE TABLE `seanse`  (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `ID_film` int NOT NULL,
  `ID_sala` int NOT NULL,
  `ID_wersja` int NOT NULL,
  `ID_wymiar` int NOT NULL,
  `data` date NOT NULL,
  `godzina` time NOT NULL,
  `cena` float NOT NULL,
  PRIMARY KEY (`ID`, `data`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic PARTITION BY RANGE (year(`data`))
PARTITIONS 4
(PARTITION `mniejsze_od_2022` VALUES LESS THAN (2022) ENGINE = InnoDB MAX_ROWS = 0 MIN_ROWS = 0 ,
PARTITION `mniejsze_od_2023` VALUES LESS THAN (2023) ENGINE = InnoDB MAX_ROWS = 0 MIN_ROWS = 0 ,
PARTITION `mniejsze_od_2024` VALUES LESS THAN (2024) ENGINE = InnoDB MAX_ROWS = 0 MIN_ROWS = 0 ,
PARTITION `najnowsze` VALUES LESS THAN (MAXVALUE) ENGINE = InnoDB MAX_ROWS = 0 MIN_ROWS = 0 )
;

-- ----------------------------
-- Records of seanse
-- ----------------------------
INSERT INTO `seanse` VALUES (1, 1, 1, 1, 1, '2024-05-14', '17:54:50', 25);
INSERT INTO `seanse` VALUES (3, 6, 2, 1, 1, '2024-05-14', '12:30:00', 15);

-- ----------------------------
-- Table structure for wojewodztwa
-- ----------------------------
DROP TABLE IF EXISTS `wojewodztwa`;
CREATE TABLE `wojewodztwa`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `nazwa`(`nazwa` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wojewodztwa
-- ----------------------------
INSERT INTO `wojewodztwa` VALUES (2, 'dolnośląskie');
INSERT INTO `wojewodztwa` VALUES (3, 'kujawsko-pomorskie');
INSERT INTO `wojewodztwa` VALUES (4, 'lubelskie');
INSERT INTO `wojewodztwa` VALUES (5, 'lubuskie');
INSERT INTO `wojewodztwa` VALUES (7, 'mazowieckie');
INSERT INTO `wojewodztwa` VALUES (1, 'małopolskie');
INSERT INTO `wojewodztwa` VALUES (8, 'opolskie');
INSERT INTO `wojewodztwa` VALUES (9, 'podkarpackie');
INSERT INTO `wojewodztwa` VALUES (10, 'podlaskie');
INSERT INTO `wojewodztwa` VALUES (11, 'pomorskie');
INSERT INTO `wojewodztwa` VALUES (12, 'śląskie');
INSERT INTO `wojewodztwa` VALUES (13, 'świętokrzyskie');
INSERT INTO `wojewodztwa` VALUES (14, 'warmińsko-mazurskie');
INSERT INTO `wojewodztwa` VALUES (15, 'wielkopolskie');
INSERT INTO `wojewodztwa` VALUES (16, 'zachodniopomorskie');
INSERT INTO `wojewodztwa` VALUES (6, 'łódzkie');

-- ----------------------------
-- Table structure for wymiary
-- ----------------------------
DROP TABLE IF EXISTS `wymiary`;
CREATE TABLE `wymiary`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `nazwa`(`nazwa` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wymiary
-- ----------------------------
INSERT INTO `wymiary` VALUES (1, '2D');
INSERT INTO `wymiary` VALUES (2, '3D');
INSERT INTO `wymiary` VALUES (3, '4D');
INSERT INTO `wymiary` VALUES (4, '5D');

-- ----------------------------
-- Table structure for zamowienia
-- ----------------------------
DROP TABLE IF EXISTS `zamowienia`;
CREATE TABLE `zamowienia`  (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ID_seans` bigint NOT NULL,
  `ID_klient` bigint NOT NULL,
  `status` enum('nie oplacone','oplacone','zwrot - zlecony','zwrot - wykonany') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'nie oplacone',
  `data_zamowienia` timestamp NOT NULL DEFAULT current_timestamp,
  `nr_faktury` int NULL DEFAULT NULL,
  `data_faktury` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `nr_faktury`(`nr_faktury` ASC) USING BTREE,
  INDEX `ID_klient`(`ID_klient` ASC) USING BTREE,
  INDEX `ID_seans`(`ID_seans` ASC) USING BTREE,
  CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`ID_klient`) REFERENCES `klienci` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zamowienia
-- ----------------------------
INSERT INTO `zamowienia` VALUES (5, 3, 3, 'oplacone', '2024-05-29 19:40:44', NULL, NULL);

-- ----------------------------
-- Table structure for znizki
-- ----------------------------
DROP TABLE IF EXISTS `znizki`;
CREATE TABLE `znizki`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `wartosc` float NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of znizki
-- ----------------------------
INSERT INTO `znizki` VALUES (1, 'A', 0.2);
INSERT INTO `znizki` VALUES (2, 'B', 0.3);

-- ----------------------------
-- View structure for faktury
-- ----------------------------
DROP VIEW IF EXISTS `faktury`;

CREATE ALGORITHM = UNDEFINED
SQL SECURITY DEFINER
VIEW `faktury` AS
SELECT
    `zam`.`nr_faktury` AS `nr_faktury`,
    `zam`.`data_faktury` AS `data_faktury`,
    `dane`.`nazwa` AS `nazwa`,
    `dane`.`NIP` AS `NIP`,
    `dane`.`nazwa_uslugi` AS `nazwa_uslugi`,
    `dane`.`adres` AS `adres`,
    CONCAT(`kli`.`nazwisko`, ' ', `kli`.`imie`) AS `Klient`,
    `kli`.`adres` AS `Adres klienta`,
    (
        SELECT COUNT(`bil`.`ID`)
        FROM `bilety` `bil`
        WHERE `bil`.`ID_zamowienia` = `zam`.`ID`
    ) AS `Ilosc`,
    GROUP_CONCAT(`bil`.`ID` SEPARATOR ',') AS `ID_biletow`,
    CAST(SUM(`sen`.`cena` * IFNULL(CAST(1 - `zn`.`wartosc` AS DECIMAL(10,2)), 1)) / 1.23 AS DECIMAL(10,2)) AS `Cena netto`,
    SUM(CAST(`sen`.`cena` * IFNULL(CAST(1 - `zn`.`wartosc` AS DECIMAL(10,2)), 1) AS DECIMAL(10,2))) AS `Cena brutto`
FROM
    `zamowienia` `zam`
    LEFT JOIN `klienci` `kli` ON (`kli`.`ID` = `zam`.`ID_klient`)
    LEFT JOIN `seanse` `sen` ON (`sen`.`ID` = `zam`.`ID_seans`)
    LEFT JOIN `bilety` `bil` ON (`zam`.`ID` = `bil`.`ID_zamowienia`)
    LEFT JOIN `znizki` `zn` ON (`zn`.`ID` = `bil`.`ID_znizka`)
    JOIN `dane_do_faktury` `dane`
WHERE
    `zam`.`nr_faktury` IS NOT NULL
GROUP BY
    `zam`.`nr_faktury`;

-- ----------------------------
-- View structure for klient_bilet_film
-- ----------------------------
DROP VIEW IF EXISTS `klient_bilet_film`;

CREATE ALGORITHM = UNDEFINED
SQL SECURITY DEFINER
VIEW `klient_bilet_film` AS
SELECT
    `kli`.`imie` AS `imie`,
    `kli`.`nazwisko` AS `nazwisko`,
    `fil`.`nazwa` AS `nazwa_filmu`,
    `sal`.`nazwa` AS `nazwa_sali`,
    CONCAT(`sen`.`data`, ' ', `sen`.`godzina`) AS `data`,
    GROUP_CONCAT(`gat`.`nazwa` SEPARATOR ',') AS `gatunki`
FROM
    `zamowienia` `zam`
    LEFT JOIN `klienci` `kli` ON (`kli`.`ID` = `zam`.`ID_klient`)
    LEFT JOIN `seanse` `sen` ON (`zam`.`ID_seans` = `sen`.`ID`)
    LEFT JOIN `filmy` `fil` ON (`sen`.`ID_film` = `fil`.`ID`)
    LEFT JOIN `sale` `sal` ON (`sen`.`ID_sala` = `sal`.`ID`)
    LEFT JOIN `film_gatunek` `fil_gat` ON (`fil`.`ID` = `fil_gat`.`ID_film`)
    LEFT JOIN `gatunki` `gat` ON (`fil_gat`.`ID_gatunek` = `gat`.`ID`)
GROUP BY
    `zam`.`ID`;

-- ----------------------------
-- View structure for sense_informacje
-- ----------------------------
DROP VIEW IF EXISTS `sense_informacje`;

CREATE ALGORITHM = UNDEFINED
SQL SECURITY DEFINER
VIEW `sense_informacje` AS
SELECT
    CONCAT(`sen`.`data`, ' ', `sen`.`godzina`) AS `Data`,
    `sen`.`cena` AS `cena`,
    `jez`.`nazwa` AS `Język`,
    `wym`.`nazwa` AS `Wymiar`,
    `sal`.`nazwa` AS `Sala`,
    CONCAT(
        (
            SELECT COUNT(`bil`.`ID`)
            FROM `zamowienia` `zam`
            LEFT JOIN `bilety` `bil` ON (`zam`.`ID` = `bil`.`ID_zamowienia`)
            WHERE `zam`.`ID_seans` = `sen`.`ID`
        ), 
        '/', `sal`.`ilosc_miejsc`
    ) AS `Zajęte miejsca`,
    CONCAT(
        `mie`.`nazwa`, ' ', `kin`.`dokladny_adres`, ', ', 
        `mie`.`nazwa`, ' ', `mie`.`kod_pocztowy`
    ) AS `Adres`,
    `film`.`nazwa` AS `Nazwa filmu`,
    `film`.`opis` AS `opis`,
    `film`.`data_premiery` AS `data_premiery`,
    `film`.`lokalizacja` AS `lokalizacja`,
    IFNULL(GROUP_CONCAT(DISTINCT CONCAT(`rez`.`nazwisko`, ' ', `rez`.`Imie`) SEPARATOR ','), 'brak') AS `Rezyserzy`,
    IFNULL(GROUP_CONCAT(DISTINCT `gat`.`nazwa` SEPARATOR ','), 'brak') AS `Gatunki`
FROM
    `seanse` `sen`
    LEFT JOIN `filmy` `film` ON (`sen`.`ID_film` = `film`.`ID`)
    LEFT JOIN `film_rezyser` `fi_re` ON (`film`.`ID` = `fi_re`.`ID_film`)
    LEFT JOIN `rezyserzy` `rez` ON (`rez`.`ID` = `fi_re`.`ID_rezyser`)
    LEFT JOIN `film_gatunek` `fi_ga` ON (`film`.`ID` = `fi_ga`.`ID_film`)
    LEFT JOIN `gatunki` `gat` ON (`gat`.`ID` = `fi_ga`.`ID_gatunek`)
    LEFT JOIN `jezyki` `jez` ON (`jez`.`ID` = `sen`.`ID_wersja`)
    LEFT JOIN `wymiary` `wym` ON (`wym`.`ID` = `sen`.`ID_wymiar`)
    LEFT JOIN `sale` `sal` ON (`sal`.`ID` = `sen`.`ID_sala`)
    LEFT JOIN `kina` `kin` ON (`kin`.`ID` = `sal`.`ID_kino`)
    LEFT JOIN `miejscowosci` `mie` ON (`mie`.`ID` = `kin`.`ID_miejscowosc`)
GROUP BY
    `film`.`ID`;

-- ----------------------------
-- Procedure structure for bilety_kupione_danego_dnia
-- ----------------------------
DROP PROCEDURE IF EXISTS `bilety_kupione_danego_dnia`;
delimiter ;;
CREATE PROCEDURE `bilety_kupione_danego_dnia`(IN `dzien` DATE)
BEGIN
	#Routine body goes here...
	SELECT KLI.ID, KLI.nazwisko, KLI.imie, KLI.email, SUM(CAST((SEAN.cena * (1-IFNULL(ZNIZ.wartosc, 0))) AS DECIMAL(10,2))) as cena FROM zamowienia ZAM
	INNER JOIN klienci KLI ON KLI.ID = ZAM.ID_klient
	INNER JOIN seanse SEAN ON SEAN.ID = ZAM.ID_seans
	INNER JOIN bilety BIL ON BIL.ID_zamowienia = ZAM.ID
	LEFT JOIN znizki ZNIZ ON ZNIZ.ID = BIL.ID_znizka

	WHERE DATE(ZAM.data_zamowienia) = dzien
	GROUP BY ZAM.ID;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for calkowity_przychod_kin
-- ----------------------------
DROP FUNCTION IF EXISTS `calkowity_przychod_kin`;
delimiter ;;
CREATE FUNCTION `calkowity_przychod_kin`(`id_kino` INT)  
RETURNS decimal(10,2)
DETERMINISTIC
READS SQL DATA
BEGIN     
    DECLARE przychod DECIMAL(10,2);     
    SET przychod = 0;      
    SELECT          
        SUM(CAST(SEN.cena * IFNULL(CAST((1 - ZN.wartosc) AS DECIMAL(10,2)), 1) AS DECIMAL(10,2)))     
    INTO przychod     
    FROM          
        bilety BIL     
    LEFT JOIN          
        znizki ZN ON BIL.ID_znizka = ZN.ID     
    LEFT JOIN          
        zamowienia ZAM ON BIL.ID_zamowienia = ZAM.ID     
    LEFT JOIN          
        seanse SEN ON ZAM.ID_seans = SEN.ID     
    LEFT JOIN          
        sale SAL ON SEN.ID_sala = SAL.ID     
    WHERE          
        SAL.ID_kino = id_kino         
        AND ZAM.status = 'oplacone';      
    RETURN przychod; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for dodaj_film
-- ----------------------------
DROP PROCEDURE IF EXISTS `dodaj_film`;
delimiter ;;
CREATE PROCEDURE `dodaj_film`(IN `p_nazwa` VARCHAR(100), IN `p_opis` TEXT, IN `p_data_premiery` DATETIME, IN `p_lokalizacja` VARCHAR(100), IN `p_gatunki` TEXT, IN `p_rezyserzy` TEXT)
BEGIN
    DECLARE last_inserted_film_id INT;
    DECLARE gatunek_id INT;
    DECLARE rezyser_id INT;
    DECLARE pos INT DEFAULT 1;
    DECLARE end_pos INT;

    -- Rozpoczęcie transakcji
    START TRANSACTION;
    
    BEGIN
        ROLLBACK;
    END;

    -- Dodanie nowego filmu
    INSERT INTO filmy (nazwa, opis, data_premiery, lokalizacja)
    VALUES (p_nazwa, p_opis, p_data_premiery, p_lokalizacja);
    
    -- Pobranie ID ostatnio dodanego filmu
    SET last_inserted_film_id = LAST_INSERT_ID();

    -- Dodanie gatunków
    WHILE pos <= LENGTH(p_gatunki) DO
        SET end_pos = LOCATE(',', p_gatunki, pos);
        IF end_pos = 0 THEN
            SET end_pos = LENGTH(p_gatunki) + 1;
        END IF;
        SET gatunek_id = CAST(TRIM(SUBSTRING(p_gatunki, pos, end_pos - pos)) AS UNSIGNED);

        -- Sprawdzenie, czy gatunek istnieje i dodanie powiązania tylko jeśli istnieje
        IF EXISTS (SELECT 1 FROM gatunki WHERE ID = gatunek_id) THEN
            INSERT INTO film_gatunek (ID_film, ID_gatunek)
            VALUES (last_inserted_film_id, gatunek_id);
        END IF;
        
        SET pos = end_pos + 1;
    END WHILE;

    -- Resetowanie pozycji
    SET pos = 1;

    -- Dodanie reżyserów
    WHILE pos <= LENGTH(p_rezyserzy) DO
        SET end_pos = LOCATE(',', p_rezyserzy, pos);
        IF end_pos = 0 THEN
            SET end_pos = LENGTH(p_rezyserzy) + 1;
        END IF;
        SET rezyser_id = CAST(TRIM(SUBSTRING(p_rezyserzy, pos, end_pos - pos)) AS UNSIGNED);
        
        -- Sprawdzenie, czy reżyser istnieje i dodanie powiązania tylko jeśli istnieje
        IF EXISTS (SELECT 1 FROM rezyserzy WHERE ID = rezyser_id) THEN
            INSERT INTO film_rezyser (ID_film, ID_rezyser)
            VALUES (last_inserted_film_id, rezyser_id);
        END IF;

        SET pos = end_pos + 1;
    END WHILE;

    -- Zatwierdzenie transakcji
    COMMIT;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for dodaj_pracownika
-- ----------------------------
DROP PROCEDURE IF EXISTS `dodaj_pracownika`;
delimiter ;;
CREATE PROCEDURE `dodaj_pracownika`(IN `p_imie` VARCHAR(100), IN `p_nazwisko` VARCHAR(100), IN `ID_kino` INT, IN `p_telefon` VARCHAR(9), IN `p_nr_rachunku` VARCHAR(64), IN `p_stawka_godzinowa` FLOAT)
BEGIN
    INSERT INTO pracownicy VALUES (NULL, p_imie, p_nazwisko, ID_kino, p_telefon, p_nr_rachunku, p_stawka_godzinowa);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for podzielenie_zamowienia
-- ----------------------------
DROP PROCEDURE IF EXISTS `podzielenie_zamowienia`;
delimiter ;;
CREATE PROCEDURE `podzielenie_zamowienia`()
BEGIN
    DECLARE current_year INT;
    DECLARE next_year INT;
    SET current_year = YEAR(CURDATE());
    SET next_year = current_year + 1;

    SET @sql = CONCAT(
        'ALTER TABLE zamowienia REORGANIZE PARTITION najnowsze INTO (',
        'PARTITION mniejsze_od_', next_year, ' VALUES LESS THAN (', next_year, '), ',
        'PARTITION najnowsze VALUES LESS THAN MAXVALUE);'
    );

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pokaz_dyskusje
-- ----------------------------
DROP PROCEDURE IF EXISTS `pokaz_dyskusje`;
delimiter ;;
CREATE PROCEDURE `pokaz_dyskusje`(IN `id` INT)
BEGIN
	#Routine body goes here...
	WITH recursive konwersacja AS
	(SELECT dyskusja.tresc_dyskusja e, dyskusja.*
	FROM
	dyskusja
	WHERE ID_dyskusja = id
	UNION
	SELECT concat(d.tresc_dyskusja, '=>', k.tresc_dyskusja), d.*
	FROM dyskusja d
	JOIN konwersacja k
	ON d.ID_do_dyskusji = k.ID_dyskusja)

	SELECT ID_dyskusja, ID_film, ID_uzytkownik, ID_do_dyskusji, tresc_dyskusja FROM konwersacja;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for szukaj_opis
-- ----------------------------
DROP PROCEDURE IF EXISTS `szukaj_opis`;
delimiter ;;
CREATE PROCEDURE `szukaj_opis`(IN `string` TEXT)
BEGIN
	DECLARE search_text TEXT;
  SET search_text = CONCAT('*', string, '*');
		
	WITH t AS (SELECT *,
				 MATCH(nazwa, opis) AGAINST (search_text WITH QUERY EXPANSION) AS relevance
	FROM filmy
	ORDER BY relevance DESC)
				
	SELECT * FROM t WHERE relevance != 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for wyswietl_przychody_kin
-- ----------------------------
DROP PROCEDURE IF EXISTS `wyswietl_przychody_kin`;
delimiter ;;
CREATE PROCEDURE `wyswietl_przychody_kin`()
BEGIN
    CREATE TEMPORARY TABLE IF NOT EXISTS wyniki_przychodow (
        nazwa_kina VARCHAR(100),
        przychod DECIMAL(10,2)
    );

    INSERT INTO wyniki_przychodow (nazwa_kina, przychod)
    SELECT dokladny_adres, calkowity_przychod_kin(ID)
    FROM kina;

    SELECT * FROM wyniki_przychodow;

    DROP TEMPORARY TABLE IF EXISTS wyniki_przychodow;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for zajete_miejsca
-- ----------------------------
DROP FUNCTION IF EXISTS `zajete_miejsca`;
delimiter ;;
CREATE FUNCTION `zajete_miejsca`(`p_id_seans` INT(11))  
RETURNS decimal(10,2)
DETERMINISTIC
READS SQL DATA
BEGIN 
    DECLARE procent DECIMAL(10,2);  
    SELECT COUNT(BIL.ID) / SAL.ilosc_miejsc * 100 INTO procent 
    FROM seanse SEN 
    LEFT JOIN zamowienia ZAM ON ZAM.ID_seans = SEN.ID 
    LEFT JOIN bilety BIL ON BIL.ID_zamowienia = ZAM.ID 
    LEFT JOIN sale SAL ON SAL.ID = SEN.ID_sala 
    WHERE SEN.ID = p_id_seans;  
    RETURN procent; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for zaktualizuj_stan_zamowienia
-- ----------------------------
DROP PROCEDURE IF EXISTS `zaktualizuj_stan_zamowienia`;
delimiter ;;
CREATE PROCEDURE `zaktualizuj_stan_zamowienia`(IN `p_id_zamowienia` INT, IN `p_nowy_stan` VARCHAR(50))
BEGIN
    UPDATE zamowienia
    SET status = p_nowy_stan
    WHERE ID = p_id_zamowienia;
END
;;
delimiter ;

-- ----------------------------
-- Event structure for deleteAfter1hour
-- ----------------------------
DROP EVENT IF EXISTS `deleteAfter1hour`;
delimiter ;;
CREATE EVENT `deleteAfter1hour`
ON SCHEDULE
EVERY '1' MINUTE STARTS '2024-05-28 17:12:41'
ON COMPLETION PRESERVE
DO DELETE FROM zamowienia WHERE status = 'nie oplacone' AND data_zamowienia <  NOW() - INTERVAL 1 HOUR
;;
delimiter ;

-- ----------------------------
-- Event structure for dzielenie_zamowienia
-- ----------------------------
DROP EVENT IF EXISTS `dzielenie_zamowienia`;
delimiter ;;
CREATE EVENT `dzielenie_zamowienia`
ON SCHEDULE
EVERY '1' YEAR STARTS '2024-12-30 00:00:00'
DO CALL podzielenie_zamowienia()
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table dyskusja
-- ----------------------------
DROP TRIGGER IF EXISTS `usun_dyskusja`;
delimiter ;;
CREATE TRIGGER `usun_dyskusja` BEFORE DELETE ON `dyskusja` FOR EACH ROW INSERT INTO dyskusja_archiwum VALUES (OLD.ID_dyskusja, OLD.ID_film, OLD.ID_uzytkownik, OLD.ID_do_dyskusji, OLD.tresc_dyskusja, OLD.data_dys)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table zamowienia
-- ----------------------------
DROP TRIGGER IF EXISTS `usun_bilety`;
delimiter ;;
CREATE TRIGGER `usun_bilety` AFTER DELETE ON `zamowienia` FOR EACH ROW DELETE FROM bilety WHERE ID_zamowienia = OLD.ID
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
