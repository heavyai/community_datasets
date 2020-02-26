![gaia dashboard](https://github.com/omnisci/community_datasets/blob/master/caltrans_2015_2019/dashboard_img/caltrans_2015_2019.png)

This demo takes a significant amount of hardware for fluid interactivity. At least 96GB of GPU RAM is required to run the dashboard as shown, but you'll likely want a larger instance if you want to add additional fields.

## Data

The data for this dashboard comes from [Caltrans PeMS](http://pems.dot.ca.gov/), and for your convenience, we've mirrored the data from 2015 to part of 2019 in our S3 bucket. To make importing the data easier, the data are broken into 1-year chunks. See the [table definition script](https://github.com/omnisci/community_datasets/blob/master/caltrans_2015_2019/omnisci_ddl/caltrans_historic_2015_2019.sql) for how to load the data into OmniSci.
