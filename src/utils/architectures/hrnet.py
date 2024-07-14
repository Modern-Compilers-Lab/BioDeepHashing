import torch.nn as nn
from torchvision import models

import timm

class Model(nn.Module):

    NAME = "hrnet"

    def __init__(self, number_of_bits, model_name):
        super().__init__()
        
        # self.original_model = timm.create_model('hrnet_w18', pretrained=True)
        self.original_model = timm.create_model(model_name=model_name, pretrained=True)
        
        self.original_model.eval()
        delattr(self.original_model, 'classifier')
        
        
        self.number_of_bits = number_of_bits

        hash_layer = nn.Linear(2048, self.number_of_bits)
        hash_layer.weight.data.normal_(0, 0.01)
        hash_layer.bias.data.fill_(0.0)
        
        self.hash_layer = hash_layer

    def forward(self, x):
        x = self.original_model(x)
        
        return self.hash_layer(x)