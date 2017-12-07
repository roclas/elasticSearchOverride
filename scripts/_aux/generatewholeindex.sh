#!/usr/bin/env bash

DIR=$(dirname "$(readlink -f "$0")")
settingspart=$(bash $DIR/generatesettings.sh)
mappingspart=$(cat $DIR/../mappings.json)

#define the template.
cat  << EOF
{
	"settings":$settingspart
	,
	"mappings":$mappingspart
}
EOF
