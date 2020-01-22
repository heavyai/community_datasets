# OpenStreetMap

![rendered osm planet archive](https://github.com/omnisci/community_datasets/blob/master/openstreetmap/dashboard_img/planet_osm_entire_archive.png)

This demo takes a significant amount of hardware for fluid interactivity. A p2.16xlarge instance (16 12GB NVIDIA K80) on AWS is sufficient for the dashboards as shown, but it doesn't leave a lot of headroom for additional data exploration.

The 'Entire Planet Archive' dashboard has points, lines and polygons in the same dashboard. To work with each layer separately, individual point, line, and polygon dashboards are also provided in the [dashboard_json](openstreetmap/dashboard_json) directory.
