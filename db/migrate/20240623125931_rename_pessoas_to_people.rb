class RenamePessoasToPeople < ActiveRecord::Migration[7.1]
  def change
    rename_table :pessoas, :people
  end
end
