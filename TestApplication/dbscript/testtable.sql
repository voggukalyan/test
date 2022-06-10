SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

\! echo " * Initializing..... Database..!!";
CREATE USER 'kalyan'@'%' IDENTIFIED BY 'kalyan$';
GRANT ALL PRIVILEGES ON *.* TO 'groot'@'%' WITH GRANT OPTION;

CREATE DATABASE testdb;
USE testdb;
CREATE TABLE `testtable` (
  `acno` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `feedback` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `testtable` (`acno`, `username`, `password`, `balance`, `email`, `mobile`, `feedback`) VALUES
(1, 'kalyan', 'happy123$', 2840, 'test@test.com', '1234567890', 'hello'),
(2, 'admin', 'kalyan1$', 4528, 'admin@test.com', '9876543201', 'hello'),
(3, 'gojek', 'happy1$', 1030, 'tes@test.com', '8765432190', 'hello'),
(4, 'test', 'test123$', 1020, 'test@test.com', '7654321098', 'hello');

ALTER TABLE `testtable`
  ADD PRIMARY KEY (`acno`);
ALTER TABLE `testtable`
  MODIFY `acno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
