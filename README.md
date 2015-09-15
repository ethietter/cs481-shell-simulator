# Shell Simulator #

### Introduction ###

This project comprises three shell simulation programs of increasing complexity. I wrote this program for my Operating Systems Class (UNM - CS481). Simsh1 is capable of executing processes in both the foreground and background. Simsh2 has the functionality of simsh1, but also supports input and output redirection via <, >, and >>. Simsh3 has the functionality of simsh2, and adds the ability to "pipe" between an aribtrary number of programs.

### Building ###

This program uses system calls specific to the Linux environment. Any of the three shells can be built by running
```make
make simsh1
make simsh2
make simsh3
```

### Running ###
Any of the shells can be run with
```bash
./simsh1
./simsh2
./simsh3
