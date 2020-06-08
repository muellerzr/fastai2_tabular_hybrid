# fastai2_tabular_hybrid
> Hybrid approaches to supporting more datatypes with fastai2 tabular

# DataLoaders:

* **NumpyDataloader**: uses NumPy as the backend to speed up performance up to ~8X fast.ai’s TabularPandas DataLoader.
* **TensorDataloader**: uses PyTorch Tensor as the backend to speed up performance up to ~20X fast.ai’s TabularPandas DataLoader if entire Dataset can fit into GPU memory.

# Contributers:

* Zachary Mueller
* Benjamin Warner

# Directions for Contributing:

1. Fork this repository into your GitHub Account
2. Ensure that `nbdev` is installed on your system
3. Make any changes and ensure that you run the following **before** commiting:
  * `nbdev_build_lib`
  * `nbdev_clean_nbs`
4. Open a Pull Request with the library, and choose "From fork" to open one with the main repository.
