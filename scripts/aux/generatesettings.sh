#!/usr/bin/env bash

DIR=$(dirname "$(readlink -f "$0")")
generatedsynonyms=$( bash $DIR/generatesynonyms.sh )

#define the template.
cat  << EOF
		{
			"analysis": {
      				"filter": {
        				"my_synonym_filter": {
          					"type": "synonym", 
          					"synonyms": [ 
							$generatedsynonyms
          					]
        				}
      				},
				"analyzer": {
					"my_synonym_analyzer": {
						"filter": [
							"lowercase"
							,
							"stop"
							,
							"trim"
							,
							"word_delimiter"
							,
            						"my_synonym_filter" 
						],
						"tokenizer": "whitespace"
					},
					"asset_tag_name": {
						"filter": [
							"lowercase"
							,
							"stop"
							,
							"trim"
							,
							"word_delimiter"
						],
						"tokenizer": "whitespace"
					},
					"keyword_lowercase": {
						"filter": [
							"lowercase"
						],
						"tokenizer": "keyword"
            					
					}
				}
			}
		}
EOF

