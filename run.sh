#!/bin/bash

hadoop fs -mkdir /apps/tez
hadoop fs -copyFromLocal /tmp/tez-minimal.tar.gz /apps/tez/

${HIVE_HOME}/bin/hiveserver2 --hiveconf hive.server2.enable.doAs=false
#
#echo "adding files to hadoop"
#hadoop fs -mkdir /tmp/array_test
#hadoop fs -copyFromLocal ${TEST_DATA_DIR}/array-test.csv /tmp/array_test
#
#hadoop fs -mkdir /tmp/data_type_test
#hadoop fs -copyFromLocal ${TEST_DATA_DIR}/data-type-test.csv /tmp/data_type_test
#
#hadoop fs -mkdir /tmp/date_time_test
#hadoop fs -copyFromLocal ${TEST_DATA_DIR}/date-time-test.csv /tmp/date_time_test
#
#hadoop fs -mkdir /tmp/map_test
#hadoop fs -copyFromLocal ${TEST_DATA_DIR}/map-test.csv /tmp/map_test
#
#hadoop fs -mkdir /tmp/struct_test
#hadoop fs -copyFromLocal ${TEST_DATA_DIR}/struct-test.csv /tmp/struct_test
#
#echo "creating database"
#${HIVE_HOME}/bin/beeline -u jdbc:hive2://localhost:10000/default -e 'create database if not exists tests'
#
#echo "running sql statements"
#${HIVE_HOME}/bin/beeline -u jdbc:hive2://localhost:10000/tests -f ${TEST_DATA_DIR}/array-test.sql
#${HIVE_HOME}/bin/beeline -u jdbc:hive2://localhost:10000/tests -f ${TEST_DATA_DIR}/data-type-test.sql
#${HIVE_HOME}/bin/beeline -u jdbc:hive2://localhost:10000/tests -f ${TEST_DATA_DIR}/date-time-test.sql
#${HIVE_HOME}/bin/beeline -u jdbc:hive2://localhost:10000/tests -f ${TEST_DATA_DIR}/map-test.sql
#${HIVE_HOME}/bin/beeline -u jdbc:hive2://localhost:10000/tests -f ${TEST_DATA_DIR}/struct-test.sql
#
#echo "all finished with sql statements"