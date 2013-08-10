OlfactorySystem
===============

Olfactory system simulation 

  The neuron code is in the neuron_files subfolder.
  Before running a simulation run nrnivmodl in this folder.

  For the distribution of Olfactory Receptor affinities:
    The data in the Haddad_data folder is from http://www.nature.com/nmeth/journal/v5/n5/extref/nmeth.1197-S3.xls [Haddad 2008 "A metric for odorant comparison", Nature Methods] 
    The script cluster_odorant_space.py computes the distance between the
    real-world data and the virtual olfactory receptors (=centroids after
    k-means clustering) for many trials and for various numbers of centroids.
    
    Distances between ORs and odorants is pooled by
    average_OR_affinity_distributions.py over many trials.
    It tries to fit a distribution to the data and writes the fit parameters
    to a file, which can be displayed by plot_OR_placement_fit_params.py.
    


     
  ORN response curves: run_epth_response_curve.py (calls
  prepare_epth_response_curve.py and requires SetOfCurvesPlotter.py, and
  MergeSpikefiles.py and the NEURON files -->
  start_file_epth_response_curve.hoc)


  OB response curve: similar to ORN response curve measurements, but with ORNs
  projecting to the OB 

