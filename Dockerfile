# GENERATED - EDIT Dockerfile.in INSTEAD

FROM centos:centos7

LABEL name="OSG 3.6 Worker Node Client on EL 7 + testing repos"
LABEL build-date="20210816-1526"

RUN yum -y install https://repo.opensciencegrid.org/osg/3.6/osg-3.6-el7-release-latest.rpm \
                   epel-release \
                   yum-plugin-priorities && \
    yum -y install --enablerepo=osg-testing  \
                   osg-wn-client \
                   redhat-lsb-core \
                   singularity && \
    yum clean all && \
    rm -rf /var/cache/yum/*
