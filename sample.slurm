#!/bin/bash
#SBATCH --job-name=serial_job_test    # Job name
#SBATCH --mail-type=NONE # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=email@ufl.edu     # Where to send mail	
#SBATCH --ntasks=1                    # Run on a single CPU
#SBATCH --mem=100mb                   # Job memory request
#SBATCH --time=00:05:00               # Time limit hrs:min:sec
#SBATCH --output=serial_test_%j.log   # Standard output and error log
pwd; hostname; date

echo "Running plot script on a single CPU core"

date

