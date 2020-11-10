class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :tempo
  belongs_to_active_hash :ttime
  belongs_to_active_hash :man_kaz
  belongs_to_active_hash :tempo_to
  belongs_to_active_hash :eki

  belongs_to :user
  has_one :item_purchase
  has_one_attached :image

  validates :name, presence: true
  validates :image, presence: true
  validates_inclusion_of :price, in: 300...9_999_999
  validates :info, presence: true
  with_options presence: true, numericality: { other_than: 1 } do
    validates :tempo_id
    validates :ttime_id
    validates :man_kaz_id
    validates :tempo_to_id
    validates :eki_id
  end
end

