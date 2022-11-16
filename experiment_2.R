#Question1 Part(a)
medal = c(rep("Gold",20), rep("Silver",30), rep("Bronze",50))
sample_space_medal = sample(medal, size=10)
print(sample_space_medal)

#Question1 Part(b)
options = c("Success", "Failure")
options_prob = c(0.90, 0.10)
sample_space_options = sample(options, size=10, replace=T, prob=options_prob)
print(sample_space_options)

#Question2 Part(a)
birthday <- function(n) {
  return(p <- 1 - choose(365, 365 - n) * factorial(n) / 365 ^ n)
}

print(birthday(25))

#Question2 Part(b)
for (i in (1:100)){
  if (birthday(i) > 0.5){
    break
  }
}
print(i)

#Question3
bayesTheorem = function(PA, PB, PBA){
  PAB = PA*PBA/PB
  return (PAB)
}

prob_rain = 0.2
prob_cloudy = 0.4
prob_rain_based_cloudy = 0.85

prob_rain_today = bayesTheorem(prob_rain, prob_cloudy, prob_rain_based_cloudy)
print(prob_rain_today)

#Question5
findingMode = function(values){
    freq_count = tabulate(values)
    mode_count = max(freq_count)
    final_modes = c()
    for(x in freq_count){
      
      if(x==mode_count){
        mode = match(mode_count, freq_count)
        final_modes = c(final_modes, mode)
        freq_count[mode]=Inf
      }
    }
    return (final_modes)
}

values = c(1,1,1,2,3,5,5,1,2,2,2,6,4)
print(findingMode(values))
