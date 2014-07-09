class EmailProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :email, :string
  end
end
