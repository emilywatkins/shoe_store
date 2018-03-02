class UpdatePriceColumnType < ActiveRecord::Migration[5.1]
  def change
    change_table(:brands) do |t|
      t.change(:price, :decimal, :precision => 8, :scale => 2)
    end
  end
end
