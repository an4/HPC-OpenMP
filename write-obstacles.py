#!/usr/bin/python

# 
# Script to write out obstacle coordinates.
# Writes a file, 3 numbers per line:
# <x-coordinate> <y-coordinate> <blocked: 1/0>
# Where 1 indicates the presence of an obstacle
# at the grid location and 0 indicates no obstacle.
#

nrows = 128
ncols = 128

# Write out 'bottom rail'
for x in range(0, ncols):
    print x, "0", "1"

# Write out 'top rail'
for x in range(0, ncols):
    print x, nrows-1, "1"

# Write out 'left rail'
for y in range(0, nrows):
    print "0", y, "1"

# Write out 'right rail'
for y in range(0, nrows):
    print ncols-1, y, "1"
