# Convert Ruby Integers to Binary

## Note

This library probably isn't necesary. You can use `#to_s(2)` to achieve the same result.

``` ruby
3.to_s(2).rjust(8, '0')
```

---

Simple:

``` ruby
3.to_binary # => "00000011"
```
