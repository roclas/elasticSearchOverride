#!/usr/bin/env bash

LIFERAY_HOME=/home/carlos/Liferay/bundles/dxp/liferay-dxp-digital-enterprise-7.0-sp6
rm -rf $LIFERAY_HOME/osgi/state
rm $LIFERAY_HOME/osgi/modules/com.liferay.portal.search.elasticsearch-2.1.15.jar

