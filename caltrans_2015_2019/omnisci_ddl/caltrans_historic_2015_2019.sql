CREATE TABLE caltrans_historic_2015_2019 (
timestamp_ TIMESTAMP(0) ENCODING FIXED(32),
station SMALLINT,
freeway SMALLINT,
direction TEXT ENCODING DICT(8),
lane_type TEXT ENCODING DICT(8),
station_length FLOAT,
total_flow SMALLINT,
occupancy FLOAT,
speed FLOAT,
county SMALLINT,
state_pm FLOAT,
abs_pm FLOAT,
latitude FLOAT,
longitude FLOAT,
lanes SMALLINT,
timestamp_rounded TIMESTAMP(0) ENCODING FIXED(32),
day_of_week TEXT ENCODING DICT(8),
day_of_week_num SMALLINT,
hour_of_day SMALLINT,
day_of_year SMALLINT
)

--copy table statements for omnisql
copy caltrans_historic_2015_2019 from 's3://omnisci-community/datasets/caltrans_2015_2019/caltrans_2015.csv.gz' with (header='true');
copy caltrans_historic_2015_2019 from 's3://omnisci-community/datasets/caltrans_2015_2019/caltrans_2016.csv.gz' with (header='true');
copy caltrans_historic_2015_2019 from 's3://omnisci-community/datasets/caltrans_2015_2019/caltrans_2017.csv.gz' with (header='true');
copy caltrans_historic_2015_2019 from 's3://omnisci-community/datasets/caltrans_2015_2019/caltrans_2018.csv.gz' with (header='true');
copy caltrans_historic_2015_2019 from 's3://omnisci-community/datasets/caltrans_2015_2019/caltrans_2019_partial.csv.gz' with (header='true');
