# !/bin/bash
export FFFS_WEB_PORTAL_GIS_DB_ADMIN_USERNAME='#{webPortalGisDbAdminUsername}'
export FFFS_WEB_PORTAL_GIS_DB_ADMIN_PASSWORD='#{webPortalGisDbAdminPassword}'
export FFFS_WEB_PORTAL_GIS_DB_CONNECTION_STRING='#{webPortalGisDbConnectionString}'
export FFFS_WEB_PORTAL_GIS_DB_DATA_SCHEMA='#{webPortalGisDbDataSchema}'
export FFFS_WEB_PORTAL_GIS_DB_DATA_USERNAME='#{webPortalGisDbDataUsername}'
export FFFS_WEB_PORTAL_GIS_DB_DATA_PASSWORD='#{webPortalGisDbDataPassword}'
export FFFS_WEB_PORTAL_GIS_DB_READER_USERNAME='#{webPortalGisDbReaderUsername}'
export FFFS_WEB_PORTAL_GIS_DB_READER_PASSWORD='#{webPortalGisDbReaderPassword}'
export FFFS_WEB_PORTAL_GIS_DB_SDE_PASSWORD='#{webPortalGisDbSdePassword}'

echo "Executing Maven DB script"
mvn clean process-resources
