class Wheat < ActiveHash::Base
  self.data = [
    { id: 1, name: '０（食べていない）' },
    { id: 2, name: '少し（デザートor副菜のみ）' },
    { id: 3, name: '多め（メイン）' },
    { id: 4, name: 'とても多い（メイン＋デザート・副菜）' }
  ]

  include ActiveHash::Associations
  has_many :meals
end