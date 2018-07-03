# purescript-type-isequal

[![Build Status](https://travis-ci.org/justinwoo/purescript-type-isequal.svg?branch=master)](https://travis-ci.org/justinwoo/purescript-type-isequal)

Type equality check returning a `Boolean` kind. Useful for type-level programming.

## Example

From tests:

```purs
isEqual
  :: forall a b result
   . IsEqual a b result
  => Proxy a
  -> Proxy b
  -> BProxy result
isEqual _ _ =  BProxy

-- this is true as Int is Int
testA :: BProxy True
testA = isEqual (Proxy :: Proxy Int) (Proxy :: Proxy Int)

-- this is false as Int is not String
testB :: BProxy False
testB = isEqual (Proxy :: Proxy Int) (Proxy :: Proxy String)
```
