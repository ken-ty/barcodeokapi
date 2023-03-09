# barcodeokapi

Okapi's ass is a barcode!

開発デモアプリです. 

キーワード: バーコードスキャナ, マルチ画面, riverpod

## 開発環境

node v18.13.0, npm 8.19.3, flutter 3.3.10, Android SDK 33.0.0, vscode にて開発.
他の環境での動作は未確認.

flutter の初期設定は済んでいることを想定している.

初回に以下を実行
```
# flutter_samples/ 配下で行う
npm i

# flutter_samples/riverpod_sample/ 配下で行う
flutter pub get
```

---

参考

```
% node -v         
v18.13.0
                                                                                                                                                                                                                                                
% npm -v       
8.19.3

% flutter doctor -v
[✓] Flutter (Channel stable, 3.3.10, on macOS 12.6 21G115 darwin-x64, locale ja-JP)
    • Flutter version 3.3.10 on channel stable at /Users/apple/develop/flutter
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision 135454af32 (3 months ago), 2022-12-15 07:36:55 -0800
    • Engine revision 3316dd8728
    • Dart version 2.18.6
    • DevTools version 2.15.0

[✓] Android toolchain - develop for Android devices (Android SDK version 33.0.0)
    • Android SDK at /Users/apple/Library/Android/sdk
    • Platform android-33, build-tools 33.0.0
    • Java binary at: /Applications/Android Studio.app/Contents/jre/Contents/Home/bin/java
    • Java version OpenJDK Runtime Environment (build 11.0.13+0-b1751.21-8125866)
    • All Android licenses accepted.

[✓] Xcode - develop for iOS and macOS (Xcode 14.2)
    • Xcode at /Applications/Xcode.app/Contents/Developer
    • Build 14C18
    • CocoaPods version 1.11.3

[✓] Chrome - develop for the web
    • Chrome at /Applications/Google Chrome.app/Contents/MacOS/Google Chrome

[✓] Android Studio (version 2021.3)
    • Android Studio at /Applications/Android Studio.app/Contents
    • Flutter plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/9212-flutter
    • Dart plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/6351-dart
    • Java version OpenJDK Runtime Environment (build 11.0.13+0-b1751.21-8125866)

[✓] VS Code (version 1.75.1)
    • VS Code at /Applications/Visual Studio Code.app/Contents
    • Flutter extension version 3.58.0

[✓] Connected device (2 available)
    • macOS (desktop) • macos  • darwin-x64     • macOS 12.6 21G115 darwin-x64
    • Chrome (web)    • chrome • web-javascript • Google Chrome 110.0.5481.177
    ! Device emulator-5554 is offline.

[✓] HTTP Host Availability
    • All required HTTP hosts are available

• No issues found!
```


## 開発端末の起動

予め Android Studio で emulator を作成して, `flutter doctor` で正常なことを確認する.
プロジェクトファイル上で F5 で実行できる.

## コマンド

| Command           | Description                                   |
| ----------------- | --------------------------------------------- |
| `flutter doctor`  | 環境に問題がないか確認できる. `-v` をつけると詳細表示 |
| `flutter analyze` | lint 実行                                      |
| `npx git-cz`      | `git commit` の代わりに利用する                  |


## ディレクトリ構成

- .vscode
    - vscode のワークスペース設定
- riverpod_sample
    - flutter プロジェクト
- package.json
    - node 開発時の利用外部ライブラリ管理
- .czrc
    - git-cz の設定

## ブランチ運用

### main

メインブランチ.

- 直接コミット・マージはしない
- PR 経由で差分が取り込まれる

### feature/*

作業ブランチ.

- `main` から派生.
- 1機能作成ごとに `main` から切って `main` にマージする. 全て PR 経由.

## commit message について

適切に `git add` したら, `git commit` の代わりに以下を実行する.

```
npx git-cz
```