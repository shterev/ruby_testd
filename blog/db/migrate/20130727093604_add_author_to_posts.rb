class AddAuthorToPosts < ActiveRecord::Migration
  def change
    add_column :posts , :author, :string, limit: 255 
  end
end
