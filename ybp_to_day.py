#! /usr/bin/python

# ybp_to_day.py
# Aaron M. Duffy
# 2017-03-09

# Takes a number of years before present (between 0 and 4.5 billion and converts it
# to a string showing the time it would equate to if the 4.5 billion year history
# of the earth were scaled to a single 24 hour day.
# For example if ferns diverged 365 million years ago, then if the history of the earth
# was scaled to a single day, ferns diverged at 22:03:12.000

#usage: ./ybp_to_day.py year_integer

import sys

ybp = int(sys.argv[1])
if ybp < 0 or ybp > 4500000000:
    print("Number of years before present must be between 0 and 4.5 billion")
else:
    seconds_since_start = (1 - (ybp / 4500000000.0)) * 86400
    minutes_seconds = divmod(seconds_since_start, 60)
    hours_minutes = divmod(minutes_seconds[0], 60)
    seconds = minutes_seconds[1]
    if seconds < 10:
        seconds_string = "0" + str(seconds)
    else:
        seconds_string = str(seconds)
    #I didn't use print formatting to pad because I want to keep the decimals and I didn't use print formatting to round because that sometimes results in things rounding up to 60.000 which makes no sense in an h:mm:ss.ddd format.
    minutes = int(hours_minutes[1])
    hours = int(hours_minutes[0])
    print("%s:%02d:%s" % (hours, minutes, seconds_string))
