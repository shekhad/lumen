CREATE TABLE events (
  event_id INT NOT NULL,
  event_name VARCHAR(50) NOT NULL,
  event_date DATE NOT NULL,
  organizer_email VARCHAR(50) NOT NULL,
  organizer_phone VARCHAR(15) NOT NULL,
  event_description VARCHAR(500),
  event_type VARCHAR(20) NOT NULL,
  event_location VARCHAR(50) NOT NULL,
  event_status VARCHAR(20),
  max_seats INT NOT NULL,
  CONSTRAINT pk_events PRIMARY KEY (event_id)

);

INSERT INTO events (Event_id, event_name, event_date, organizer_email, organizer_phone, event_description, event_type, event_location, event_status, max_seats) VALUES
	('1001', 'Music Festival', '12-Mar-23', 'musicfest@gmail.com', '022-251678', 'A weekend to indulge in warm music with amazing artists and lip-smacking food', 'On-Premise', 'Mumbai', 'Live', '250'),
	('1002', 'Business Conference', '17-Apr-23', 'nyc.co@gmail.com', '044-781209', 'This conference is held to discuss new trends and opportunities pertaining to the business', 'Virtual', 'Zoom', 'Scheduled', '80'),
	('1003', 'Hip Hop Beginners Class', '2-Feb-23', 'danceguru@gmail.com', '011-457631', 'What you learn - Confidently step into a beginners Hip Hop class and understand the movements', 'On-Premise', 'Delhi', 'Completed', '100'),
	('1004', 'Art & Craft  Workshop', '20-Mar-23', 'craftsshop@gmail.com', '033-892561', 'Learn the layering technique in poster colours. It is a 3-layer painting which has a combination of brush painting and blending method', 'Virtual', 'Zoom', 'Scheduled', '50'),
	('1005', 'Book Reading Festival', '19-May-23', 'readingfest@gmail.com', '141-378954', 'A reading festival is a gathering that focuses on celebrating all aspects of books and reading', 'On-Premise', 'Jaipur', 'Live', '500'),
	('1006', 'State Chess Championship', '15-Apr-23', 'chesschamp@gmail.com', '011-190258', 'We have designed State Chess Championship to celebrate and cherish Indian love and passion for the game', 'On-Premise', 'Delhi', 'Scheduled', '40'),
	('1007', 'Open Mic', '25-Mar-23', 'laughstore@gmail.com', '022-674381', 'The Laugh Store is giving an opportunity to newe and emerging comedians to try out new material at our open mic', 'On-Premise', 'Mumbai', 'Live', '50'),
	('1008', 'Sudoku Championship', '17-Feb-23', 'sudoku_2023@gmail.com', '020-892347', '"The championship follows the same rule as Sudoku, and  will have 2 rounds Round 1 ""Qualifier"" and Round 2 ""Finals""."', 'Virtual', 'Watsapp', 'Cancelled', '50');