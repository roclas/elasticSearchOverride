#!/usr/bin/env bash

scripts/REWRITEINDEXINELASTICSEARCH_needs_to_stop_server.sh
gradle build

file=$(find . -name "*.jar" | tail -1 )
LIFERAY_HOME=/home/carlos/Liferay/bundles/dxp/liferay-dxp-digital-enterprise-7.0-sp6

./clean_server.sh
cp $file $LIFERAY_HOME/deploy/

