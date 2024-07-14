import torch.nn as nn
from torchvision import models
from biotorch.module.biomodule import BioModule

# This implementation is analogous to the one in
# https://github.com/thuml/MMHH/blob/master/src/mmhh_network.py

class Model(nn.Module):

    NAME = "alexnet"

    def __init__(self, number_of_bits, mode):
        super().__init__()
        if mode == 'fa':
            from biotorch.layers.fa import Linear
        elif mode == 'frsf':
            from biotorch.layers.frsf import Linear
        elif mode == 'usf':
            from biotorch.layers.usf import Linear

        self.original_model = BioModule(module=models.alexnet(weights='IMAGENET1K_V1'), mode=mode)
        self.number_of_bits = number_of_bits
        self.features = self.original_model.module.features
        self.classifier = nn.Sequential()
        for i in range(6):
            self.classifier.add_module("classifier" + str(i), self.original_model.module.classifier[i])
        self.feature_layers = nn.Sequential(self.features, self.classifier)
        hash_layer = Linear(self.original_model.module.classifier[6].in_features, self.number_of_bits)
        hash_layer.weight.data.normal_(0, 0.01)
        hash_layer.bias.data.fill_(0.0)
        self.hash_layer = hash_layer

    def forward(self, x):
        x = self.features(x)
        x = x.view(x.size(0), 256 * 6 * 6)
        x = self.classifier(x)
        return self.hash_layer(x)