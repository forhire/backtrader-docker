FROM jcrist/alpine-dask-notebook:1.2.2

USER root
RUN apk add git # Added to install backtrader master branch to get PR#418 - Fix ImportError from matplotlib.dates 
USER anaconda
RUN /opt/conda/bin/pip install git+https://github.com/mementum/backtrader.git backtrader_plotting ibapi IbPy2

