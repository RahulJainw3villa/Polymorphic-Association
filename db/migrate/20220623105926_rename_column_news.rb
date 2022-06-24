class RenameColumnNews < ActiveRecord::Migration[6.1]
  def change
    rename_table :news, :brodcast
  end
end
