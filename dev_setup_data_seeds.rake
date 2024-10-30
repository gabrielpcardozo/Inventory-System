# frozen_string_literal: true

namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup_data_enviorment: :environment do
    if Rails.env.development?
      show_spinner('Apagando BD...') { system('rails db:drop') }
      show_spinner('Criando BD...') { system('rails db:create') }
      show_spinner('Migrando BD...') { system('rails db:migrate') }
      show_spinner('Populando BD com seeds...') { system('rails db:seed') }
    else
      puts 'Você não está no ambiente de desenvolvimento.'
    end
  end

  desc 'Configura o ambiente de produção'
  task setup_data_production: :production do
    if Rails.env.production?
      show_spinner('Migrando BD...') { system('rails db:migrate') }
      show_spinner('Populando BD com seeds...') { system('rails db:seed') }
    else
      puts 'Você não está no ambiente de produção.'
    end
  end

end
