nums = 1: map (+1) nums

hypo a b = sqrt (fromIntegral (a^2 + b^2))

add x y = x + y


hypoRound a b = round (hypo a b)

hypoPair size = [(x, y, (hypo x y)) | x <- take size nums, y <- take size nums, isInt (hypo x y)]

isInt x = x == fromInteger (round x)
