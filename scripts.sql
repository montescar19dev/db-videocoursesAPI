insert into users 
(
    id, 
    name,  
    email, 
    password,
    age
) VALUES (
    '1',
    'Carlos',
    'carlosmontes19@gmail.com',
    'root',
    '34'
),(
    '2',
    'Augusto',
    'augustomontes19@gmail.com',
    'root',
    '34'
);

insert into categories 
(
	name
) VALUES (
    'Backend'
),(
    'Object-Oriented programming'
);

insert into courses
(
	id,
	title,
	description,
	level,
	teacher,
	category_name
) VALUES (
	'500',
    'Node',
    'Modulo de Node Academlo',
    'advanced',
    'Sahid kick',
    'Backend'
),(
	'501',
    'Python',
    'Modulo de Python Academlo',
    'advanced',
    'Erik',
    'Object-Oriented programming'
);

insert into user_course 
(
	user_id,
	course_id 
) VALUES (
    1,
    500
),(
    1,
    501
 ),(
    2,
    500
 ),(
    2,
    501
);

insert into course_videos  
(
	title,
	url,
	course_id
) VALUES (
    'SQL',
    'https://www.academlo.com/sql-video',
    500
),(
    'MongoDB',
    'https://www.academlo.com/python-video',
    501
);

