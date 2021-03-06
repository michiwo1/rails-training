class Prefecture
  # 地域コード/都道府県名/人口
  PREFECTURES = [
      { area_cd: 1, name: '北海道', count: 5285430 },
      { area_cd: 2, name: '青森県', count: 1262686 },
      { area_cd: 2, name: '岩手県', count: 1240522 },
      { area_cd: 2, name: '宮城県', count: 2313215 }
  ]

  class << self

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:4
    def aomori_info
      # PREFECTURESから青森県の情報を取得しよう
      # 例) PREFECTURES[x]

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:9
    def aomori_kanji_name
      # PREFECTURESから青森県の名前を取得しよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:14
    def miyagi_count
      # PREFECTURESから宮城県の人口を取得しよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:19
    def names
      # 「map」メソッドを使って都道府県名の配列を作ろう
      # 例) PREFECTURES.map ...

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:24
    def unique_area_cd
      # 「uniq」メソッドを使って重複しないarea_cdの配列を作ろう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:29
    def total_count
      # 「inject」メソッドを使って各都道府県のcountを集計してみよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:34
    def join_names
      # 「join」メソッドを使って各都道府県の名称(name)をカンマ区切りで繋げてみよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:39
    def find_by_count(count)
      # 「find」メソッドを使って人口数(count)が引数のcountより小さい最初の県名を取得しよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:44
    def select_by_count(count)
      # 「select」メソッドを使って人口数(count)が引数のcountより大きい県名を取得しよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:49
    def group_by_area
      # 「group_by」メソッドを使って「area_cd」でグループ分けしてみよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:63
    def name_counts
      # 「to_h」メソッドを使って都道府県名(name)をキー、countがバリューのHashを作ろう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/prefecture_spec.rb:68
    def add_prefecture(prefecture)
      # 「push」メソッドを使って都道府県名を情報を追加して新しいHashを作ろう

    end
  end
end