CREATE VIEW arcos_2006_2014 AS
select
arcos_06to14_geo.*,
census_county_2017.CountyId AS BUYER_COUNTY_CODE,
census_county_2017.TotalPop AS BUYER_COUNTY_POPULATION
from arcos_06to14_geo
left join census_county_2017 on arcos_06to14_geo.BUYER_STATE = census_county_2017.State and arcos_06to14_geo.BUYER_COUNTY = census_county_2017.County
where REPORTER_BUS_ACT <> 'REVERSE DISTRIB';

CREATE VIEW county_demographics AS
select
CDC_Census_06to14.*,
pills_per_person_export.Pills_per_Person
from CDC_Census_06to14
left join pills_per_person_export on CDC_Census_06to14.County_Code = pills_per_person_export.fips;
