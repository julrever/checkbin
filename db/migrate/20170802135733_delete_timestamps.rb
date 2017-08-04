class DeleteTimestamps < ActiveRecord::Migration[5.1]
  def change
    remove_column :bins, :created_at
    remove_column :bins, :updated_at
  end
end
