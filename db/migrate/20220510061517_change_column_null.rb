class ChangeColumnNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :orders, :last_name, true
  end
end
