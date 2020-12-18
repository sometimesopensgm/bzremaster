{
    key_p[KEY_NORT] = 0;
    key_p[KEY_SOUT] = 0;
    key_p[KEY_EAST] = 0;
    key_p[KEY_WEST] = 0;
    key_p[KEY_FIRE] = 0;
    key_p[KEY_JUMP] = 0;
    key_p[KEY_PICK] = 0;
    key_p[KEY_RELOAD] = 0;
    
    key[KEY_NORT] = ord("W"); // 
    key[KEY_EAST] = ord("D"); // 
    key[KEY_SOUT] = ord("S"); //
    key[KEY_WEST] = ord("A"); //
    key[KEY_FIRE] = mb_left;  // 
    key[KEY_JUMP] = mb_right; //
    key[KEY_PICK] = ord("E"); // 
    key[KEY_RELOAD] = ord("R"); //
    
    resettimer = 60 * 5;
    input = true;
    index = 0;
    persistent = true;
}