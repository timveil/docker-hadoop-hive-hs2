#!/bin/bash

echo "adding tez libs hadoop"
hadoop fs -mkdir -p /apps/tez
hadoop fs -copyFromLocal ${TEZ_LIB_DIR}/*.jar /apps/tez/

echo "starting hiveserver2"
${HIVE_HOME}/bin/hiveserver2 --hiveconf hive.server2.enable.doAs=false