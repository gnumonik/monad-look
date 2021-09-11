module Control.Monad.Look where


-- | MonadLook is a restricted version of MonadReader for types where only 'ask' and 'asks' (but not 'local') can be defined
class Monad m => MonadLook l m where 
  -- | "ask"
  look :: m l 
  
  -- | "asks"
  looks :: (l -> l) -> m l
