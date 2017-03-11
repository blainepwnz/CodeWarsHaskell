module Fibonacci where

productFib :: Integer -> (Integer, Integer, Bool)
productFib n = productFib' n 1 1 0
               where productFib' n acc prev1 prev2 | n==0  = (0,0,True)
                                                   | n==1  = (1,1,True)
                                                   | n>acc = productFib' n (prev1*prev2) next prev1
                                                   | n==acc = (prev1-prev2,prev2,True)
                                                   | otherwise = (prev1-prev2,prev2,False)
                                                   where next = prev1 + prev2
