FROM nfcore/base:1.7
LABEL authors="Lennart Krohn" \
      description="Docker image containing all requirements for nf-core/refcaller pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-refcaller-1.0dev/bin:$PATH
