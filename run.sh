#!/bin/bash

echo "starting HiveServer2!"

${HIVE_HOME}/bin/hiveserver2 --hiveconf hive.server2.enable.doAs=false