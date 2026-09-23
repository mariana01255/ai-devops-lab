# Day 03 · Permissions

## Files
- secret.txt mode 600, owned by me
- shared.sh mode 750, owned by me

## Commands and results

$ ls -l secret.txt shared.sh
-rw------- 1 mary mary 11 secret.txt
-rwxr-x--- 1 mary mary 32 shared.sh

$ sudo -u nobody cat secret.txt
cat: secret.txt: Permission denied

$ ./shared.sh
shared ok

$ sudo -u nobody bash -c 'echo hacked >> shared.sh'
bash: shared.sh: Permission denied

$ cat shared.sh
#!/bin/bash
echo shared ok
