#!/bin/bash

# Set up bench and site
bench init frappe-bench --frappe-branch version-15 --python python3.10
cd frappe-bench

# Create new site
bench new-site test.local --no-mariadb-socket --admin-password admin --mariadb-root-password root

# Get ERPNext
bench get-app erpnext --branch version-15

# Install ERPNext
bench --site test.local install-app erpnext

# Copy your custom app into bench folder
cp -r /workspace/bank_transaction_journal apps/

# Install your custom app
bench --site test.local install-app bank_transaction_journal

# Start bench
bench start
