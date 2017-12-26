# EducationalPrelude

## 目的

すごい Haskell 楽しく学ぼうの1章に出てくる関数およびデータ型を全て網羅する。

## 環境

```shell
$ stack --version
Version 1.6.3, Git revision b27e629b8c4ce369e3b8273f04db193b060000db (5454 commits) x86_64 hpack-0.20.0

$ stack exec -- ghc --version
The Glorious Glasgow Haskell Compilation System, version 8.2.1.20171120
```

## ビルド方法

`EducationalPrelude` リポジトリのクローン。

```bash
$ git clone --recursive https://github.com/waddlaw/EducationalPrelude.git
```

### GHC のビルドとインストール

- [GHC のビルド方法まとめ](https://github.com/waddlaw/til/blob/master/haskell/GHC/Build.md#ビルド方法)

```bash
$ cd EducationalPrelude/ghc
$ cp mk/build.mk.sample mk/build.mk
$ ./boot
$ ./configure
$ make -j
$ sudo make install
```

## 実行方法

### プロジェクトのルートで実行する場合

```bash
$ cd <project root>
$ stack repl src/EducationalPrelude.hs
```

### stack を使う場合

```bash
$ stack repl --system-ghc --resolver=ghc-8.2.1 --ghci-options="-XRebindableSyntax" src/EducationalPrelude.hs
```

### ghc を使う場合

```bash
$ ghci -XRebindableSyntax EducationalPrelude.hs
```

## Examples

```bash
ghci> :t (+)
(+) :: a -> a -> a

ghci> 1 + 0.1
1.1

ghci> :t 1
1 :: Int

ghci> :t 0.1
0.1 :: Double

ghci> :t (^)
(^) :: Int -> Int -> Int
```

## サポートしている型

- `Bool`
- `Char`
- `Int`
- `Double`
- `[a]`
- `(a, b)`
