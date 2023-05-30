/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_set_font(credt);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(room_width / 2, textPosition, creditText);
// No evento Draw do objeto "objCredits":
draw_set_font(credt);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Define a cor do texto
draw_set_color(c_red);

draw_set_font(credt); // Define o tamanho da fonte
draw_text(room_width / 2, textPosition, "Créditos" +  "\n\n"
            + "Programação:\n"
            + " - Pedro\n"
            + " - Ribamar\n\n" 
            + "Sprites:\n"
            + " - Pedro\n"
            + " - Ribamar\n"
            + " - Wesley\n\n"
            + "História:\n"
            + " Pedro \n\n"
            + "Personagens - Professores:\n"
            + " - Paulo \n"
            + " - Anderson \n"
			+ " - Cleber \n"
            + " - Manuel \n"
			+ " - Thiago \n"
            + " - Nonato \n"
			+ " - Laiton \n\n"
			+ "Participações Especiais:\n"
            + " - Joia de sapo \n"
			+ " - Matheus \n\n"
			+ "Área de gravações:\n"
            + " - IFPI-Campos Pedro II \n"
			+ " - Pedro II \n"
			+  "\n\n\n\n\n\n\n"
			+  "Obrigador por jogar!"

 );

// Restante do código para desenhar a lista de créditos