// javascript/application.js

import "@hotwired/turbo-rails"
import "controllers"
import jQuery from "jquery"; // Importando jQuery
window.$ = jQuery; // Disponibilizando jQuery globalmente
window.jQuery = jQuery; // Disponibilizando jQuery globalmente

// Estilizando o fundo
jQuery('body').css('background-color', '#f2f2f2');

// Importando a função de interação
import changeTextOnClick from "my_interaction";

// Chama a função para ativar a interação após o DOM estar pronto
$(document).ready(function() {
  changeTextOnClick();
});

import "popper"
import "bootstrap"