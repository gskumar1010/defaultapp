FROM ibmcom/websphere-traditional:latest-ubi
COPY app.ear /work/config/app.ear
COPY install_app.py /work/config/install_app.py
COPY was-config.props /work/config/was-config.props
ENV HOME /work
RUN mkdir /work/.java && \
  chmod 777 /work/.java && \
  chown was:root /work/.java && \
  /work/configure.sh

EXPOSE 9080
EXPOSE 9043
EXPOSE 9443
