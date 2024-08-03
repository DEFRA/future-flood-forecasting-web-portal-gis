# Incident Management Forecasting (Known Previously As Future Flood Forecasting) Web Portal GIS Database

[![CI](https://github.com/DEFRA/future-flood-forecasting-web-portal-gis/actions/workflows/ci.yml/badge.svg)](https://github.com/DEFRA/future-flood-forecasting-web-portal-gis/actions/workflows/ci.yml)

Version control for bootstrapping the GIS database of the Incident Management Forecasting Web Portal. The GIS database is used for visualisation purposes. Bootstrapping creates the required schemas, roles, users and permissions.

## Prerequisites

### Mandatory

* Java 8 or above
* Maven 3.x
* Either of the following:
  * Azure SQL database instance (for cloud deployment)
  * Microsoft SQL Server Docker container (for local deployment)

### Optional

If using Docker:

* Docker 19.03.7 CE or later
* Docker Compose 1.25.4 or later

## Common environment variables

| name                                           | description                                           | required | default | valid       |
|------------------------------------------------|-------------------------------------------------------|----------|---------|-------------|
| FFFS_WEB_PORTAL_GIS_DB_ADMIN_USERNAME          | Username for database version control account         | yes      |         |             |
| FFFS_WEB_PORTAL_GIS_DB_ADMIN_PASSWORD          | Password for database version control account         | yes      |         |             |
| FFFS_WEB_PORTAL_GIS_DB_CONNECTION_STRING       | Database JDBC connection string                       | yes      |         |             |
| FFFS_WEB_PORTAL_GIS_DB_DATA_SCHEMA             | Data schema name                                      | yes      |         |             |
| FFFS_WEB_PORTAL_GIS_DB_DATA_USERNAME           | Data user                                             | yes      |         |             |
| FFFS_WEB_PORTAL_GIS_DB_DATA_PASSWORD           | Password for the data user                            | yes      |         |             |
| FFFS_WEB_PORTAL_GIS_DB_READER_USERNAME         | Reader user                                           | yes      |         |             |
| FFFS_WEB_PORTAL_GIS_DB_READER_PASSWORD         | Password for the reader user                          | yes      |         |             |
| FFFS_WEB_PORTAL_GIS_DB_SDE_PASSWORD            | Password for the SDE user                             | yes      |         |             |

## Docker specific enviroment variables

| name                                           | description                                           | required | default | valid       |
|------------------------------------------------|-------------------------------------------------------|----------|---------|-------------|
| FFFS_WEB_PORTAL_GIS_DB_CONTAINER_PORT          | Container port for the database                       | no       | 1433    |             |
| FFFS_WEB_PORTAL_GIS_DB_HOST_PORT               | Host port for the database                            | no       | 1433    |             |
| MSSQL_SA_PASSWORD                              | System administrator password                         | yes      |         |             |

## Azure SQL based build

* Ensure the required environment variables are set.
* Run ./bootstrap.sh from the directory containing this file.
  
## Local Linux host based docker build

* Ensure the required environment variables are set.
* Run ./local-bootstrap.sh from  the directory containing this file. This creates a SQL Server 2017 instance containing a database called **fffswebportalgis** running in a Docker container. Volumes are not used at present.

## Post build activities

The GIS database must be [enabled](https://desktop.arcgis.com/en/arcmap/10.7/tools/data-management-toolbox/enable-enterprise-geodatabase.htm).

## Contributing to this project

If you have an idea you'd like to contribute please log an issue.

All contributions should be submitted via a pull request.

## License

THIS INFORMATION IS LICENSED UNDER THE CONDITIONS OF THE OPEN GOVERNMENT LICENCE found at:

[http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3)

The following attribution statement MUST be cited in your products and applications when using this information.
