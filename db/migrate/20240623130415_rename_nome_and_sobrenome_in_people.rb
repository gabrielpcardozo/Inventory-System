class RenameNomeAndSobrenomeInPeople < ActiveRecord::Migration[7.1]
  def change
    rename_column :people, :nome, :first_name
    rename_column :people, :sobrenome, :last_name
  end
end
