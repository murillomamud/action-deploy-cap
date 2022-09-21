#!/bin/sh -l


#cf api "$INPUT_CF_API"
#cf auth "$INPUT_CF_USERNAME" "$INPUT_CF_PASSWORD"

cf login -a "$INPUT_CF_API" -u "$INPUT_CF_USERNAME" -p "$INPUT_CF_PASSWORD"
cf apps

#sh -c "cf $*"  