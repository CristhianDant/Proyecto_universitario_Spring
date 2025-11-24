package com.example.demo.Dashboard;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Repositorio para las métricas del Dashboard
 */
@Repository
public class DashboardRepository implements DashboardDAO {

    private final JdbcTemplate jdbcTemplate;

    public DashboardRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // RowMapper para IngresosMensuales
    private final RowMapper<IngresosMensuales> ingresosMensualesRowMapper = (rs, rowNum) ->
        new IngresosMensuales(
            rs.getString("mes"),
            rs.getBigDecimal("total_ingresos")
        );

    // RowMapper para PerdidasAnulados
    private final RowMapper<PerdidasAnulados> perdidasAnuladosRowMapper = (rs, rowNum) ->
        new PerdidasAnulados(
            rs.getString("mes"),
            rs.getBigDecimal("total_perdidas")
        );

    // RowMapper para IngresosPorMarca
    private final RowMapper<IngresosPorMarca> ingresosPorMarcaRowMapper = (rs, rowNum) ->
        new IngresosPorMarca(
            rs.getString("nombre_marca"),
            rs.getBigDecimal("total_ingresos")
        );

    // RowMapper para IngresosPorMarcaMes
    private final RowMapper<IngresosPorMarcaMes> ingresosPorMarcaMesRowMapper = (rs, rowNum) ->
        new IngresosPorMarcaMes(
            rs.getString("mes"),
            rs.getString("nombre_marca"),
            rs.getBigDecimal("total_ingresos")
        );

    @Override
    public List<IngresosMensuales> obtenerIngresosMensuales() {
        String query = """
            SELECT
                FORMATDATETIME(fecha_creacion, 'yyyy-MM') as mes,
                SUM(total) as total_ingresos
            FROM documento_venta
            WHERE estado = 'COMPLETADO'
                AND fecha_creacion >= DATEADD('MONTH', -8, CURRENT_DATE())
            GROUP BY FORMATDATETIME(fecha_creacion, 'yyyy-MM')
            ORDER BY mes ASC
            """;
        return jdbcTemplate.query(query, ingresosMensualesRowMapper);
    }

    @Override
    public List<PerdidasAnulados> obtenerPerdidasAnulados() {
        String query = """
            SELECT
                FORMATDATETIME(fecha_creacion, 'yyyy-MM') as mes,
                SUM(total) as total_perdidas
            FROM documento_venta
            WHERE estado = 'ANULADO'
                AND fecha_creacion >= DATEADD('MONTH', -8, CURRENT_DATE())
            GROUP BY FORMATDATETIME(fecha_creacion, 'yyyy-MM')
            ORDER BY mes ASC
            """;
        return jdbcTemplate.query(query, perdidasAnuladosRowMapper);
    }

    @Override
    public List<IngresosPorMarca> obtenerIngresosPorMarca() {
        String query = """
            SELECT
                m.nombre_marca,
                SUM(ddv.subtotal) as total_ingresos
            FROM documento_venta dv
            INNER JOIN detalle_documento_venta ddv ON dv.id_documento = ddv.id_documento
            INNER JOIN productos p ON ddv.id_producto = p.id_producto
            INNER JOIN marcas m ON p.id_marca = m.id_marca
            WHERE dv.estado = 'COMPLETADO'
                AND m.anulado = FALSE
                AND dv.fecha_creacion >= DATEADD('MONTH', -8, CURRENT_DATE())
            GROUP BY m.id_marca, m.nombre_marca
            ORDER BY total_ingresos DESC
            """;
        return jdbcTemplate.query(query, ingresosPorMarcaRowMapper);
    }

    @Override
    public List<IngresosPorMarcaMes> obtenerIngresosPorMarcaPorMes(int idMarca) {
        String query = """
            SELECT
                FORMATDATETIME(dv.fecha_creacion, 'yyyy-MM') as mes,
                m.nombre_marca,
                SUM(ddv.subtotal) as total_ingresos
            FROM documento_venta dv
            INNER JOIN detalle_documento_venta ddv ON dv.id_documento = ddv.id_documento
            INNER JOIN productos p ON ddv.id_producto = p.id_producto
            INNER JOIN marcas m ON p.id_marca = m.id_marca
            WHERE dv.estado = 'COMPLETADO'
                AND m.id_marca = ?
                AND m.anulado = FALSE
                AND dv.fecha_creacion >= DATEADD('MONTH', -8, CURRENT_DATE())
            GROUP BY FORMATDATETIME(dv.fecha_creacion, 'yyyy-MM'), m.id_marca, m.nombre_marca
            ORDER BY mes ASC
            """;
        return jdbcTemplate.query(query, new Object[]{idMarca}, new int[]{java.sql.Types.INTEGER}, ingresosPorMarcaMesRowMapper);
    }
}

