class AddAttributesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :booked, :boolean
    add_column :posts, :reserver, :integer
  end
end
