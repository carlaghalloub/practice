# replace Name with your name 
N=1
for n in $(seq 1 5)
do
echo "Creating the directory carla${n} while changine paramater in input.txt to N=${N}"
mkdir carla${n}
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt
cd carla${n}
cp ../input.txt ./
cd ../
N=$(( $N + $n ))
done
