<h1>Listado de Carros</h1>
<section class="WWList">
    <table>
        <thead>
            <tr>
                <th>Codigo</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Año</th>
                {{if estado_enable}}
                <th>Estado</th>
                {{endif estado_enable}}
                <th>
                    {{if INS_enable}}
                    <a href="index.php?page=Carros-CarrosForm&mode=INS"><i class="fas fa-solid fa-plus"></i></a></th>
                    {{endif INS_enable}}
            </tr>
        </thead>
        <tbody>
            {{foreach carros}}
                <tr>
                    <td>{{codigo}}</td>
                    <td>{{marca}}</td>
                    <td>{{modelo}}</td>
                    <td>{{anio}}</td>
                    {{if ~estado_enable}}
                    <td>{{estadoDsc}}</td>
                    {{endif ~estado_enable}}
                    <td style="display:flex; gap:1rem; justify-content:center; align-items:center">
                        {{if ~UPD_enable}}
                        <a href="index.php?page=Carros-CarrosForm&mode=UPD&codigo={{codigo}}">
                            <i class="fas fa-edit"></i>
                        </a>
                        {{endif ~UPD_enable}}
                        {{if ~DEL_enable}}
                        <a href="index.php?page=Carros-CarrosForm&mode=DEL&codigo={{codigo}}">
                            <i class="fas fa-trash"></i>
                        </a>
                        {{endif ~DEL_enable}}
                        <a href="index.php?page=Carros-CarrosForm&mode=DSP&codigo={{codigo}}">
                            <i class="fas fa-eye"></i>
                        </a>
                    </td>
                </tr>
            {{endfor carros}}
        </tbody>
    </table>
</section>