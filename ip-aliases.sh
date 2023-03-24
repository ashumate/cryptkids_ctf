# One of the challenges is to determine the number of live hosts on a network.
# To simulate a large number of live host several IP aliases are assigned to a linux instance
# This is the script used to create those aliases.
# This should work with any distro (I'm running it on Arch with LTS kernel) just change <iface> and n variables and your IP ranges
# I don't remember where I found this script.

#!/bin/bash
for x in $(seq n n)
do
         ip addr add 10.20.250.${x}/16 dev <iface> label <iface>:a${x}
done
for y in $(seq n n)
do
         ip addr add 10.20.252.${y}/16 dev <iface> label <iface>:b${y}
done
for z in $(seq n n)
do
         ip addr add 10.20.254.${z}/16 dev <iface> label <iface>:c${z}
done
