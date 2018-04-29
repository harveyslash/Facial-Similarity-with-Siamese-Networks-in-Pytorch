# Facial Similarity with Siamese Networks in Pytorch
You can read the accompanying article at https://hackernoon.com/one-shot-learning-with-siamese-networks-in-pytorch-8ddaab10340e

The goal is to teach a siamese network to be able to distinguish pairs of images. 
This project uses pytorch. 

Any dataset can be used. Each class must be in its own folder. This is the same structure that PyTorch's own image folder dataset uses.

### Get to the usual context for our development
```bash
cd ~/dev/clearfree
```

### First clone Russ's up-to-date pytorch repo and build a local image
```bash
git clone https://github.com/pytorch/pytorch.git pytorchfork
cd pytorchfork
git checkout -b working origin/working
docker build -t topiaruss/pytorch:master -f docker/pytorch/Dockerfile .
cd ..
```

### Then clone the repo, build, and run the siamfacial image
```bash
git clone https://github.com/topiaruss/Facial-Similarity-with-Siamese-Networks-in-Pytorch.git siamfacial
cd siamfacial
docker build -t siamfacial .
nvidia-docker run --rm -i -p 8889:8889 siamfacial:latest
```

May need to replace the URL host IP in the output with localhost.

Run the cells. 
