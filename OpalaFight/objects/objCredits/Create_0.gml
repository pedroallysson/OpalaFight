// Configurações das letras
creditText = "\n\n"
            ;
font = credt; // Substitua "fnt_credit" pelo nome da sua fonte de créditos
font_size = 24;
// letterSpacing = 30;
speed = 0.001; // Ajuste o valor conforme necessário para diminuir a velocidade

// Variáveis de controle
textPosition = room_height; // Posição vertical inicial
textTimer = 0;

// No evento Step do objeto "objCredits":
textPosition -= speed; // Ajusta a velocidade de movimento vertical

if font_size > 0 // Verifica se o tamanho da fonte é maior que zero
{
    font_size -= 0.1; // Ajuste o valor para diminuir o tamanho da fonte gradualmente
}

// No evento Draw do objeto "objCredits":
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_red);
draw_set_font(font_size); // Define o tamanho da fonte
draw_text(room_width / 2, textPosition, creditText);