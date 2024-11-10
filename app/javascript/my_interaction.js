// javascript/my_interaction.js

export default function changeTextOnClick() {
  console.log("Executando changeTextOnClick");

  // Verificar se o jQuery está carregado
  if (typeof $ === 'undefined') {
    console.error("jQuery não está carregado!");
    return;
  }

  console.log("jQuery está carregado corretamente.");

  // Certifique-se de que o código seja executado após o DOM estar pronto
  $(document).ready(function() {
    console.log("Documento pronto, adicionando evento de clique.");

    // Adiciona um evento de clique ao botão
    $("#changeTextButton").on("click", function() {
      console.log("Botão clicado!");

      // Alterna entre as classes de formatação
      let $textElement = $("#textElement");
      if ($textElement.hasClass("blue-text")) {
        $textElement.removeClass("blue-text").addClass("red-text");
        $textElement.text("Texto em vermelho");
      } else {
        $textElement.removeClass("red-text").addClass("blue-text");
        $textElement.text("Texto em azul");
      }
    });
  });
}