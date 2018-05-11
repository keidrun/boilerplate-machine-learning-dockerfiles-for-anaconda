FROM continuumio/anaconda3:5.1.0

RUN conda update -n base conda \
  && conda create -n tf-env python=3.6 \
  && . activate tf-env \
  && conda install tensorflow

VOLUME /data/notebooks

EXPOSE 8888

CMD jupyter notebook --notebook-dir=/data/notebooks --ip=0.0.0.0 --port=8888 --no-browser --allow-root
