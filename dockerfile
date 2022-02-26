FROM jupyter/scipy-notebook:lab-3.2.9

LABEL maintainer="Zachary del Rosario"
LABEL maintainer_email="zdelrosario@olin.edu"
LABEL version="0.1"

# Install package requirements
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy exercise files
COPY exercises .
