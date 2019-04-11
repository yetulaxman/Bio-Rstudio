FROM bioconductor/release_protmetcore2:latest

MAINTAINER sneumann@ipb-halle.de

ADD install.R /tmp/

# invalidates cache every 24 hours
ADD http://master.bioconductor.org/todays-date /tmp/

RUN R -f /tmp/install.R