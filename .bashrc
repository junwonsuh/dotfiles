# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

#export GREP_OPTIONS='--color=always'
export EMR_DNS_OLD='ec2-34-204-85-131.compute-1.amazonaws.com'
export EMR_DNS='ec2-52-91-42-201.compute-1.amazonaws.com'


export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME=/Users/jun-won/Tools/maven/apache-maven-3.3.9

export GOPATH=/Users/jun-won/Documents/workspace/iap-valuation
export GOROOT=/usr/local/Cellar/go/1.8/libexec

export PATH=$PATH:$M2_HOME/bin:$GOPATH/bin:$GOROOT/bin:/Users/jun-won/Documents/workspace/mongoLearn/mongodb:/Users/jun-won/anaconda/bin:/usr/local/bin/:~/.local/bin:
export GREP_OPTIONS='--color=always'

# set the default region for the AWS CLI
export AWS_DEFAULT_REGION=$(curl --retry 5 --silent --connect-timeout 2 http://169.254.169.254/latest/dynamic/instance-identity/document | grep region | awk -F\" '{print $4}')
export JAVA_HOME=/etc/alternatives/jre

export SPARK_HOME="/usr/lib/spark"
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.3-src.zip:$PYTHONPATH

export PYSPARK_SUBMIT_ARGS='--master yarn --conf spark.serializer=org.apache.spark.serializer.KryoSerializer --executor-memory 12558m --executor-cores 4 --driver-java-options -Dlog4j.configuration=file:///usr/lib/spark/conf/log4j.properties --conf spark.default.parallelism=42 --conf spark.driver.memory=10g --conf spark.memory.storageFraction=0.25 --conf spark.memory.fraction=0.8 --conf spark.driver.maxResultSize=2g --conf spark.shuffle.spill=true --conf spark.broadcast.blockSize=512m --conf spark.sql.autoBroadcastJoinThreshold=-1 --conf spark.yarn.executor.memoryOverhead=2584 --conf spark.sql.shuffle.partitions=1000 --conf spark.yarn.driver.memoryOverhead=2584 --conf spark.akka.frameSize=256 --conf spark.kryoserializer.buffer.max=256m '

# Left over spark configs
# spark.driver.cores=6  spark.default.parallelism=2388  spark.yarn.maxAppAttempts=1  spark.yarn.submit.waitAppCompletion=false spark.io.compression.codec=lz4 spark.memory.useLegacyMode=false




alias cqlsh='/Users/jun-won/Documents/workspace/dsc-cassandra-3.0.9/bin/cqlsh'
# this is for tuneling
alias notes1='ssh -L 4242:$EMR_DNS:22 jun-won@terminal.applifier.info'
alias notes2='ssh -i ~/.ssh/cron2-emr-keypair.pem -N -D 8157 hadoop@$EMR_DNS'

alias notes1old='ssh -L 4242:$EMR_DNS_OLD:22 jun-won@terminal.applifier.info'
alias notes2old='ssh -i ~/.ssh/cron2-emr-keypair.pem -N -D 8157 hadoop@$EMR_DNS_OLD'





# this open up hadoop ui
alias notes0_old='ssh -i ~/.ssh/cron2-emr-keypair.pem -N -L 8158:$EMR_DNS:8088 hadoop@$EMR_DNS'

# this is for tuneling
alias notes1_old='ssh -L 4242:$EMR_DNS:22 jun-won@terminal.applifier.info'

# open dynamic port
alias notes2_old='ssh -i ~/.ssh/cron2-emr-keypair.pem  hadoop@127.0.0.1 -p 4242'

alias notes3_old='ssh -i ~/.ssh/cron2-emr-keypair.pem -N -D 8157 hadoop@$EMR_DNS'

export EMRT='ec2-54-172-32-17.compute-1.amazonaws.com'
alias notes1_1='ssh -L 4242:$EMRT:22 jun-won@terminal.applifier.info'

# open dynamic port
alias notes2_1='ssh -i ~/.ssh/cron2-emr-keypair.pem  hadoop@127.0.0.1 -p 4242'

alias notes3_1='ssh -i ~/.ssh/cron2-emr-keypair.pem -N -D 8157 hadoop@$EMR_DNS'

alias notes4='ssh -i ~/.ssh/cron2-emr-keypair.pem -D 8157  -p 4242 -q hadoop@127.0.0.1'
alias tfon='source activate tensorflow'
alias tfoff='source deactivate'


