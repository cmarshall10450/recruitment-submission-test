#!/bin/sh

DB_NAME=ecommerce.db
DB_PATH=../$DB_NAME


# Create a new database
sqlite3 $DB_PATH < ./create_orders.sql
sqlite3 $DB_PATH < ./create_returns.sql

# Seed the database
sqlite3 $DB_PATH < ./seed_db.sql
