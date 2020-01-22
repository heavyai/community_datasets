# OpenStreetMap

![rendered osm planet archive](https://github.com/omnisci/community_datasets/blob/master/openstreetmap/dashboard_img/planet_osm_entire_archive.png)

This demo takes a significant amount of hardware for fluid interactivity. A [p2.16xlarge](https://aws.amazon.com/ec2/instance-types/p2/) instance (16 12GB NVIDIA K80) on AWS is sufficient for the dashboards as shown, but it doesn't leave a lot of headroom for additional data exploration.

The 'Entire Planet Archive' dashboard has points, lines and polygons in the same dashboard. To work with each layer separately, individual point, line, and polygon dashboards are also provided in the [dashboard_json](openstreetmap/dashboard_json) directory.

## Data

The OSM planet level file is processed using [osm2pgsql](https://github.com/openstreetmap/osm2pgsql), which writes to a Postgis-enabled Postgres instance. The data are minimally processed before exporting to CSV and uploaded to S3.
