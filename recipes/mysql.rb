mysql_service 'd' do
  port '3306'
  version '5.5'
  initial_root_password '121212'
  action [:create, :start]
end
mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :password => node[:mysql][:server_root_password]
}

mysql_database_user 'test' do
  connection mysql_connection_info
  password   '121212'
  action     :create
end