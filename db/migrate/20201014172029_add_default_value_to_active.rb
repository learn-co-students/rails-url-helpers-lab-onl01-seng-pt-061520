class AddDefaultValueToActive < ActiveRecord::Migration[5.0]
  def up
    change_column_default :students, :active, false
  end

  def down
    change_column_default :students, :active, nil
  end
end
