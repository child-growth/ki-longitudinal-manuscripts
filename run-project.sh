#!/bin/bash

rm runtime_log

echo ">>> RUNNING DATA-CLEANING SCRIPTS" >> runtime_log
{ time ./1-data-cleaning/0-clean-data.sh ; } 2>> runtime_log

echo $'\n>>> RUNNING DESCRIPTIVE OUTCOMES SCRIPTS' >> runtime_log

# { time ./2-descriptive-outcomes/0-run-descriptive-outcomes.sh ; } 2>> runtime_log
# 
# echo "" >> runtime_log
# echo ">>> Running visualization scripts" >> runtime_log
# echo "" >> runtime_log
# { time ./5-visualizations/0-run-visualizations.sh ; } 2>> runtime_log
