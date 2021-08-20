var crear = document.getElementById("container-crear")
var editar = document.getElementById("container-editar")
var listar = document.getElementById("container-listar")
var area = document.getElementById("container-area")
function crearencuesta(){

    crear.style.display='block'
    editar.style.display='none'
    listar.style.display='none'
}
function editarencuesta(){
   

    crear.style.display='none'
    editar.style.display='block'
    listar.style.display='none'
}
function listarencuesta(){

    crear.style.display='none'
    editar.style.display='none'
    listar.style.display='block'
}
function creararea(){
    area.style.display='block'
}
$(document).ready(function(){
  
    $("#btn-crear").onclick()
})