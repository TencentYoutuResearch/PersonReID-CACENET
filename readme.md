# YoutuReID

YoutuReID is a research framework that implements state-of-the art person re-identification algorithms


## Models
this project provides the following algorithms and scripts to run them. Please see the details in the link provided in the description column

|ABBRV|Algorithms|Description|Status|
|:-:|:-:|:-:|:-:|
|CACENET|<a href="https://arxiv.org/abs/2009.05250">Devil's in the Details: Aligning Visual Clues for Conditional Embedding in Person Re-Identification</a>|<a href="docs/CACENET/CACENET.md">CACENET.md</a>|finished|
|Pyramid|<a href="https://openaccess.thecvf.com/content_CVPR_2019/papers/Zhe~~~~ng_Pyramidal_Person_Re-IDentification_via_Multi-Loss_Dynamic_Training_CVPR_2019_paper.pdf">Pyramidal Person Re-IDentification via Multi-Loss Dynamic Training</a>|<a href="docs/Pyramid/CVPR-2019-Pyramid.md">CVPR-2019-Pyramid.md</a>|coming soon|

You also can find these models in [model_zoo](docs/model_zoo.md)

## Requirements and Preparation
Please install `Python>=3.6` and `PyTorch>=1.6.0`. 

#### Prepare Datasets
Download the public datasets(like market1501 and DukeMTMC), organize these datasets using the following format:

File Directory:
├── partitions.pkl
├── images
│ ├── 0000000_0000_000000.png
│ ├── 0000001_0000_000001.png
│ ├── ...

1. Rename the images in following convention:
"000000_000_000000.png" where the first substring splitted by underline is the person identity;
for the second substring, the first digit is the camera id and the rest is track id;
and the third substring is an image offset.

2. "partitions.pkl" file
This file contains a python dictionary storing meta data of the datasets, which contains folling key value pairs
"train_im_names": [list of image names] #storing a list of names of training images
"train_ids2labels":{"identity":label} #a map that maps the person identity string to a integer label
"val_im_names": [list of image names] #storing a list of names of validation images
"test_im_names": [list of image names] #storing a list of names of testing images
"test_marks"/"val_marks": [list of 0/1] #0/1 indicates if an image is in gallery

## Geting Started

#### Clone this github repository:
```
git clone 
```

#### train
1. Configure basic settings in core/config
2. Define the network in net and register in the factory.py
3. Set the corresponding hyperparameters in the example yaml
4. set example.yaml path in config.yaml  
5. set port and gpu config in cmd.sh
5. cd train && ./cmd.sh

###### Quickly Started

```bash
cd train && ./cmd.sh
```

## Citation
If you are interested in our works, please cite our papers
```
@article{yu2020devil,
  title={Devil's in the Details: Aligning Visual Clues for Conditional Embedding in Person Re-Identification},
  author={Yu, Fufu and Jiang, Xinyang and Gong, Yifei and Zhao, Shizhen and Guo, Xiaowei and Zheng, Wei-Shi and Zheng, Feng and Sun, Xing},
  journal={arXiv e-prints},
  pages={arXiv--2009},
  year={2020}
}
@inproceedings{zheng2019pyramidal,
  title={Pyramidal Person Re-IDentification via Multi-Loss Dynamic Training},
  author={Zheng, Feng and Deng, Cheng and Sun, Xing and Jiang, Xinyang and Guo, Xiaowei and Yu, Zongqiao and Huang, Feiyue and Ji, Rongrong},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={8514--8522},
  year={2019}
}
```




