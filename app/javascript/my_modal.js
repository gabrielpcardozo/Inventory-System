// app/javascript/my_modal.js
export default function setupModal() {
  const modal = document.getElementById("itemModal");
  const closeButton = document.querySelector(".close-button");
  const openModalButtons = document.querySelectorAll(".open-modal");

  openModalButtons.forEach(button => {
    button.addEventListener("click", async () => {
      const itemId = button.getAttribute("data-item-id");
      const response = await fetch(`/itens/${itemId}`); // Supondo que você tenha uma rota para buscar detalhes do item
      const item = await response.json();

      // Preencher o modal com os detalhes do item
      const modalBody = document.getElementById("modal-body");
      modalBody.innerHTML = `
        <p><strong>Nome:</strong> ${item.name}</p>
        <p><strong>Quantidade:</strong> ${item.quantity}</p>
        <p><strong>Descrição:</strong> ${item.description}</p>
      `;

      // Mostrar o modal
      modal.style.display = "block";
    })
  });

  closeButton.addEventListener("click", () => {
    modal.style.display = "none";
  });

  window.addEventListener("click", (event) => {
    if (event.target === modal) {
      modal.style.display = "none";
    }
  });
} 