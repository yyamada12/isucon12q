#!/bin/bash

# 指定したディレクトリ内のすべての .db ファイルに対してループ
for db_file in ../../initial_data/*.db; do
  echo "Processing $db_file ..."
  # sqlite3 で SQL ファイルを適用
  sqlite3 "$db_file" < ./add_index.sql
done

echo "All databases processed."
