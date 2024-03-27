class CreateNubdRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :nubd_requests do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.references :department, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.string :session_year
      t.boolean :type
      t.string :txt_id

      t.timestamps
    end
  end
end
