2026-2-3 
#Class Tutorials

url = 'ftp://aftp.cmdl.noaa.gov/products/trends/co2/co2_mm_mlo.txt'


co2 = read.table(url, col.names = c("year", "month", "decimal_date", "monthly_average", "deseasonalized", "n_days", "st_dev_days", "monthly_mean_uncertainty"))

url = 'ftp://aftp.cmdl.noaa.gov/products/trends/co2/co2_mm_mlo.txt'
co2 = read.table(url, col.names = c("year", "month", "decimal_date", "monthly_average", "deseasonalized", "n_days", "st_dev_days", "monthly_mean_uncertainty"))

Plot

plot(monthly_average ~ decimal_date, type="l", data=co2) 
line(deseasonalized ~ decimal_date, data=co2, col="red")

#grab most recent 5 years and plot it

co2_2021to2026 = co2[co2$decimal_date > 2021, ]
summary(co2_2021to2026)

plot(seasonal_cycle ~ decimal_date, data = co2_2021to2026, type="l")

jan_anomalies = mean(co2$seasonal_cycle[co2$month == 1])

#Create a data frame with monthly detrended co2 anomalies
co2_monthly_cycle = data.frame(month = seq(12), detrended_monthly_cycle = NA)

#fill in the data 
co2_monthly_cycle$detrended_monthly_cycle[1] = mean(co2$seasonal_cycle[co2$month == 1])

jan_anomalies = co2$seasonal_cycle[which(co2$month==1)]
co2_monthly_cycle = data.frame(month=c(1:12), detrended_monthly_cycle=NA) 
head(co2_monthly_cycle)


#Loops

for (i in c(1:4)) {
  print(c("one run", i))
}
# i is called the iterand

sentence = c("loops", "are", "fun", "y'all")
for (word in sentence) {
  print(word)
}

my_vector = c(1,3,5,2,4)
n = length(my_vector)
my_vector_squared = rep(NA, n)
for (i in seq(n)) {
  print( paste ("I'm on iteration: ", i))
  my_vector_squared[i] = my_vector[i]^2
  print( paste("my answer is: ", my_vector_squared[i]))
}
my_vector_squared

# Calculate total of a vector

my_vector = c(1,3,5,2,4)
n_my_vector = length(my_vector)
my_vector_total = 0
for(i in seq(n_my_vector)){
  print(my_vector_total)
  my_vector_total = my_vector_total + my_vector[i]
}
my_vector_total

int = 5
factorial_result = 1
for(i in seq(int)){
  factorial_result = i * factorial_result
  print(factorial_result)
}


