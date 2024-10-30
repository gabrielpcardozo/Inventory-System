# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cadastrando novos itens..."

# Criando Cliente e Funcionario de teste
client_test = Client.find_or_create_by!(
  first_name: "Cliente",
  last_name: "Exemplo",
  age: 22,
  password_digest: "pass123",
  email: "cliente_test@email.com"
)

employee_test = Employee.find_or_create_by!(
  first_name: "Funcionario_Exemplo",
  last_name: "Exemplo",
  age: 22,
  password_digest: "pass123",
  email: "employee_test@email.com"
)

# Dados gerais que serão criados em todos os ambientes
items = [
  { name: "ItemTeste_1", quantity: 1, price: 10, client: client_test, employee: employee_test },
  { name: "ItemTeste_2", quantity: 2, price: 20, client: client_test, employee: employee_test },
  { name: "ItemTeste_3", quantity: 3, price: 30, client: client_test, employee: employee_test }
]

items.each do |item|
  Item.find_or_create_by!(item)
end

puts "Items criados."
