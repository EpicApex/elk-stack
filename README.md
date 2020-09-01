# Context - ELK stack using filebeat and A log chopper
Description
 - log creator, busy box manifesting an infinite loop of TS logging each 5 seconds
 - filebeat to collect the logs from log creator
 - logstash to filter out some json values and send to elastic search
 - kabana to display the elastic search data
