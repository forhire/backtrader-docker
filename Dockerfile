FROM jupyter/minimal-notebook:29edefbcb06a

RUN git clone https://github.com/mementum/backtrader.git /tmp/backtrader && pip install backtrader[plotting] ibapi IbPy2 backtrader_plotting jupyterlab-git && cp /tmp/backtrader/backtrader/plot/locator.py /opt/conda/lib/python3.8/site-packages/backtrader/plot/locator.py && rm -fR /tmp/backtrader 

EXPOSE 8888
