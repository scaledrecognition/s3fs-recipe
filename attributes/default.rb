# installation versions
default["fuse"]["version"] = "2.8.7"
default["s3fs"]["version"] = "1.61"

# AWS information
default["s3fs"]["aws_access_key"] = ""
default["s3fs"]["aws_secret_key"] = ""

# mounting details
default["s3fs"]["mount_root"] = "/mnt"
default["s3fs"]["mount_buckets"] = []
default["s3fs"]["mount_user"] = "root"