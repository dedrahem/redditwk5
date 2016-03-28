class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :author_name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
