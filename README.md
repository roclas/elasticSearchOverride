Deploying The Module:

1-Stop the portal

2-Put the built jar to the $LIFERAY_HOME/deploy folder (if it doesn't exist, create it)

3-Delete the $LIFERAY_HOME/osgi/state folder.

5-Start the portal and reindex all search indexes



Example:

#!/usr/bin/env bash

file=$(find . -name "*.jar" | tail -1 )

LIFERAY_HOME=/home/carlos/Liferay/bundles/dxp/liferay-dxp-digital-enterprise-7.0-sp6

cp $file $LIFERAY_HOME/deploy/

rm -rf $LIFERAY_HOME/osgi/state



Considerations:

*-This will override your existing elastic search module

*-If you remove this bundle, you need to restart the portal


Synonyms file:

Be careful with the special characters, they will have to be removed / escaped
