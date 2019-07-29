#install.packages("sentimentr")
#install.packages("tidytext")
#install.packages("topicmodels")
library(sentimentr)
library(tidyverse)
library(ggplot2)
library(tidytext)
library(extrafont)
library(extrafontdb)
library(ggthemes)
library(stringr)
library(topicmodels)
library(tm)


setwd("D:/Creative Projects/A Wild Political Nerd/Posts/MuellerHearing/")


nadler<-readLines("NadlerQ.txt") #Read scraped text file. 
#Sentiment based on jockers_rinker. 
nadlersent<-sentiment(nadler,polarity_dt = lexicon::hash_sentiment_jockers_rinker) 
#Created columns for author, party, and total words
nadlersent<-mutate(nadlersent,
                   author = "Nadler",
                   pty = "Democrat",
                   wordtotal=sum(word_count))

#Repeat this for everyone. Probably could've used a loop to do it. 
#Update it when I have time to get a better codegolf score. 


collins<-readLines("CollinsQ.txt")
collinssent<-sentiment(collins,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
collinssent<-mutate(collinssent,
                   author = "Collins",
                   pty = "Republican",
                   wordtotal=sum(word_count))



lofgren<-readLines("LofgrenQ.txt")
lofgrensent<-sentiment(lofgren,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
lofgrensent<-mutate(lofgrensent,
                    author = "Lofgren",
                    pty = "Democrat",
                    wordtotal=sum(word_count))


ratcliffe<-readLines("RatcliffeQ.txt")
ratcliffesent<-sentiment(ratcliffe,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
ratcliffesent<-mutate(ratcliffesent,
                    author = "Ratcliffe",
                    pty = "Republican",
                    wordtotal=sum(word_count))


jacksonlee<-readLines("JacksonLeeQ.txt")
jleesent<-sentiment(jacksonlee,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
jleesent<-mutate(jleesent,
                 author= "Jackson Lee",
                 pty = "Democrat",
                 wordtotal=sum(word_count))

sensenbrenner<-readLines("SensenbrennerQ.txt")
sensensent<-sentiment(sensenbrenner,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
sensensent<-mutate(sensensent,
                 author= "Sensenbrenner",
                 pty = "Republican",
                 wordtotal=sum(word_count))

cohen<-readLines("CohenQ.txt")
cohensent<-sentiment(cohen,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
cohensent<-mutate(cohensent,
                   author= "Cohen",
                   pty = "Democrat",
                  wordtotal=sum(word_count))

chabot<-readLines("ChabotQ.txt")
chabotsent<-sentiment(chabot,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
chabotsent<-mutate(chabotsent,
                  author= "Chabot",
                  pty = "Republican",
                  wordtotal=sum(word_count))

hjohnson<-readLines("HJohnsonQ.txt")
johnsonsent<-sentiment(hjohnson,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
johnsonsent<-mutate(johnsonsent,
                   author= "H. Johnson",
                   pty = "Democrat",
                   wordtotal=sum(word_count))

gohmert<-readLines("GohmertQ.txt")
gohmertsent<-sentiment(gohmert,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
gohmertsent<-mutate(gohmertsent,
                    author= "Gohmert",
                    pty = "Republican",
                    wordtotal=sum(word_count))

roby<-readLines("RobyQ.txt")
robysent<-sentiment(roby,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
robysent<-mutate(robysent,
                    author= "Roby",
                    pty = "Republican",
                 wordtotal=sum(word_count))

bass<-readLines("BassQ.txt")
basssent<-sentiment(bass,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
basssent<-mutate(basssent,
                 author= "Bass",
                 pty = "Democrat",
                 wordtotal=sum(word_count))


jordan<-readLines("JordanQ.txt")
jordansent<-sentiment(jordan,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
jordansent<-mutate(basssent,
                 author= "Jordan",
                 pty = "Republican",
                 wordtotal=sum(word_count))

richmond<-readLines("RichmondQ.txt")
richmondsent<-sentiment(richmond,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
richmondsent<-mutate(richmondsent,
                   author= "Richmond",
                   pty = "Democrat",
                   wordtotal=sum(is.na(word_count)))

gaetz<-readLines("GaetzQ.txt")
gaetzsent<-sentiment(gaetz,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
gaetzsent<-mutate(gaetzsent,
                     author= "Gaetz",
                     pty = "Republican",
                     wordtotal=sum(is.na(word_count)))

jefferies<-readLines("JeffriesQ.txt")
jefferiessent<-sentiment(jefferies,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
jefferiessent<-mutate(jefferiessent,
                  author= "Jefferies",
                  pty = "Democrat",
                  wordtotal=sum(is.na(word_count)))

buck<-readLines("BuckQ.txt")
bucksent<-sentiment(buck,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
bucksent<-mutate(bucksent,
                      author= "Buck",
                      pty = "Republican",
                      wordtotal=sum(is.na(word_count)))

cicilline<-readLines("CicillineQ.txt")
cicillinesent<-sentiment(cicilline,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
cicillinesent<-mutate(cicillinesent,
                 author= "Cicilline",
                 pty = "Democrat",
                 wordtotal=sum(is.na(word_count)))

biggs<-readLines("BiggsQ.txt")
biggssent<-sentiment(biggs,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
biggssent<-mutate(biggssent,
                      author= "Biggs",
                      pty = "Republican",
                      wordtotal=sum(is.na(word_count)))

swalwell<-readLines("SwalwellQ.txt")
swalwellsent<-sentiment(swalwell,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
swalwellsent<-mutate(swalwellsent,
                  author= "Swalwell",
                  pty = "Democrat",
                  wordtotal=sum(is.na(word_count)))

lieu<-readLines("LieuQ.txt")
lieusent<-sentiment(lieu,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
lieusent<-mutate(lieusent,
                     author= "Lieu",
                     pty = "Democrat",
                     wordtotal=sum(is.na(word_count)))

lieu<-readLines("LieuQ.txt")
lieusent<-sentiment(lieu,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
lieusent<-mutate(lieusent,
                 author= "Lieu",
                 pty = "Democrat",
                 wordtotal=sum(is.na(word_count)))

mcclintock<-readLines("McclintockQ.txt")
mcclintocksent<-sentiment(mcclintock,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
mcclintocksent<-mutate(mcclintocksent,
                 author= "McClintock",
                 pty = "Republican",
                 wordtotal=sum(is.na(word_count)))

raskin<-readLines("RaskinQ.txt")
raskinsent<-sentiment(raskin,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
raskinsent<-mutate(raskinsent,
                       author= "Raskin",
                       pty = "Democrat",
                       wordtotal=sum(is.na(word_count)))

lesko<-readLines("LeskoQ.txt")
leskosent<-sentiment(lesko,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
leskosent<-mutate(leskosent,
                   author= "Lesko",
                   pty = "Republican",
                   wordtotal=sum(is.na(word_count)))

jayapal<-readLines("JayapalQ.txt")
jayapalsent<-sentiment(jayapal,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
jayapalsent<-mutate(jayapalsent,
                  author= "Jayapal",
                  pty = "Democrat",
                  wordtotal=sum(is.na(word_count)))


reschenthaler<-readLines("ReschenthalerQ.txt")
reschenthalersent<-sentiment(reschenthaler,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
reschenthalersent<-mutate(reschenthalersent,
                    author= "Reschenthaler",
                    pty = "Republican",
                    wordtotal=sum(is.na(word_count)))

demings<-readLines("DemingsQ.txt")
demingssent<-sentiment(demings,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
demingssent<-mutate(demingssent,
                          author= "Demings",
                          pty = "Democrat",
                          wordtotal=sum(is.na(word_count)))

correa<-readLines("CorreaQ.txt")
correasent<-sentiment(correa,polarity_dt = lexicon::hash_sentiment_jockers_rinker)
correasent<-mutate(correasent,
                    author= "Correa",
                    pty = "Democrat",
                    wordtotal=sum(is.na(word_count)))


#Called the joined file test. Got too lazy to change it.
#Concantenation of all the sentiment analyese. 
test<-rbind(nadlersent,collinssent,lofgrensent,ratcliffesent,jleesent,
            sensensent,cohensent,chabotsent,johnsonsent,gohmertsent,
            robysent,basssent,jordansent,richmondsent, gaetzsent,
            jefferiessent, bucksent, cicillinesent, biggssent, swalwellsent,
            lieusent, mcclintocksent,raskinsent,leskosent,jayapalsent,
            reschenthalersent,demingssent,correasent)


#Many sentences are just "thank you." Which register positive despite largely being perfunctory.
test<-filter(test,
             word_count>=3)


#Sentiment by individual, colored by party.
ggplot(data = test)+geom_density(aes(x=sentiment,group=author,color=pty,fill=pty), 
                                 alpha=.05)+ theme_tufte(ticks = F)+
  scale_fill_manual("", values = c("Republican" = "#E28A8A", "Democrat" = "#618AA7"))+
scale_color_manual("", values = c("Republican" = "#E28A8A", "Democrat" = "#618AA7"))+
  theme(text = element_text(family = "Liberation Serif"),axis.text.y=element_blank(),
        plot.title = element_text(hjust = .5,size=25,family="Liberation Serif",color="#3D3B3A"),
        axis.text.x = element_text(size=12),axis.title.x = element_blank(),
        axis.title.y = element_text(size=12,color="#3D3B3A"),
        plot.caption = element_text(hjust = 0, size=10, color="#969390"))+                                                                                 
  scale_x_continuous(breaks=c(-.75,0,.75),labels=c("More Negative Sentiment","Neutral Sentiment","More Positive Sentiment"))+
  ggtitle("Distribution of Question Sentiment by Member")+ylab("Density")+
  labs(caption = "Notes: Distribution of average sentiment per sentence using the Jockers-Rinker sentiment library.\nTranscript scraped from The Washington Post.
       \nAnalysis and visualization by Peter Licari")


#Sentiment by party.
ggplot(data = test)+geom_density(aes(x=sentiment,color=pty,fill=pty),alpha=.4)+ theme_tufte(ticks = F)+
  scale_fill_manual("", values = c("Republican" = "#E28A8A", "Democrat" = "#618AA7"))+
  scale_color_manual("", values = c("Republican" = "#E28A8A", "Democrat" = "#618AA7"))+
  theme(text = element_text(family = "Liberation Serif"),axis.text.y=element_blank(),
        plot.title = element_text(hjust = .5,size=25,family="Liberation Serif",color="#3D3B3A"),
        axis.text.x = element_text(size=12),axis.title.x = element_blank(),
        axis.title.y = element_text(size=12,color="#3D3B3A"),
        plot.caption = element_text(hjust = 0, size=10, color="#969390"))+                                                                                 
  scale_x_continuous(breaks=c(-.75,0,.75),labels=c("More Negative Sentiment","Neutral Sentiment","More Positive Sentiment"))+
  ggtitle("Distribution of Question Sentiment by Party")+ylab("Density")+
  labs(caption = "Notes: Distribution of average sentiment per sentence using the Jockers-Rinker sentiment library.\nTranscript scraped from The Washington Post.
       \nAnalysis and visualization by Peter Licari")
  

