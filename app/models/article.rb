class Article < ApplicationRecord
  class Article < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :tempo

    # 空の投稿を保存できないようにする
    validates :prefecture, :price, :tempo, :ttime, :man_kaz, :tempo_to, :eki, presence: true

    # ジャンルの選択が「--」の時は保存できないようにする
    validates :tempo, numericality: { other_than: 1 }
    validates :ttime, numericality: { other_than: 1 }
    validates :man_kaz, numericality: { other_than: 1 }
    validates :tempo_to, numericality: { other_than: 1 }
    validates :eki_id, numericality: { other_than: 1 }
  end
end

