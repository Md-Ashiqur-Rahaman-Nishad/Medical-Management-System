CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'ashiq', '12345', '04-04-2021 10:00:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2021-03-29', '9:15 AM', '2021-03-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'John', 'Dhaka', '500', 8285703354, 'john@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-03-29 06:25:37', '2021-03-30 12:11:05'),
(2, 'Homeopath', 'Donald Trump', 'America', '600', 2147483647, 'trump@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-03-29 06:25:37', '2021-03-30 12:11:05'),
(3, 'General Physician', 'Md. Ashiqur Rahaman Nishad', 'Dhaka', '1209', 8523699999, 'ashiqur15-12362@diu.edu.bd', 'f925916e2754e5e03f75dd58a5733251', '2021-03-29 06:25:37', '0000-00-00 00:00:00'),
(4, 'Homeopath', 'Apurbo', 'Jhenideh', '700', 25668888, 'apurbo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-03-29 06:25:37', '0000-00-00 00:00:00'),
(5, 'Ayurveda', 'Ovijit', 'Maymenshingh', '8050', 442166644646, 'ovijit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-03-29 06:25:37', '0000-00-00 00:00:00'),
(6, 'General Physician', 'Prince', 'Rajshahi', '2500', 45497964, 'prnice@test.com', 'f925916e2754e5e03f75dd58a5733251', '2021-03-29 06:25:37', '0000-00-00 00:00:00'),
(7, 'Demo test', 'Md. Ashiqur Rahaman Nishad', 'Dhaka', '1209', 852888888, 'ashiqur15-12362@diu.edu.bd', 'f925916e2754e5e03f75dd58a5733251', '2021-03-29 06:25:37', '2021-03-29 06:25:37'),
(8, 'Ayurveda', 'Test Doctor', 'Xyz Dhaka', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2021-03-29 06:25:37', '2021-03-29 06:25:37'),
(9, 'Dermatologist', 'Md. Ashiqur Rahaman Nishad', 'Dhaka', '1209', 1234567890, 'ashiqur15-12362@diu.edu.bd', 'f925916e2754e5e03f75dd58a5733251', '2021-03-29 06:25:37', '2021-03-29 06:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctorCategory`
--

CREATE TABLE `doctorCategory` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorCategory`
--

INSERT INTO `doctorCategory` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `contactUs`
--

CREATE TABLE `contactUs` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactUs`
--

INSERT INTO `contactUs` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Md. Ashiqur Rahaman Nishad', 'ashiqur15-12362@diu.edu.bd', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, NULL, NULL),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prescriptionHistory`
--

CREATE TABLE `prescriptionHistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescriptionHistory`
--

INSERT INTO `prescriptionHistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2021-02-29 06:25:37'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2021-02-29 06:25:37'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2021-02-29 06:25:37'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2021-02-29 06:25:40'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2021-02-29 06:25:43'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2021-02-29 06:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `PatientTbl`
--

CREATE TABLE `PatientTbl` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PatientTbl`
--

INSERT INTO `PatientTbl` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Ashiq', 4558968789, 'ashiq@gmail.com', 'male', '\"\"J&K Block J-127, Jigatola Dhaka', 26, 'He has headache', '2021-03-04 21:38:06', '2021-02-07 06:48:05'),
(2, 5, 'Apurbo', 9797977979, 'apurbo@gmail.com', 'male', 'Jhenidah, Bangladesh', 39, 'No', '2021-03-04 21:38:06', '2021-03-04 21:38:06'),
(3, 7, 'Ovijit', 9878978798, 'jk@gmail.com', 'male', '\"fdghyj', 46, 'No', '2021-03-04 21:38:06', '2021-03-04 21:38:06'),
(4, 7, 'Joe Byden', 9888988989, 'jb@gmail.com', 'male', 'New Lane, America', 45, 'He is long suffered by asthma', '2021-03-04 21:38:06', '2021-03-04 21:38:06'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2021-03-04 21:38:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Ashiqur Rahaman Nishad', 'Dhaka Bangladesh', 'Dhaka', 'male', 'ashiqur15-12362@diu.edu.bd', 'f925916e2754e5e03f75dd58a5733251', '2021-03-04 21:38:06', '0000-00-00 00:00:00'),
(3, 'John', 'Chittagong', 'Dhaka', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-03-04 21:38:06', '0000-00-00 00:00:00'),
(4, 'Prince', 'Rajshahi', 'Bangladesh', 'male', 'prince@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-03-04 21:38:06', '0000-00-00 00:00:00'),
(5, 'Apurbo', 'Jhenidah Bangladesh', 'Jhenidah', 'male', 'apurbo12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-03-04 21:38:06', '0000-00-00 00:00:00'),
(6, 'Test user', 'New Delhi', 'Delhi', 'male', 'tetuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-03-04 21:38:06', '2021-03-04 21:38:10'),
(7, 'Ovijit', 'USA', 'Newyork', 'male', 'ovijit@test.com', 'f925916e2754e5e03f75dd58a5733251', '2021-03-04 21:38:06', '2021-03-04 21:38:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorCategory`
--
ALTER TABLE `doctorCategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactUs`
--
ALTER TABLE `contactUs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptionHistory`
--
ALTER TABLE `prescriptionHistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PatientTbl`
--
ALTER TABLE `PatientTbl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `doctorCategory`
--
ALTER TABLE `doctorCategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contactUs`
--
ALTER TABLE `contactUs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prescriptionHistory`
--
ALTER TABLE `prescriptionHistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `PatientTbl`
--
ALTER TABLE `PatientTbl`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

information_schemahmshmshmshmshmshms