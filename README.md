# Bad Fortran

This is a repository of Fortran code with known bugs, undefined behavior, unspecified behavior, and bad practices. For the moment, my focus is on FORTRAN 77 as my motivation in making this repository is to help figure out what is detected and not detected by various compilers and static analyzers to help when modernizing code. This also helps keep the scope more manageable to start. Later, I might add examples from Fortran 90 and later. To detect false positives, known good code might be added later as well.

Many of these test cases come from elsewhere. Credit is given in the file header. Each case also has been modified to make the code style more uniform and reduce the number of warnings/errors for each file to only the intended warnings/errors.

Some guidelines:

- If different compilers may display different behavior, make which behavior is present visible in the output.
