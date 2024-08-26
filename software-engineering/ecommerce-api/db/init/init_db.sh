#!/bin/sh

SCRIPT_DIR=$(dirname $0)
DATA_DIR=$SCRIPT_DIR/data

DB_NAME=ecommerce.sqlite
DB_PATH=$SCRIPT_DIR/../$DB_NAME

# Create a new database
echo "Creating database at $DB_PATH..."

echo "Creating orders table..."
sqlite3 $DB_PATH < "$SCRIPT_DIR/create_orders.sql"

echo "Creating returns table..."
sqlite3 $DB_PATH < "$SCRIPT_DIR/create_returns.sql"

# Seed the database
echo "Seeding database..."
sqlite3 $DB_PATH "delete from orders;" "delete from returns;"

echo "Importing orders and returns data..."
sqlite3 $DB_PATH ".mode csv" ".import --skip 1 $DATA_DIR/orders.csv orders"
sqlite3 $DB_PATH ".mode csv" ".import --skip 1 $DATA_DIR/returns.csv returns"

echo "Database created and seeded successfully!" 
echo "Database path: $DB_PATH" 

echo "Database schema: "
sqlite3 $DB_PATH ".schema" 

echo "Sample data: "
sqlite3 $DB_PATH "select * from orders limit 5;" 
sqlite3 $DB_PATH "select * from returns limit 5;" 

echo "Done!" 
