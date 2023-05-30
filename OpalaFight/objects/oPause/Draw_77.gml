gpu_set_blendenable(false);

if (pause)
{
    if (!surface_exists(pauseSurf))
    {
        pauseSurf = surface_create(resW, resH);
        surface_set_target(pauseSurf);
        draw_clear_alpha(c_black, 0);
        surface_reset_target();
    }
    
    surface_set_target(application_surface);
    draw_surface(pauseSurf, 0, 0);
    surface_reset_target();
}

if (keyboard_check_pressed(ord("P")))
{

    if (!pause)
    {
        pause = true;
        instance_deactivate_all(true);
        
        if (surface_exists(pauseSurf))
        {
            surface_free(pauseSurf);
        }
        
        pauseSurf = surface_create(resW, resH);
        surface_set_target(pauseSurf);
        draw_clear_alpha(c_black, 0);
        draw_surface(application_surface, 0, 0);
        surface_reset_target();
        
        if (buffer_exists(pauseSurfBuffer))
        {
            buffer_delete(pauseSurfBuffer);
        }
        pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
        buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
    }
    else
    {
        pause = false;
        instance_activate_all();
        
        if (surface_exists(pauseSurf))
        {
            surface_free(pauseSurf);
        }
        if (buffer_exists(pauseSurfBuffer))
        {
            buffer_delete(pauseSurfBuffer);
        }
    }
}

gpu_set_blendenable(true);
