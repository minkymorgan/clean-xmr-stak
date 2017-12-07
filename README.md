# clean-xmr-stak 
[xmr-stak](https://github.com/fireice-uk/xmr-stak) miner compiled from source into a nvidia-docker image you can use locally.

Because the docker files define the process to fetch and compile xmr-stak from source, you can be assured that there is no funny business going on when you pull and use this docker to mine XMR using Cuda.


# How to use
```bash
# check your version of cuda
nvcc --version

# note: the next steps are for version 8.+ 
# if you have a different cuda version, alter the Dockerfile to pull the correct nvidia-docker base image to one matching your version.
# if all is well, continue:

git clone 
cd clean-xmr-stak
nvidia-docker build -t clean-xmr-stak .

# nvidia-docker run clean-xmr-stak POOL WALLET PASSWORD 
nvidia-docker run -p 127.0.0.1:8011:8011 clean-xmr-stak pool.minexmr.com 4A2tCSUY17JJ1zVRLuYV9tU93orLA1SLEVzrdjLeMmUDSBt927LgRSTho66EdPH98F1GTPzuqFfRh52kBbz4xRzkGviiJSY x  

```
# Donate
XMR: `4A2tCSUY17JJ1zVRLuYV9tU93orLA1SLEVzrdjLeMmUDSBt927LgRSTho66EdPH98F1GTPzuqFfRh52kBbz4xRzkGviiJSY`

