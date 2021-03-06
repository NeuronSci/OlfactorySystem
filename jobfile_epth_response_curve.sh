# The name of the script is neuron_job
#PBS -N epth_response_curve

# 4 hour wall-clock time will be given to this job
#PBS -l walltime=0:05:00
# delm PBS -l walltime=0:30:00
# a response curve sweep takes about 6 min

# Number of cores to be allocated is 24
#PBS -l mppwidth=96

#PBS -e error_file.e
#PBS -o output_file.o

# Change to the work directory
cd $PBS_O_WORKDIR

PN=0
#PN=$x
# Run the executable named myexe and write the output into my_output_file
# aprun -n 24 ./i686/special -mpi test0.hoc > my_output_file 2>&1
# aprun -n 24 /cfs/emil/pdc/bkaplan/neuron/nrnmpi/x86_64/bin/nrniv -mpi /cfs/emil/pdf/bkaplan/test/test0.hoc > my_output_file 2>&1
PARAM_FN=/cfs/klemming/nobackup/b/bkaplan/OlfactorySystem/neuron_files/Cluster_EpthResponseCurve_withVolt_OcOnly/Parameters/simulation_params.hoc
echo "Starting pattern $PN at `date`"
aprun -n 48 /cfs/klemming/nobackup/b/bkaplan/OlfactorySystem/neuron_files/x86_64/special -mpi  -c "x=$PN" -c "strdef param_file" -c "sprint(param_file, \"$PARAM_FN\")" /cfs/klemming/nobackup/b/bkaplan/OlfactorySystem/neuron_files/start_file_epth_response_curve.hoc > delme_epth_rc_$PN \
echo "Stopping pattern $PN at `date`"
