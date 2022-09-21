#!/bin/sh -l


cf api "$INPUT_CF_API"
cf auth "$INPUT_CF_USERNAME" "$INPUT_CF_PASSWORD"


sh -c "cf $*" 