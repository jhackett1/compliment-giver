class CreateCompliments < ActiveRecord::Migration[5.2]
  def change
    create_table :compliments do |t|
      t.text :body
      t.string :attribution
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
