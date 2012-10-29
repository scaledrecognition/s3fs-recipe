maintainer       "Patrick Leckey"
maintainer_email "pat.leckey@canvaspop.com"
license          "MIT"
description      "Mounts a S3 bucket as file system"
version          "0.0.2"

%w{ubuntu}.each do |os|
  supports os
end

recipe           "s3fs", "Mounts a S3 bucket as file system. Forked from https://github.com/pleckey/s3fs-recipe"