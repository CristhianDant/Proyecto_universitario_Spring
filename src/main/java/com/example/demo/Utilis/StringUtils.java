package com.example.demo.Utilis;

public class StringUtils {

    public static String capitalize(String text) {
        if (text == null || text.trim().isEmpty()) {
            return text;
        }
        text = text.trim();
        return text.substring(0, 1).toUpperCase() + text.substring(1).toLowerCase();
    }
}
