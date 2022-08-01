class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.string :icon 
      t.belongs_to :user, index: true, foriegn_key: true
      t.belongs_to :entity, index: true, foriegn_key: true

      t.timestamps
    end
  end
end
