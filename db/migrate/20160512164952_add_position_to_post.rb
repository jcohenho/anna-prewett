class AddPositionToPost < ActiveRecord::Migration
  def change
    add_column :posts, :position, :integer, default: 0, null: false
  end
end
