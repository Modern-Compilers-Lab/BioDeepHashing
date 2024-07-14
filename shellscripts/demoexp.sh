python src/models/PenaltyStrategies/train.py -exp demoexp -db ImageNet_test -bs 128 -ep 20 -arch vgg16 -loss HyP2 -nbits 64
python src/models/PenaltyStrategies/predict.py -exp demoexp -db ImageNet_test -bs 128 -ep 20 -arch vgg16 -loss HyP2 -nbits 64


python src/models/PenaltyStrategies/train.py -exp demoexp -db ImageNet_test -bs 128 -ep 20 -arch hrnet -loss HyP2 -nbits 64
python src/models/PenaltyStrategies/predict.py -exp demoexp -db ImageNet_test -bs 128 -ep 20 -arch hrnet -loss HyP2 -nbits 64


