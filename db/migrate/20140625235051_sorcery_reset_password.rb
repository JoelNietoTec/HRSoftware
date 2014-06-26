class SorceryResetPassword < ActiveRecord::Migration
  def change
    add_column :usuarios, :reset_password_token, :string, :default => nil
    add_column :usuarios, :reset_password_token_expires_at, :datetime, :default => nil
    add_column :usuarios, :reset_password_email_sent_at, :datetime, :default => nil

    add_index :usuarios, :reset_password_token
  end
end
