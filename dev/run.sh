#!/bin/sh

# frutter プロジェクトを実行します

# TODO: 環境選択 dev, stg, prd ... 

FLUTTER_PROJECT_DIRECTORY=barcodeokapi

# 実行場所変更
cd `dirname $0` # このスクリプトが配置されているディレクトリに移動
cd ../$FLUTTER_PROJECT_DIRECTORY # Flutter プロジェクトに移動

# flutter パッケージ読み込み
flutter run
