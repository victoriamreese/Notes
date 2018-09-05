## Reverse a string:
 
```def reverse(text)
    str = ""
        for c in range(len(text), 0, -1):
            str += text[c-1] 
            return str
```

## Removing vowels from a string:
 
```def no_vowel(text):
     vowelless = ''
    for c in text:
        lower = c.lower()
        if lower in ['a', 'e', 'i', 'o' u]:
            vowelless += ''
        else:
            vowelless += c       
    return vowelless
```

## Replacing a word with asterisks:

```def censor(text, word):
s = []
for t in text.split():
if t == word:
n = len(t)
s.append("*" * n)
```
else:
s.append(t)
return " ".join(s)
