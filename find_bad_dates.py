import os, re

# Find bad dates (20240221) that can be hyphenated (2024-02-21) 
# /target-folder$ python ~/workspace/macos-configs/find_bad_dates.py

import os

CWD = os.getcwd()
print(f"CWD set to {CWD}")

def recursive_walk(folder):
    # https://stackoverflow.com/a/32140063
    for folderName, subfolders, filenames in os.walk(folder):
        if subfolders:
            for subfolder in subfolders:
                recursive_walk(subfolder)
        to_print = []
        match_cnt, nomatch_cnt = 0, 0
        for filename in filenames:
            if re.match("^20[0-9]{6} .*?\.pdf", filename, re.IGNORECASE):
                to_print.append(filename)
                match_cnt += 1
            else:
                nomatch_cnt += 1
                # this is for debug only
                # print("FAIL", filename)
        if to_print:
            print(f'{match_cnt} of {match_cnt+nomatch_cnt}: ' + folderName)
            print("\n".join(["  " + x for x in to_print]))

recursive_walk(CWD)
