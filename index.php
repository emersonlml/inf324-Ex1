<!DOCTYPE html>
<html>
<head>
    <title>ejercicio 1</title>
</head>
<body>
    <h1>Ejercicio 1</h1>

    <?php
  include "conexion.inc.php"; 
    //$sql = "SELECT * FROM inscripcion";

    $sql = mysqli_query($con,"select inscripcion.materia, inscripcion. sigla, inscripcion.horario,  inscripcion.carrera, estudiante.nombre from inscripcion INNER JOIN estudiante ON estudiante_id_est= id_est");

    // Ejecutar la consulta
   // $result = $conn->query($sql);
    echo '<link rel="stylesheet" type="text/css" href="style.css" /> ';
    // Mostrar los resultados
    while ($registro=mysqli_fetch_array($sql))
    {
        echo "<table>";
        echo "<tr>
                <th>Materia</th>
                <th>sigla</th>
                <th>horario</th>
                <th>carrera</th>
                <th>nombre studiante</th>
             </tr>";
             while ($row = $sql->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["materia"] . "</td>";
                echo "<td>" . $row["sigla"] . "</td>";
                echo "<td>" . $row["horario"] . "</td>";
                echo "<td>" . $row["carrera"] . "</td>";
                echo "<td>" . $row["nombre"] . "</td>";
                echo "</tr>";
            }
        echo "</table>";
    } 
    // Cerrar la conexión a la base de datos
    $con->close();
    ?>

</body>
</html>
