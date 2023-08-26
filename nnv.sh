#!/bin/bash
nvidia-smi $@ | ~/nvidia-htop_fromnvidiasmi.py -c

