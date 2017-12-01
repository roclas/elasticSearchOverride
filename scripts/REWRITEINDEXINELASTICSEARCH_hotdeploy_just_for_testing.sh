#!/usr/bin/env bash


DIR=$(dirname "$(readlink -f "$0")")
###############################################################################
#########CHANGE THESE VARIABLES################################################
###############################################################################
liferayhome="/home/carlos/Liferay/bundles/dxp/liferay-dxp-digital-enterprise-7.0-sp2"
index="liferay-20116"
#host="192.168.0.101:9200"
host="localhost:9200"
###############################################################################
#########CLEANING##############################################################
rm -rf $liferayhome/data/elasticsearch/indices/* 
rm -rf $liferayhome/osgi/state/* 
###############################################################################
#########FLUSHING THE INDEX####################################################
curl -XDELETE "$host/$index" | json_pp 
#curl -XPUT "$host/$index" -d @completeindex.json | json_pp
curl -XPUT "$host/$index" -d @<( bash $DIR/aux/generatewholeindex.sh )




###############################################################################
#curl -XGET "$host/$index/_mappings" | json_pp > mappings.json

