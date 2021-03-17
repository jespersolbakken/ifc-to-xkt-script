#!/bin/bash
start=`date +%s`

innfil="$1"
filename=$(echo "$1" | cut -f 1 -d '.')

echo "Converting file to dae..."
daefile=$(./IfcConvert --use-element-guids $1 ${filename}.dae)

echo "Converting dae to gltf..."
gltffile=$(./COLLADA2GLTF-v2/COLLADA2GLTF-bin -i ${filename}.dae -o ${filename}.gltf)

echo "Converting glft to xkt..."
if xktfile=$(./xeokit-gltf-to-xkt-master/gltf2xkt.js -s ${filename}.gltf -o ${filename}.xkt); then
		ut="File conversion completed.\n$1 was successfully converted to ${filename}.xkt"
else
	ut="Something went wrong, file conversion failed"
fi

end=`date +%s`

runtime=$((end-start))

printf "\n$ut\n"
printf "Completed in $runtime seconds\n\n"

while true; do
    read -p "Do you wish to delete the dae and gltf files? " yn
    case $yn in
        [Yy]* ) rm ${filename}.dae; rm ${filename}.gltf; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


