# Inventory System

Este é um projeto simples desenvolvido em Rails com o objetivo de explorar e entender melhor as características do framework. Foi criado para testar algumas curiosidades e aprender com o RailsGuides e o curso de RoR do Jackson Pires. O foco principal está em testar e aprimorar os conhecimentos no Ruby on Rails.

# Funcionalidades

### Models
* Integração entre dois models.
* Definição de regras e validações.
* Implementação de hierarquia dentro dos models.
* Gerenciamento de itens de estoque.
### Views
* Coleta e exibição de dados provenientes dos controllers e models.
* Renderização de templates e partials.
### Controllers
* Criação e gerenciamento de ações para a aplicação.
* Entendimento das relações entre controllers e outros componentes da aplicação.
* Controle de sessões para login e signup.
# Estrutura do Projeto
* Models
  * Person: Representa uma pessoa genérica no sistema.
  * Client: Subclasse de Person, representa um cliente.
  * Employee: Subclasse de Person, representa um funcionário.
  * Item: Representa um item de estoque, principal componente do projeto.
* Views
  * Páginas para visualização e interação com os dados de Person, Client, Employee e Item.
  * Formulários para criação e edição de registros.
  * Páginas de login e signup.
* Controllers
  * PeopleController: Gerencia as ações CRUD para Person, Client e Employee.
  * ItemsController: Gerencia as ações CRUD para os itens de estoque.
  * SessionsController: Controla as sessões de login e logout.
# Objetivos
* Compreender a estrutura MVC do Rails.
* Experimentar a comunicação entre models.
* Aprender sobre a definição de regras de modelo e validações.
* Entender como os dados são passados dos controllers para as views.
* Explorar a criação de hierarquias e subclasses no Rails.
* Gerenciar itens de estoque através de models e controllers dedicados.
* Implementar um sistema de login e signup.
Considerações
* Este projeto foi criado com fins educacionais e experimentais. Não foram seguidas as melhores práticas de projeto, versionamentos ou TDD. 

### Considerações
Feedbacks e sugestões são bem-vindos! Sinta-se à vontade para abrir issues ou enviar pull requests.