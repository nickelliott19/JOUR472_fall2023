title: "Reverse Engineering Project"
author: "Nicholas Elliott"
date: "10/16/23"
output:
  html_document:
  theme: cerulean
highlight: pygments
toc: true
toc_float:
  collapsed: true
smooth_scroll: false
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Introduction 

In this notebook, we are reverse engineering the story, "As police struggle to solve homicides, Baltimore residents see an ‘open season for killing’"https://www.washingtonpost.com/investigations/as-police-struggle-to-solve-homicides-baltimore-residents-see-an-open-season-for-killing/2018/12/26/7ee561e4-fb24-11e8-8c9a-860ce2a8148f_story.html

## Load libraries

Loading required libraries for this analysis.

```{r echo=FALSE, message=FALSE}

```

## Load and Cleaning Data

In this section, describe the source of the data, write a basic data dictionary for data you are working with, and discuss any caveats or issues you discovered working with this data. 

```{r}
# Load required data
homicide_data <-read_csv("homicide-data.csv")

# Path to data should be loaded from folder "data" i.e. read_csv("data/name_of_data.csv")

# Clean required data and prepare for analysis if needed. 


```

## Sentences to Engineer
In this notebook, we are reverse engineering five sentences from the story.

### Sentence 1

* **Sentence text**: As Baltimore has seen a stunning surge of violence, with nearly a killing each day for the past three years in a city of 600,000, homicide arrests have plummeted.
* **Analysis summary**: We found that from 2015-2017 there were 320-342 homicides per year making it around a homicide a day. We filtered the cities just to Baltimore and than used OR code to compile the years the sentence is referring to.

homicides_per_day <- homicide_data |>
  mutate(reported_date = ymd(reported_date)) |>
  mutate(year = year(reported_date)) |>
  filter(city == "Baltimore") |>
  filter(year == "2015" | year == "2016" | year == "2017")|>
  group_by(year) |>
  summarize(
    count = n(),
    average_per_day = count/365
  )
  


```{r}
# Put code to reverse engineer sentence here

# Display results of code below this codeblock

```

### Sentence 2

* **Sentence text**: [Paste in sentence to engineer here]
* **Analysis summary**: [Write up two to three sentences describing the results of your analysis.  Were you able to confirm the finding? If not, why not?]

```{r}
# Put code to reverse engineer sentence here

# Display results of code below this codeblock

```

### Sentence 3

* **Sentence text**: [Paste in sentence to engineer here]
* **Analysis summary**: [Write up two to three sentences describing the results of your analysis.  Were you able to confirm the finding? If not, why not?]

```{r}
# Put code to reverse engineer sentence here

# Display results of code below this codeblock

```

### Sentence 4

* **Sentence text**: [Paste in sentence to engineer here]
* **Analysis summary**: [Write up two to three sentences describing the results of your analysis.  Were you able to confirm the finding? If not, why not?]

```{r}
# Put code to reverse engineer sentence here

# Display results of code below this codeblock

```

### Sentence 5

* **Sentence text**: [Paste in sentence to engineer here]
* **Analysis summary**: [Write up two to three sentences describing the results of your analysis.  Were you able to confirm the finding? If not, why not?]

```{r}
# Put code to reverse engineer sentence here

# Display results of code below this codeblock

```