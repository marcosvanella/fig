# fig
Contains figures used to build manuals, base images and times used to check for changes and other large files used in other repos under firemodels. 

## Base Run Times
firebot generates run times for each case it runs.  It stores these times in a directory name `$HOME/.firebot/history` in a file named something like `FDS-6.9.0-0-g6339569_timing.csv`.  To update the base times, copy the desired timing file from `$HOME/.firebot/history` to `fig/fds/Reference_Times` in this repo. Update the file `FDS_REVISION` also in this directory to the revision in the timing file name. In this example `FDS_REVISION` would contain `FDS-6.9.0-0-g6339569`.
