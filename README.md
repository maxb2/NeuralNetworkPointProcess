# Code for "Fully Neural Network based Model for General Temporal Point Processes"

This is a source code for

T. Omi, N. Ueda, and K. Aihara, "Fully neural network based model for general temporal point processes", Advances in Neural Information Processing Systems 32 (Neurips 2019), 2120 (2019).

Paper:

[NeurIPS] https://papers.nips.cc/paper/8485-fully-neural-network-based-model-for-general-temporal-point-processes

[Arxiv] https://arxiv.org/abs/1905.09690

[GitHub] https://omitakahiro.github.io/files/slide/Omi2019_Neurips.pdf

***

# Python Setup
Tested in Ubuntu 20.04. Conda required.
To set up the virtual environment and install required dependencies run:
```
$ ./setup.sh install
```


# Notebook details
**NOTE:** Scripts in this repository don't work for the latest version of TensorFlow. Please see the branch [`python_setup`](https://github.com/omitakahiro/NeuralNetworkPointProcess/tree/python_setup) for how to setup the environment, which was contributed by @mattclifford1

Please see the [keras_implementation.ipynb](https://github.com/omitakahiro/NeuralNetworkPointProcess/blob/master/keras_implementation.ipynb) for how to implement the proposed model with Keras. More details can be found in [code.ipynb](https://github.com/omitakahiro/NeuralNetworkPointProcess/blob/master/code.ipynb)

The jupyter notebook can be also viewed at https://nbviewer.jupyter.org/github/omitakahiro/NeuralNetworkPointProcess/blob/master/keras_implementation.ipynb
https://nbviewer.jupyter.org/github/omitakahiro/NeuralNetworkPointProcess/blob/master/code.ipynb
