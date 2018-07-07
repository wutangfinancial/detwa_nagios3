remote_directory '/etc/nagios3/conf.d' do
 source 'conf.d'
 purge false
 mode '0755'
 action :create
 notifies :restart, 'service[nagios3]', :immediately
end

service "nagios3" do
 action [ :enable, :start ]
end


