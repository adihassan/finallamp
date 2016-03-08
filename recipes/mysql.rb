mysql_service 'd' do
  port '3306'
  version '5.5'
  initial_root_password '121212'
  action [:create, :start]
end
