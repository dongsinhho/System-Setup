
git clone https://github.com/dongsinhho/Bike-Rental-System.git
cp Dockerfile Bike-Rental-System/.
cd dongsinhho
docker build -t dongsinhho/Bike-Rental-System:v1 .
cd ..
rm -rf dongsinhho