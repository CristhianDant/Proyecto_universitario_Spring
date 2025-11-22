package com.example.demo.Utilis;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class save_imagenes {

    private static final String UPLOAD_DIR_RELATIVE = "/img/";

    public static String guardarImagen(MultipartFile file) {
        if (file.isEmpty()) {
            return null;
        }

        try {
            // Leer el contenido del archivo en un array de bytes para poder usarlo varias veces
            byte[] bytes = file.getBytes();

            // Obtener la extensión del archivo original
            String originalFilename = file.getOriginalFilename();
            String extension = "";
            if (originalFilename != null && originalFilename.contains(".")) {
                extension = originalFilename.substring(originalFilename.lastIndexOf("."));
            }

            // Solo permitir formato .webp
            if (!extension.equalsIgnoreCase(".webp")) {
                return null; // O lanzar una excepción si prefieres
            }

            // Calcular el checksum SHA-256 del contenido de la imagen
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(bytes);
            String checksum = bytesToHex(hash);

            // Crear el nuevo nombre del archivo usando el checksum
            String nuevoNombre = checksum + extension;

            // Obtener la ruta absoluta del directorio de carga en el sistema de archivos
            String uploadDirPath = new File("src/main/resources/static" + UPLOAD_DIR_RELATIVE).getAbsolutePath();
            File uploadDir = new File(uploadDirPath);
            if (!uploadDir.exists()) {
                if (!uploadDir.mkdirs()) {
                    throw new IOException("Failed to create upload directory: " + uploadDirPath);
                }
            }

            Path pathDestino = Paths.get(uploadDirPath + File.separator + nuevoNombre);

            // Verificar si el archivo ya existe
            if (Files.exists(pathDestino)) {
                // Si existe, no guardar de nuevo y retornar la ruta
                return UPLOAD_DIR_RELATIVE + nuevoNombre;
            }

            // Escribir los bytes en el primer destino (src)
            Files.write(pathDestino, bytes);

            // También copiar al directorio target/classes para que esté disponible inmediatamente
            String targetDirPath = new File("target/classes/static" + UPLOAD_DIR_RELATIVE).getAbsolutePath();
            File targetDir = new File(targetDirPath);
            if (!targetDir.exists()) {
                if (!targetDir.mkdirs()) {
                    throw new IOException("Failed to create target directory: " + targetDirPath);
                }
            }
            Path pathDestinoTarget = Paths.get(targetDirPath + File.separator + nuevoNombre);
            // Escribir los mismos bytes en el segundo destino (target)
            Files.write(pathDestinoTarget, bytes);

            return UPLOAD_DIR_RELATIVE + nuevoNombre; // Retorna la ruta relativa para la BD

        } catch (IOException | NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    // Función auxiliar para convertir bytes a hexadecimal
    private static String bytesToHex(byte[] bytes) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    }
}
