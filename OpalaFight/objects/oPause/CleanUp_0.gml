/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (surface_exists(pauseSurf))
    surface_free(pauseSurf);

// Caso a variável pauseSurfBuffer seja relevante, você pode adicionar o código adequado aqui:
// if (buffer_exists(pauseSurfBuffer))
//     buffer_delete(pauseSurfBuffer);
if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer)