## Ref : https://github.com/osrf/tensorflow_object_detector
sudo apt-get update 
sudo apt-get install -y virtualenv 

virtualenv --system-site-packages ~/pytorch

source ~/pytorch/bin/activate

easy_install -U pip

pip install -r requirements.txt 
pip install -U https://download.pytorch.org/whl/cu101/torch-1.3.0-cp27-cp27mu-manylinux1_x86_64.whl 

## Also need to install TensorRT to run tensorflow-gpu properly, change this based on your CUDA version
sudo apt-get install -y --no-install-recommends libnvinfer6=6.0.1-1+cuda10.1
sudo apt-get install -y --no-install-recommends libnvinfer-dev=6.0.1-1+cuda10.1
sudo apt-get install -y --no-install-recommends libnvinfer-plugin6=6.0.1-1+cuda10.1
