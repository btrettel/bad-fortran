# Fortran static analysis and compiler diagnostic tests

This is a repository of Fortran code with known bugs, undefined behavior, unspecified behavior, and bad practices. For the moment, my focus is on FORTRAN 77 as my motivation in making this repository is to help figure out what is detected and not detected by various compilers and static analyzers to help when modernizing code. This also helps keep the scope more manageable to start. Later, I might add examples from Fortran 90 and later. To detect false positives, known good code might be added later as well.

Many of these test cases come from elsewhere. Credit is given in the file header. Each case also has been modified to make the code style more uniform and reduce the number of warnings/errors for each file to only the intended warnings/errors.

Some guidelines:

- Modify each test case to make the code style more uniform and reduce the number of warnings/errors for each file to only the intended warnings/errors. For example, all variables should be explicitly declared.
- If different compilers may display different behavior, make which behavior is present visible in the output.

## Categories

- ALS: aliasing
- BND: array index bounds
- CNV: type conversion
    - TODO: `COMPLEX` to `REAL` by `EQUIVALENCE`
    - TODO: `COMPLEX` to `REAL` by argument passing
        - <https://groups.google.com/g/comp.lang.fortran/c/g5nh0n2IsO8/m/CKAXU6mYBQAJ>
- COM: `COMMON` blocks
- CFL: conflicting names
    - Program-unit name used as `DO` loop index
- CFU: confusing code
    - Compound relational expressions like IF (X .OR. (.NOT. Y)) ...
    - Use of continuation characters which could be confusing
    - Use of homoglyphs
    - Use of precedence in any kind of expression
- DO: `DO` loops
- GOT: `GO TO`
- IO: input/output
    - Explicit UNIT numbers in I/O
    - Pre-connected I/O units
    - formatting
- MIS: miscellaneous
- MTH: math (division by zero, overflow, underflow, etc. for both `REAL`s and `INTEGER`s)
- OB: obsolescent features
- LEG: Legality changed
    - Illegal in FORTRAN 77, legal later
        - Could detect with a FORTRAN 77 compiler.
        - whole array operations (assignment, otherwise)
            - <https://community.intel.com/t5/Intel-Fortran-Compiler/bad-code-but-no-warning/m-p/1590495#M171852>
        - array constructor
    - Legal in FORTRAN 77, illegal later (ignoring obsolescent and deleted features)
        - https://groups.google.com/g/comp.lang.fortran/c/K1lWEC_J6h8/m/mrxZJ50ACwAJ
            - > By the way, we have seen standard-conforming FORTRAN 77 which will not compile under Fortran 90 and later, though these are very rare. Before someone asks, for example:
            > 
            > REAL NU, LAMBDA
            > DIMENSION NU(1000)
            > LAMBDA(NU) = C(ALT) / NU ! Statement function for wavelength, NU remains scalar.
            > 
            > I don't think this works in Fortran 2018!
- LEN: length restrictions placed by the FORTRAN 77 standard
    - Lines more than 72 characters long
    - Variable name more than 6 characters long
- STY: coding style
- UIN: uninitialized variables
- UUS: unused code
    - Unreachable/dead code
    - Unused label
    - Unused declared variables
    - Variables set but never used
