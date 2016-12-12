#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ $DIR = "/apps/resist-yo/prod" ]; then
PORT=3998
cd $DIR
echo "Starting prod on port $PORT"
MONGO_URL=mongodb://localhost:27017/resist-yo ROOT_URL=http://mhealthlabs.uphs.upenn.edu:$PORT  meteor run --port $PORT --settings settings.json >> server.log

else
PORT=3997
cd $DIR
echo "Starting dev on port $PORT"
MONGO_URL=mongodb://localhost:27017/resist-yo_dev ROOT_URL=http://mhealthlabs.uphs.upenn.edu:$PORT  meteor run --port $PORT --settings settings.json >> server.log
fi









