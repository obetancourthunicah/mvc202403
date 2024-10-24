<h1>{{modes_dsc}}</h1>
<section>
    <form action="index.php?page=Carros-CarrosForm&mode={{mode}}&codigo={{codigo}}" method="post">
        {{with carro}}
        <div>
            <label for="codigo">Código</label>
            <input type="text" name="codigo" id="codigo" value="{{codigo}}" readonly />
        </div>
        <div>
            <label for="modelo">Modelo</label>
            <input type="text" name="modelo" id="modelo" value="{{modelo}}" />
        </div>
        <div>
            <label for="marca">Marca</label>
            <input type="text" name="marca" id="marca" value="{{marca}}" />
        </div>
        <div>
            <label for="anio">Año</label>
            <input type="text" name="anio" id="anio" value="{{anio}}" />
        </div>
        <div>
            <label for="kilometraje">Kilometraje</label>
            <input type="text" name="kilometraje" id="kilometraje" value="{{kilometraje}}" />
        </div>
        <div>
            <label for="chasis">Chasis</label>
            <input type="text" name="chasis" id="chasis" value="{{chasis}}" />
        </div>
        <div>
            <label for="color">Color</label>
            <input type="text" name="color" id="color" value="{{color}}" />
        </div>
        <div>
            <label for="registro">Registro</label>
            <input type="text" name="registro" id="registro" value="{{registro}}" />
        </div>
        <div>
            <label for="cilindraje">Cilindraje</label>
            <input type="text" name="cilindraje" id="cilindraje" value="{{cilindraje}}" />
        </div>
        <div>
            <label for="rodaje">Rodaje</label>
            <input type="text" name="rodaje" id="rodaje" value="{{rodaje}}" />
        </div>
        <div>
            <label for="estado">Estado</label>
            <input type="text" name="estado" id="estado" value="{{estado}}" />
        </div>
        <div>
            <label for="precioventa">Precio de Venta</label>
            <input type="text" name="precioventa" id="precioventa" value="{{precioventa}}" />
        </div>
        <div>
            <label for="preciominio">Precio Mínimo</label>
            <input type="text" name="preciominio" id="preciominio" value="{{preciominio}}" />
        </div>
        <div>
            <label for="notas">Notas</label><br/>
            <textarea name="notas" id="notas">{{notas}}</textarea>
        </div>
        <div>
            <button type="submit">Confirmar</button>
            <a href="index.php?page=Carros-CarrosList" class="btn">Cancelar</a>
        </div>
        {{endwith carro}}
    </form>
</section>