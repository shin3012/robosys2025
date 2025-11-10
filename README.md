# weekday : 'YYYY-MM-DD'を日本語の曜日に変換するコマンド

標準入力で受け取った日程(YYYY-MM-DD)を日本語の曜日1文字で標準出力します．エラーは標準エラー出力で，終了コード１で終了します．空行は無視します．

## ダウンロード
git clone https://github.com/shin3012/robosys2025.git
cd robosys2025
chmod +x weekday test_weekday.bash

## 使い方
### 例1
- printf '%s\n' 2025-11-06 | ./weekday
- => 木

### 例2
-　print '%s\n' 2025-11-06 2028-02-09 | ./weekday
- => 木
- => 火

### エラー例1(不正な日付)
- printf '%s\n' 2025-13-01 | ./weekday 1>ok 2>err ; echo $?
- => 1 #終了コード:1

### エラー例2(不正な書式)
- printf '%s\n' 2025/11/08 | ./weekday 1>ok 2>err ; echo $?
- => 1 #終了コード:1



## 必要なソフトウェア
- python
  - テスト済みバージョン: 3.7 ~ 3.10
## テスト環境
- Ubuntu 20.04 LTS 

-このソフトウェアパッケージは，GPL3.0ライセンスの下，再頒布および使用が許可されます.
-このパッケージは，Ryuichi Ueda由来のコード(@ 2025 Ryuichi Ueda)を利用しています
-このパッケージのコードは下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを，本人の許可を得て自身の著作としたものです．
  - [ryuichiueda/slides_marp/robosys2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
©　2025 Shinnosuke Saito
