mysql_service 'default' do
  version '5.5'
  initial_root_password ''
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end
