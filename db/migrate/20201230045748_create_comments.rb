class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string     :name,            null: false
      t.string     :text,            null: false
      t.references :tweet_comment,   foreign_key: true      
      t.timestamps
    end
  end
end