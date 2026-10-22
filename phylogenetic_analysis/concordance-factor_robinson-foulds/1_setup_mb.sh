mkdir -p nexus

for f in *.phy; do
    name="${f%.phy}"
    echo "Converting $name"

    pxs2phy -s "$f" -o "/tmp/${name}.phy" &&
    pxs2nex -s "/tmp/${name}.phy" -o "nexus/${name}.nex"

    sed -i -E "s/^([[:space:]]*)'([A-Za-z0-9_.-]+)'/\1\2/" "nexus/$name.nex"

    rm -f "/tmp/${name}.phy"
done
