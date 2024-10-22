<h1>Listado de Carros</h1>
<table>
    <thead>
        <tr>
            <th>Codigo</th>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Año</th>
            <th>Estado</th>
        </tr>
    </thead>
    <tbody>
        {{foreach carros}}
            <tr>
                <td>{{codigo}}</td>
                <td>{{marca}}</td>
                <td>{{modelo}}</td>
                <td>{{anio}}</td>
                <td>{{estadoDsc}}</td>
            </tr>
        {{endfor carros}}
    </tbody>
</table>