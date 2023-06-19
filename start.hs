{--
    
    main.hs
    stopSNDL

    Thijs Dregmans
    Version 1.0
    Last edited: 2023-06-19

--}

module Test where
import Data.List

data Vect2d = Vect2d Float Float
    deriving (Show, Eq)

add :: Vect2d -> Vect2d -> Vect2d
add (Vect2d a1 a2) (Vect2d b1 b2) = Vect2d (a1 + b1) (a2 + b2)

sub :: Vect2d -> Vect2d -> Vect2d
sub (Vect2d a1 a2) (Vect2d b1 b2) = Vect2d (a1 - b1) (a2 - b2)

mul :: Vect2d -> Float -> Vect2d
mul (Vect2d a1 a2) b = Vect2d (a1 * b) (a2 * b)

div :: Vect2d -> Float -> Vect2d
div (Vect2d a1 a2) b = Vect2d (a1 / b) (a2 / b)

len :: Vect2d -> Float
len (Vect2d a1 a2) = sqrt ((a1 ** 2) + (a2 ** 2))

min :: Vect2d -> Vect2d -> Vect2d
min a b = if len a > len b then b else a

max :: Vect2d -> Vect2d -> Vect2d
max a b = if len a > len b then a else b

lattices :: Vect2d -> Vect2d -> Float -> [Vect2d]
lattices a b c = [add (mul a d) (mul b e) | d <- [-c..c], e <-[-c..c]]

route :: Vect2d -> Vect2d -> Vect2d -> Float -> [(Int, Int)]
route a b c d = [(round e, round f) | c `elem` (lattices a b d), e <- [-d..d], f <-[-d..d]]




-- test code
v1 = Vect2d 3 4
v2 = Vect2d 1 (-3)

x = lattices v1 v2 10