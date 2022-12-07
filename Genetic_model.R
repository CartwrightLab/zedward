library(tidyverse)

#initialize the starting variables and their parameters


#three human populations with three different genotypes
H1 = 0.3
H2 = 0.35
H3 = 0.15

Z = 0.20

#infection rate for each of the three genotype populations
I1 = 0.8
I2 = 0.3
I3 = 0.15

#three baby populations for each human genotype
h1 = round(H1/(H1+H2+H3),2)
h2 = round(H2/(H1+H2+H3),2)
h3 = round(H3/(H1+H2+H3),2)

zombieTable <- setNames(data.frame(matrix(ncol = 6, nrow = 7)), c("0","1", "2", "3","4","5"))
row.names(zombieTable) <- c("H1", "H2","H3","Z", "h1","h2","h3")

initialValues <- c(H1,H2,H3,Z,h1,h2,h3)

for (x in 1:7) {
  zombieTable[x,1] <- initialValues[x]

}

for (j in 1:5) {

  H1 = round(h1*(1-I1*Z),2)
  H2 = round(h2*(1-I2*Z),2)
  H3 = round(h3*(1-I3*Z),2)

  zombieTable[1, j+1] <- H1
  zombieTable[2, j+1] <- H2
  zombieTable[3, j+1] <- H3

  Z = round((((h1*I1) + (h2*I2) + (h3*I3))*Z),2)
  zombieTable[4, j+1] <- Z

  h1 = round(H1/(H1+H2+H3),2)
  h2 = round(H2/(H1+H2+H3),2)
  h3 = round(H3/(H1+H2+H3),2)

  zombieTable[5, j+1] <- h1
  zombieTable[6, j+1] <- h2
  zombieTable[7, j+1] <- h3

}
