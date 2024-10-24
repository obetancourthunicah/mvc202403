<h1>Listado de Carros</h1>
<section class="WWList">
    <table>
        <thead>
            <tr>
                <th>Codigo</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Año</th>
                <th>Estado</th>
                <th><a href="index.php?page=Carros-CarrosForm&mode=INS"><i class="fas fa-solid fa-plus"></i></a></th>
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
                    <td style="display:flex; gap:1rem; justify-content:center; align-items:center">
                        <a href="index.php?page=Carros-CarrosForm&mode=UPD&codigo={{codigo}}">
                            <i class="fas fa-edit"></i>
                        </a>
                        <a href="index.php?page=Carros-CarrosForm&mode=DEL&codigo={{codigo}}">
                            <i class="fas fa-trash"></i>
                        </a>
                        <a href="index.php?page=Carros-CarrosForm&mode=DSP&codigo={{codigo}}">
                            <i class="fas fa-eye"></i>
                        </a>
                    </td>
                </tr>
            {{endfor carros}}
        </tbody>
    </table>
</section>