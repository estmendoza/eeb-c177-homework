# Darwin Regex Solutions

1. `\bs\w+`
2. `\w+(?=[\.\?])`
3. `[^\.\?\s][^\.\?]+`
4. `[^\.\?\s][^\.\?]+struggle for existence[^\.\?\s][^\.\?]+`

**BONUS.** `(^\w+)|((?<=[\.\?]\s)\w+)`

>1. `^\w+` selects the first word in the paragraph/string
>2. `(?<=[\.\?]\s)\w+` selects the first word after every punctuation 
  followed by a space
>3. I put each of the two above in parentheses and seperated them with a
  pipe `|`, to select the first word of the string AND every word following 
  a punctuation+space.
