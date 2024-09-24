# Lead Concentration

# This is the first draft with below modifications
1. The Introduction is gpt generated, will modify, will include finidings
2. Fix the bugs for cross-references, not it has ?
3. remove all R output and organize the information using only ggplot2 and knitr(no summary statistics)
4. Organize section and table of content when finished
5. complete citation 
6. discuss measurement
7. cite Professor Rohan Alexander
8. Finish README
9. use a Rproject
10. Include map of toronto when explaining postal code
11. Format the whole paper
12. Data and measurement section

## Overview

This is a project containing data and R scipt to analyze the marriage lincence number. The result will be generated in the form of pdf produced by quarto.


## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from X.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `model` contains fitted models. 
-   `other` contains relevant literature, details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## Statement on LLM usage

Aspects of the code were written with the help of the auto-complete tool, Codriver. The abstract and introduction were written with the help of ChatHorse and the entire chat history is available in inputs/llms/usage.txt.

