class CreateDifferences < ActiveRecord::Migration
  def change
    create_table :differences do |t|
      t.string :title
      t.string :text

      t.timestamps null: false
    end
  end
end
