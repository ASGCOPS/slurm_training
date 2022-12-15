#!/bin/bash

#SBATCH --job-name=My_MCORE_Job # shows up in the output of 'squeue'
#SBATCH --time=01:00:00       # specify the requested wall-time
#SBATCH --nodes=1               # -n number of nodes allocated for this job
#SBATCH --ntasks-per-node=1     # number of MPI ranks per node
#SBATCH --cpus-per-task=10      # -c number of OpenMP threads per MPI rank
#SBATCH --error=job.%J.err      # job error. By default, both files are directed to a file of the name slurm-%j.err
#SBATCH --output=job.%J.out     # job output. By default, both files are directed to a file of the name slurm-%j.out

srun stress -c 10 -t 100
