class Eki < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '田端駅' },
    { id: 3, name: '西日暮里駅' },
    { id: 4, name: '日暮里駅' },
    { id: 5, name: '鷲谷駅' },
    { id: 6, name: '上野駅' },
    { id: 7, name: '御徒町駅' },
    { id: 8, name: '秋葉原駅' },
    { id: 9, name: '神田駅' },
    { id: 10, name: '東京駅' },
    { id: 11, name: '有楽町駅' },
    { id: 12, name: '新橋駅' },
    { id: 13, name: '浜松町駅' },
    { id: 14, name: '田町駅' },
    { id: 15, name: '品川駅' },
    { id: 16, name: '大崎駅' },
    { id: 17, name: '五反田駅' },
    { id: 18, name: '目黒駅' },
    { id: 19, name: '恵比寿駅' },
    { id: 20, name: '渋谷駅' },
    { id: 21, name: '原宿駅' },
    { id: 22, name: '代々木駅' },
    { id: 23, name: '新宿駅' },
    { id: 24, name: '新大久保駅' },
    { id: 25, name: '高田馬場駅' },
    { id: 26, name: '目白駅' },
    { id: 27, name: '池袋駅' },
    { id: 28, name: '大塚駅' },
    { id: 29, name: '巣鴨駅' },
    { id: 30, name: '駒込駅' }
  ]
  include ActiveHash::Associations
  has_many :articles
end