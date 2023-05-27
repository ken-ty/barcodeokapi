# このディレクトリについて

core には プロジェクトが変わっても使いまわせるような汎用的なコードを格納します.

ファイル構成は, 公式ページの
[アプリの推奨アーキテクチャ(Recommended app architecture)](https://developer.android.com/jetpack/guide?hl=ja) 
に則ります. (2023年度時点)

- ui_layer
  - UI レイヤは、アプリデータを画面に表示する為の UI を提供する.
  - 1 UI パーツ につき 1 ディレクトリ 作成する.
  - 特にクラス名に制限はない.
  - 1ファイルで ui_elements と state_holders の 2クラスを作成する. ( state がないなら state_holders は省略可能 )
  - ui_elements は widget で作成する.
  - state_holders は provider を利用する場合と, StatefulWidget の state として管理する場合がある. (TODO: !!要確認!!)
- domain_layer
  - 複雑なビジネス ロジック、または複数の ViewModel で再利用される単純なビジネス ロジックをカプセル化する.
  - 可変データを持たせてはならない. 純粋なロジックに徹する.
  - 簡単で再利用不要なロジックは domain にせず, UIにベタ書きが良い. (凝集度の為)
  - クラス名は 「動詞の現在形 + 名詞 / 対象（省略可） + UseCase」 とする. 例えば
    FormatDateUseCase, LogOutUserUseCase, GetLatestNewsWithAuthorsUseCase, MakeLoginRequestUseCase など.
  - 一つのことだけやる. invoke() を用いる.
  - データをキャッシュする必要がある場合はドメインレイヤーではなく、データレイヤーに配置した方が良い.
- data_layer
  - データレイヤーへのエントリポイントは常にRepository.
  - 公開されるデータは不変
  - repositories
    - アプリ内にデータを公開する
    - データを一元化する
    - 複数のDataSource間の競合を解決する
    - データ取得ロジックはここ. ビジネスロジックも含む.
  - data_sources
    - ネットワークやローカルデータベースなど、1つのデータソースのみを操作する責任を持つ
    - DataSourceでAPIを叩いたりする