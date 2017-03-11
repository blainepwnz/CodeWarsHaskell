module PerimeterOfSquares where
perimeter = tailFibs 0 1 0 0
            where tailFibs prev1 prev2 sum start end  | start == end = 4*sumIncrement
                                                      | otherwise = tailFibs next prev1 sumIncrement (start + 1) end
                                                       where next = prev1 + prev2
                                                             sumIncrement = sum+next

