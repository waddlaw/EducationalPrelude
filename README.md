# EducationalPrelude

## 目的

すごい Haskell 楽しく学ぼうの1章に出てくる関数およびデータ型を全て網羅する。

## ビルド方法

`EducationalPrelude` リポジトリのクローン。

```bash
$ git clone --recursive git@github.com:waddlaw/EducationalPrelude.git
```

`ghc` リポジトリのクローン。

```bash
$ cd EducationalPrelude/ghc/
```

### GHC のビルドとインストール

```bash
$ cd ghc
$ cp mk/build.mk.sample mk/build.mk
$ ./boot
$ ./configure
$ make -j
$ sudo make install
```

## 実行方法

### プロジェクトのルートで実行する場合

```bash
$ stack repl src/EducationalPrelude.hs
```

### stack を使う場合

```bash
$ stack repl --resolver=ghc-8.2.1 --ghci-options="-XRebindableSyntax" src/EducationalPrelude.hs
```

### ghc を使う場合

```bash
$ ghci -XRebindableSyntax EducationalPrelude.hs
```

## サポートしている型

- `Bool`
- `Char`
- `Int`
- `Double`
- `[a]`
- `(a, b)`
