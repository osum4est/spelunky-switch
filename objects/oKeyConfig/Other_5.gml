file = file_text_open_write(working_directory + "keys.cfg");
file_text_write_string(file, string(global.keyUpVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyDownVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyLeftVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyRightVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyJumpVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyAttackVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyItemVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyRunVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyBombVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyRopeVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyFlareVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyPayVal));
file_text_close(file);

