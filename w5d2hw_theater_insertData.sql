INSERT INTO movies 
values(
	1,
	'Myanmar Streaming',
	'comedy',
	'G',
	5
),(
	2,
	'Blockus',
	'comedy',
	'PG',
	5
),(
	3,
	'It Is A-Me, Mario',
	'drama',
	'R',
	2
),(
	4,
	'The Thing Under the Stairs',
	'horror',
	'PG-13',
	1
),(
	5,
	'Spiderman 503',
	'action',
	'PG',
	1
);

INSERT INTO customers 
values(
	3132,
	'Jeff Barnes',
	'80027',
	'5555555555'
),(
	3133,
	'Parsely Face',
	'80018',
	'5555555552'
),(
	3134,
	'Jeff Nipolite',
	'80007',
	'5555525555'
),(
	3135,
	'Martin Cavani',
	'80045',
	'5555555155'
);

INSERT INTO tickets 
values(
	1,
	3132,
	1,
	15.00,
	TRUE,
	'2022-10-09',
	'01:02'
);

INSERT INTO concessions(
	foodid,
	price
)values(
	'pcsm',
	8.75
);

INSERT INTO concessions
values(
	'pcmed',
	'medium popcorn',
	12.25,
	5000
);

UPDATE concessions 
SET foodfullname = 'small popcorn', quantityinstock = 1000
WHERE foodid = 'pcsm';

INSERT INTO foodsales
values(
	1,
	'2022-11-18',
	55.00,
	3132
);

INSERT INTO concessions_foodsales 
values(
	1,
	1,
	'pcsm'
),(
	2,
	1,
	'pcmed'
);
