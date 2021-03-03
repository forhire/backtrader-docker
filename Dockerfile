FROM jcrist/alpine-dask-notebook:1.2.2

USER root 
# Added to install backtrader master branch to get PR#418 - Fix ImportError from matplotlib.dates 
RUN apk add git
USER anaconda

RUN git clone https://github.com/mementum/backtrader.git /tmp/backtrader && /opt/conda/bin/pip install backtrader[plotting] ibapi IbPy2 && mkdir /home/anaconda/notebooks
RUN cp /tmp/backtrader/backtrader/plot/locator.py /opt/conda/lib/python3.7/site-packages/backtrader/plot/locator.py && rm -fR /tmp/backtrader && /opt/conda/bin/pip install backtrader_plotting jupyterlab-git

CMD ["jupyter", "lab", "--notebook-dir=/home/anaconda/notebooks"]
