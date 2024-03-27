class AddPaymentConfirmToNubdRequest < ActiveRecord::Migration[7.1]
  def change
    add_column :nubd_requests, :payment_confirm, :boolean
  end
end
