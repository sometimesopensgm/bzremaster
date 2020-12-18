{
    // Handles key presses
    if (input){
        for(var i = 0;i<array_length_1d(key);i++){
            if key[i] != mb_left && key[i] != mb_right{
                if keyboard_check(key[i]){
                    if key_p[i] = 1{
                        key_p[i] = 2;
                    }
                    if key_p[i] = 0{
                        key_p[i] = 1;
                    }
                }else{
                    if key_p[i] = 3{
                        key_p[i] = 0;
                    }
                    if key_p[i] != 0{
                        key_p[i] = 3;
                    }
                }
            }else{
                if mouse_check_button(key[i]){
                    if key_p[i] = 1{
                        key_p[i] = 2;
                    }
                    if key_p[i] = 0{
                        key_p[i] = 1;
                    }
                }else{
                    if key_p[i] = 3{
                        key_p[i] = 0;
                    }
                    if key_p[i] != 0{
                        key_p[i] = 3;
                    }
                }
            }
        }
    }
}