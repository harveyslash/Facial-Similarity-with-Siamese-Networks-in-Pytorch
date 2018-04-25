# Facial Similarity with Siamese Networks in Pytorch
You can read the accompanying article at https://hackernoon.com/one-shot-learning-with-siamese-networks-in-pytorch-8ddaab10340e

The goal is to teach a siamese network to be able to distinguish pairs of images. 
This project uses pytorch. 

Any dataset can be used. Each class must be in its own folder. This is the same structure that PyTorch's own image folder dataset uses.

### Converting pgm files (if you decide to use the AT&T dataset) to png
1. Install imagemagick 
2. Go to root directory of the images
3. Run `find -name "*pgm" | xargs -I {} convert {} {}.png`



## Installing the right version of PyTorch 
You can go over to http://pytorch.org and download version **0.3.0.post4** for your setup.
For Cuda 8 on linux it can be installed using : pip install http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp36-cp36m-linux_x86_64.whl 


You can find other project requirements in `requirements.txt` , which you can install using `pip install -r requirements.txt`

#### This project requires python3.6

# Topiaruss notes

First we need to get a local pytorch image

```bash
git clone https://github.com/pytorch/pytorch.git
cd pytorch
docker build -t pytorch -f docker/pytorch/Dockerfile .cd ..
```

Then clone and build the siamfacial repo

```bash
git clone https://github.com/topiaruss/Facial-Similarity-with-Siamese-Networks-in-Pytorch.git siamfacial
cd siamfacial
docker build -t siamfacial .
nvidia-docker run --rm -it -p 8889:8889 siamfacial:latest
```

May need to replace the URL host IP in the output with localhost.

Run the cells. 
