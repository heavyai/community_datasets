# GAIA Release 2

![gaia dashboard](https://github.com/omnisci/community_datasets/blob/gaia/gaia/dashboard_img/gaia.png)

This demo takes a significant amount of hardware for fluid interactivity. At least 96GB of GPU RAM is required to run the dashboard as shown, but you'll like want a larger instance if you want to add additional fields.

## Data

The [source data for the GAIA 2 release](http://cdn.gea.esac.esa.int/Gaia/gdr2/gaia_source/csv/) can be found at the GAIA archive. Given the size of the entire dataset (~550GB compressed), OmniSci does not host this in our S3 bucket. In the [table creation statement](https://github.com/omnisci/community_datasets/blob/gaia/gaia/omnisci_ddl/gaia.sql), there is an example `copy` statement for a single file. After downloading the GAIA archive, you can load all of the files in a similar manner via omnisql.
