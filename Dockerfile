ARG BASE_CONTAINER=jupyter/base-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Christian Wustrau <christian.wustrau@ovgu.de>"

USER root

# install additional package...
RUN pip install --no-cache-dir numpy \
	scipy \
	seaborn \
	pandas \
	deap \
	plotnine \
	dubins

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID

WORKDIR $HOME