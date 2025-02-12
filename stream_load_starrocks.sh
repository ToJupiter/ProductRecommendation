#!/bin/bash

DATABASE="product_recommendation"
TABLE="data"
STARROCKS_USER="root"
STARROCKS_PASSWORD=""
FE_HOST="localhost:8030"
DATA_DIR="./data.csv" # replace with your file destination

# Optional label for this load
LABEL="load_product_recommendation_data_final1"

# Check that the file exists before loading
if [ -f "$DATA_DIR" ]; then
    curl --location-trusted -u "$STARROCKS_USER:$STARROCKS_PASSWORD" \
         -H "Expect:100-continue" \
         -H "label: ${LABEL}" \
         -H "column_separator: ," \
         -H "line_delimiter: \n" \
         -H "max_filter_ratio: 1" \
         -H "skip_header : 1" \
         -T "$DATA_DIR" \
         -XPUT "http://$FE_HOST/api/$DATABASE/$TABLE/_stream_load"
else
    echo "File not found: $DATA_DIR , make sure the data file is in the same directory with this script"
fi
