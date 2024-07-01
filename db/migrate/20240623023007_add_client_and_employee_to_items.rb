class AddClientAndEmployeeToItems < ActiveRecord::Migration[7.1]
  def change
    add_reference :items, :client, foreign_key: { to_table: :pessoas }
    add_reference :items, :employee, foreign_key: { to_table: :pessoas }
  end
end
