#!/bin/sh

# ビルドランナーを変更監視モードで実行します.

FLUTTER_PROJECT_DIRECTORY=barcodeokapi

# 実行場所変更
cd `dirname $0` # このスクリプトが配置されているディレクトリに移動
cd ../$FLUTTER_PROJECT_DIRECTORY # Flutter プロジェクトに移動

# flutter パッケージ読み込み
flutter pub get

# generator を監視モードで実行
flutter pub run build_runner watch --delete-conflicting-outputs

# TODO: ここに他のwatchコマンドを書く, 都度ビルドするかは要検討（しなくてよさそう）
