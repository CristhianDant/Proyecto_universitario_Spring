package com.example.demo.DocuemtoVenta;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;
import java.util.Map;

import com.example.demo.DocuemtoVenta.models.DetalleDocumentoVenta;
import com.example.demo.DocuemtoVenta.models.DocumentoVenta;
import com.example.demo.DocuemtoVenta.models.DocumentoVentaCompleto;

@Repository
public class DocumentoVentaRepository implements DocumentoVentaDAO {

    private final JdbcTemplate jdbcTemplate;

    public DocumentoVentaRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Mapeo para DocumentoVenta
    private final RowMapper<DocumentoVenta> documentoRowMapper = (rs, rowNum) -> {
        DocumentoVenta documento = new DocumentoVenta();
        documento.setIdDocumento(rs.getInt("id_documento"));
        documento.setRazonSocial(rs.getString("razon_social"));
        documento.setNroSerie(rs.getString("nro_serie"));
        documento.setNroDocumento(rs.getString("nro_documento"));
        documento.setDireccionEntrega(rs.getString("direccion_entrega"));
        documento.setReferencia(rs.getString("referencia"));
        documento.setTotal(rs.getBigDecimal("total"));
        documento.setFechaCreacion(rs.getTimestamp("fecha_creacion"));
        documento.setFechaVencimiento(rs.getDate("fecha_vencimiento"));
        documento.setFechaEntrega(rs.getDate("fecha_entrega"));
        documento.setIdUser(rs.getInt("id_user"));
        return documento;
    };

    // Mapeo para DetalleDocumentoVenta
    private final RowMapper<DetalleDocumentoVenta> detalleRowMapper = (rs, rowNum) -> {
        DetalleDocumentoVenta detalle = new DetalleDocumentoVenta();
        detalle.setIdDetalle(rs.getInt("id_detalle"));
        detalle.setIdDocumento(rs.getInt("id_documento"));
        detalle.setIdProducto(rs.getInt("id_producto"));
        detalle.setCantidad(rs.getInt("cantidad"));
        detalle.setPrecioUnitario(rs.getBigDecimal("precio_unitario"));
        detalle.setSubtotal(rs.getBigDecimal("subtotal"));
        return detalle;
    };

    @Override
    public List<DocumentoVenta> listarDocumentosEntreFechas(Date fechaInicio, Date fechaFin) {
        String sql = "SELECT * FROM documento_venta WHERE CAST(fecha_creacion AS DATE) BETWEEN ? AND ? ORDER BY fecha_creacion DESC";
        return jdbcTemplate.query(sql, documentoRowMapper, fechaInicio, fechaFin);
    }

    @Override
    public DocumentoVentaCompleto obtenerDocumentoConDetalle(int idDocumento) {
        // Obtener el documento
        String sqlDocumento = "SELECT * FROM documento_venta WHERE id_documento = ?";
        DocumentoVenta documento = jdbcTemplate.queryForObject(sqlDocumento, documentoRowMapper, idDocumento);

        // Obtener los detalles
        String sqlDetalles = "SELECT * FROM detalle_documento_venta WHERE id_documento = ?";
        List<DetalleDocumentoVenta> detalles = jdbcTemplate.query(sqlDetalles, detalleRowMapper, idDocumento);

        return new DocumentoVentaCompleto(documento, detalles);
    }

    @Override
    public int crearDocumentoVenta(DocumentoVenta documento, List<DetalleDocumentoVenta> detalles) {
        // Insertar documento y obtener ID generado
        KeyHolder keyHolder = new GeneratedKeyHolder();

        String sqlDocumento = "INSERT INTO documento_venta (razon_social, nro_serie, nro_documento, " +
                           "direccion_entrega, referencia, total, fecha_creacion, fecha_vencimiento, fecha_entrega, id_user) " +
                           "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        jdbcTemplate.update(connection -> {
            PreparedStatement ps = connection.prepareStatement(sqlDocumento, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, documento.getRazonSocial());
            ps.setString(2, documento.getNroSerie());
            ps.setString(3, documento.getNroDocumento());
            ps.setString(4, documento.getDireccionEntrega());
            ps.setString(5, documento.getReferencia());
            ps.setBigDecimal(6, documento.getTotal());
            ps.setTimestamp(7, documento.getFechaCreacion());
            ps.setDate(8, documento.getFechaVencimiento());
            ps.setDate(9, documento.getFechaEntrega());
            ps.setInt(10, documento.getIdUser());
            return ps;
        }, keyHolder);

        Map<String, Object> keys = keyHolder.getKeys();
        int idDocumentoGenerado = keys != null && keys.containsKey("ID_DOCUMENTO") ? ((Number) keys.get("ID_DOCUMENTO")).intValue() : 0;

        // Insertar detalles
        String sqlDetalle = "INSERT INTO detalle_documento_venta (id_documento, id_producto, cantidad, precio_unitario, subtotal) " +
                          "VALUES (?, ?, ?, ?, ?)";

        for (DetalleDocumentoVenta detalle : detalles) {
            jdbcTemplate.update(sqlDetalle,
                idDocumentoGenerado,
                detalle.getIdProducto(),
                detalle.getCantidad(),
                detalle.getPrecioUnitario(),
                detalle.getSubtotal()
            );
        }

        return idDocumentoGenerado;
    }

    @Override
    public int anularDocumentoVenta(int idDocumento) {
        // Nota: Como no hay campo "anulado" en documento_venta, podríamos eliminarlo o agregar lógica específica
        // Por ahora, devolveremos 0 indicando que no se puede anular
        // Si se quiere agregar funcionalidad de anulación, habría que modificar el schema
        return 0;
    }

    @Override
    public String getUltimoNroDocumento(String serie) {
        String sql = "SELECT nro_documento FROM documento_venta WHERE nro_serie = ? ORDER BY CAST(nro_documento AS BIGINT) DESC LIMIT 1";
        try {
            return jdbcTemplate.queryForObject(sql, String.class, serie);
        } catch (Exception e) {
            return null; // Si no hay documentos, retorna null
        }
    }
}
