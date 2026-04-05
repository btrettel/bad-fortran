#!/usr/bin/env -S python3 -Werror
# -*- coding: utf-8 -*-

import copy
import os
import subprocess

STATIC_CHECKERS = {"icode", "ftnchek", "floppy", "toolpack"}
SOURCE_DIR      = "src"
OUTPUT_DIR      = "out"

for static_checker in STATIC_CHECKERS:
    match static_checker:
        case "icode":
            cmd = ["icode-f77-wrapper.py"]
        case "ftnchek":
            cmd = ["ftnchek", "-declare", "-f77", "-portability", "-sixchar", "-style=block-if,distinct-do,do-construct,goto,program-stmt"]
        case "floppy":
            cmd = ["floppy", "-c2,3,4,5,6,9,10,12,16,17,18,19,20,23,25,26", "-c27,28,29,30,31,32,34,35,36,37,39,41,42,44,46"]
        case "toolpack":
            cmd = ["pfort"]
        case _:
            print("Invalid static checker: {}".format(static_checker))
            exit(1)
    
    for filename in sorted(os.listdir(SOURCE_DIR)):
        if filename.endswith(".f"):
            with open(os.path.join(OUTPUT_DIR, static_checker+"-"+filename+".out"), "w") as out_handler:
                full_cmd = copy.deepcopy(cmd)
                full_cmd.append(os.path.join(SOURCE_DIR, filename))
                print(full_cmd)
                result = subprocess.run(full_cmd, stdout=out_handler, stderr=subprocess.STDOUT)
