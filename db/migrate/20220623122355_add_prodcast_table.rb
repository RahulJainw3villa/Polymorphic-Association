class AddProdcastTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :brodcast, :brodcasts
  end
end
