#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ce78aec3-53e3-4e88-883b-bd74147f649d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

