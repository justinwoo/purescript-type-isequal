module Type.IsEqual where

import Type.Data.Boolean (False, True, kind Boolean)

-- | This type class tells whether or not two types are equal with a Boolean-kinded result.
-- | This class is only useful for type-level programming.
class IsEqual a b (result :: Boolean)
  | a b -> result

instance isEqualEqual :: IsEqual a a True
else instance isEqualNotEqual :: IsEqual a b False
