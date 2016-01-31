summary(labs[15])
c <- ggplot(labs, aes(WaitTime))
c + geom_bar(stat="count") + geom_text(aes(y = ((..count..)/sum(..count..)), label = scales::percent((..count..)/sum(..count..))), stat = "count", vjust = -0.25)

summary(labs[12])
c <- ggplot(labs, aes(SvcSat))
c + geom_bar(stat="count") + geom_text(aes(y = ((..count..)/sum(..count..)), label = scales::percent((..count..)/sum(..count..))), stat = "count", vjust = -0.25)

s <- ggplot(labs, aes(Gender, fill = SvcSat))
s + geom_bar(position="stack") 

f <- ggplot(labs, aes(AGE, fill =SvcSat))
f + geom_bar(position = "stack")
