CREATE TABLE bolimlar(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nomi TEXT,
	xona_raqami INTEGER,
	telefon INTEGER
);

CREATE TABLE shifokorlar(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	ism TEXT,
	familiya TEXT,
	bolim_id INTEGER,
	FOREIGN KEY (bolim_id) REFERENCES bolimlar(id) ON DELETE CASCADE
);

CREATE TABLE bemorlar(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	ism TEXT,
	familiya TEXT,
	shifokor_id INTEGER,
	kasallik TEXT,
	FOREIGN KEY (shifokor_id) REFERENCES bolimlar(id)  ON DELETE CASCADE
);


INSERT INTO bolimlar
(nomi, xona_raqami, telefon)
VALUES
('Terapiya', 101, 2001),
('Jarrohlik', 201, 2002),
('Pediatriya', 301, 2003),
('Kardiologiya', 401, 2004),
('Nevralgiya', 501, 2005);


INSERT INTO shifokorlar
(ism, familiya, bolim_id)
VALUES
('Aziz', 'Karimov', 4),
('Gulnora', 'Tosheva', 2),
('Nargiza', 'Yunusova', 1),
('Bobur', 'Raximov', 5),
('Dilnoza', 'Alimova', 3);


INSERT INTO bemorlar
(ism, familiya, shifokor_id, kasallik)
VALUES
('Ali', 'Valiyev', 3, 'Shamollash'),
('Maryam', 'Qodirova', 1, 'Appenditsit'),
('Jasur', 'Toshev', 5,'Grip'),
('Nodira', 'Karimova', 2, 'Yurak kasalligi'),
('Bekzod', 'Rahimov', 4, 'Bosh ogrigi');