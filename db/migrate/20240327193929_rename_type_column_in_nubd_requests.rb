class RenameTypeColumnInNubdRequests < ActiveRecord::Migration[7.1]
  def change
    rename_column :nubd_requests, :type, :is_active
  end
end
