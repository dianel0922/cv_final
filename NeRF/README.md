## Requirements (refference from [NeRF](https://github.com/yenchenlin/nerf-pytorch/tree/master) )
This is the hardware and software required to run NeRF. Technically, the viewer has much smaller requirements compared to the the optimizer. I decided to list the 

### Hardware
- windows 11
- An NVIDIA GPU with 24GB VRAM* or more. Preferably an RTX 3080 or better. 

### Software
This is the sofware dependencies you will need installed prior to installing the project. Many of these dependencies are shared with other NeRF projects.
- __Git__ - You will need this to pull the code from GitHub. You can download it [here ](https://git-scm.com/downloads). Follow default installation instructions. You can test to see if you have it already installed by typing ```git --version``` into command prompt
- __Conda__ - I recommend using [Anaconda](https://www.anaconda.com/download) because it's easy to install and manage environments in the future. [MiniConda](https://docs.conda.io/en/latest/miniconda.html) is a great lightweight alternative.
- __CUDA Toolkit__ - this was tested with 11.8. Ensure you are not running 11.6 or 12+. You can download CUDA Toolkit [here](https://developer.nvidia.com/cuda-toolkit-archive) You can check which version of CUDA Toolkit you have installed by typing ```nvcc --version``` into command prompt.
- __Visual Studio 2019 or newer__ - You can download and install it [here](https://visualstudio.microsoft.com/vs/older-downloads/). Make sure you add __Desktop Development with C++__ when installing <br>
- __Kaggle__ -
   - **Kaggle CLI** is used to download datasets directly from Kaggle.
   - Install Kaggle via:
     ```bash
     pip install kaggle
     ```



## Installation
cmd order
```shell
git clone git clone https://github.com/dianel0922/cv_final.git
cd cv_final\nerf
pip install -r requirements.txt
```

## How To Run?
### Quick Start

Download dataset
```
bash download_example_data.sh
```

To train a low-res `lego` NeRF:
```
python run_nerf.py --config configs/lego.txt
```
After training for 100k iterations , you can find the following video at `logs/lego_test/lego_test_spiral_100000_rgb.mp4`.

To train a sparse `trex` NeRF:
```
python run_nerf.py --config configs\trex_sparse.txt
```


> NOTE: \
> You should import all the file above to you software otherwise you will loss info  