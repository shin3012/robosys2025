# weekday : 'YYYY-MM-DD'を日本語の曜日に変換するコマンド

標準入力で受け取った日付(YYYY-MM-DD)を日本語の曜日1文字で標準出力します．エラーは標準エラー出力で，終了コード１で終了します．空行は無視します．

## ダウンロード
```bash
$ git clone https://github.com/shin3012/robosys2025.git 
$ cd robosys2025 
$ chmod +x weekday test_weekday.bash
```

## 使い方
### 例1
```bash
$ printf '%s\n' 2025-11-06 | ./weekday 
木
```

### 例2
```bash
$ printf '%s\n' 2025-11-06 2028-02-29 | ./weekday 
木
火
```

### エラー例1(不正な日付)
```bash
$ printf '%s\n' 2025-13-01 | ./weekday 1>ok 2>err ; echo $? 
1 # 終了コード1
$ cat ok # 何も出力されない
$ cat err # invalid date format (except YYYY-MM-DD) at line 1
```

### エラー例2(不正な書式)
```bash
$ printf '%s\n' 2025/11/08 | ./weekday 1>ok 2>err ; echo $? 
1 # 終了コード1
$ cat ok # 何も出力されない
$ cat err # # invalid date format (except YYYY-MM-DD) at line 1
```


## 必要なソフトウェア
- python
  - テスト済みバージョン: 3.7 ~ 3.10
## テスト環境
- Ubuntu 20.04 LTS

## テスト結果
### 実行方法
```bash
$ ./test_weekday.bash
OK
```

## GitHub Actionsのテスト
[![test](https://github.com/shin3012/robosys2025/actions/workflows/test_weekday.yml/badge.svg)](https://github.com/shin3012/robosys2025/actions/workflows/test_weekday.yml) 


## 最後に
- このソフトウェアパッケージは，GPL3.0ライセンスの下，再頒布および使用が許可されます.
© 2025 Shinnosuke Saito

