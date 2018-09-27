FROM timveil/docker-hadoop-hive-base:3.1.x

LABEL maintainer="tjveil@gmail.com"

ENV TEST_DATA_DIR=/opt/test-data

ADD run.sh /run.sh
RUN chmod a+x /run.sh \
    && mkdir -pv $TEST_DATA_DIR

ADD data/array-test.csv $TEST_DATA_DIR
ADD data/array-test.sql $TEST_DATA_DIR
ADD data/data-type-test.csv $TEST_DATA_DIR
ADD data/data-type-test.sql $TEST_DATA_DIR
ADD data/date-time-test.csv $TEST_DATA_DIR
ADD data/date-time-test.sql $TEST_DATA_DIR
ADD data/map-test.csv $TEST_DATA_DIR
ADD data/map-test.sql $TEST_DATA_DIR
ADD data/struct-test.csv $TEST_DATA_DIR
ADD data/struct-test.sql $TEST_DATA_DIR

CMD ["/run.sh"]