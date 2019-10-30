--define table for 2017 schema
CREATE TABLE baywheels_tripdata(
duration_sec INTEGER,
start_time TIMESTAMP,
end_time TIMESTAMP,
start_station_id SMALLINT,
start_station_name TEXT ENCODING DICT,
start_station_latitude FLOAT,
start_station_longitude FLOAT,
end_station_id SMALLINT,
end_station_name TEXT ENCODING DICT,
end_station_latitude FLOAT,
end_station_longitude FLOAT,
bike_id SMALLINT,
user_type TEXT ENCODING DICT,
member_birth_year SMALLINT,
member_gender TEXT ENCODING DICT
);

--load data for 2017
copy baywheels_tripdata from 's3://baywheels-data/2017-fordgobike-tripdata.csv';

--add column bike_share_for_all_trip, which starts with Jan 2018 file
alter table baywheels_tripdata add column bike_share_for_all_trip TEXT ENCODING DICT;

--load data conforming to Jan 2018 schema
copy baywheels_tripdata from 's3://baywheels-data/201801-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201802-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201803-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201804-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201805-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201806-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201807-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201808-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201809-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201810-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201811-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201812-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201901-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201902-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201903-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201904-fordgobike-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201905-baywheels-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201908-baywheels-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201909-baywheels-tripdata.csv.zip';
copy baywheels_tripdata from 's3://baywheels-data/201910-baywheels-tripdata.csv.zip';

--201906 and 201907 files have extra blank column
CREATE TABLE baywheels_tripdata_extracol(
duration_sec INTEGER,
start_time TIMESTAMP(0),
end_time TIMESTAMP(0),
start_station_id SMALLINT,
start_station_name TEXT ENCODING DICT(32),
start_station_latitude FLOAT,
start_station_longitude FLOAT,
end_station_id SMALLINT,
end_station_name TEXT ENCODING DICT(32),
end_station_latitude FLOAT,
end_station_longitude FLOAT,
bike_id SMALLINT,
user_type TEXT ENCODING DICT(32),
member_birth_year SMALLINT,
member_gender TEXT ENCODING DICT(32),
bike_share_for_all_trip TEXT ENCODING DICT(32),
extracol TEXT ENCODING DICT(32)
);

copy baywheels_tripdata_extracol from 's3://baywheels-data/201906-baywheels-tripdata.csv.zip';
copy baywheels_tripdata_extracol from 's3://baywheels-data/201907-baywheels-tripdata.csv.zip' with (delimiter=';');

--based on Immerse exploration of what extracol represents, use case statement to populate bike_share_for_all_trip
insert into baywheels_tripdata
select
duration_sec,
start_time,
end_time,
start_station_id,
start_station_name,
start_station_latitude,
start_station_longitude,
end_station_id,
end_station_name,
end_station_latitude,
end_station_longitude,
bike_id,
user_type,
member_birth_year,
member_gender,
case
when bike_share_for_all_trip is not null then bike_share_for_all_trip
when extracol = 'app' then 'No'
when extracol = 'clipper' then 'Yes'
end as bike_share_for_all_trip
from baywheels_tripdata_extracol;

--drop table with extracol, since it's been corrected and loaded into main table
drop table baywheels_tripdata_extracol;
