# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
export M2_HOME=/Users/jun-won/Tools/maven/apache-maven-3.3.9

export PATH=$PATH:$M2_HOME/bin:$GOPATH/bin:$GOROOT/bin:/usr/bin/:/usr/local/bin/:~/.local/bin:
export GREP_OPTIONS='--color=always'

export SPARK_HOME="/usr/lib/spark"
export PYSPARK_PYTHON=/usr/bin/python
export PYSPARK_DRIVER_PYTHON=ipython
export PYTHONPATH=$PYSPARK_PYTHON:$SPARK_HOME/python/:$SPARK_HOME/python/lib/py4j-0.10.3-src.zip:$PYTHONPATH


export PYSPARK_SUBMIT_ARGS='--master yarn --conf spark.serializer=org.apache.spark.serializer.KryoSerializer --executor-memory 12558m --executor-cores 4 --driver-java-options -Dlog4j.configuration=file:///usr/lib/spark/conf/log4j.properties --conf spark.default.parallelism=42 --conf spark.dri\
ver.memory=10g --conf spark.memory.storageFraction=0.25 --conf spark.memory.fraction=0.8 --conf spark.driver.maxResultSize=2g --conf spark.shuffle.spill=true --conf spark.broadcast.blockSize=512m --conf spark.sql.autoBroadcastJoinThreshold=-1 --conf spark.yarn.executor.memoryOverhead=2584 --c\
onf spark.sql.shuffle.partitions=1000 --conf spark.yarn.driver.memoryOverhead=2584 --conf spark.akka.frameSize=256 --conf spark.kryoserializer.buffer.max=256m pyspark-shell'

alias port_forwarding='gcloud compute ssh --internal-ip iap-promo-m -- -L 8889:localhost:8889'
alias port_forwarding2='gcloud compute ssh --internal-ip iap-promo-m -- -D 1080 -N'
alias upload='gsutil -m rsync -r /home/jun-won/ipython gs://unity-ads-ds-prd-users/junwon/ipython'
alias download='gsutil -m rsync -r gs://unity-ads-ds-prd-users/junwon/ipython /home/jun-won/ipython '
