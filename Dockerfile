# GENERATED - EDIT Dockerfile.in INSTEAD

FROM centos:centos8

LABEL name="OSG 3.5 Worker Node Client on EL 8 + development repos"
LABEL build-date="20210325-1458"

RUN yum -y install https://repo.opensciencegrid.org/osg/3.5/osg-3.5-el8-release-latest.rpm \
                   epel-release \
                    && \
    yum -y install --enablerepo=osg-development --enablerepo=powertools \
                   osg-wn-client \
                   redhat-lsb-core \
                   singularity && \
    yum clean all && \
    rm -rf /var/cache/yum/*
