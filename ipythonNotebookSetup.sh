CURRENT_DIR=`pwd`
docker pull continuumio/anaconda
docker run -i -t -p 8888:8888 -v $CURRENT_DIR:/opt/notebooks continuumio/anaconda /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet &&  /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser"
