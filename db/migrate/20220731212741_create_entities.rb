class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :name, null: false
      t.integer :amount, null: false
      t.belongs_to :user, index: true, foriegn_key: true
      t.belongs_to :group, index: true, foriegn_key: true

      t.timestamps
    end
  end
end
