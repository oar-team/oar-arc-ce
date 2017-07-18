FROM centos:6

MAINTAINER Rocher Lambert "lambert.rocher@etu.univ-grenoble-alpes.fr"

USER root



# ARC installation
# ################

RUN rpm --import http://download.nordugrid.org/RPM-GPG-KEY-nordugrid

RUN yum install -y http://download.nordugrid.org/packages/nordugrid-release/releases/11.05/redhat/el6/x86_64/nordugrid-release-11.05-1.el6.noarch.rpm

RUN rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6

#RUN yum install -y http://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-acix-core-201705280215-1.el6.noarch.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-acix-cache-201705280215-1.el6.noarch.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-acix-index-201705280215-1.el6.noarch.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-ldap-infosys-201705280215-1.el6.noarch.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-hed-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-plugins-needed-201705280215-1.el6.x86_64.rpm

RUN yum install -y  http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-python-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-arex-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-aris-201705280215-1.el6.noarch.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-ca-utils-201705280215-1.el6.noarch.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-cache-service-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-client-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-datadelivery-service-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-debuginfo-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-devel-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-egiis-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-plugins-globus-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-gridftpd-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-gridmap-utils-201705280215-1.el6.noarch.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-java-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-ldap-monitor-201705280215-1.el6.noarch.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-plugins-gfal-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-plugins-s3-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-plugins-xrootd-201705280215-1.el6.x86_64.rpm

RUN yum install -y http://builds.nordugrid.org/nightlies/packages/nordugrid-arc/trunk/2017-05-28/centos/el6/x86_64/nordugrid-arc-ws-monitor-201705280215-1.el6.noarch.rpm

ADD EGI-trustanchors.repo /etc/yum.repos.d/EGI-trustanchors.repo

RUN yum install -y ca-policy-egi-core

RUN yum install -y http://linuxsoft.cern.ch/wlcg/sl6/x86_64/wlcg-voms-atlas-1.0.0-1.noarch.rpm


# Time synchronization
# ####################

RUN yum -y install ntp

RUN yum -y install time

# RUN /usr/sbin/ntpdate europe.pool.ntp.org
# We actually have to adjust the time on the host machine
# Use -v /etc/localtime:/etc/localtime when running the container

#VOLUME ["/etc/localtime:/etc/localtime"]


# VOMS clients installation
# #########################

RUN yum install -y voms-clients


# OAR client installation
# #######################

RUN echo "[OAR]" >> /etc/yum.repos.d/OAR.repo
RUN echo "name=OAR" >> /etc/yum.repos.d/OAR.repo
RUN echo "baseurl=http://oar-ftp.imag.fr/oar/2.5/rpm/centos6/stable/" >> /etc/yum.repos.d/OAR.repo
RUN echo "gpgcheck=1" >> /etc/yum.repos.d/OAR.repo
RUN echo "gpgkey=http://oar-ftp.imag.fr/oar/oarmaster.asc" >> /etc/yum.repos.d/OAR.repo
RUN echo "enabled=0" >> /etc/yum.repos.d/OAR.repo

RUN yum install -y --enablerepo=OAR oar-user

ADD oar.conf /etc/oar/oar.conf


# Telnet installation, usefull for testing ports
# ##############################################

RUN yum install -y telnet
 

# Create control and seesion directories
# ######################################

RUN mkdir -p /var/spool/arc/jobstatus

RUN mkdir -p /var/spool/arc/grid


# Add server certificates
# #######################

RUN adduser docker

ADD hostkey.pem /etc/grid-security/hostkey.pem

ADD hostcert.pem /etc/grid-security/hostcert.pem

RUN chmod 400 /etc/grid-security/hostkey.pem

RUN chmod 644 /etc/grid-security/hostcert.pem


# Add personnal certificates
# ##########################

ADD userkey.pem /home/docker/.globus/userkey.pem

ADD usercert.pem /home/docker/.globus/usercert.pem

RUN chmod 400 /home/docker/.globus/userkey.pem

RUN chmod 644 /home/docker/.globus/usercert.pem

RUN chown docker /home/docker/.globus/userkey.pem

RUN chown docker /home/docker/.globus/usercert.pem


# Add atlas voms files
# ####################

ADD atlas-voms2.cern.ch /etc/vomses/atlas-voms2.cern.ch

ADD atlas-lcg-voms2.cern.ch /etc/vomses/atlas-lcg-voms2.cern.ch


# Definition of the voms server
# #############################

ADD vomses /home/docker/.voms/vomses


# Add grid-mapfile
##################

ADD grid-mapfile /etc/grid-security/grid-mapfile
 

# Add ARC config file
# ###################

ADD arc.conf /etc/arc.conf


# Add client config file
# ######################

ADD client.conf /root/.arc/client.conf



# Add test job
# ############

ADD testarc.sh /home/docker/testarc.sh

ADD testarc.xrsl /home/docker/testarc.xrsl


# Add scripts to manage services easily
# #####################################

ADD start-services.sh /start-services.sh

ADD stop-services.sh /stop-services.sh

RUN chmod +x /start-services.sh


# Change docker user uid/gid to match oardocker
# #############################################

# ADD passwd /etc/passwd

# ADD group /etc/group

# RUN chown -R 1000:1000 /home/docker






