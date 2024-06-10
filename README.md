# Xilinx SDK + Zybo-Z7 プロジェクト

このレポジトリは，Xilinx SDKでZybo-Z7 用のプログラムを動作させるためのプロジェクトである．

## 環境

動作確認したボードは次の通りである．

  - Zybo-Z7-10

動作確認したXilinx SDKのバージョンは次の通りである．  

  - Xilinx SDK 2019.1

## ボードの設定
- ジャンパスイッチ
  - JP5 : JTAG
  - JP6 : USB側
- SW4 : ON
- USB : PCと接続

## コンソール
- USB-UART のポートへ，115200bps で接続する．

## 使用方法

Xilinx SDK を起動した後，ワークスペースに workspace を指定する．

## sample1のビルドと実行

sample1フォルダにはFreeRTOSの Hellow world! プログラムが格納されている．

ビルド方法は次の通りである．

- プロジェクトビューで sample1 で右クリック -> Build Project を選択

ビルドエラーとなる場合は，
- zybo_z7_bsp で右クリックして Re-generate BSP Source を選択

実行方法は次の通りである．

- プロジェクトビューで sample1 で右クリック -> Debug As -> Debug Configurations.. を選択
- Xilinx C/C++ application (Sytem Debugger) -> sample1


## 性能評価時
Relese ビルドで最適化を有効としてビルドを実施する．

- プロジェクトビューで sample1 で右クリック -> Build Configurations -> Set Active -> Release 

## 新規プロジェクトの作成

新規プロジェクトは次の方法で作成する．

- File -> New -> Application Project を選択．
  - Project Name にプロジェクト名を指定．
  - OS Platform に standalone ないし freertos10_xilinx を指定．
  - Board Support Package い zybo_z7_bsp を指定
  - Next 
- ベースにするサンプルを選択して，Finishを押す．

デバッグは次の方法でで行う

- プロジェクトビューで作成したプロジェクトで右クリック -> Debug As -> Launch on Hardware (Sytem Debugger) を選択