package com.example.demo.login;

import com.example.demo.usuario.Usuario;

public interface LoginService {
    Usuario authenticate(String email, String password);
}
