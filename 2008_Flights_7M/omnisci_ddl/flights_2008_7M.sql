{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE TABLE flights_2008_7M (\
  flight_year SMALLINT,\
  flight_month SMALLINT,\
  flight_dayofmonth SMALLINT,\
  flight_dayofweek SMALLINT,\
  deptime SMALLINT,\
  crsdeptime SMALLINT,\
  arrtime SMALLINT,\
  crsarrtime SMALLINT,\
  uniquecarrier TEXT ENCODING DICT(32),\
  flightnum SMALLINT,\
  tailnum TEXT ENCODING DICT(32),\
  actualelapsedtime SMALLINT,\
  crselapsedtime SMALLINT,\
  airtime SMALLINT,\
  arrdelay SMALLINT,\
  depdelay SMALLINT,\
  origin TEXT ENCODING DICT(32),\
  dest TEXT ENCODING DICT(32),\
  distance SMALLINT,\
  taxiin SMALLINT,\
  taxiout SMALLINT,\
  cancelled SMALLINT,\
  cancellationcode TEXT ENCODING DICT(32),\
  diverted SMALLINT,\
  carrierdelay SMALLINT,\
  weatherdelay SMALLINT,\
  nasdelay SMALLINT,\
  securitydelay SMALLINT,\
  lateaircraftdelay SMALLINT,\
  dep_timestamp TIMESTAMP(0),\
  arr_timestamp TIMESTAMP(0),\
  carrier_name TEXT ENCODING DICT(32),\
  plane_type TEXT ENCODING DICT(32),\
  plane_manufacturer TEXT ENCODING DICT(32),\
  plane_issue_date DATE ENCODING DAYS(32),\
  plane_model TEXT ENCODING DICT(32),\
  plane_status TEXT ENCODING DICT(32),\
  plane_aircraft_type TEXT ENCODING DICT(32),\
  plane_engine_type TEXT ENCODING DICT(32),\
  plane_year SMALLINT,\
  origin_name TEXT ENCODING DICT(32),\
  origin_city TEXT ENCODING DICT(32),\
  origin_state TEXT ENCODING DICT(32),\
  origin_country TEXT ENCODING DICT(32),\
  origin_lat FLOAT,\
  origin_lon FLOAT,\
  dest_name TEXT ENCODING DICT(32),\
  dest_city TEXT ENCODING DICT(32),\
  dest_state TEXT ENCODING DICT(32),\
  dest_country TEXT ENCODING DICT(32),\
  dest_lat FLOAT,\
  dest_lon FLOAT,\
  origin_merc_x FLOAT,\
  origin_merc_y FLOAT,\
  dest_merc_x FLOAT,\
  dest_merc_y FLOAT)\
WITH (FRAGMENT_SIZE=2000000);\
}