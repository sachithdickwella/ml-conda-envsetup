# Windows WSL Installation

PyTorch and Tensorflow required dependency installation for Windows Subsystem for Linux. 

Divided the environment file into multiple files due to slowness in `conda` resolving the dependecies and have a visibility over installation.

Here use a simple ShellScript `./install.sh` to execute the initial installation and update with other dependencies. 

```shellscript
bash install.sh pytorch
```

**or**

```shellscript
bash install.sh tensorflow
```