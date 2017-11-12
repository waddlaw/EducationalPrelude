# EducationalPrelude

実行方法

```bash
$ stack repl --resolver=ghc-8.2.1 --ghci-options="-XRebindableSyntax" EducationalPrelude.hs
```

## 考えられる手法

1. MyPrelude を定義する
2. MyGHCi を実装する
3. vanilla GHC を実装する

## 課題

### `Eq` の比較をどうするか

```bash
ghci> 1 == 1
True

ghci> "hello" == "hello"
True
```

```haskell
{-E LANGUAGE DataKinds #-}
data EP = Int | Bool

-- | Eq
(==) :: (a::EP) -> (a::EP) -> Bool
a == b = a P.== b
```


### 5 + 4.0 をどうするか？

暗黙的にこれは以下のようになる

```haskell
fromInteger 5 + fromRational 4.0
```

どちらかに合わせたとしても本質的には `Eq` と同じ問題が起きる

この問題は `Eq`, `Ord`, `Num`, `Foldable` で発生している。

やりたいこととしては、以下のような感じ

```haskell
(==) :: Eq a => a -> a -> Bool
(==) :: a -> a -> Bool
```

現状、アイデアは2つある

- kind を使う
- `Eq a =>` の表示部分を削る。そもそも僕らの考えている型は全て `Eq`, `Ord` などのインスタンスになるはずなので `forall` と考えても良い。
- GHC いじって `(->)` の `kind` を拡張できるようにする。

### 数列

```bash
> [0.1, 0.3 .. 1]

<interactive>:66:14: error:
    • Couldn't match expected type ‘Double’ with actual type ‘Int’
    • In the expression: 1
      In the expression: [0.1, 0.3 .. 1]
      In an equation for ‘it’: it = [0.1, 0.3 .. 1]
```

期待する動作としては

```bash
> [0.1, 0.3 .. 1]
[0.1,0.3,0.5,0.7,0.8999999999999999,1.0999999999999999]
```