# FlinkSQLDemo
Apache Flink SQL

```
HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /user/admin
HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /user/root
HADOOP_USER_NAME=hdfs hdfs dfs -chown root:root /user/root
HADOOP_USER_NAME=hdfs hdfs dfs -chown admin:admin /user/admin
HADOOP_USER_NAME=hdfs hdfs dfs -chmod -R 777 /user

flink-yarn-session -tm 2048 -s 2 -d

```


Then run your sql client

```
flink-sql-client embedded
```

Build a table

```
CREATE TABLE sensors (
	 sensor_id INT, sensor_ts DOUBLE, sensor_0 DOUBLE,sensor_1 DOUBLE,sensor_3 DOUBLE, sensor_4 DOUBLE, sensor_5 DOUBLE, sensor_6 DOUBLE, sensor_7 DOUBLE, sensor_8 DOUBLE, sensor_9 DOUBLE, sensor_10 DOUBLE, sensor_11 DOUBLE
) WITH (
	'connector.type'    	 = 'kafka',
	'connector.version' 	 = 'universal',
	'connector.topic'   	 = 'iot',
	'connector.startup-mode' = 'earliest-offset',
	'connector.properties.bootstrap.servers' = 'edge2ai-1.dim.local:9092',
	'format.type' = 'json'
);

```

Show the table

```
SHOW tables;

```

Start our query.

```
SELECT * FROM sensors;
```


