# fxp - The Functional XML Parser

## Version 1.4.5, February 20, 2002

by
- Andreas Neumann, University of Trier <neumann@psi.uni-trier.de>
- Alexandru Berlea, University of Trier <aberlea@psi.uni-trier.de>

[Includes minor updates by Michael Norrish in 2018 to get this code to compile under mlton and Poly/ML.]

## What is fxp?

fxp is a validating XML parser, written completely in the functional
programming language SML. It has a (yet undocumented) programming interface
allowing for production of XML applications based on fxp. It comes with
some example applications:

-   **fxp**

    The pure parser. It parses a document and finds well-formedness
    errors, validity errors and other problems;

-   **fxcanon**

    Produces an equivalent canonical XML document. Canonical XML was
    invented by James Clark for testing XML parsers. It contains only
    the information a processor is required to pass to the
    application;

-   **fxcopy**

    Reproduces the document parsed by fxp. The copy can be generated
    in a different encoding than the input, and can be normalized in
    different ways concerning, e.g., expansion of entity references;

-   **fxesis**

    Produces an output similar to nsgmls's ESIS (Element Structure
    Information Set) output;

-   **fxviz**

    An XML tree visualizer. It produces a graph description suitable
    as input to Georg Sander's vcg.

## Installation

### MLton

Using the [`mlton`](http://mlton.org) compiler, just change to the directory containing the desired executable, and type

    mlton <appname>.mlb

For example, in `src/Apps/Canon`, type

    mlton fxpcanon.mlb

and an `fxpcanon` executable will be created.

### Poly/ML

With a recent [Poly/ML](http://polyml.org) installation, you should have access to the `polyc` command. Change to the relevant directory and compiler the `poly-use.ML` script, specifying the desired executable name on the command-line. For example, in `src/Apps/Canon`:

    polyc -o fxpcanon poly-use.ML

### SML/NJ Instructions (original)

In order to install fxp, you need an SML compiler. It has been tested with
version 110.0.6 of SML of New Jersey, but it might also run with other
versions. The compiler must have the compilation manager (CM) built in,
which is the default when installing SML-NJ. We successfully compiled fxp
on Linux with glibc2.1, Digital Unix 4.0 and Solaris 2.7. For other unices
we expect no problems; compiling with the Windows version of SML-NJ has
not been tried.


These are the steps for installing fxp under Unix:

1. Download the latest version of fxp;
2. Unpack the sources, and change to the fxp directory, e.g.:

        gunzip -c fxp-1.4.5.tar.gz | tar xf -
        cd fxp-1.4.5

3. Read the COPYRIGHT;
4. Edit the Makefile according to your needs. Probably you will only have
   to change the following:

   `INSTALL_PROGS` is the list of programs to be installed. fxlib is
   only required if you want to develop applications with fxp.

   `FXP_BINDIR` is where the executables are installed;

   `FXP_LIBDIR` is where other files needed by fxp - the heap images
   and the library - are installed;

   `SML_BINDIR` is the directory where the SML executables are found.
   It must contain the .arch-n-opsys script from the SML-NJ
   distribution, so make sure that this is where SML-NJ is physically
   installed;

   `SML_EXEC` is the name of the SML executable. This is the program
   that is called for generating the heap image and at execution of
   fxp. If sml is in your PATH at installation time, you don't need
   the full path here.

   `SML_MAKEDEF` is for defining the make command in SML. After
   version 110.0.3, SML-NJ changed the type of CM.make'. For earlier
   or working versions of SML-NJ, use the second or third variant of
   this definition.

5. Edit the file src/config.sml according to your needs. Currently only a
   single value can be configured here:

        val retrieveCommand : string

   is the command to be used by fxp for retrieving a remote URI from
   the internet and storing it in a temporary file on the local file
   system. It is a string value and should contain the strings %1
   and %2, where:

     - %1 is replaced by the URI;
     - %2 is replaced by the local filename.

   It is recommended that the command exits with failure in case the
   URI cannot be retrieved. If the command generates an HTML error
   message instead (like, e.g., "lynx -source %1 > %2"), this HTML
   file is considered to be XML and will probably cause a mess of
   parsing errors. If you don't need URI retrieval, use "exit 1"
   which always fails on Unix. Sensible values are, e.g:

     - `"wget -qO %2 %1"` (https://www.gnu.org/software/wget/)

6. Compile fxp by typing `make`;
7. Install fxp by typing `make install`.
8. If you want to use fxviz, you should also install `vcg`
   (ftp://ftp.cs.uni-sb.de/pub/graphics/vcg/).

If you experience problems installing fxp, send me mail at aberlea@psi.uni-trier.de

Check out for new versions at `http://www.informatik.uni-trier.de/~aberlea/Fxp` (old, now stale, link)

Alexandru Berlea.
