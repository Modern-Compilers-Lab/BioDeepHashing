python src/models/PenaltyStrategies/train.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DCH -nbits 32 -mode fa
python src/models/PenaltyStrategies/predict.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DCH -nbits 32 -mode fa
python src/eval/eval_map.py -p "models/PenaltyStrategies/NUS_WIDE/bioexp/-loss=DCH-nbits=32-trf=imagenet-arch=bio-vgg16-seed=0-bs=128-mode=fa-ep=20-pt=10-lr=1e-05-wd=0.0005-optim=adam-penalty=0.01-L2_penalty=0.0-HSWD_penalty=0.0"

python src/models/PenaltyStrategies/train.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DCH -nbits 32 -mode frsf
python src/models/PenaltyStrategies/predict.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DCH -nbits 32 -mode frsf
python src/eval/eval_map.py -p "models/PenaltyStrategies/NUS_WIDE/bioexp/-loss=DCH-nbits=32-trf=imagenet-arch=bio-vgg16-seed=0-bs=128-mode=frsf-ep=20-pt=10-lr=1e-05-wd=0.0005-optim=adam-penalty=0.01-L2_penalty=0.0-HSWD_penalty=0.0"

python src/models/PenaltyStrategies/train.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DCH -nbits 32 -mode usf
python src/models/PenaltyStrategies/predict.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DCH -nbits 32 -mode usf
python src/eval/eval_map.py -p "models/PenaltyStrategies/NUS_WIDE/bioexp/-loss=DCH-nbits=32-trf=imagenet-arch=bio-vgg16-seed=0-bs=128-mode=usf-ep=20-pt=10-lr=1e-05-wd=0.0005-optim=adam-penalty=0.01-L2_penalty=0.0-HSWD_penalty=0.0"





python src/models/PenaltyStrategies/train.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss HyP2 -nbits 32 -mode fa
python src/models/PenaltyStrategies/predict.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss HyP2 -nbits 32 -mode fa
python src/eval/eval_map.py -p "models/PenaltyStrategies/NUS_WIDE/bioexp/-loss=HyP2-nbits=32-trf=imagenet-arch=bio-vgg16-seed=0-bs=128-mode=fa-ep=20-pt=10-lr=1e-05-wd=0.0005-optim=adam-penalty=0.01-L2_penalty=0.0-HSWD_penalty=0.0"

python src/models/PenaltyStrategies/train.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss HyP2 -nbits 32 -mode frsf
python src/models/PenaltyStrategies/predict.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss HyP2 -nbits 32 -mode frsf
python src/eval/eval_map.py -p "models/PenaltyStrategies/NUS_WIDE/bioexp/-loss=HyP2-nbits=32-trf=imagenet-arch=bio-vgg16-seed=0-bs=128-mode=frsf-ep=20-pt=10-lr=1e-05-wd=0.0005-optim=adam-penalty=0.01-L2_penalty=0.0-HSWD_penalty=0.0"

python src/models/PenaltyStrategies/train.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss HyP2 -nbits 32 -mode usf
python src/models/PenaltyStrategies/predict.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss HyP2 -nbits 32 -mode usf
python src/eval/eval_map.py -p "models/PenaltyStrategies/NUS_WIDE/bioexp/-loss=HyP2-nbits=32-trf=imagenet-arch=bio-vgg16-seed=0-bs=128-mode=usf-ep=20-pt=10-lr=1e-05-wd=0.0005-optim=adam-penalty=0.01-L2_penalty=0.0-HSWD_penalty=0.0"




python src/models/PenaltyStrategies/train.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DPSH -nbits 32 -mode fa
python src/models/PenaltyStrategies/predict.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DPSH -nbits 32 -mode fa
python src/eval/eval_map.py -p "models/PenaltyStrategies/NUS_WIDE/bioexp/-loss=DPSH-nbits=32-trf=imagenet-arch=bio-vgg16-seed=0-bs=128-mode=fa-ep=20-pt=10-lr=1e-05-wd=0.0005-optim=adam-penalty=0.01-L2_penalty=0.0-HSWD_penalty=0.0"

python src/models/PenaltyStrategies/train.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DPSH -nbits 32 -mode frsf
python src/models/PenaltyStrategies/predict.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DPSH -nbits 32 -mode frsf
python src/eval/eval_map.py -p "models/PenaltyStrategies/NUS_WIDE/bioexp/-loss=DPSH-nbits=32-trf=imagenet-arch=bio-vgg16-seed=0-bs=128-mode=frsf-ep=20-pt=10-lr=1e-05-wd=0.0005-optim=adam-penalty=0.01-L2_penalty=0.0-HSWD_penalty=0.0"

python src/models/PenaltyStrategies/train.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DPSH -nbits 32 -mode usf
python src/models/PenaltyStrategies/predict.py -exp bioexp -db NUS_WIDE -bs 128 -ep 20 -arch bio-vgg16 -loss DPSH -nbits 32 -mode usf
python src/eval/eval_map.py -p "models/PenaltyStrategies/NUS_WIDE/bioexp/-loss=DPSH-nbits=32-trf=imagenet-arch=bio-vgg16-seed=0-bs=128-mode=usf-ep=20-pt=10-lr=1e-05-wd=0.0005-optim=adam-penalty=0.01-L2_penalty=0.0-HSWD_penalty=0.0"


