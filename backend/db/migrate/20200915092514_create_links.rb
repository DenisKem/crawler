class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.text :url, null: false
      t.string :title
      t.references :batch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
