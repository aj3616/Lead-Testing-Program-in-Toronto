# Lead Concentration Testing Program Analysis

## Overview

This is a project containing data and R scripts to analyze the lead concentration and its relationship with location and time in Toronto. The result will be generated in the form of pdf produced by quarto. The structure of the project was based on <https://github.com/RohanAlexander/starter_folder>. All simulations and sample used a seed: 1007676409.

## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from OpenDataToronto as well as simulated data created by `scripts/00-simulate_data.R`.
-   `data/analysis_data` contains the cleaned data set that was constructed by `scripts/02-data_cleaning.R`.
-   `other` contains details about LLM chat interactions supporting this project, and sketches for the process of developing this project.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper.
-   `scripts` contains the R scripts used to simulate, download, clean data and test data.
-   An R project `Lead-Testing-Program-in-Toronto.Rproj` is used.
-   All R codes are styled using styler in `scripts/code_style.R`.

## Statement on LLM usage

Some code for data analysis and sentence phrasings had assistance from ChatGPT 4.0. The prompts and outputs were documented along with the entire chat history in `other/llm/usage.txt`.
