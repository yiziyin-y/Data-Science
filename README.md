# Word Cloud Using R

## Introduction

- This is Assignemnt1
- Name: Yiziyin Yao
- NUID: 001341398

## Detail:

### 1.Finish 0-intro.R and 1-data.R, all code in these file.

Hw1-0-intro.R：Contains the exercise code of matrix

Hw1-1-data.R：Contains the exercise code pertaining to the college.csv data sheet. 

Attached the college.csv data sheet in zip file

### 2.Go through 4-textmining-cloud.R and 5-nlp.R to learn how to create world cloud in English

Attached File:

dtm.csv attached as output file

5.x.png attached as step by step screenshot.

### 3.Create ChineseWordCloud.R to implements world cloud in Chinese

I choose to use JiebaR as segmentor, because Udpipe is bad at segment Chinese words.

Relying library: JiebaR and worldcloud2

Attached files:

udpipe.png-- the result of Udpipe segment Chinese words, which is bad because it segment one word into several characters.

test.txt-- data source   CHStopWords.txt-- stop words library

worldcloud.png-- generated wordcloud.

ChineseWordCloud.R:

```R
#install and using all required library
install.packages('devtools')
devtools::install_github("lchiffon/wordcloud2")
install.packages("jiebaR")
library(jiebaR)
library(wordcloud2)

#open test article
text<-readLines("C:\\Users\\WU\\Desktop\\Courses\\2020 Spring\\
INFO6105\\HW1\\Lecture1Day2\\WordCloudLab\\texts\\test.txt", encoding = "UTF-8")

#load Chinese stop words library
wk <- worker(stop_word = 'C:\\Users\\WU\\Desktop\\Courses\\2020 Spring\\
INFO6105\\HW1\\Lecture1Day2\\WordCloudLab\\texts\\CHStopWords.txt')

#segment chinese words
seg <- wk[text]

#filt one character meanless words like "he","she"
seg <- seg[nchar(seg)>1]

#sort frequently occors words, pick top 100 out to generate word cloud
seg <- table(seg) 
seg <- sort(seg,decreasing = T)[1:100]

#generate data frame
result <- as.data.frame(seg,stringsAsFactors=F)

#generate word cloud
wordcloud2(result,size = 1,minRotation = -1, maxRotation = 1,
rotateRatio = 0.8,fontFamily = "微软雅黑", color = "random-light")
```

