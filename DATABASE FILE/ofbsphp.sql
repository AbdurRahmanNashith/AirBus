

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_uname` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$AFMhdlwEaWjjBzoCfdq62uNQqopNGW4vk8GXrDBNGKPAgB0mON0TC');


CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `airline` (`airline_id`, `name`, `seats`) VALUES
(1, 'Core Airways', 165),
(2, 'Echo Airline', 220),
(3, 'Spark Airways', 125),
(4, 'Peak Airways', 210),
(5, 'Homelander Airways', 185),
(9, 'Blue Airlines', 200),
(10, 'GoldStar Airways', 205),
(11, 'Novar Airways', 158),
(12, 'Aero Airways', 210),
(13, 'Nep Airways', 215),
(14, 'Delta Airlines', 135);



CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `cities` (`city`) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Kerala'),
('New Delhi'),
('Ahmedabad'),
('Kolkata'),
('Goa'),
('Mumbai'),
('Pune'),
('Haryana'),
('Kashmir'),
('Kerala'),
('Chittor'),
('Vellore'),
('Assam'),
('Jharkand'),
('Pondicherry');



CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `q1` varchar(250) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(250) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Seats` varchar(110) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `last_seat` varchar(5) DEFAULT '',
  `bus_seats` int(11) DEFAULT '20',
  `last_bus_seat` varchar(5) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `flight` (`flight_id`, `admin_id`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `bus_seats`, `last_bus_seat`) VALUES
(1, 1, '2022-06-30 10:03:00', '2022-06-30 09:01:00', 'Chennai', 'Bangalore', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
(2, 1, '2022-07-05 11:15:00', '2022-07-05 10:05:00', 'Goa', 'Chittor', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(3, 1, '2022-07-05 12:13:00', '2022-07-05 10:13:00', 'New Delhi', 'Chittor', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(4, 1, '2022-07-05 16:30:00', '2022-07-05 15:26:00', 'New Delhi', 'Goa', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(5, 1, '2022-07-05 15:30:00', '2022-07-05 12:30:00', 'Jharkand', 'Goa', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(6, 1, '2022-07-05 17:55:00', '2022-07-05 15:30:00', 'Jharkand', 'New Delhi', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(7, 1, '2022-07-05 20:50:00', '2022-07-05 18:50:00', 'Hyderabad', 'Jharkand', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(8, 1, '2022-07-06 00:55:00', '2022-07-05 17:00:00', 'Mumbai', 'Hyderabad', 'Homelander Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
(9, 1, '2022-07-05 17:09:00', '2022-07-05 16:05:00', 'Jharkand', 'Chittor', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(10, 1, '2022-07-06 13:10:00', '2022-07-06 11:05:00', 'Hegan', 'Goa', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(11, 1, '2022-07-05 19:10:00', '2022-07-05 18:05:00', 'Ahmedabad', 'Kerala', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(12, 1, '2022-07-05 21:10:00', '2022-07-05 19:05:00', 'Chennai', 'Pune', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(13, 1, '2022-07-05 13:50:00', '2022-07-05 12:56:00', 'Chittor', 'Chennai', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(14, 1, '2022-07-05 11:08:00', '2022-07-05 09:07:00', 'Mumbai', 'Bangalore', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(15, 1, '2022-07-05 10:10:00', '2022-07-05 08:10:00', 'New Delhi', 'Chennai', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(16, 1, '2022-07-05 18:10:00', '2022-07-05 16:09:00', 'Kerala', 'Bangalore', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(17, 1, '2022-07-05 17:10:00', '2022-07-05 16:10:00', 'Bangalore', 'Jharkand', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(18, 1, '2022-07-05 19:15:00', '2022-07-05 16:12:00', 'Bangalore', 'Kerala', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(19, 1, '2022-07-05 23:40:00', '2022-07-05 20:31:00', 'Goa', 'Mumbai', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(20, 1, '2022-07-05 23:58:00', '2022-07-05 22:14:00', 'Pondicherry', 'Kolkata', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
(21, 1, '2022-07-06 10:14:00', '2022-07-05 23:15:00', 'Hyderabad', 'Pune', 'Blue Airlines', '200', '11', 965, '', '', '', 20, '');



CREATE TABLE `passenger_profile` (
  `passenger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `m_name`, `l_name`) VALUES
(1, 1, 1, '2147483647', '1995-01-01 00:00:00', 'Christine', 'M', 'Moore'),
(2, 2, 3, '2147483647', '1995-02-13 00:00:00', 'Henry', 'l', 'Stuart'),
(3, 3, 2, '2147483647', '1994-06-21 00:00:00', 'Andre', 'J', 'Atkins'),
(4, 4, 2, '2147483647', '1995-05-16 00:00:00', 'James', 'K', 'Harbuck'),
(5, 2, 8, '7854444411', '1995-02-13 00:00:00', 'Henry', 'l', 'Stuart'),
(6, 2, 20, '7412585555', '1995-02-13 00:00:00', 'Henry', 'l', 'Stuart');



CREATE TABLE `payment` (
  `card_no` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `payment` (`card_no`, `user_id`, `flight_id`, `expire_date`, `amount`) VALUES
('1010555677851111', 4, 2, '10/26', 3700),
('1020445869651011', 2, 20, '12/25', 3700),
('1111888889897778', 2, 3, '12/25', 2050),
('1400565800004478', 2, 8, '12/25', 1230),
('1458799990001450', 3, 2, '12/25', 1850),
('4204558500014587', 1, 1, '02/25', 3550);



CREATE TABLE `pwdreset` (
  `pwd_reset_id` int(11) NOT NULL,
  `pwd_reset_email` varchar(50) NOT NULL,
  `pwd_reset_selector` varchar(80) NOT NULL,
  `pwd_reset_token` varchar(120) NOT NULL,
  `pwd_reset_expires` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `seat_no`, `cost`, `class`) VALUES
(1, 1, 1, 1, '21A', 350, 'E'),
(2, 2, 3, 2, '21A', 205, 'E'),
(4, 3, 2, 3, '21A', 185, 'E'),
(6, 4, 2, 4, '21C', 370, 'E'),
(8, 5, 8, 2, '21A', 1230, 'E'),
(10, 6, 20, 2, '21A', 370, 'E');



CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'christine', 'christine@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(2, 'henry', 'henry@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(3, 'andre', 'andre@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(4, 'james', 'james@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);


ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);


ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);


ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);


ALTER TABLE `passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);


ALTER TABLE `payment`
  ADD PRIMARY KEY (`card_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);


ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwd_reset_id`);


ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `airline`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `passenger_profile`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `pwdreset`
  MODIFY `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

ALTER TABLE `passenger_profile`
  ADD CONSTRAINT `passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`passenger_id`) REFERENCES `passenger_profile` (`passenger_id`) ON DELETE CASCADE;

