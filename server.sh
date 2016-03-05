#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ $DIR = "/apps/boilerplate/prod" ]; then
PORT=3998
cd $DIR
echo "Starting prod on port $PORT"
MONGO_URL=mongodb://localhost:27017/boilerplate ROOT_URL=http://mhealthlabs.uphs.upenn.edu:$PORT  meteor run --port $PORT --settings settings.json >> server.log

else
PORT=3997
cd $DIR
echo "Starting dev on port $PORT"
MONGO_URL=mongodb://localhost:27017/boilerplate_dev ROOT_URL=http://mhealthlabs.uphs.upenn.edu:$PORT  meteor run --port $PORT --settings settings.json >> server.log
fi









