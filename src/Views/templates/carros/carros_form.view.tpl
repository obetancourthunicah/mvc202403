<h1>{{modes_dsc}}</h1>
<section class="grid">
    <form action="index.php?page=Carros-CarrosForm&mode={{mode}}&codigo={{codigo}}" method="post" class="row">
        {{with carro}}
        <div class="row col-6 offset-3">
            <label class="col-4" for="codigo">Código</label>
            <input class="col-8" type="text" name="codigo" id="codigo" value="{{codigo}}" readonly />
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="modelo">Modelo</label>
            <input class="col-8" type="text" name="modelo" id="modelo" value="{{modelo}}" {{~readonly}} />
            {{if ~modelo_haserror}}
                <div class="error">
                    <ul>
                    {{foreach ~modelo_error}}
                        <li>{{this}}</li>
                    {{endfor ~modelo_error}}
                    </ul>
                </div>
            {{endif ~modelo_haserror}}
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="marca">Marca</label>
            <input class="col-8" type="text" name="marca" id="marca" value="{{marca}}" {{~readonly}} />
             {{if ~marca_haserror}}
            <div class="error">
                <ul>
                {{foreach ~marca_error}}
                    <li>{{this}}</li>
                {{endfor ~marca_error}}
                </ul>
            </div>
        {{endif ~marca_haserror}}
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="anio">Año</label>
            <input class="col-8" type="text" name="anio" id="anio" value="{{anio}}" {{~readonly}} />
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="kilometraje">Kilometraje</label>
            <input class="col-8" type="text" name="kilometraje" id="kilometraje" value="{{kilometraje}}" {{~readonly}} />
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="chasis">Chasis</label>
            <input class="col-8" type="text" name="chasis" id="chasis" value="{{chasis}}" {{~readonly}} />
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="color">Color</label>
            <input class="col-8" type="text" name="color" id="color" value="{{color}}" {{~readonly}} />
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="registro">Registro</label>
            <input class="col-8" type="text" name="registro" id="registro" value="{{registro}}" {{~readonly}} />
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="cilindraje">Cilindraje</label>
            <input class="col-8" type="text" name="cilindraje" id="cilindraje" value="{{cilindraje}}" {{~readonly}} />
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="rodaje">Rodaje</label>
            <input class="col-8" type="text" name="rodaje" id="rodaje" value="{{rodaje}}" {{~readonly}} />
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="estado">Estado</label>
            <input class="col-8" type="text" name="estado" id="estado" value="{{estado}}" {{~readonly}} />
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="precioventa">Precio de Venta</label>
            <input class="col-8" type="text" name="precioventa" id="precioventa" value="{{precioventa}}" {{~readonly}} />
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="preciominio">Precio Mínimo</label>
            <input class="col-8" type="text" name="preciominio" id="preciominio" value="{{preciominio}}" {{~readonly}} />
        </div>
        <div class="row col-6 offset-3">
            <label class="col-4" for="notas">Notas</label><br/>
            <textarea name="notas" id="notas" class="col-8" {{~readonly}}>{{notas}}</textarea>
        </div>
        <div class="row col-6 offset-3 flex-end">
            {{if ~showConfirm}}
                <button type="submit" class="primary">Confirmar</button>&nbsp;
            {{endif ~showConfirm}}
            <button id="btnCancelar" class="btn">Cancelar</button>
        </div>
        {{if ~global_haserror}}
            <div class="error">
                <ul>
                    {{foreach ~global_error}}
                        <li>{{this}}</li>
                    {{endfor ~global_error}}
                </ul>
            </div>
        {{endif ~global_haserror}}
        {{endwith carro}}
    </form>
</section>
<script>
    document.addEventListener("DOMContentLoaded", ()=>{
        document.getElementById("btnCancelar").addEventListener('click', (e)=>{
            e.preventDefault();
            e.stopPropagation();
            window.location.assign("index.php?page=Carros-CarrosList");
        })
    })
</script>