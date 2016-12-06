# Connection parameters
default_connection_info = {
  :host     => '127.0.0.1',
  :username => 'root',
  :password => ''
}

# Create a development database
mysql_database 'rails_development' do
  connection default_connection_info
  action :create
end

# Create a test database
mysql_database 'rails_test' do
  connection default_connection_info
  action :create
end

# Create mysql user rails
mysql_database_user 'rails' do
  connection default_connection_info
  password ''
  action :create
end

# Grant all privileges on rails_development to rails
mysql_database_user 'rails' do
  connection default_connection_info
  password ''
  database_name 'rails_development'
  host 'localhost'
  action :grant
end

# Grant all privileges on rails_test to rails
mysql_database_user 'rails' do
  connection default_connection_info
  password ''
  database_name 'rails_test'
  host 'localhost'
  action :grant
end

# Create root user on host machine
mysql_database_user 'root' do
  connection default_connection_info
  password ''
  host '10.0.2.2'
  action :create
end

# grant all privileges on all databases/tables for the root@host
mysql_database_user 'root' do
  connection default_connection_info
  password ''
  host '10.0.2.2'
  action :grant
end
