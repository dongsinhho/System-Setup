
git clone https://github.com/addonrizky/hellome.git
cp Dockerfile hellome/.
cd hellome
docker build -t rizkyaddon/hellome:v1 .
cd ..
rm -rf hellome