FROM rancher/storage-nfs:v0.6.0

USER root
RUN groupadd -g 500 zope-www \
 && useradd -g 500 -u 500 zope-www \
 && sed -i 's|# Domain = localdomain|Domain = web.storage.eea|' /etc/idmapd.conf
