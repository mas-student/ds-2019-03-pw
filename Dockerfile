FROM jupyter/base-notebook:python-3.7.3
WORKDIR /home/jovyan/app
COPY requirements.txt ./
COPY data ./data
COPY main.ipynb ./main.ipynb
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 10000
CMD ["start-notebook.sh"]
