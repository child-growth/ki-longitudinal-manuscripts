#!/bin/bash

echo ">>> Running visualization shared scripts" >> runtime_log
echo "" >> runtime_log
{ time ./5-visualizations/shared/0-run-visualizations-shared.sh ; } 2>> runtime_log

echo ">>> Running visualization stunting scripts" >> runtime_log
echo "" >> runtime_log
{ time ./5-visualizations/shared/0-run-visualizations-stunting.sh ; } 2>> runtime_log

echo "" >> runtime_log
echo ">>> Running visualization wasting scripts" >> runtime_log
echo "" >> runtime_log
{ time ./5-visualizations/shared/0-run-visualizations-wasting.sh ; } 2>> runtime_log
