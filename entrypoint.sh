#!/bin/bash
set -e
service ssh start
cd /npc                                                                          
./npc -server=$server -vkey=$vkey -type=$type