import Data.Char as Char

:{
-- International Morse Code represented as a table.
mAlphabet :: [ (Char,                             String ) ]
mAlphabet =  [ ('a' ,                     "t f t__ f__ " )
             , ('b' ,             "t__ f t f t f t f__ " )
             , ('c' ,           "t__ f t f t__ f t f__ " )
             , ('d' ,                 "t__ f t f t f__ " )
             , ('e' ,                           "t f__ " )
             , ('f' ,             "t f t f t__ f t f__ " )
             , ('g' ,               "t__ f t__ f t f__ " )
             , ('h' ,               "t f t f t f t f__ " )
             , ('i' ,                       "t f t f__ " )
             , ('j' ,         "t f t__ f t__ f t__ f__ " )
             , ('k' ,               "t__ f t f t__ f__ " )
             , ('l' ,             "t f t__ f t f t f__ " )
             , ('m' ,                   "t__ f t__ f__ " )
             , ('n' ,                     "t__ f t f__ " )
             , ('o' ,             "t__ f t__ f t__ f__ " )
             , ('p' ,           "t f t__ f t__ f t f__ " )
             , ('q' ,         "t__ f t__ f t f t__ f__ " )
             , ('r' ,                 "t f t__ f t f__ " )
             , ('s' ,                   "t f t f t f__ " )
             , ('t' ,                         "t__ f__ " )
             , ('u' ,                 "t f t f t__ f__ " )
             , ('v' ,             "t f t f t f t__ f__ " )
             , ('w' ,               "t f t__ f t__ f__ " )
             , ('x' ,           "t__ f t f t f t__ f__ " )
             , ('y' ,         "t__ f t f t__ f t__ f__ " )
             , ('z' ,           "t__ f t__ f t f t f__ " )
             , ('1' ,   "t f t__ f t__ f t__ f t__ f__ " )
             , ('2' ,     "t f t f t__ f t__ f t__ f__ " )
             , ('3' ,       "t f t f t f t__ f t__ f__ " )
             , ('4' ,         "t f t f t f t f t__ f__ " )
             , ('5' ,           "t f t f t f t f t f__ " )
             , ('6' ,         "t__ f t f t f t f t f__ " )
             , ('7' ,       "t__ f t__ f t f t f t f__ " )
             , ('8' ,     "t__ f t__ f t__ f t f t f__ " )
             , ('9' ,   "t__ f t__ f t__ f t__ f t f__ " )
             , ('0' , "t__ f t__ f t__ f t__ f t__ f__ " )
             , (' ' ,                            "f___ " )
             ]

-- `n` is the number of subdivisions per-cycle in the resulting pattern
-- `s` is the string to be Morse-encoded
morseAt :: Int -> [Char] -> Pattern Bool
morseAt n s = parseBP_E $ "{" ++ (init . mconcat $ map mLookup s') ++ "}%" ++ show n
            where mLookup l = maybe "" id (lookup l mAlphabet)
                  s'        = (map Char.toLower s) ++ " "

-- A default function with 16 subdivisions per-cycle.
morse :: [Char] -> Pattern Bool
morse s = morseAt 16 s
:}
