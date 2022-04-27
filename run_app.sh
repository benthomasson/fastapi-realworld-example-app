#!/bin/bash -ex
HERE=$(dirname "$0")
cd ${HERE}
source ~/venv/bin/activate
(nohup env $(cat .env | xargs) poetry run uvicorn --host=0.0.0.0 app.main:app 1>/tmp/log 2>&1) &
mypid=$!
echo "pid: $mypid" > fact.yml
