#!/bin/sh -l


#cf api "$INPUT_CF_API"
#cf auth "$INPUT_CF_USERNAME" "$INPUT_CF_PASSWORD"



cf login -a "123" -u "123" -p "123"
cf apps

#sh -c "cf $*"  