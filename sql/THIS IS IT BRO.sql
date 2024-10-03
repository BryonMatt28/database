DROP TABLE Customers;
DROP TABLE Shippings;
DROP TABLE Orders;

CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    member_first_name varchar(50) NOT NULL,
    member_last_name varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	phone_number int NOT NULL

);

CREATE TABLE Courts (
  court_id INT PRIMARY KEY ,
  court_number INT,
  availability_status BOOLEAN
);

CREATE TABLE Competition_Type (
    competition_category_id INT PRIMARY KEY,
    category_type varchar(50)
);


CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY,
    player_id int NOT NULL,
    court_id int NOT NULL,
    competition_category_id int NOT NULL,
    reservation_date DATE,
    start_time time,
	end_time time
);

CREATE TABLE Singles (
    match_id INT PRIMARY KEY,
    team_one_player_one varchar(100) NOT NULL,
    team_two_player_one varchar(100) NOT NULL,
 	winner varchar(20)
);

CREATE TABLE Doubles (
    match_id INT PRIMARY KEY,
    team_one_player_one varchar(100) NOT NULL,
	team_one_player_two varchar(100) NOT NULL,
    team_two_player_one varchar(100) NOT NULL,
	team_two_player_two varchar(100) NOT NULL,
   	winner varchar(20)
);

 insert into Players (player_id, member_first_name, member_last_name, email, phone_number) values
 (1, 'Fonz', 'Cutbirth', 'fcutbirth0@de.vu', '+7 975 796 6601'),
 (2, 'Genna', 'Gehring', 'ggehring1@ustream.tv', '+970 528 718 3005'),
 (3, 'Kassi', 'Barstock', 'kbarstock2@irs.gov', '+387 110 967 3980'),
 (4, 'Anissa', 'Burdell', 'aburdell3@amazon.com', '+86 972 299 6992'),
 (5, 'Torrin', 'Tatlock', 'ttatlock4@blogtalkradio.com', '+598 836 107 1428'),
 (6, 'Lauri', 'Arter', 'larter5@diigo.com', '+961 280 675 0935'),
 (7, 'Quillan', 'Gon', 'qgon6@spotify.com', '+52 581 520 5834'),
 (8, 'Lainey', 'Lasty', 'llasty7@independent.co.uk', '+62 125 159 0897'),
 (9, 'Ezekiel', 'Sage', 'esage8@wunderground.com', '+7 887 888 6178'),
 (10, 'Kikelia', 'Hillborne', 'khillborne9@issuu.com', '+63 746 239 1251');

insert into Courts (court_id, court_number, availability_status) values 
(1, 1, true),
(2, 2, false),
(3, 3, true),
(4, 4, true),
(5, 5, false);

insert into Competition_type (competition_category_id, category_type) values 
(1, 'Single'),
(2, 'Double');

insert into Reservations (reservation_id, player_id, court_id, competition_category_id, reservation_date, start_time, end_time) values
(1, 7, 1, 2, '3/6/2024', '7:00 AM', '2:00 PM'),
(2, 7, 4, 1, '10/8/2023', '8:00 AM', '2:15 PM'),
(3, 3, 2, 1, null, null, null),
(4, 9, 1, 1, '8/15/2024', '10:35 AM', '2:00 PM'),
(5, 5, 3, 1, '11/19/2023', '8:45 AM', '3:45 PM'),
(6, 4, 5, 1, null, null, null),
(7, 10, 4, 2, '8/22/2024', '9:30 aM', '12:00 PM'),
(8, 3, 3, 1, '6/9/2024', '2:00 PM', '3:20 PM'),
(9, 10, 5, 1, null, null, null),
(10, 4, 5, 2, null, null, null),
(11, 7, 3, 2, '8/21/2024', '11:05 AM', '3:25 PM'),
(12, 3, 4, 2, '2/13/2024', '8:32 AM', '2:27 PM'),
(13, 2, 3, 2, '12/27/2023', '9:26 AM', '3:06 PM'),
(14, 2, 1, 2, '8/18/2024', '11:15 AM', '1:23 PM'),
(15, 9, 3, 1, '10/6/2023', '9:55 AM', '11:30 AM');

insert into Singles (match_id, team_one_player_one, team_two_player_one, winner) values
 (1, 'Fonz Cutbirth', 'Ezekiel Sage', 1),
 (2, 'Genna Gehring', 'Kikelia Hillborne', 1),
 (3, 'Anissa Burdell', 'Fonz Cutbirth', 2),
 (4, 'Lauri Arter', 'Genna Gehring', 1),
 (5, 'Torrin Tatlock', 'Lainey Lasty', 2),
 (6, 'Quillan Gon', 'Fonz Cutbirth', 2),
 (7, 'Fonz Cutbirth', 'Quillan Gon', 2),
 (8, 'Anissa Burdell', 'Genna Gehring', 2),
 (9, 'Ezekiel Sage', 'Lainey Lasty', 2),
 (10, 'Kikelia Hillborne', 'Anissa Burdell', 2),
 (11, 'Lainey Lasty', 'Genna Gehring', 2),
 (12, 'Kassi Barstock', 'Quillan Gon', 2),
 (13, 'Anissa Burdell', 'Torrin Tatlock', 2),
 (14, 'Quillan Gon', 'Fonz Cutbirth', 2),
 (15, 'Ezekiel Sage', 'Kassi Barstock', 2),
 (16, 'Lauri Arter', 'Ezekiel Sage', 1),
 (17, 'Torrin Tatlock', 'Anissa Burdell', 2),
 (18, 'Kikelia Hillborne', 'Lauri Arter', 2),
 (19, 'Genna Gehring', 'Quillan Gon', 2),
 (20, 'Fonz Cutbirth', 'Torrin Tatlock', 1);

insert into Doubles (match_id, team_one_player_one, team_one_player_two, team_two_player_one, team_two_player_two, winner) values 
 (1, 'Fonz Cutbirth', 'Ezekiel Sage', 'Sanson Briars', 'Harrison Phinnis', 2),
 (2, 'Lauri Arter', 'Genna Gehring', 'Zorine Mayte', 'Sunshine Dmitrievski', 2),
 (3, 'Torrin Tatlock', 'Lainey Lasty', 'Richie Divisek', 'Kelsey Nannini', 1),
 (4, 'Quillan Gon', 'Fonz Cutbirth', 'Abbie Bletsor', 'Wilek Langabeer', 2),
 (5, 'Anissa Burdell', 'Genna Gehring', 'Kermy Serrurier', 'Iago Blenkin', 1),
 (6, 'Fonz Cutbirth', 'Quillan Gon', 'Francklin Scheffel', 'Fritz Antonomoli', 1),
 (7, 'Ezekiel Sage', 'Lainey Lasty', 'Roselin Wombwell', 'Leandra Rehme', 1),
 (8, 'Kikelia Hillborne', 'Anissa Burdell', 'Ulrica Gair', 'Way Gemeau', 2),
 (9, 'Lainey Lasty', 'Genna Gehring', 'Dominik Havile', 'Rocky Longo', 1),
 (10, 'Quillan Gon', 'Fonz Cutbirth', 'Denna Masterson', 'Devonna Turbitt', 1);
