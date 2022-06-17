## FDS Comparison Images

The image files in this directory appear in the various FDS manuals. They are known as "reference" images because they are compared to the images generated each night as part of the continuous integration routine known as firebot. If a significant change in an image is detected, firebot will issue a warning. Often changes occur because of some minor improvement to the algorithm, but sometimes changes indicate that a bug has been introduced in the previous day's coding. If the change is due to a minor improvement and you want this new image to become the "reference," do the following:

1. Update and recompile Smokeview.

2. Run Smokeview from the command line with the option `-script job_name.ssf`.

3. Commit the newly created image to this directory of the `fig` repository.
