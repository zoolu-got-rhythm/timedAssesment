echo "installing mysql-server"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password password"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password password"
sudo apt-get install -y mysql-server
echo "installing git and configuring settings"
sudo apt-get install -y git

git config --global user.email "christopher.pkm@gmail.com"
git config --global user.name "christopher"

echo "cloning northwind..."
git clone https://gitlab.cs.cf.ac.uk/CM6212/northwind.git
cd northwind
echo "creating tables and populating.."
mysql --user=root --password=password < northwind.sql
mysql --user=root --password=password < northwind-data.sql
cd ..



