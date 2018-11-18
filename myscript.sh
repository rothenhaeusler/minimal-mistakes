#!/bin/bash

yum -y install zeromq-devel

if [ -s /etc/exports ]  
   then
   # execute commands on master node
   wget https://download2.rstudio.org/rstudio-server-rhel-1.1.463-x86_64.rpm
   yum -y install rstudio-server-rhel-1.1.463-x86_64.rpm
   echo $'PATH = /opt/sge/bin:/opt/sge/bin/lx-amd64:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/centos/.local/bin:/home/centos/bin\nSGE_ROOT = /opt/sge' > /home/centos/.Renviron
   chmod +777 /home/centos/.Renviron
fi
