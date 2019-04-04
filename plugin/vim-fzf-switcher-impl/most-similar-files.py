#! /usr/bin/env python3

import sys
from heapq import heappush, heappushpop, nsmallest
import Levenshtein
import subprocess

askingFor = sys.argv[1]

proc = subprocess.Popen(['fd'], stdout=subprocess.PIPE)

input = sys.stdin

def calcDist(line):
    fileName = line.strip()
    dist = Levenshtein.distance(fileName, askingFor)
    return (dist, fileName)

firstDistance = -1
for item in nsmallest(20, map(calcDist, input)):
    dist, fileName = item
    if firstDistance == -1:
        firstDistance = dist
    else:
        if dist - firstDistance < 5:
            print(fileName)


