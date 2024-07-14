# Code Base for BioDeepHashing Project
- Hybrid Bio-Training 
- HHNet: High-resolution hashing network (arXiv:2403.13747)

## Setup
This code base is based on an open-source project: https://github.com/Lucas-Schwengber/h2q

The experiments are split into three phases : Training -> Prediction -> Evaluating

To Intall the environment run:
```shell
python -m venv bioenv
source bioenv/bin/activate
pip install -r requirements.txt
```

And initialize the environment running:
```shell
source bioenv/bin/activate
```

## Initializing the directories

To start, create the following directories:
```shell
mkdir experiments
mkdir models
mkdir eval
```

The `data` directory is the one that will contain our four datasets (CIFAR_10, ImageNet, MS_COCO and NUS_WIDE). See more below.

The `experiments` directory will contain logs of experiments.

The `models` directory will contain the trained models weights and metadata.

The `eval` directory will contain the metrics of each trained model.


## Downloading and processing the datasets

The first step is to download and process the datasets. We have 4 datasets: CIFAR_10, ImageNet, MS_COCO and NUS_WIDE. The following code will download the raw datasets, CIFAR_10, MS_COCO and NUS_WIDE:
```shell
python src/data/download/CIFAR_10.py
python src/data/download/MS_COCO.py
python src/data/download/NUS_WIDE.py
```

To pre-process the three datasets above run:
```shell
python src/data/process/CIFAR_10.py
python src/data/process/MS_COCO.py
python src/data/process/NUS_WIDE.py
```

For ImageNet the procedure is slightly different. The download must be done via Kaggle. The instructions are in `src/data/download/ImageNet.py`.
For pre-processing, the raw information containing the splits must be collected from the HashNet repository https://github.com/thuml/HashNet and placed at:
```shell
data/raw/ImageNet/hashnet/HashNet/pytorch/data/imagenet/database.txt
data/raw/ImageNet/hashnet/HashNet/pytorch/data/imagenet/train.txt
data/raw/ImageNet/hashnet/HashNet/pytorch/data/imagenet/test.txt
```

After this, the pre-processing step should be done running:

```shell
python src/data/process/ImageNet.py
```

After running downloading and processing the datasets you can proceed to the experiments.

## Running a single experiment

We illustrate the full procedure to train, predict and evaluate a single hyperparameter combination of a given model.

First train running:
```shell
python src/models/PenaltyStrategies/train.py -exp bioexp -db CIFAR_10 -bs 128 -ep 20 -arch bio-vgg16 -loss DCH -nbits 32 -mode fa
```
Then predict running:
```shell
python src/models/PenaltyStrategies/predict.py -exp bioexp -db CIFAR_10 -bs 128 -ep 20 -arch bio-vgg16 -loss DCH -nbits 32 -mode fa
```
Finally evaluate by running:
```shell
python src/eval/eval_map.py -p "models/PenaltyStrategies/CIFAR_10/bioexp/-loss=DCH-nbits=32-trf=imagenet-arch=bio-vgg16-seed=0-bs=128-mode=fa-ep=20-pt=10-lr=1e-05-wd=0.0005-optim=adam-penalty=0.01-L2_penalty=0.0-HSWD_penalty=0.0"
```


## Running the experiments

For bio-plausible rules, 3 modes are available:
- Feedback alignment : `-mode fa`;
- Fixed Random Magnitude Sign-concordant Feedbacks (frSF): `-mode frsf`;
- Uniform Sign-concordant Feedbacks (uSF) : `-mode usf`
