import Data.Char
import Data.List

{- 1 Get all words as an list OK -}
{- 2 make all words lowercase OK -}
{- 3 agrupar todas as palavras repetidas OK -}
{- 4 criar pares de palavras com sua quantidade de aparições OK -}
{- 5 capturar as dez maiores OK -}

top10 document = take 10 wordPairs 
  where
    listOfWords = words (map toLower document)
    wordGroup   = group $ sort listOfWords
    wordPairs   = reverse
                    $ sort
                    $ map (\l -> (length l, head l)) wordGroup
    wordByFreq  = map snd wordPairs

{-top10 doc = take 10 wordPairs-}
  {-where-}
    {-listOfWords = words (map toLower doc)-}
    {-wordGroups  = group $ sort listOfWords-}
    {-wordPairs   = reverse-}
                    {-$ sort-}
                    {-$ map (\l -> (length l, head l))-}
                          {-wordGroups-}
    {-wordsByFreq = map snd wordPairs-}
