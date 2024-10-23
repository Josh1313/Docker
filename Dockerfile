FROM jupyter/tensorflow-notebook:latest

USER $NB_UID

# Upgrade pip and install additional dependencies
RUN pip install --upgrade pip && \
    pip install transformers pysrt && \
    fix-permissions "/home/jovyan"

# Copy files to the working directory inside the container
COPY captions_english.srt /home/jovyan/
COPY Translator.ipynb /home/jovyan/  