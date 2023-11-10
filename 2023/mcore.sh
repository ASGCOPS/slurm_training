#!/bin/bash

#SBATCH --job-name=My_MCORE_Job # define the name of your job
#SBATCH --time=01:00:00         # specify the required time
#SBATCH --nodes=1               # number of nodes allocated to the job
#SBATCH --ntasks-per-node=1     # number of tasks to invoke on each node
#SBATCH --cpus-per-task=10      # number of CPUs required per task
#SBATCH --error=job.%J.err      # job error. By default, both files are directed to a file of the name slurm-%j.err
#SBATCH --output=job.%J.out     # job output. By default, both files are directed to a file of the name slurm-%j.out

srun stress -c 10 -t 100
