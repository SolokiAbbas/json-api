class CreateWebsites < ActiveRecord::Migration[5.1]
  def change
    create_table :websites do |t|
      t.string :links
      t.string :h1
      t.string :h2
      t.string :h3
      t.timestamps
    end
  end
end
