FROM jcrist/alpine-dask-notebook:1.2.2

RUN /opt/conda/bin/pip install backtrader[plotting] backtrader_plotting ibapi IbPy2

