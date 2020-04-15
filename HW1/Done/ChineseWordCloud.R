install.packages('devtools')
devtools::install_github("lchiffon/wordcloud2")
install.packages("jiebaR")
library(jiebaR)
library(wordcloud2)

text<-readLines("C:\\Users\\WU\\Desktop\\Courses\\2020 Spring\\
INFO6105\\HW1\\Lecture1Day2\\WordCloudLab\\texts\\test.txt", encoding = "UTF-8")

wk <- worker(stop_word = 'C:\\Users\\WU\\Desktop\\Courses\\2020 Spring\\
INFO6105\\HW1\\Lecture1Day2\\WordCloudLab\\texts\\CHStopWord.txt')

seg <- wk[text]
seg <- seg[nchar(seg)>1]
seg <- table(seg) 
seg <- sort(seg,decreasing = T)[1:100]
result <- as.data.frame(seg,stringsAsFactors=F)

wordcloud2(result,size = 1,minRotation = -1, maxRotation = 1,
rotateRatio = 0.8,fontFamily = "微软雅黑", color = "random-light")