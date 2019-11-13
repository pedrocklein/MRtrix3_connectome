docker run -i --rm \
      -v $1:/bids_dataset \
      -v $2:/output \
      -v $(pwd):/workdir \
      pedrocklein/tvb-pipeline \
      python /workdir/mrtrix3_connectome.py -s /bids_dataset /output participant --participant_label ${3} --parcellation desikan
