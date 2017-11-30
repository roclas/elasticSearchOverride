#!/usr/bin/env bash

file=$(find . -name "*.jar" | tail -1 )
LIFERAY_HOME=/home/carlos/Liferay/bundles/dxp/liferay-dxp-digital-enterprise-7.0-sp6

#mkdir -p $LIFERAY_HOME/osgi/marketplace/override/
#cp ./build/libs/com.liferay.portal.search.elasticsearch-2.1.15.jar $LIFERAY_HOME/osgi/marketplace/override/

cp $file $LIFERAY_HOME/deploy/
rm -rf $LIFERAY_HOME/osgi/state

