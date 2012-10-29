node[:s3fs][:mount_buckets].each do |b|
  execute "s3fs #{b}" do
    user node[:s3fs][:mount_user]
    action :run
    command "export AWSACCESSKEYID=#{ node[:s3fs][:aws_access_key] }; export AWSSECRETACCESSKEY=#{ node[:s3fs][:aws_secret_key] }; mkdir -p /mnt/#{ b }; s3fs #{ b } /mnt/#{ b } -o#{ node[:s3fs][:mount_options] }"
    only_if { File.exists?("/usr/bin/s3fs") }
  end
end