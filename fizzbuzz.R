# create num 1..100
1:100 -> n -> Ans

# set Fizz and Buzz
Ans[n %% 3 == 0 -> FizzSet] <- "Fizz"
Ans[n %% 5 == 0 -> BuzzSet] <- "Buzz"
Ans[FizzSet & BuzzSet] <- "FizzBuzz"

# display
cat(Ans)