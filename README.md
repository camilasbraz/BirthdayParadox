# BirthdayParadox
Given an amount of people, what is the probability that at least two of them share the same birthday?


This classic statistic problem can be easily solved using complementary events. To calculate the probability that at least two of them share the same birthday, we just have to calculate the probabilty that none of them was born in the same day and subtract one by the result.


### Complementary events
![Complement-of-Event-1024x381 width:10px](https://user-images.githubusercontent.com/45129483/166121427-c6a62ff8-f2ee-4c3f-b0bd-ccb033d8b2fc.jpeg)

### Solution
If we have 20 individuals, the first one can be born in any day, so his probability is 365/365. The second one has 364 available days to be born in order to have a different birthday, so 364/365. The third 363/365 and so on... 

The final math would be 1 - 365!/(345! * 365^20), which is 41,1% 

Wolfram has a tool that easily allows you to calculate this probability: https://www.wolframalpha.com/input?i=birthday+problem+calculator

### Implementation in R, Julia and Python
This can be easily implement in many programming languages. To practice a bit, I implemented in R, Julia and python! The codes are avilable in this repository, each one of them solves the ptoblem in a differnt way. R and python calculates the probability and Julia simulates the situations to get the probabilities.
