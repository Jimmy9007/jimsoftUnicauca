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
function verEditar(idArchivo) {
    $.get('editar', { idArchivo: idArchivo }, setFormulario);
    bloqueoAjax();
}
function verDetalle(idArchivo) {
    $.get('detalle', { idArchivo: idArchivo }, setFormulario);
    bloqueoAjax();
}
function verEliminar(idArchivo) {
    $.get('eliminar', { idArchivo: idArchivo }, setFormulario);
    bloqueoAjax();
}
function verActivar(idArchivo) {
    $.get('activar', { idArchivo: idArchivo }, setFormulario);
    bloqueoAjax();
}
function setFormulario(datos) {
    $("#divContenido").html(datos);
    /* CKEDITOR.replace("descripcion"); */
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
function selectTipo(tipo) {
    if (tipo == 'Convocatorias') {
        $("#idResolucion").val("");
        $('#inicioConvocatoria').attr('type', 'date');
        $('#finConvocatoria').attr('type', 'date');
        $("#divInicioConvocatoria").show('slow');
        $("#divFinConvocatoria").show('slow');
        $('#inicioConvocatoria').attr('required', true);
        $('#finConvocatoria').attr('required', true);
        $("#divResolucion").hide("slow");
        $('#idResolucion').attr('required', false);
    } else if (tipo == 'Resoluciones') {
        $('#inicioConvocatoria').attr('type', 'text');
        $('#finConvocatoria').attr('type', 'text');
        $("#inicioConvocatoria").val('0000-00-00');
        $("#finConvocatoria").val('0000-00-00');
        $("#divResolucion").show('slow');
        $('#idResolucion').attr('required', true);
        $("#divInicioConvocatoria").hide("slow");
        $("#divFinConvocatoria").hide("slow");
        $('#inicioConvocatoria').attr('required', false);
        $('#finConvocatoria').attr('required', false);
    } else {
        $('#inicioConvocatoria').attr('type', 'text');
        $('#finConvocatoria').attr('type', 'text');
        $("#inicioConvocatoria").val('0000-00-00');
        $("#finConvocatoria").val('0000-00-00');
        $("#idResolucion").val("");
        $("#divInicioConvocatoria").hide("slow");
        $("#divFinConvocatoria").hide("slow");
        $("#divResolucion").hide("slow");
        $('#inicioConvocatoria').attr('required', false);
        $('#finConvocatoria').attr('required', false);
        $('#idResolucion').attr('required', false);
    }
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

