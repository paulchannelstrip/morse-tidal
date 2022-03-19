# morse-tidal
Morse Code pattern generator for [Tidal Cycles](https://www.tidalcycles.org/)

## Installation

Place the `morse.hs` file in a memorable location (I suggest having a dedicated folder for Tidal scripts), and source it in your Boottidal.hs with:

```haskell
:script /full/path/to/morse.hs
```

## Usage

Any function that accepts a `Pattern Bool` can be passed `morse "some string"`. The string will be turned into a binary pattern following [International Morse Code](https://en.wikipedia.org/wiki/Morse_code) specification.

The script also includes a function `morseAt :: Int -> [Char] -> Pattern Bool`, which accepts an Integer argument to specify the number of subdivisions per Morse unit per cycle (see below chart). The `morse` function serves as a default with 16 subdivisions.

**Dark Mode Users: Click image to view.**

![International Morse Code](https://upload.wikimedia.org/wikipedia/commons/b/b5/International_Morse_Code.svg)
