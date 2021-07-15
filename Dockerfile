# GENERATED - EDIT Dockerfile.in INSTEAD

FROM centos:centos7

LABEL name="OSG 3.6 Worker Node Client on EL 7"
LABEL build-date="20210715-0758"

RUN yum -y install https://repo.opensciencegrid.org/osg/3.6/osg-3.6-el7-release-latest.rpm \
                   epel-release \
                   yum-plugin-priorities && \
    yum -y install   \
                   osg-wn-client \
                   redhat-lsb-core \
                   singularity && \
    yum clean all && \
    rm -rf /var/cache/yum/*
