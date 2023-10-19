# Template for an article written in LaTeX

This project is composed of all the required files to create an article in LaTeX either following the ACM or IEEE format interchangeably.

```
├── ACM-Reference-Format.bst             # ACM bib style
├── acmart.cls                           # ACM class document    
├── IEEEtran.bst                         # IEEE bib style                     
├── IEEEtran.cls                         # IEEE class document
├── article_ACM.tex                      # Main ACM tex file, resolve TODOs and add packages
├── article_IEEE.tex                     # Main IEEE tex file, resolve TODOs and add packages
├── bibliography.bib                     # Bibliography with examples for types
├── easyReview2.sty                      # Styling file
├── img                                  # Image folders
│   └── default.png                      # Default image used in the figure templates
├── codes                                # Code snippets to display with minted
│   └── example.js                       # Example
├── Makefile                             # Makefile for both ACM and IEEE backend (+ textidote)
├── reviews.md                           # Comments of the reviewers to process                  
├── tex                                  # Actual chapters
│   ├── abstract.tex                     # Abstract
│   ├── main.tex                         # The rest
└── textidote                            # Textidote files
    ├── ignored.txt                      # Dictionary of words the spell check will ignore
    ├── report_ACM.html                  # ACM report
    └── report_IEEE.html                 # IEEE report
```

The compilation of the LaTeX files can be launched with the following commands:
```bash
$ make      # both ACM and IEEE
$ make ieee # only IEEE
$ make acm  # only ACM
```

If [`textidote`](https://github.com/sylvainhalle/textidote) is installed, make commands can be used
to run the checkers:
```bash
$ make checkacm  # run textidote against article_ACM.tex and writes to textidote/report_ACM.html
$ make checkieee # same for IEEE
$ make check     # run textidote for both
```

Note that some words can be ignored and have to be written in `textidote/ignored.txt` (1 per line with no blank lines).
