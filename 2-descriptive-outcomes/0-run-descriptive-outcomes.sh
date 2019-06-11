#!/bin/bash

echo ">>> Running stunting scripts" >> runtime_log
echo "" >> runtime_log
{ time ./2-descriptive-outcomes/stunting/0-run-descriptive-outcomes-stunting.sh ; } 2>> runtime_log

echo "" >> runtime_log
echo ">>> Running wasting scripts" >> runtime_log
echo "" >> runtime_log
{ time ./2-descriptive-outcomes/stunting/0-run-descriptive-outcomes-wasting.sh ; } 2>> runtime_log
