/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Atualiza a posição vertical das letras
textPosition -= speed;

// Controla a velocidade de movimento
textTimer += 1;
if (textTimer >= 1)
{
    textTimer = 0;
    speed += 0.001; // Ajuste o valor conforme necessário para controlar a velocidade
}