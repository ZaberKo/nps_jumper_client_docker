#!/bin/bash
set -e
service ssh start                                                                          
/npc/npc -server=$server -vkey=$vkey -type=$type