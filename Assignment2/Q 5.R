
num_simulations <- 10000
days_to_half_tablet <- numeric(num_simulations)


for (i in 1:num_simulations) {
 
  bottle <- rep(1, 100)  
  days <- 0
  
  
  while (sum(bottle) > 0) {
    days <- days + 1
    
   
    chosen_index <- sample(length(bottle), 1)
    chosen_tablet <- bottle[chosen_index]
    
   
    if (chosen_tablet == 1) {
      bottle[chosen_index] <- 0.5
    }
    
    else {
      break
    }
  }
  
  
  days_to_half_tablet[i] <- days
}


average_days_to_half_tablet <- mean(days_to_half_tablet)
average_days_to_half_tablet

