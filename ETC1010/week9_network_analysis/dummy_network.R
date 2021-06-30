# A dummy example

#install.packages("tidyverse")
#install.packages(c("remotes","plyr", "tidytext", "ggrepel"))
library(remotes)
#install_github("sctyner/geomnet")
library(tidyverse)
library(geomnet)

# Create dummy network
src <- c("A", "A", "A", "A",
         "B", "B", "C", "C", "D","G", "E", "F", "H")
target <- c("B", "C", "D", "A",
            "E", "F", "G", "C","A","G", "F", "A", "B")
net <- data.frame(src, target)

ggplot(net,
       aes(from_id = src,
           to_id = target)) + 
  geom_net(labelon = TRUE, repel = F)

set.seed(121)
ggplot(net,
       aes(from_id = src,
           to_id = target)) + 
  geom_net(labelon = TRUE,
           layout.alg = "circle", #mds, circle, kamadakawai
           directed = FALSE,
           fontsize = 6,
           size = 5,
           vjust = 1, #0-1
           hjust =1,
           ecolour = "red") +
  theme_classic()



?geomnet::blood



# make data accessible
data(blood, package = "geomnet")


# plot with geomnet (Figure 2b)
set.seed(12252016)
ggplot(data = blood$edges, 
       aes(from_id = from, to_id = to)) +
  geom_net(colour = "darkred", layout.alg = "circle", labelon = TRUE, size = 15,
           directed = TRUE, vjust = 0.5, labelcolour = "grey80",
           arrowsize = 1.5, linewidth = 0.5, arrowgap = 0.05,
           selfloops = TRUE, ecolour = "grey40") + 
  theme_net() 


# Q. Which is universal donor?

# Q. Which is universal receipient?

