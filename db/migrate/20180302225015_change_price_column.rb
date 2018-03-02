class ChangePriceColumn < ActiveRecord::Migration[5.1]
  def change
    change_table(:brands) do |t|
      t.change(:price, :integer)
    end
  end
end
