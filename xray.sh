#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3ed388b6-8444-4ca5-b669-03c4e784f081"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

