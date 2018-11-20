#!/bin/bash

echo "adding tez libs hadoop"
hadoop fs -mkdir -p /apps/tez
hadoop fs -copyFromLocal /tmp/tez-minimal.tar.gz /apps/tez/

echo "starting HiveServer2!"
${HIVE_HOME}/bin/hiveserver2 --hiveconf hive.server2.enable.doAs=false