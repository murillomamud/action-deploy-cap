#!/bin/sh -l

CF_API=$1
CF_USER=$2
CF_PASS=$3
CF_ORG=$4
CF_SPACE=$5
CF_COMMAND=$6

#cf api "$INPUT_CF_API"
#cf auth "$INPUT_CF_USERNAME" "$INPUT_CF_PASSWORD"

echo $CF_COMMAND

cf api $CF_API
cf login -u $CF_USER -p $CF_PASS -o $CF_ORG
cf install-plugin multiapps -f
cf apps
cf $CF_COMMAND

#sh -c "cf $*"  