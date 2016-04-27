{-# LANGUAGE NoMonomorphismRestriction
           , RankNTypes
           , ExistentialQuantification
           , GADTs #-}
{-# LANGUAGE UnicodeSyntax #-}

data List a where
  Empty ∷ List a
  Cons ∷ a → List a → List a

test ∷ IO ()
test = do
  x ← return "hello"
  putStrLn x

-- id' = λ x → x

data V a = V a a a deriving (Show, Eq)

(·) ∷ Num a ⇒ V a → V a → a
(V aî bĵ ck) · (V dî eĵ fk) = aî * dî + bĵ * eĵ + ck * fk

(×) ∷ Num a ⇒ V a → V a → V a
(V aî bĵ ck) × (V dî eĵ fk) = V xî (-yĵ) zk
  where xî = bĵ * fk - ck * eĵ
        yĵ = aî * fk - ck * dî
        zk = aî * eĵ - bĵ * dî
