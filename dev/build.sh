#!/bin/sh

# ビルドランナーを実行します

FLUTTER_PROJECT_DIRECTORY=barcodeokapi

# 実行場所変更
cd `dirname $0` # このスクリプトが配置されているディレクトリに移動
cd ../$FLUTTER_PROJECT_DIRECTORY # Flutter プロジェクトに移動

# flutter パッケージ読み込み
flutter pub get

# generator の実行
flutter pub run build_runner build --delete-conflicting-outputs

# TODO: ここにビルドコマンドを書く
