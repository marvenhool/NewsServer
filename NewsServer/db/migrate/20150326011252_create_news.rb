class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.integer :category
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
