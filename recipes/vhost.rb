include_recipe "apache2"

# finallamp
web_app "default" do
cookbook "apache2"
server_name "finallamp.prod"
server_aliases ["www.finallamp.prod"]
docroot "/var/www/html/finallamp"
end

directory "/var/www/html/finallamp" do
owner "apache"
group "apache"
mode 0755
action :create
end 
