# Insert your URI below
URI="postgres://jmulkzmzzwaath:fdcd4611512ddc046daaefbff2396ee23074d280e013e1de5692afa4d1eda3e1@ec2-34-225-103-117.compute-1.amazonaws.com:5432/daev2l01mpuko4"

# Create the /sql folder for scripts.
mkdir sql

# Download all necessary sql scripts into /sql.
curl https://raw.githubusercontent.com/remmyzen/AppStoreRawDemo/main/sql/AppStoreSchema.sql --output sql/AppStoreSchema.sql
curl https://raw.githubusercontent.com/remmyzen/AppStoreRawDemo/main/sql/AppStoreCustomers.sql --output sql/AppStoreCustomers.sql
curl https://raw.githubusercontent.com/remmyzen/AppStoreRawDemo/main/sql/AppStoreGames.sql --output sql/AppStoreGames.sql
curl https://raw.githubusercontent.com/remmyzen/AppStoreRawDemo/main/sql/AppStoreDownloads.sql --output sql/AppStoreDownloads.sql

# Run the scripts to insert data.
psql ${URI} -f sql/AppStoreSchema.sql
psql ${URI} -f sql/AppStoreCustomers.sql
psql ${URI} -f sql/AppStoreGames.sql
psql ${URI} -f sql/AppStoreDownloads.sql

