# No Kerberos 

HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /user/admin
HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /user/root
HADOOP_USER_NAME=hdfs hdfs dfs -chown root:root /user/root
HADOOP_USER_NAME=hdfs hdfs dfs -chown admin:admin /user/admin
HADOOP_USER_NAME=hdfs hdfs dfs -chmod -R 777 /user
