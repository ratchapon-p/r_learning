myplot <- function(z, who=1:10){
  matplot(t(z[who, ,drop=F]), type = "b", pch = 15:18, col = c(1:4,6), main = "Basketball")
  legend("bottomleft", inset = 0.01, legend = Players[who], col = c(1:4,6), pch = 15:18)
}

myplot(FreeThrows)
myplot(FreeThrowAttemps)


#1. Free throw attemp / Game

myplot(FreeThrowAttemps/Games)

#2. Free throw Accuracy
myplot(FreeThrows/FreeThrowAttemps)

myplot(FieldGoals / FieldGoalAttempts)

#3. Player Style Patterns
myplot((Points - FreeThrows)/FieldGoals)
