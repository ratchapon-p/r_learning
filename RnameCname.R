#Name Vectors
Charlie <- 1:5
Charlie

#give names
names(Charlie) <- c("a", "b", "c", "d", "e")
Charlie["d"]
names(Charlie)
Charlie

#naming matrix dimensions 1
temp.vec <- rep(c("a", "B", "ZZ"), each=3)
temp.vec

Bravo <- matrix(temp.vec, 3, 3)
Bravo

rownames(Bravo) <- c("How", "Are", "You")
colnames(Bravo) <- c("X", "Y", "Z")

Bravo[2, 2]
