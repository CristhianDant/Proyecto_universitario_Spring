package com.example.demo.login;

public interface LoginService {
    com.example.demo.usuario.Usuario authenticate(String email, String password);
}
