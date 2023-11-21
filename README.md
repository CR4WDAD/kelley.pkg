# kelley.pkg
# kelley.pkg
The goal of kelley.pkg is to help process data with 5 functions. 

Data file download:
```{r}
library(googlesheets4)
googlesheets4::gs4_deauth()
surveys <- read_sheet("https://docs.google.com/spreadsheets/d/1if1TIUxvCg3LtR0deHq1NgXPNOSMo0Wt4JhirsN0JBE/edit?usp=sharing")
```
# Installation

You can install my package from GitHub using: 
```{r}
# install.packages("devtools")
devtools::install_github("CR4WDAD/kelley_pkg")
```
# Other Packages Needed
```{r}
library(tidyverse)
library(ggplot2)
```
# First Function TLDR: Clean data 
This function removes all NA's from a data set.
```{r}
remove_nas(data)
```
# Second Function TLDR: Mutate data
This function converts your weight column from grams to kilograms.
```{r}
mutation(data, col1, col2)

```
# Third Function TLDR: Linear Model
This function creates a summary of a linear model.
```{r}
lm_function(df, dependent, independent_cols)

```
# Fourth Function TLDR: Plot data
This function creates a scatter plot.
```{r}
 plot_graph(data, x, y)

```
# Fifth Function TLDR: Min, Max, Mean
This function creates a summary of the mean, min, and max of a numerical column.
```{r}
tm(data, col1, col2)

```