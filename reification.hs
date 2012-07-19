data Expr where
  -- new constructor
  Var :: String       -> Expr
  -- as before
  Lit :: Int          -> Expr
  Add :: Expr -> Expr -> Expr

reifyFn :: (Expr -> Expr) -> Expr
reifyFn fn = fn (Var "x")

