# Facial Similarity with Siamese Networks in Pytorch
You can read the accompanying article at https://hackernoon.com/one-shot-learning-with-siamese-networks-in-pytorch-8ddaab10340e

The goal is to teach a siamese network to be able to distinguish pairs of images. 
This project uses pytorch. 

Any dataset can be used. Each class must be in its own folder. This is the same structure that PyTorch's own image folder dataset uses.

### Converting pgm files (if you decide to use the AT&T dataset) to png
1. Install imagemagick 
2. Go to root directory of the images
3. Run `find -name "*pgm" | xargs -I {} convert {} {}.png`


You can find the project requirements in requirements.txt

#### This project requires python3.6
