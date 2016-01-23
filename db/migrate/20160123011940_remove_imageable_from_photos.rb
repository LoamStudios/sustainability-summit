class RemoveImageableFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :imageable_id
    remove_column :photos, :imageable_type
    add_column :photos, :event_id, :integer
  end
end
