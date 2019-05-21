#! /bin/bash

# Description: This snippet logs all the output from the script
#   to the file specified by ${logfile}.
#   If ${logfile} is not specified, then ${logfile} becomes the name
#     of the script with its last dot extension replaces with .out

# Thanks to the internet for this.

logfile=$1

# If logfile is not specified, name it after the script name.
[ "isset" = "${logfile}isset" ] \
    && {
        logfile="$(basename $0)"
        logfile="${logfile%\.*}.out"
        }

# Log all output from this script to ${logfile}
exec >  >(tee -ia ${logfile})
exec 2> >(tee -ia ${logfile} >&2)


