#!/usr/bin/env bash

DIR=$(dirname "$(readlink -f "$0")")

$DIR/aux/generatesettings.sh > $DIR/../src/main/resources/META-INF/index-settings.json    
cat $DIR/mappings.json > $DIR/../src/main/resources/META-INF/mappings/liferay-type-mappings.json
