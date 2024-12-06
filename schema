-- schema

create table Chart (
	name	varchar(75)	not null,
	constraint Chart_PK
		primary key (name)
);

create table Instrument (
	instrument	varchar(75)	not null,
	constraint Instrument_PK
		primary key (instrument)
);

create table Musician (
	name		varchar(75)	not null,
	hometown	varchar(75),
	constraint Musician_PK
		primary key (name)
);

create table Artist (
	name		varchar(75)	not null,
	bio		varchar(75),
	homepage	varchar(75),
	constraint Artist_PK
		primary key (name),
	constraint Artist_isa_Musician_FK
		foreign key (name) references Musician
);

create table Orchestra (
	name		varchar(75)	not null,
	address		varchar(75),
	size		int,
	conductor	varchar(75),
	constraint Orchestra_PK
		primary key (name)
);

create table RecordCompany (
	title		varchar(75)	not null,
	address		varchar(75),
	homepage	varchar(75),
	telephone	int,
	constraint Record_Company_PK
		primary key (title)
);

create table Album (
	title	varchar(75)	not null,
	label	varchar(75)	not null,
	year	int 		not null,
	constraint Album_PK
		primary key (title, label),
	constraint Album_produced_Record_Company_FK
		foreign key (label) references RecordCompany
);

create table Song (
	title	varchar(75)	not null,
	genre	varchar(75),
	constraint Song_PK
		primary key (title)
);

create table Recording (
	song		varchar(75)	not null,
	album		varchar(75)	not null,
	label		varchar(75)	not null,
	number		int		not null,
	studio		varchar(75),
	orchestra	varchar(75),
	constraint Recording_PK
		primary key (song, album, label),
	constraint Recording_of_Song_FK
		foreign key (song) references Song,
	constraint Recording_on_Album_FK
		foreign key (album, label) references Album,
	constraint Recording_backed_by_Orchestra_FK
		foreign key (orchestra) references Orchestra
);

create table Week (
	startday	date	not null,
	constraint Week_PK
		primary key (startday)
);

create table Charts (
	chart	varchar(75)	not null,
	week	date		not null,
	song	varchar(75)	not null,
	album	varchar(75)	not null,
	label	varchar(75)	not null,
	rank	int 		not null,
	constraint Charts_the_Chart_FK
		foreign key (chart) references Chart,
	constraint Charts_at_Week_FK
		foreign key (week) references Week,
	constraint Charts_of_Recording_FK
		foreign key (song, album, label) references Recording
);

create table Composed (
	name	varchar(75)	not null,
	song	varchar(75)	not null,
	role	varchar(75),
	constraint Composed_by_Artist_FK
		foreign key (name) references Artist,
	constraint Composed_the_Song_FK
		foreign key (song) references Song
);

create table Performs (
	instrument	varchar(75)	not null,
	name		varchar(75)	not null,
	song		varchar(75)	not null,
	album		varchar(75)	not null,
	label		varchar(75)	not null,
	constraint Performs_with_Instrument_FK
		foreign key (instrument) references Instrument,
	constraint Performs_by_Musician_FK
		foreign key (name) references Musician,
	constraint Performs_on_Recording_FK
		foreign key (song, album, label) references Recording
);
