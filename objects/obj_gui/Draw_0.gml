for(var i = 0; i < 3; i++) {
    draw_sprite(spr_gui, 0, 16 + 64 * i, 16);
}

draw_set_color($503e2c);

var text = "Control the shader with Q an W\r\nHue: " + string(obj_shader.pos);
draw_text(16, 80, text);

draw_set_color(c_white);