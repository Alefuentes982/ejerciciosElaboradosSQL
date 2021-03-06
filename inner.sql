
SELECT 
VEN.FECHA AS FECHA, CLI.NOMBRE AS NOMBRE_CLIENTE, CLI.APELLIDO AS APELLIDO_CLIENTE,
CLI.RUT AS RUT_CLIENTE,
CLI.CORREO AS CORREO_CLIENTE,
SUM(VEN.TOTAL) AS TOTAL_VENTAS
FROM VENTAS VEN  INNER JOIN  CLIENTES CLI 
ON (VEN.ClienteID = CLI.ClienteID)

GROUP BY  VEN.Fecha, CLI.NOMBRE, CLI.APELLIDO, CLI.RUT, CLI.CORREO 
ORDER BY  VEN.Fecha 

