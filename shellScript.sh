echo "installing mysql-server"
sudo apt-get install -y mysql-server
echo "installing git and configuring settings"
sudo apt-get install -y git

git config --global user.email "christopher.pkm@gmail.com"
git config --global user.name "christopher"

echo "cloning northwind..."
git clone https://gitlab.cs.cf.ac.uk/CM6212/northwind.git
cd northwind
echo "creating tables and populating.."
mysql --user=user --password=password < northwind.sql
mysql --user=user --password=password < northwind-data.sql
cd ..
git clone https://github.com/zoolu-got-rhythm/sqlExamTests.git
cd sqlExamTests
mysql --user=user --password=password < test.sql



