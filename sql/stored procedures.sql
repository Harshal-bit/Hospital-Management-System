CREATE DEFINER=`root`@`localhost` PROCEDURE `addDoctor`(IN fname varchar(255), lname varchar(255),email varchar(255),
		dob varchar(20),gen varchar(10),addr varchar(255),phone varchar(20),img text,dep varchar(50),bio varchar(255))
BEGIN
	INSERT INTO doctor (`first_name`,`last_name`,`email`,`dob`,`gender`,`address`,`phone`,`image`,`department`,`biography`) 
    values (fname,lname,email,dob,gen,addr,phone,img,dep,bio);
END
CREATE DEFINER=`root`@`localhost` PROCEDURE `addUser`(IN username varchar(255),email varchar(255),pass varchar(20),email_status varchar(20))
BEGIN
	INSERT INTO `users`(`username`,`email`,`password`,`email_status`) VALUES (username,email,pass,email_status);
END
CREATE DEFINER=`root`@`localhost` PROCEDURE `generateToken`(IN username varchar(255),email varchar(255),token varchar(255))
BEGIN
	INSERT INTO `verify`(`username`,`email`,`token`) VALUES (username,email,token);
END
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_apointments`(in user_id int)
BEGIN
	select * from appointment where id=user_id ;
END