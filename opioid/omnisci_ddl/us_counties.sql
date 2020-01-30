CREATE TABLE us_counties (
  fips TEXT ENCODING DICT(16),
  fullname TEXT ENCODING DICT(16),
  name TEXT ENCODING DICT(16),
  omnisci_geo GEOMETRY(MULTIPOLYGON, 4326) ENCODING COMPRESSED(32),
  state TEXT ENCODING DICT(8),
  population INTEGER
);

copy us_counties from 's3://omnisci-community/datasets/arcosopioid/us_counties.csv.gz';
