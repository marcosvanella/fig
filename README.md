# fig
Contains figures used to build manuals, base images and times used to check for changes and other large files used in other repos under firemodels. 

firebot generates timings for each case it runs.  It stores these timings in the `$HOME/.firebot/history` directory in a file named like `FDS-6.9.0-0-g6339569_timing.csv`.  To update the base times firebot uses for timing comparison copy the desired timing file from this directory to `fig/fds/Reference_Times` in this repo. Update the file FDS_REVISION also in this to revision in the timing file name.
