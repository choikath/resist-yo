#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ $DIR = "/apps/reflect_admin/prod" ]; then
PORT=3906
cd $DIR
echo "Starting prod"
MONGO_URL=mongodb://localhost:27017/meteor_reflect ROOT_URL=http://reflect_admin.uphs.upenn.edu:$PORT  meteor run --port $PORT --settings settings.json >> server.log

else
PORT=3907
cd $DIR
echo "Starting dev"
MONGO_URL=mongodb://localhost:27017/meteor_reflect ROOT_URL=http://reflect_admin.uphs.upenn.edu:$PORT  meteor run --port $PORT --settings settings.json >> server.log
fi









