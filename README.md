# monad-look

Small, 0-dependency library which defines a restricted version of MonadReader for types where only 'ask' and 'asks' (but not 'local') can be defined. 

More or less a port of purescript's `MonadAsk`, but with the method names changed to not clash with Reader. 

This is the whole library: 


```
class Monad m => MonadLook l m where 
  -- | "ask"
  look :: m l 
  
  -- | "asks"
  looks :: (l -> l) -> m l
```