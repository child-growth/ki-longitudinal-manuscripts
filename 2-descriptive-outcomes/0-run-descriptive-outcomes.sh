#!/bin/bash

echo ">>> Running descriptive outcomes stunting" >> runtime_log
echo "" >> runtime_log
{ time ./2-descriptive-outcomes/stunting/0-run-descriptive-outcomes-stunting.sh ; } 2>> runtime_log

echo "" >> runtime_log
echo ">>> Running descriptive outcomes wasting" >> runtime_log
echo "" >> runtime_log
{ time ./2-descriptive-outcomes/wasting/0-run-descriptive-outcomes-wasting.sh ; } 2>> runtime_log
