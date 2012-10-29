node[:s3fs][:mount_buckets].each do |b|
  execute "s3fs #{b}" do
    user node[:s3fs][:mount_user]
    action :run
    command "export AWSACCESSKEYID=#{ node[:s3fs][:aws_access_key] }; export AWSSECRETACCESSKEY=#{ node[:s3fs][:aws_secret_key] }; mkdir -p #{ node[:s3fs][:mount_root] }/#{ b }; s3fs #{ b } #{ node[:s3fs][:mount_root] }/#{ b } -o#{ node[:s3fs][:mount_options] }"
    only_if { File.exists?("/usr/bin/s3fs") }
    not_if "grep -qs '#{ node[:s3fs][:mount_root] }/#{ b } ' /proc/mounts" # the extra space in the grep is on purpose!
  end
end

##
#
# without the extra space in the grep, looking for:
#   /mnt/foo
#
# would result in a false positive with:
#  /mnt/foobar
#
##