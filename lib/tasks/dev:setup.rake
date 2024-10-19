# frozen_string_literal: true

namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup_data_seeds: :environment do
    if Rails.env.development?
      show_spinner('Apagando BD...') { `rails db:drop` }

      show_spinner('Criando BD...') { `rails db:create` }

      show_spinner('Migrando BD...') { `rails db:migrate` }

      show_spinner('Populando BD....') { `rails db:seed` }
    else
      puts 'Voce nao esta no ambiente de desenvolvimento.'
    end
  dec 'Development enviorment'
  task setup_enviorment: :enviorment do
      if
      end
    end
  end

  private

  def show_spinner(msg_start, msg_end = 'Concluído!')
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
