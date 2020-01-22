# Baywheels Bikeshare

![baywheels dashboard](https://github.com/omnisci/community_datasets/blob/master/baywheels/dashboard_img/baywheels_dashboard.png)

At a few million records of data, this demo runs fine on a laptop with a discrete NVIDIA GPU, or most consumer grade NVIDIA GPUs (obviously, this will run just fine on larger and data center GPUs!).

## Data

Because of a drifting data schema, a bit of data pre-processing is required. The code showing to pre-process and load the data is located [here](https://github.com/omnisci/community_datasets/blob/master/baywheels/omnisci_ddl/baywheels_tripdata.sql). For more details about how this ELT code works, see the [Baywheels blog post](https://www.omnisci.com/blog/accelerated-extract-load-transform-data-pipelines2) on the OmniSci corporate blog.
