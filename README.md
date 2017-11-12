# EducationalPrelude

実行方法

```bash
$ stack repl --resolver=ghc-8.2.1 --ghci-options="-XRebindableSyntax" src/EducationalPrelude.hs
```

または

```bash
$ ghci -XRebindableSyntax EducationalPrelude.hs
```

## 課題

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
