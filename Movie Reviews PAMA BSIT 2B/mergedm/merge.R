mov1 <- read_csv("Movie Reviews PAMA BSIT 2B/Avengers.csv")
mov2 <- read_csv("Movie Reviews PAMA BSIT 2B/Coco.csv")
mov3 <- read_csv("Movie Reviews PAMA BSIT 2B/DarkKnight.csv")
mov4 <- read_csv("Movie Reviews PAMA BSIT 2B/Joker.csv")
mov5 <- read_csv("Movie Reviews PAMA BSIT 2B/LordOfTheRings.csv")
mov6 <- read_csv("Movie Reviews PAMA BSIT 2B/Parasite.csv")
mov7 <- read_csv("Movie Reviews PAMA BSIT 2B/Parasite.csv")
mov8 <- read_csv("Movie Reviews PAMA BSIT 2B/Toy Story.csv")
mov9 <- read_csv("Movie Reviews PAMA BSIT 2B/WALL-E.csv")
mov10 <- read_csv("Movie Reviews PAMA BSIT 2B/WOnka.csv")


mergedmovs <- rbind(mov1, mov2, mov3, mov4, mov5, mov6, mov7, mov8, mov9, mov10)


write.csv(mergedmovs, "mergedmovies.csv", row.names = FALSE)
