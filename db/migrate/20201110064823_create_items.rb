class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name,                    null: false                                
      t.integer :price,                  null: false                             
      t.text :info,                      null: false                               
      t.integer :tempo_id,               null: false  
      t.integer :ttime_id,                null: false 
      t.integer :man_kaz_id,             null: false          
      t.integer :tempo_to_id,            null: false        
      t.integer :eki_id,                 null: false            
      t.references :user,                foreign_key: true  
      t.timestamps 
    end                         
  end
end
