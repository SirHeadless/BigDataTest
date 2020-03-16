FROM hive

MAINTAINER SIRHEADLESS

USER root

# get sources
RUN mkdir /home/hadoop/livy
RUN wget http://apache.lauf-forum.at/incubator/livy/0.6.0-incubating/apache-livy-0.6.0-incubating-bin.zip -P /home/hadoop/livy

# Unzip
RUN apt-get install unzip
RUN unzip /home/hadoop/livy/apache-livy-0.6.0-incubating-bin.zip -d /home/hadoop/livy/

# Add Permission
RUN mkdir /home/hadoop/livy/apache-livy-0.6.0-incubating-bin/logs
RUN chown -R hadoop /home/hadoop/livy/

EXPOSE 8998

# Start entrypoint.sh to start livy
#ADD entrypoint.sh .

#RUN chmod +x entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]

