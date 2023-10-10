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
function verEditar(idEmpleado) {
    $.get('editar', { idEmpleado: idEmpleado }, setFormulario);
    bloqueoAjax();
}
function verDetalle(idEmpleado) {
    $.get('detalle', { idEmpleado: idEmpleado }, setFormulario);
    bloqueoAjax();
}
function verEliminar(idEmpleado) {
    $.get('eliminar', { idEmpleado: idEmpleado }, setFormulario);
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