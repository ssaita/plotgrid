library(gcookbook)
library(ggplot2)
library(rgl)
library(scatterplot3d)
png("plot1.png", width = 100, height = 100)
spher2cart <- function(r, theta, phi) {

   x <- r * sin(theta) * cos(phi)
   y <- r * sin(theta) * sin(phi)
   z <- sign(theta)* r * cos(theta)
   return(list(x = x, y = y, z = z))
}

d<-read.table("out-pentax2.txt")
r=seq(1,1,length(d$V1))
cart <- spher2cart(1, d$V2, d$V1)
#p <- ggplot(wind, aes(x=WindDir, y=WindAvg, size=Temp, fill=SpeedCat)) +
#     coord_polar() + geom_point(shape=21)+scale_size_area(max_size=10) +
#     scale_x_continuous(limits=c(0,360),breaks=seq(0,360,by=45))
#scatterplot3d(iris[, 1:3], pch = as.numeric(iris$Species))
plot3d(cart$x, cart$y, cart$z,col="blue", type="s")
dev.off()
#aspect3d