

CREATE TABLE `booked_home` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `family_member` int(11) DEFAULT NULL,
  `children` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `payment` int(11) DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `identityCard` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `rentingMethod` varchar(50) DEFAULT NULL,
  `see` varchar(30) NOT NULL DEFAULT 'no',
  `approval` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO booked_home VALUES("37","Yogesh MARUTI PAWAR","+919075788687","yogeshpawar1512001@gmail.com","4","2","PARANDE NAGAR NO.1","Apartement","60000","37","0","2024-04-02","2024-06-06","","WhatsApp Image 2024-02-01 at 9.45.10 PM.jpeg","WhatsApp Image 2024-02-08 at 9.17.11 PM.jpeg","booked","Yogesh123","Six_Month","yes","1");
INSERT INTO booked_home VALUES("39","dkjsd","+911234567890","yogeshpawar1512001@gmail.com","4","0","PARANDE NAGAR NO.1","Apartement","5","39","0","2024-04-03","2024-04-05","fsfkjsnkdklsalkadkla","WhatsApp Image 2024-02-01 at 9.45.10 PM.jpeg","bg.jpg","booked","Yogesh123","Yearly","yes","0");



CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `see` varchar(30) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO contact VALUES("2","Lelisa shashura","shlelisa123@gmail.com","2023-02-11","what is your main topic of this house rental system project used for?","yes");
INSERT INTO contact VALUES("3","muleta nagessa","muratanagessa6@gmail.com","2023-02-12","what is your mission?","yes");
INSERT INTO contact VALUES("4","mullataa nageessaa","muratanagessa6@gmail.com","2023-02-15","how i can use online house rental system please give me a short tutorial.","no");
INSERT INTO contact VALUES("5","lelisa shashura","lelisa123sh@gmail.com","2023-02-16","what is your mission and mission also goal of your company?","yes");



CREATE TABLE `new_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `expDate` datetime DEFAULT NULL,
  `code` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `see` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO new_user VALUES("4","Yogesh Sandeep Pawar","Male","+919767833019","yogeshpawar1512001@gmail.com","Yogesh123","860597464b31f718bc28e3994d28d0f0","admin","WhatsApp Image 2024-02-08 at 9.17.11 PM.jpeg","0000-00-00 00:00:00","712452","verified","yes");
INSERT INTO new_user VALUES("12","Gutama nagesso","male","+2519649215022","gutamanagesso@gmail.com","gute","ce45d5fe4e354442a1ff32c908cb6e5d","user","","0000-00-00 00:00:00","762362","notverified","yes");
INSERT INTO new_user VALUES("13","lalisa shashura","male","+251970463204","shlelisa123@gmail.com","laloo","b9bb90e6cde7066d4d80c509098ec540","user","","0000-00-00 00:00:00","204058","verified","yes");
INSERT INTO new_user VALUES("15","murata nagessa","male","+25191212121212","muratanagessa6@gmail.com","murata","0f142f93b98df838bcef578695faa8e6","user","","0000-00-00 00:00:00","598988","verified","yes");
INSERT INTO new_user VALUES("16","Efrem Hirko","male","+251938606334","hirkoefrem@gmail.com","efrem","7327ecc588e5de1803027c0ae0e9969d","user","","0000-00-00 00:00:00","662078","verified","yes");
INSERT INTO new_user VALUES("17","yogesh","Male","+911234567891","yogesh123@gmail.com","Yogesh123","ce69a736b73ac956fc87abd1409c999b","user","WhatsApp Image 2024-02-01 at 9.45.10 PM.jpeg","","316909","verified","yes");



CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `detail` varchar(2000) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO news VALUES("3","Social media restricted in Ethiopia as church rift turns violent","Access to social media platforms has been restricted in Ethiopia, the Internet watchdog NetBlocks says, after violent protests sparked by a rift within the country’s Orthodox Church.

The protests broke out in the Oromia region when three church officials declared themselves archbishops last month and set up their own governing body. Some demonstrators have opposed their move while others have supported it.","news1.png","2023-02-13");



CREATE TABLE `rent_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `rent` int(11) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `rentingMethod` varchar(100) DEFAULT NULL,
  `bedroom` int(11) NOT NULL,
  `bathroom` int(11) NOT NULL,
  `home_location` varchar(255) DEFAULT NULL,
  `home_number` varchar(255) DEFAULT NULL,
  `home_image` varchar(255) DEFAULT NULL,
  `bed_image` varchar(255) DEFAULT NULL,
  `bath_image` varchar(255) DEFAULT NULL,
  `toilet_image` varchar(255) DEFAULT NULL,
  `kitchen_image` varchar(255) DEFAULT NULL,
  `about_home` varchar(2000) DEFAULT NULL,
  `additional_facility` varchar(1000) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `payment` int(11) DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `identityCard` varchar(255) DEFAULT NULL,
  `OwnerPhoto` varchar(255) DEFAULT NULL,
  `homeOwnership` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `see` varchar(30) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO rent_home VALUES("37","Apartement","60000","714 square feet","Six_Month","100","100","https://goo.gl/maps/EZkvdxUe6W3FHvny5","3232","appartama1.png","bedroom1.png","bathroom1.png","toilet1.png","kitchen1.png","","water and electricity","active","0","lelisa","WIN_20230210_18_02_51_Pro.jpg","63e6690ea67c2.png","WIN_20230210_18_02_51_Pro.jpg","2023-02-10","2023-08-10","yes");
INSERT INTO rent_home VALUES("39","Apartement","5","800 square feet","Yearly","10","10","https://goo.gl/maps/qz7SubnYLoBFUiYU8","3224","appartama2.png","bedroom1.png","bathroom1.png","toilet1.png","kitchen1.png","Whether it is your first time going through the daunting process of finding a new apartment, or you are an experienced renter, contacting the landlord is one of the most difficult, yet important things to do in order to find your perfect new home. It can be hard to know exactly what to say when inquiring about an apartment, but we’re here to help you out!","- Laundry Facilities
- Laundry Services
- Package Lockers
- Gated Community
- Security Guards/Doormen
- Community Events/Classes
- Extra Storage Space
- Online Rent Payments
- Online Maintenance Requests","active","0","lelisa","WIN_20230210_18_02_51_Pro.jpg","63ea924fb6c3a.png","WIN_20230210_18_02_51_Pro.jpg","2023-02-13","2024-02-13","yes");



CREATE TABLE `rentprocess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Ownerusername` varchar(100) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `rentingMethod` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `deliveryFee` int(11) NOT NULL DEFAULT 0,
  `photoLessor` varchar(255) DEFAULT NULL,
  `fullnameLessor` varchar(255) DEFAULT NULL,
  `phoneLessor` varchar(255) DEFAULT NULL,
  `emailLessor` varchar(255) DEFAULT NULL,
  `photoHomeowner` varchar(255) DEFAULT NULL,
  `fullnameHomeowner` varchar(255) DEFAULT NULL,
  `phoneHomeowner` varchar(255) DEFAULT NULL,
  `emailHomeowner` varchar(255) DEFAULT NULL,
  `currentDay` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `see` varchar(255) DEFAULT 'no',
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


