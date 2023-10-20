#* plotRandomHistogram.r
#* 
#* Author: Tommy malloy
#* 
#* Purpose:
#*   A function that will generate a sample of normal 
#*   observations and the plot the histogram of that data.
#*   
#* Inputs:
#*   num_pts = the number of observations to randomly generate
#*   mu = the theoretical mean of the Normal distribution that generates my data
#*   sigma = the theoretical standard deviation
#*   seed - an optional random number generator seed value, defaults to NULL
#*   meanColor = the color of the line corresponding to the sample mean of the data
#*   
#* Output: 
#*    A histogram of the generated data is drawn
#*    A litst with the following elements
#*    Random_obs = a vector with the randomly generated data
#*    Mean_random_obs = sample mean corresponding to the randomly generated data
#*    SD_Random_obs = corresponding standard deviation

plotRandomHistogram <- function(num_pts = 30, mu = 0, sigma = 1, seed = NULL, meanColor = "royalblue") {
  set.seed(seed)
  x <- rnorm(num_pts, mean = mu, sd = sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v = mean_x, lwd = 5, col = meanColor)
  
  list(Random_obs = x, Mean_Random_obs = mean_x, SD_Random_obs = sd(x))
}


plotRandomHistogram()
plotRandomHistoGram(seed = 19)
plotRandomHistogram(seed =  19, num_pts = 1000000)
plotRandomHistogram(seed =  19, num_pts = 1000000, meanColor = "forestgreen")
my_output <- plotRandomHistogram(seed =  5, num_pts = 200, mu = 70, sigma = 2.5, meanColor = "goldenrod")
my_output$Mean_Random_obs
