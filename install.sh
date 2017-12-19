# Copy line by line and paste to an interactive shell

# Update system
apt-get update
apt-get upgrade

# Install Java
add-apt-repository ppa:openjdk-r/ppa  
apt-get update   
apt-get install openjdk-7-jdk  

# Download & Install Hadoop
wget http://apache.mirrors.tds.net/hadoop/common/hadoop-2.7.5/hadoop-2.7.5.tar.gz -P ~/Downloads
tar zxvf ~/Downloads/hadoop-* -C /usr/local
mv /usr/local/hadoop-* /usr/local/hadoop

# Configure environment (copy the whole block)
echo "
export JAVA_HOME=$(readlink -f $(which java))
export PATH=\$PATH:\$JAVA_HOME/bin
export HADOOP_HOME=/usr/local/hadoop
export PATH=\$PATH:\$HADOOP_HOME/bin
export HADOOP_CONF_DIR=/usr/local/hadoop/etc/hadoop
" >> ~/.bashrc

# Load configure
source ~/.bashrc
