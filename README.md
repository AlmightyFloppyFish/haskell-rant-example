```haskell
main.hs:9:36: error:
    • Occurs check: cannot construct the infinite type: a0 ~ [a0]
      Expected type: [[a0]]
        Actual type: [a0]
    • In the second argument of ‘map’, namely ‘numbers’
      In the expression: map (\ n -> n + tail numbers) numbers
      In the second argument of ‘($)’, namely
        ‘let numbers = [...] in map (\ n -> n + tail numbers) numbers’
    • Relevant bindings include numbers :: [a0] (bound at main.hs:8:7)
  |
9 |    in map (\n -> n + tail numbers) numbers
  |
```

I then wrote the exact same code in Elm to compare. (List.tail returns a Maybe in elm and not in haskell, so i created a wrapper function to make it behave like haskell)

```elm
I cannot do addition with lists:

16|             map (\n -> n + tail_haskell numbers) numbers
                               ^^^^^^^^^^^^^^^^^^^^
This `tail_haskell` call produces:

    List number

But (+) only works with Int and Float values.

Hint: Switch to the (++) operator to append lists!

Hint: Only Int and Float values work as numbers.
```

Now the issue is that I forgot tail actually returns a List a, and not a. Which error makes that the most clear? 
