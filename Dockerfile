# GENERATED - EDIT Dockerfile.in INSTEAD

FROM centos:centos7

LABEL name="OSG 3.5 Worker Node Client on EL 7 + development repos"
LABEL build-date="20190919-1542"

RUN yum -y install https://repo.opensciencegrid.org/osg/3.5/osg-3.5-el7-release-latest.rpm \
                   epel-release \
                   yum-plugin-priorities && \
    yum -y install --enablerepo=osg-development \
                   osg-wn-client \
                   redhat-lsb-core \
                   singularity && \
    yum clean all && \
    rm -rf /var/cache/yum/*
