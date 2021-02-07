FROM continuumio/anaconda3

RUN pip install backtrader[plotting] backtrader_plotting
