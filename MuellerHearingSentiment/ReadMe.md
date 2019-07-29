# Sentiment Analysis for The Mueller Hearings

Many observers of Robert Mueller's testimony to the House Judiciary Committee noticed a distinct difference in how different members addressed him. Republicans were often accusatory in their questioning than Democrats. Republican partisans on Twitter were often sharing moments where co-partisan MCs (Members of Congress) were aggressively attacking the legitimacy of the investigation (e.g., "Watch so-and-so **DESTROY** Mueller"). I wondered if these differences could be picked up through sentiment analysis of the MCs' questions. Spoiler alert: Yes. Yes they could. 

## Language
The analyses was performed in R (Version 3.5.2). The full R code for the analysis and visuals is under MuelleRSent.R.

## Data
The data comes from the transcripts of Mueller's testimony to the House Judiciary Committee published by [The Washington Post](https://www.washingtonpost.com/politics/transcript-of-robert-s-mueller-iiis-testimony-before-the-house-judiciary-committee/2019/07/24/7164abfe-ad96-11e9-a0c9-6d2d7818f3da_story.html?utm_term=.e48e1a787744). The zip file containing the text of all the members' questions to Mueller can be found in the questions_text.zip file. 

## Packages
The packages needed for the analyses can be loaded in by running the code below (assuming that they have already been installed). 

```
library(sentimentr)
library(tidyverse)
library(tidytext)
```
The remaining libraries are used for the visualizations. 

## Author
***Peter Licari***

## Acknowledgments
* [This Medium post by AbdulMajedRaja](https://towardsdatascience.com/sentiment-analysis-in-r-good-vs-not-good-handling-negations-2404ec9ff2ae) ([Github](https://github.com/amrrs)) that pointed me to the sentimentr package was super handy. 
