class Prefecture
  # 地域コード/都道府県名/人口
  PREFECTURES = [
      { area_cd: 1, name: '北海道', count: 5285430 },
      { area_cd: 2, name: '青森県', count: 1262686 },
      { area_cd: 2, name: '岩手県', count: 1240522 },
      { area_cd: 2, name: '宮城県', count: 2313215 }
  ]

  # PREFECTURES = ["aa","bb","cc"]

  class << self
    def aomori_info
      # PREFECTURESから青森県の情報を取得しよう
      # 例) PREFECTURES[x]
      PREFECTURES[1]
      #$=> {:area_cd=>2, :count=>1262686, :name=>"青森県"}
    end

    def aomori_kanji_name
      # PREFECTURESから青森県の名前を取得しよう
      name = PREFECTURES[1]
      name[:name]
      #別パターン PREFECTURES[1][:name]
      #$=> "青森県"
    end

    def miyagi_count
      # PREFECTURESから宮城県の人口を取得しよう
      PREFECTURES[3][:count]
      #$=> 2313215
    end

    def names
      # 「map」メソッドを使って都道府県名の配列を作ろう
      # 例) PREFECTURES.map ...
      PREFECTURES.map{|hash| hash[:name]}
      #$=> ['北海道', '青森県', '岩手県', '宮城県']
    end

    def counts
      # 「pluck」メソッドを使って人口の配列を作ろう
      PREFECTURES.pluck(:count)
    end

    def unique_area_cd
      # 「uniq」メソッドを使って重複しないarea_cdの配列を作ろう
      PREFECTURES.map{|prefecture| prefecture[:area_cd]}.uniq # => [1, 2]
    end

    def total_count
      # 「inject」メソッドを使って各都道府県のcountを集計してみよう
      prefecture_count = PREFECTURES.map{|prefecture| prefecture[:count]}
      prefecture_count.inject { |sum, num| sum+=num }
    end

    def join_names
      # 「join」メソッドを使って各都道府県の名称(name)をカンマ区切りで繋げてみよう
      prefecture_name = PREFECTURES.map{|prefecture| prefecture[:name]}
      prefecture_name.join(',')
    end

    def find_by_count(count)
      # 「find」メソッドを使って人口数(count)が引数のcountより小さい最初の県名を取得しよう
      PREFECTURES.find {|prefecture| count > prefecture[:count]}[:name]
    end

    def select_by_count(count)
      # 「select」メソッドを使って人口数(count)が引数のcountより大きい県名を取得しよう
      big_prefecture = PREFECTURES.select {|prefecture| count < prefecture[:count]}.map {|prefecture| prefecture[:name]}
    end

    def group_by_area
      # 「group_by」メソッドを使って「area_cd」でグループ分けしてみよう
      PREFECTURES.group_by{|pref| pref[:area_cd] }
    end

    def name_counts
      # 「to_h」メソッドを使って都道府県名(name)をキー、countがバリューのHashを作ろう
      PREFECTURES.map{|pref| [pref[:name],pref[:count]]}.to_h
    end

    def add_prefecture(prefecture)
      # 「push」メソッドを使って都道府県名を情報を追加して新しいHashを作ろう
      PREFECTURES.push(prefecture)
    end
  end
end