{-# LANGUAGE NoMonomorphismRestriction
           , RankNTypes
           , ExistentialQuantification
           , GADTs #-}
{-# LANGUAGE UnicodeSyntax #-}

data List a where
  Empty ∷ List a
  Cons ∷ a → List a → List a

