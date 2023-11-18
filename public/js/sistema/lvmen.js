//------------------------------------------------------------------------------
function bloqueoAjax() {
    $.blockUI(
        {
            message: $('#msgBloqueo'),
            css: {
                border: 'none',
                padding: '15px',
                backgroundColor: '#000',
                '-webkit-border-radius': '10px',
                '-moz-border-radius': '10px',
                opacity: .85,
                color: '#fff',
                'z-index': 10000000
            }
        }
    );
    $('.blockOverlay').attr('style', $('.blockOverlay').attr('style') + 'z-index: 1100 !important');
}

//------------------------------------------------------------------------------

function verRegistrar() {
    $.get('registrar', {}, setFormulario);
    bloqueoAjax();
}
function verEditar(idLvmen) {
    $.get('editar', { idLvmen: idLvmen }, setFormulario);
    bloqueoAjax();
}
function verDetalle(idLvmen) {
    $.get('detalle', { idLvmen: idLvmen }, setFormulario);
    bloqueoAjax();
}
function verEliminar(idLvmen) {
    $.get('eliminar', { idLvmen: idLvmen }, setFormulario);
    bloqueoAjax();
}
function verActivar(idLvmen) {
    $.get('activar', { idLvmen: idLvmen }, setFormulario);
    bloqueoAjax();
}
function setFormulario(datos) {
    $("#divContenido").html(datos);
    $('#modalFormulario').modal('show');
}

function validarGuardar(evt, formulario, tipo) {
    evt.preventDefault();
    Swal.fire({
        title: "&#191;DESEA " + tipo + " EL ARCHIVO&#63;",
        text: "",
        icon: "warning",
        showCancelButton: true,
        confirmButtonText: "Si",
        cancelButtonText: "No",
        allowOutsideClick: false
    }).then((result) => {
        if (result.isConfirmed) {
            formulario.removeAttribute('onsubmit');
            formulario.submit();
            bloqueoAjax();
        }
    });
}

//------------------------------------------------------------------------------
function getTipoProceso(idProceso) {
    if (idProceso !== '') {
        $.get('getSelectTipoProcesos', { idProceso: idProceso }, setTipoProceso);
        bloqueoAjax();
    } else {
        $("#idTipoProceso").html("<option value=''>Seleccione...</option>");
        $("#idSubproceso").html("<option value=''>Seleccione...</option>");
    }
}
function setTipoProceso(html) {
    $("#idTipoProceso").html(html);
}
function getSubProceso(idTipoProceso) {
    if (idTipoProceso !== '') {
        $.get('getSelectSubprocesos', { idTipoProceso: idTipoProceso }, setSubproceso);
        bloqueoAjax();
    } else {
        $("#idSubproceso").html("<option value=''>Seleccione...</option>");
    }
}
function setSubproceso(html) {
    $("#idSubproceso").html(html);
}

//------------------------------------------------------------------------------
function actualizarArchivo() {
    var idArchivo = $("#idArchivo").val();
    $.get('actualizararchivo', { idArchivo: idArchivo }, setFormularioAux);
    bloqueoAjax();
}
function setFormularioAux(datos) {
    $("#divContenidoAux").html(datos);
    $('#modalFormularioAux').modal('show');
}
//------------------------------------------------------------------------------
function validarAdjunto() {
    $(document).on('change', 'input[type="file"]', function () {
        // this.files[0].size recupera el tamaño del archivo
        // alert(this.files[0].size);

        var fileName = this.files[0].name;
        var fileSize = this.files[0].size;

        if (fileSize > 2000000) {
            Swal.fire({
                title: "El archivo no debe superar las 2MB",
                text: "GestorPortal",
                icon: "error",
                confirmButtonColor: '#f0ad4e',
                confirmButtonText: 'CERRAR',
                allowOutsideClick: false
            });
            this.value = '';
            this.files[0].name = '';
        } else {
            // recuperamos la extensión del archivo
            var ext = fileName.split('.').pop();

            // Convertimos en minúscula porque 
            // la extensión del archivo puede estar en mayúscula
            ext = ext.toLowerCase();

            // console.log(ext);
            switch (ext) {
                case 'pdf':
                case 'docx':
                case 'xlsx':
                case 'pptx':
                case 'zip':
                    break;
                default:
                    Swal.fire({
                        title: "El archivo no tiene la extensión adecuada",
                        text: "Archivos permitidos: pdf, docx, xlsx, pptx y zip",
                        icon: "error",
                        confirmButtonColor: '#f0ad4e',
                        confirmButtonText: 'CERRAR',
                        allowOutsideClick: false
                    });
                    this.value = ''; // reset del valor
                    this.files[0].name = '';
            }
        }
    });
}
//------------------------------------------------------------------------------