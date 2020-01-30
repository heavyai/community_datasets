CREATE TABLE pills_per_person_export (
  fips TEXT ENCODING DICT(16),
  Pills_per_Person DOUBLE
);

copy pills_per_person_export from 's3://omnisci-community/datasets/arcosopioid/pills_per_person_export.csv.gz';
