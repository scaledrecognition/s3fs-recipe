# Amazon s3fs Recipe

The purpose of this recipe is to create an s3fs driver for multiple s3 buckets, that can be changed or managed individually per role and environment.


## Setup

To build / install FUSE and s3fs, simply include the default s3fs recipe.

To mount S3 buckets using s3fs, override the following attributes:

    :s3fs => {
        :aws_access_key = "AWS_ACCESS_KEY",
        :aws_secret_key = "AWS_SECRET_KEY",
        :mount_root = "/mnt", # defaults to /mnt
        :mount_buckets = [ "bucket1", "bucket2" ]
    }

## What does it do?

It will install and configure FUSE and s3fs on your machine.  The example above will mount 2 s3 buckets, "bucket1" and "bucket2", to /mnt/bucket1 and /mnt/bucket2

## Support

If you have any problems or change requests to this recipe please contact pat.leckey@canvaspop.com

## Credits

This recipe is base on Tom Wilson's <tom@jackhq.com> port of the s3fs recipe by Jack Russell Software <team@jackrussellsoftware.com>
