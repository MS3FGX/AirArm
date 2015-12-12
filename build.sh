#/bin/sh
# Compile STLs for all .scad files

# Create STL dir if it doesn't exist
mkdir -p STL

for i in *.scad
do
	echo -n "Building $i..."
	openscad -o STL/$(basename $i .scad).stl $i 2> /dev/null
	echo "Done"
done
