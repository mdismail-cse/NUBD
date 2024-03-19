class CreateNubdSuggestions < ActiveRecord::Migration[7.1]
  def change
    create_table :nubd_suggestions do |t|
      t.integer :department_id
      t.integer :subject_id
      t.integer :year

      t.timestamps
    end
  end
end
