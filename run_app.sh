#!/bin/bash -ex
(nohup env $(cat .env | xargs) poetry run uvicorn --host=0.0.0.0 app.main:app 1>/dev/null 2>&1) &
mypid=$!
echo "pid: $mypid" > fact.yml
