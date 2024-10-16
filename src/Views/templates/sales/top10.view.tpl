<h1>Datos del Autor</h1>
<p>{{nombre_programado}}</p>
<hr/>
<ul>
    {{foreach clases}}
        <li>{{this}}</li>
    {{endfor clases}}
</ul>
<hr/>
<section class="zebra">
<table>
    <tr>
        <th>Nombre</th>
        <th>Telefono</th>
    </tr>
    {{foreach contactos}}
    <tr>
        <td>{{nombre}}</td>
        <td>{{telefono}}</td>
    </tr>
    {{endfor contactos}}
</table>
</section>
<hr/>

<form action="index.php?page=Sales-TopTen" method="post">
    <div>
        <label for="txtNombre">Nombre Completo</label>
        <input type="text" name="txtNombre" id="txtNombre" value="{{txtNombre}}" />
        <br/>
        <button type="submit" name="btnEnviar">Enviar</button>
    </div>
</form>

{{if rsltMessage}}
    <hr/>
    <div>
        {{rsltMessage}}
    </div>
{{endif rsltMessage}}