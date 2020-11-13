class ItemsTag

  include ActiveModel::Model
  attr_accessor :tempo_to, :name

  with_options presence: true do
    validates :tempo_to
    validates :name
  end

  def save
    item = Item.create(tempo_to: tempo_to)
    tag = Tag.create(name: name).first_or_initialize
    tag.save

    ItemTagRelation.create(item_id: item.id, tag_id: tag.id)
  end

end