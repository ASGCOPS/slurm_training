#!/usr/bin/bash
#SBATCH --job-name=ASGC_TEST     # shows up in the output of 'squeue'
#SBATCH --time=00:50:00       # specify the requested wall-time
#SBATCH --nodes=1               # -n number of nodes allocated for this job
#SBATCH --ntasks-per-node=1     # number of MPI ranks per node
#SBATCH --cpus-per-task=3      # -c number of OpenMP threads per MPI rank
#SBATCH --error=job.%J.err      # job error. By default, both files are directed to a file of the name slurm-%j.err
#SBATCH --output=job.%J.out     # job output. By default, both files are directed to a file of the name slurm-%j.out

source /etc/profile.d/dicos-environment-modules.sh
module purge
module load intel/2020
module load mpich
module load lammps/jct/3Mar2020
export OMP_NUM_THREADS=3

srun lmp_mpi -sf omp -pk omp 3 -in SSMD_input_run.txt
