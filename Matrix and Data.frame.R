
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
ABC <- c(4, 62, 51, 21, 2, 14, 15)
CBS <- c(12, 75, 43, 19, 1, 21, 19)
Poll <- cbind (Name, ABC, CBS)
Poll
Poll.df <- data.frame(Name, ABC, CBS)
Poll.df
#error
mean(Poll.df)
#error
mean(Poll.df[,2:3])

mapply(mean,Poll.df[,2:3])

mean(Poll.df[,2])
mean(Poll.df[,3])
colMeans(Poll.df[2:3])
rowMeans(Poll.df[2:3])

Party <- c("Rep", "Rep", "Rep", "Rep", "Rep", "Dem", "Dem")
Poll_party.df <- data.frame (Name, ABC, CBS, Party)
Poll_party.df

aggregate(x= Poll_party.df[,2:3],by= list(Poll_party.df$Party),FUN=mean)

