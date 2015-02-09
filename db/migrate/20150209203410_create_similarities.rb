class CreateSimilarities < ActiveRecord::Migration
  def change
    create_table :similarities do |t|
      t.string :title
      t.string :text

      t.timestamps null: false
    end
  end
end
