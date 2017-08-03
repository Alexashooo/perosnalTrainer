class AddRecipientEmailToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :recipient_email, :string
  end
end
