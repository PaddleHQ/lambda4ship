
FROM lambci/lambda:build-python3.6

# doing this in stages can cause yum horrors - if you get messages
# like
#
#   Rpmdb checksum is invalid: dCDPT(pkg checksums)
#
# then see
#
#   https://github.com/CentOS/sig-cloud-instance-images/issues/15
#
# for information and suggestions that help.

RUN rpm --rebuilddb && yum -y update \
    && yum install -y yum-plugin-ovl && yum clean all \
    && yum -y install sudo jq && yum clean all && \
    rm -rf /var/cache/yum /var/lib/rpm/__db.* 
