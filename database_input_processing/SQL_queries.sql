drop table states_cases;
drop table states_deaths;
drop table counties_cases;
drop table counties_deaths;

create table states_cases(
	ID int PRIMARY KEY,
	"date" date,
	"state" varchar(50),
	"cases" varchar(50),
	"date_str" varchar(20),
	"abbrev" varchar(5),
	"category" varchar(50)
);

create table states_deaths(
	ID int PRIMARY KEY,
	"date" date,
	"state" varchar(50),
	"deaths" varchar(50),
	"date_str" varchar(20),
	"abbrev" varchar(5),
	"category" varchar(50)
);

create table counties_cases(
	"date" date,
	"state" varchar(50),
	"cases" int,
	"date_str" varchar(20),
	"abbrev" varchar(5),
	"category" varchar(50)
	PRIMARY KEY ("date", "state", "county")
);

create table counties_deaths(
	id SERIAL PRIMARY KEY,
	"date" date,
	"state" varchar(50),
	"deaths" int,
	"date_str" varchar(20),
	"abbrev" varchar(5),
	"category" varchar(50)
);
	
	