import os, re

# Rename files to put hyphens in date strings
# Run this FROM the cwd you want to manipulate, we don't pass in the CWD as an arg!
# /target-folder$ python ~/workspace/macos-configs/renamer.py

CWD = os.getcwd()
print(f"CWD set to {CWD}")

to_rename = []
existing_files = set()
for root, dirs, files in os.walk(CWD):
    # print(root, dirs, files, "\n")
    for file in sorted(files):
        # will check for dupes with this later
        if not file.lower().endswith(".pdf"):
            continue
        target = ""
        # 6 character prefix, #s only
        if len(file) == 10 and re.match("20[0-9]{4}\.pdf", file, re.IGNORECASE):
            target = "%s-%s.%s" % (file[0:4], file[4:6], file[7:10])
            to_rename.append([file, target])
        # 8 character prefix, #s only
        if len(file) == 12 and re.match("20[0-9]{6}\.pdf", file, re.IGNORECASE):
            target = "%s-%s-%s.%s" % (file[0:4], file[4:6], file[6:8], file[9:12])
            to_rename.append([file, target])

        if target in existing_files:
            raise Exception(f"STOPPING because target {target} already exists")
        existing_files.add(file)

print(f"Evaluated {len(files)} files and found {len(to_rename)} files to rename:")
if dirs:
    print(f"Skipped {len(dirs)} directories which may contain matching files")
for orig, target in to_rename:
    print(f" {orig} -> {target}")

if to_rename:
    input_string = f"Would you like to rename these {len(to_rename)} files? [y/N]: "
    if input(input_string).lower().strip() == "y":
        for orig, target in to_rename:
            print(f" renaming {orig} -> {target} ...")
            os.rename(os.path.join(CWD, orig), os.path.join(CWD, target))
    else:
        print("No changes made")
