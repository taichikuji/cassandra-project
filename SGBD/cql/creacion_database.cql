CREATE KEYSPACE IF NOT EXISTS fullpingdatabase WITH REPLICATION = { 'class' :
'NetworkTopologyStrategy', 'datacenter1' : 3 };

CREATE TABLE IF NOT EXISTS fullpingdatabase.fullpingdata (
	addressid int PRIMARY KEY,
	ip inet,
	name text,
	userid int,
	username text
);

CREATE KEYSPACE IF NOT EXISTS fullpingusers WITH REPLICATION = { 'class' :
'NetworkTopologyStrategy', 'datacenter1' : 3 };

CREATE TABLE IF NOT EXISTS fullpingusers.fullpingdatausers (
	userid int PRIMARY KEY,
	username text,
	password text
);