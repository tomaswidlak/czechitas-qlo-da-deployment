#!/bin/sh

# Check if the database schema already exists
if mysql -h ${ENV_MYSQL_SERVER} -u root -proot -e "USE ${ENV_MYSQL_SCHEMA}"; then
  echo "Database schema ${ENV_MYSQL_SCHEMA} already exists. Skipping seeding."
  exit 0
fi


# Create a temporary file for the modified seed.sql
TEMP_SEED_FILE=$(mktemp)
echo "Temporary seed file: $TEMP_SEED_FILE"

# Copy the original seed.sql to the temporary file
cp ./seed.sql "$TEMP_SEED_FILE"

# Replace placeholders in the temporary seed.sql
sed -i "s|\[\[SH_SCHEMA\]\]|${ENV_MYSQL_SCHEMA}|g" "$TEMP_SEED_FILE"
sed -i "s|\[\[SH_WEBURL\]\]|${ENV_WEB_URL}|g" "$TEMP_SEED_FILE"
sed -i "s|\[\[SH_SCHEMA_USER\]\]|${ENV_MYSQL_USER}|g" "$TEMP_SEED_FILE"
sed -i "s|\[\[SH_SCHEMA_PASS\]\]|${ENV_MYSQL_PASSWORD}|g" "$TEMP_SEED_FILE"

echo "Modified seed.sql:"
head -n 15 "$TEMP_SEED_FILE"

# Wait for 20 seconds
sleep 20

# Execute the MySQL command to import the temporary seed.sql file"
mysql -h ${ENV_MYSQL_SERVER} -u root -p${ENV_ROOT_PASSWORD} < "$TEMP_SEED_FILE"

# Remove the temporary file
rm "$TEMP_SEED_FILE"
