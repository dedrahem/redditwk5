class RemoveAuthorNameFromAuthors < ActiveRecord::Migration
  def change
    remove_column :authors, :author_name, :string
  end
end
