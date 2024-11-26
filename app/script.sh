#!/bin/bash
if [ ! -d "logs" ]; then
  mkdir logs
fi;

logLevels=("INFO" "WARN" "ERROR")
logMessages=("Some info." "Some warning !" "! Some error !")

while [ true ]; do
  rand=$((RANDOM % 3))
  if [ $rand -eq 2 ] && [ $((RANDOM % 2)) -eq 0 ]; then
    rand=0
  fi;
  time=$(date +%s)
  index=$(($time - $(($time % 300)))) # each 5 min have an index
  log="{\
\"level\":\"${logLevels[rand]}\",\
\"data\":{\"message\":\"${logMessages[rand]}\",\
\"rand\":$RANDOM},\
\"date\":\"$(date +%F)\",\
\"time\":\"$(date +%T)\",\
\"index\":\"$index\"\
}";
  tee <<< $log -a ./logs/app-$index.log;
  sleep 2;
done
