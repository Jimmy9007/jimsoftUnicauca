-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2023 a las 12:52:39
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestorportalbdv2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `idArchivo` int(11) UNSIGNED NOT NULL,
  `idResolucion` varchar(100) NOT NULL,
  `idEmitido` int(11) UNSIGNED NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `tipo` enum('Comunicados','Resoluciones','Circulares','Acuerdos','Convocatorias') NOT NULL,
  `inicioConvocatoria` date NOT NULL,
  `finConvocatoria` date NOT NULL,
  `publicacion` date NOT NULL,
  `archivo` varchar(100) NOT NULL,
  `estado` enum('Activo','Eliminado') NOT NULL,
  `registradopor` varchar(25) NOT NULL,
  `modificadopor` varchar(25) NOT NULL,
  `fechahorareg` datetime NOT NULL DEFAULT current_timestamp(),
  `fechahoramod` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`idArchivo`, `idResolucion`, `idEmitido`, `nombre`, `descripcion`, `tipo`, `inicioConvocatoria`, `finConvocatoria`, `publicacion`, `archivo`, `estado`, `registradopor`, `modificadopor`, `fechahorareg`, `fechahoramod`) VALUES
(1, '', 57, 'Estudiantes y egresados convocados a presentación del examen preparatorio de Derecho Laboral modalidad escrita presencial', 'Octubre 18 / 2023\r\nEstudiantes y egresados convocados a presentación del examen preparatorio de Derecho Laboral modalidad escrita presencial\r\nEmitido por: Facultad de Derecho, Ciencias Políticas y Sociales\r\nDirigido a: Comunidad universitaria\r\n\r\n\r\nLa Facultad de Derecho, Ciencias Políticas y Sociales da a conocer la relación de estudiantes y egresados convocados para la presentación del examen preparatorio de Derecho Laboral modalidad escrita presencial, que se llevará a cabo el próximo viernes 20 de octubre de 2023 a las 02:00 p.m. en los siguientes lugares:\r\n \r\n\r\nSede Popayán Jornadas Diurna y Nocturna:  Claustro Santo Domingo\r\n\r\nSede Norte: Ciudadela Universitaria\r\n\r\n \r\nVER LISTADO\r\n\r\nImportante:\r\n \r\n \r\n\r\n1.    Los estudiantes y egresados convocados a la presentación del examen, deben presentar documento de identidad al ingreso del aula.\r\n \r\n2.    Los listados publicados corresponden a los estudiantes y egresados que a la fecha han realizado el proceso de facturación y reporte de la misma.\r\n \r\n3.    Al momento de la presentación del examen no se atenderán reclamaciones ni se permitirá el ingreso de estudiantes o egresados que no se encuentren en los listados oficiales emitidos por la Facultad.\r\n \r\n4. La asignación de salones para los estudiantes de la sede Popayán (jornadas diurna y nocturna) se dará a conocer el día jueves en la decanatura de la Facultad.\r\n\r\n\r\nMayor información y ajustes, únicamente, hasta las 12:00 m. del día jueves 19 de octubre del año en curso.', 'Comunicados', '0000-00-00', '0000-00-00', '2023-10-18', 'DOC_6533602d0f4ab7_56247171.pdf', 'Activo', 'jnunez', 'jnunez', '2023-10-21 00:22:53', '2023-10-24 16:40:18'),
(2, 'R- 1074 de 2023', 2, 'Resolución R- 1074 de 2023 (Declarar desierto el perfil con código P1O del Departamento de Ciencias Quirúrgicas)', 'Octubre 19 / 2023\r\nResolución R- 1074 de 2023 (Declarar desierto el perfil con código P1O del Departamento de Ciencias Quirúrgicas)\r\nNúmero del documento: R- 1074\r\nEmitido por: Rectoría\r\nDirigido a: Comunidad universitaria, Ciudadanía en general', 'Resoluciones', '0000-00-00', '0000-00-00', '2023-10-19', 'DOC_6533619d4b0833_42207090.pdf', 'Activo', 'jnunez', 'jnunez', '2023-10-21 00:29:01', '2023-10-24 15:31:44'),
(3, '', 48, 'Circular Informativa N° 016 de la Vicerrectoría de Investigaciones sobre cronograma interno para la radicación de solicitudes que garantizan el reconocimiento y legalización de bienes, derechos y obligaciones ejecutados vigencia fiscal 2023', 'Octubre 4 / 2023\r\nCircular Informativa N° 016 de la Vicerrectoría de Investigaciones sobre cronograma interno para la radicación de solicitudes que garantizan el reconocimiento y legalización de bienes, derechos y obligaciones ejecutados vigencia fiscal 2023\r\nEmitido por: Vicerrectoría de Investigaciones\r\nDirigido a: Comunidad universitaria\r\n\r\nApreciados universitarios,\r\n \r\nDe conformidad con lo establecido en la Resolución Rectoral R-1010 del 29 de septiembre de 2023 (Por la cual se establece la programación del cierre financiero, presupuestal y administrativo de la Universidad del Cauca para la vigencia fiscal 2023) y, teniendo en cuenta las diferentes gestiones que desde la Vicerrectoría de Investigaciones se realizan concernientes a actividades administrativas que generan actuaciones financieras y contractuales, como solicitudes de CDP, elaboración de cuentas, adquisición de bienes y servicios, órdenes de compra, avances, entre otros, de manera muy atenta se presenta la siguiente programación interna de las fechas a tener en cuenta para la radicación de las diferentes solicitudes, las cuales son inmodificables y de obligatorio cumplimiento:\r\n \r\n\r\nÍtem\r\n\r\nACTIVIDAD\r\n\r\nFecha límite para trámite\r\n\r\nFechas a tener en cuenta en la VRI\r\n\r\n1\r\n\r\nCIERRE PRESUPUESTAL Y ADQUISICIÓN DE BIENES Y SERVICIOS\r\n\r\n1.1\r\n\r\nRecepción de solicitud de necesidades y certificados de Disponibilidad Presupuestal mayor a 100 SLMMV (trámites de adquisición de bienes y servicios, compromisos académicos y/o administrativos institucionales)\r\n\r\n16 de octubre de 2023\r\n\r\n09 de octubre de 2023\r\n\r\n1.2\r\n\r\nRecepción de solicitud de necesidades y certificados de Disponibilidad Presupuestal hasta 100 SLMMV (trámites de adquisición de bienes y servicios, compromisos académicos y/o administrativos institucionales)\r\n\r\n10 de noviembre de 2023\r\n\r\n03 de noviembre de 2023\r\n\r\n1.3\r\n\r\nRecepción de solicitudes para trámite ante el Consejo Superior (incorporaciones presupuestales y vigencias futuras)\r\n\r\n10 de noviembre de 2023\r\n\r\n07 de noviembre de 2023\r\n\r\n1.4\r\n\r\nSuscripción de contratos en las diferentes modalidades y órdenes de compra\r\n\r\n01 de diciembre de 2023\r\n\r\n24 de noviembre de 2023\r\n\r\n1.5\r\n\r\nExpedición de Registros de Disponibilidad Presupuestal\r\n\r\n01 de diciembre de 2023\r\n\r\n24 de noviembre de 2023\r\n\r\n1.10\r\n\r\nRecepción de solicitudes de anulación, ajuste y liberación de Certificados de Disponibilidad Presupuestal ante la Vicerrectoría Administrativa\r\n\r\n01 de diciembre de 2023\r\n\r\n24 de noviembre de 2023\r\n\r\n1.11\r\n\r\nRecepción de solicitudes de reservas presupuestales justificadas.\r\n\r\n07 de diciembre de 2023\r\n\r\n01 de diciembre de 2023\r\n\r\n2\r\n\r\nCIERRE ADQUISICIONES E INVENTARIOS\r\n\r\n2.1\r\n\r\nRecepción de solicitudes que requieran elaboración de estudios previos y solicitudes de adquisiciones menores a 50 SMMLV ante el Área de Adquisiciones e Inventarios\r\n\r\n27 de octubre de 2023\r\n\r\n20 de octubre de 2023\r\nIncluye solicitudes para estudios de mercado\r\n\r\n3\r\n\r\nCIERRE DE AVANCES\r\n\r\n3.1\r\n\r\nRecepción de solicitudes de avance\r\n\r\n15 de diciembre de 2023\r\n\r\n7 de diciembre de 2022\r\n\r\n3.2\r\n\r\nReconocimiento de viáticos y gastos de viaje por comisión de servicios.\r\n\r\n3.3\r\n\r\nLegalización de avances por todo concepto.\r\n\r\n4\r\n\r\nCIERRE TESORERIA\r\n\r\n4.1\r\n\r\nRecepción de documentos para generar órdenes de pago (Certificaciones de pago y liquidación de contratos, facturas, certificaciones, constancias, entre otros.)\r\n\r\n15 de diciembre de 2023\r\n\r\n8 de diciembre de 2023\r\n\r\n4.2\r\n\r\nRecepción de certificados para pago de monitorías.\r\n\r\n15 de diciembre de 2023\r\n\r\n8 de diciembre de 2023\r\n\r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nLo anterior, en virtud a los trámites internos, propios de esta dirección que se deben surtir con anterioridad a las fechas establecidas en la resolución referida.\r\n \r\nUniversitariamente,\r\n \r\nFRANCISCO JOSÉ PINO CORREA\r\nVicerrector de Investigaciones', 'Circulares', '0000-00-00', '0000-00-00', '2023-10-04', 'DOC_6533626587ae79_20403164.pdf', 'Activo', 'jnunez', 'jnunez', '2023-10-21 00:32:21', '2023-10-24 16:41:35'),
(4, '', 16, 'Acuerdo Académico 028 de 2023 (Establece la oferta de cupos de programas de posgrados que se ofrecerán, en el Primer (I) Periodo Académico del año 2024)', 'Octubre 2 / 2023\r\nAcuerdo Académico 028 de 2023 (Establece la oferta de cupos de programas de posgrados que se ofrecerán, en el Primer (I) Periodo Académico del año 2024)\r\nNúmero del documento: AA 028\r\nEmitido por: Consejo Académico\r\nDirigido a: Comunidad universitaria, Ciudadanía en general', 'Acuerdos', '0000-00-00', '0000-00-00', '2023-10-02', 'DOC_653362b79ef102_50103150.pdf', 'Activo', 'jnunez', 'jnunez', '2023-10-21 00:33:43', '2023-10-24 16:42:13'),
(5, '', 53, 'Cuarta Convocatoria Monitorias Centro de Gestión de la Calidad y Acreditación Institucional. II Periodo 2023', 'Octubre 19 / 2023\r\nCuarta Convocatoria Monitorias Centro de Gestión de la Calidad y Acreditación Institucional. II Periodo 2023\r\nEmitido por: Centro de Gestión de la Calidad y la Acreditación Institucional\r\nDirigido a: Estudiantes\r\n\r\n\r\nEl Centro de Gestión de la Calidad y Acreditación Institucional invita a los estudiantes de la Universidad del Cauca a participar en la segunda convocatoria para seleccionar monitores que contribuyan al desarrollo de las actividades tendientes a apoyar los procesos de segundo periodo académico de 2023.\r\nEn concordancia con lo establecido en el Artículo 5 del Acuerdo 066 de 2008, expedido por el Consejo Superior, se deben cumplir los siguientes \r\n \r\nRequisitos generales: \r\n \r\n\r\n1. Ser estudiante regular de la Universidad y haber aprobado un semestre en la Universidad\r\n\r\n2. Tener el promedio de notas igual o superior a 3.5.\r\n\r\n3. Satisfacer las exigencias de inscripción y concurso señaladas por el Centro.\r\n\r\n \r\nLos estudiantes que se postulen a la convocatoria para ser vinculados bajo la modalidad de monitoria deben cumplir con lo estipulado en el Acuerdo Superior 009 de 2022:  la realización de la matrícula académica; el pago del seguro estudiantil (potenciales beneficiarios estudiantes de pregrado pertenecientes a estratos socioeconómicos 1, 2 y 3) o pago de la matrícula financiera (estudiantes de pregrado pertenecientes a estratos socioeconómicos 4, 5 y 6 o estudiantes no beneficiarios de la Política de Estado de Gratuidad); y estar al día por todo concepto que no se encuentre contemplado en los derechos básicos de matrícula y complementarios.\r\n \r\nHabilidades solicitadas: \r\n \r\n\r\nBuena Atención a usuarios\r\n\r\nTrabajo en equipo\r\n\r\nEficiencia en atención \r\n\r\nBuenas relaciones humanas. \r\n \r\n\r\nRequisitos específicos de los monitores que se necesitan\r\n\r\n1. Programa de Geografía solicita: Un (1) estudiante de cuarto semestre en adelante de cualquier programa académico con conocimientos en ofimática, G suite, Marketing y Diseño. Programación Python y Servidores Apache, con una experiencia mínima de seis (6) meses en los temas antes señalados para recopilar, organizar y sistematizar información con fines de empezar a preparar los momentos preliminares del proceso de acreditación.\r\n\r\nSe requiere hoja de vida por parte del coordinador del programa a los correos electrónicos: taclavijo@unicauca.edu.co; coordgeografia@unicauca.edu.co\r\n\r\n \r\nCriterios de desempate\r\n \r\n\r\nMayor experiencia\r\n\r\nEstrato socioeconómico\r\n\r\nMejor promedio de carrera\r\n\r\n \r\nPeriodo de labor: segundo periodo académico 2023\r\n\r\nCon cargo al Certificado de disponibilidad presupuestal número: CDP 202301168\r\n \r\nCronograma\r\n \r\n\r\nFecha de apertura Convocatoria: 19 de octubre de 2023\r\nCierre de Convocatoria: 22 de octubre de 2023\r\n\r\n \r\nLa inscripción se debe realizar en línea (SIMCA): ingrese el usuario y contraseña, busque menú estudiante, dar click en la opción monitorias (parte inferior izquierda), allí aparecerán la lista de monitorias disponibles en el momento y seleccione la (as) de su interés. Se aclara que puede inscribirse a varias monitorias, pero solo puede realizar una sola en el semestre, tal como lo establece el Acuerdo 066 de 2008.\r\n\r\nCentro de Gestión de la Calidad y Acreditación Institucional', 'Convocatorias', '2023-10-19', '2023-10-22', '2023-10-19', 'DOC_65344a0d3bff16_28339768.pdf', 'Activo', 'jnunez', 'jnunez', '2023-10-21 00:38:30', '2023-10-24 16:43:18'),
(6, 'VRA 775 de 2023', 17, 'Resolución VRA 775 de 2023 (Por medio de la cual se otorga un permiso académico a estudiantes de pregrado de la Universidad del Cauca)', 'Octubre 20 / 2023\r\nResolución VRA 775 de 2023 (Por medio de la cual se otorga un permiso académico a estudiantes de pregrado de la Universidad del Cauca)\r\nEmitido por: Vicerrectoría Académica\r\nDirigido a: Comunidad universitaria, Ciudadanía en general', 'Resoluciones', '0000-00-00', '0000-00-00', '2023-10-20', 'DOC_6536a08abea057_54748500.pdf', 'Activo', 'jnunez', 'jnunez', '2023-10-23 11:34:18', '2023-10-24 15:31:05'),
(7, 'R- 1081 de 2023', 2, 'Resolución R- 1081 de 2023 (Modifica la Resolución R-1073, para corregir un error de forma en la transcripción del correo electrónico de notificación de una aspirante en el concurso público de méritos para provisión de cargos en la planta de profesores)', 'Octubre 20 / 2023\r\nResolución R- 1081 de 2023 (Modifica la Resolución R-1073, para corregir un error de forma en la transcripción del correo electrónico de notificación de una aspirante en el concurso público de méritos para provisión de cargos en la planta de profesores)\r\nNúmero del documento: R- 1081\r\nEmitido por: Rectoría\r\nDirigido a: Comunidad universitaria, Ciudadanía en general', 'Resoluciones', '0000-00-00', '0000-00-00', '2023-10-20', 'DOC_65380a935cac92_82225996.pdf', 'Activo', 'jnunez', 'jnunez', '2023-10-24 13:18:59', '2023-10-24 14:53:45'),
(8, 'FCCEA 652 de 2023', 180, 'Resolución FCCEA 652 de 2023 (Por la cual se convocan a inscripciones y elecciones del estamento profesoral del Comité de Personal Docente de la Facultad de Ciencias Contables, Económicas y Administrativas, mediante el Sistema SIVOT)', 'Octubre 17 / 2023\r\nResolución FCCEA 652 de 2023 (Por la cual se convocan a inscripciones y elecciones del estamento profesoral del Comité de Personal Docente de la Facultad de Ciencias Contables, Económicas y Administrativas, mediante el Sistema SIVOT)\r\nEmitido por: Facultad de Ciencias Contables Económicas y Administrativas\r\nDirigido a: Comunidad universitaria', 'Resoluciones', '0000-00-00', '0000-00-00', '2023-10-17', 'DOC_65380b3cee72b2_04250996.pdf', 'Activo', 'jnunez', 'jnunez', '2023-10-24 13:21:48', '2023-10-24 15:42:28'),
(9, 'R – 1069 de 2023', 2, 'Resolución R – 1069 de 2023 (Por el cual se modifica la Resolución Rectoral 0836 de 2023, que convoca al concurso público de méritos para la provisión de cargos en la planta de profesores de la Universidad del Cauca)', 'Octubre 18 / 2023\r\nResolución R – 1069 de 2023 (Por el cual se modifica la Resolución Rectoral 0836 de 2023, que convoca al concurso público de méritos para la provisión de cargos en la planta de profesores de la Universidad del Cauca)\r\nNúmero del documento: R – 1069\r\nEmitido por: Rectoría\r\nDirigido a: Comunidad universitaria, Ciudadanía en general', 'Resoluciones', '0000-00-00', '0000-00-00', '2023-10-18', 'DOC_6538260ccd7f59_60537048.pdf', 'Activo', 'jnunez', 'jnunez', '2023-10-24 14:56:28', '2023-10-24 15:16:12'),
(10, 'R- 1073 de 2023', 2, 'Resolución R- 1073 de 2023 (Por el cual se declaran desiertos perfiles del concurso público de méritos para la provisión de cargos en la planta de profesores de la Universidad del Cauca)', 'Octubre 19 / 2023\r\nResolución R- 1073 de 2023 (Por el cual se declaran desiertos perfiles del concurso público de méritos para la provisión de cargos en la planta de profesores de la Universidad del Cauca)\r\nEmitido por: Rectoría\r\nDirigido a: Comunidad universitaria, Ciudadanía en general', 'Resoluciones', '0000-00-00', '0000-00-00', '2023-10-19', 'DOC_65382b792b54f4_43130388.pdf', 'Activo', 'jnunez', '', '2023-10-24 15:39:21', '0000-00-00 00:00:00'),
(11, 'VRI 240', 48, 'Resolución No. VRI 240 (Por la cual se invita a participar en la convocatoria de homologación de materias por trabajo de apoyo en grupos de investigación)', 'Octubre 31 / 2023\r\nResolución No. VRI 240 (Por la cual se invita a participar en la convocatoria de homologación de materias por trabajo de apoyo en grupos de investigación)\r\nNúmero del documento: VRI 240\r\nEmitido por: Vicerrectoría de Investigaciones\r\nDirigido a: Comunidad universitaria', 'Resoluciones', '0000-00-00', '0000-00-00', '2023-10-31', 'DOC_6543e87a1f7f52_42468997.pdf', 'Activo', 'cnunez', 'cnunez', '2023-11-02 13:20:42', '2023-11-02 14:35:03'),
(12, '', 36, 'Subir Excel', 'Subir Excel test', 'Comunicados', '0000-00-00', '0000-00-00', '2023-11-01', 'DOC_65458df1b40a48_05431216.xlsx', 'Activo', 'jnunez', 'jnunez', '2023-11-03 19:18:57', '2023-11-03 23:30:16'),
(13, '', 10, 'subir Word', 'subir Word', 'Circulares', '0000-00-00', '0000-00-00', '2023-11-01', 'DOC_6545925d122b38_62654092.docx', 'Activo', 'jnunez', '', '2023-11-03 19:37:49', '0000-00-00 00:00:00'),
(14, '', 13, 'subir pttx', 'subir pttx', 'Acuerdos', '0000-00-00', '0000-00-00', '2023-11-01', 'DOC_6545929f208417_29268636.pptx', 'Activo', 'jnunez', '', '2023-11-03 19:38:55', '0000-00-00 00:00:00'),
(15, '', 18, 'subir zip', 'subir zip', 'Circulares', '0000-00-00', '0000-00-00', '2023-11-03', 'DOC_654bb21fc2cfe1_39690335.zip', 'Activo', 'jnunez', '', '2023-11-03 19:39:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepartamento` int(2) UNSIGNED NOT NULL,
  `departamento` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepartamento`, `departamento`) VALUES
(5, 'ANTIOQUIA'),
(8, 'ATLÁNTICO'),
(11, 'BOGOTÁ, D.C.'),
(13, 'BOLÍVAR'),
(15, 'BOYACÁ'),
(17, 'CALDAS'),
(18, 'CAQUETÁ'),
(19, 'CAUCA'),
(20, 'CESAR'),
(23, 'CÓRDOBA'),
(25, 'CUNDINAMARCA'),
(27, 'CHOCÓ'),
(41, 'HUILA'),
(44, 'LA GUAJIRA'),
(47, 'MAGDALENA'),
(50, 'META'),
(52, 'NARIÑO'),
(54, 'NORTE DE SANTANDER'),
(63, 'QUINDIO'),
(66, 'RISARALDA'),
(68, 'SANTANDER'),
(70, 'SUCRE'),
(73, 'TOLIMA'),
(76, 'VALLE DEL CAUCA'),
(81, 'ARAUCA'),
(85, 'CASANARE'),
(86, 'PUTUMAYO'),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA'),
(91, 'AMAZONAS'),
(94, 'GUAINÍA'),
(95, 'GUAVIARE'),
(97, 'VAUPÉS'),
(99, 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencias`
--

CREATE TABLE `dependencias` (
  `idDependencia` int(11) UNSIGNED NOT NULL,
  `dependencia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dependencias`
--

INSERT INTO `dependencias` (`idDependencia`, `dependencia`) VALUES
(1, 'Consejo Superior'),
(2, 'Rectoría'),
(3, 'Secretaría General'),
(4, 'Centro de Gestión de la Calidad y de la Acreditación Institucional'),
(5, 'Área de la Calidad Académica'),
(6, 'Área de la Calidad Administrativa'),
(7, 'Centro de Gestión de las Comunicaciones'),
(8, 'Área de Prensa'),
(9, 'Área de Radio'),
(10, 'Área de Televisión'),
(11, 'Área de Comunicación Organizacional y Gestión de la marca'),
(12, 'Oficina de Planeación y de Desarrollo Institucional'),
(13, 'Oficina Jurídica'),
(14, 'Oficina de Control Interno'),
(15, 'Oficina de Relaciones Interinstitucionales e Internacionales'),
(16, 'Consejo Académico'),
(17, 'Vicerrectoría Académica'),
(18, 'Centro de Regionalización'),
(19, 'Centro de Educación Continua'),
(20, 'División de Admisiones, Registro y Control Académico'),
(21, 'División de Gestión de Medios y Recursos Bibliográficos'),
(22, 'Centro de Posgrados'),
(23, 'Área de Egresados'),
(24, 'Centro de Formación en Idiomas'),
(25, 'Centro de Educación Continua, Abierta y Virtual - Cecav'),
(26, 'Vicerrectoría Administrativa'),
(27, 'División de Gestión del Talento Humano'),
(28, 'Grupo de Compensación y Nómina'),
(29, 'Grupo de Gestión Pensional'),
(30, 'Grupo de Control Interno Disciplinario'),
(31, 'Área de Seguridad y Salud en el Trabajo'),
(32, 'División de Gestión Financiera'),
(33, 'Grupo de Gestión Contable'),
(34, 'Grupo de Gestión de Presupuesto'),
(35, 'Tesorería'),
(36, 'División de Tecnologías de la Información y las Comunicaciones'),
(37, 'Área de Servicios de Información'),
(38, 'Área de Recursos Tecnológicos'),
(39, 'Área de Redes'),
(40, 'División Administrativa y de Servicios'),
(41, 'Área de Mantenimiento'),
(42, 'Área de Planta Física'),
(43, 'Área de Mercadeo y Producción'),
(44, 'Área de Seguridad, Control y Movilidad'),
(45, 'Área de Adquisiciones e Inventarios'),
(46, 'Área de Contratación'),
(47, 'Área de Proyectos Especiales'),
(48, 'Vicerrectoría de Investigaciones'),
(49, 'División de Gestión de la Investigación'),
(50, 'División de Innovación, Emprendimiento y Articulación con el Entorno'),
(51, 'Área de Desarrollo Editorial'),
(52, 'Centro Internacional para la Investigación del Agua y el Oxígeno'),
(53, 'Vicerrectoría de Cultura y Bienestar'),
(54, 'División de Gestión de la Cultura'),
(55, 'División de Gestión de la Recreación y el Deporte'),
(56, 'División de Gestión de Salud Integral y Desarrollo Humano'),
(57, 'Facultad de Derecho y Ciencias Políticas y Sociales'),
(58, 'Consejo de Facultad'),
(59, 'Decanatura'),
(60, 'Secretaría General'),
(61, 'Departamento de Derecho Privado'),
(62, 'Departamento de Derecho Público'),
(63, 'Departamento de Derecho Penal'),
(64, 'Departamento de Derecho Laboral'),
(65, 'Departamento de Derecho Procesal'),
(66, 'Departamento de Estudios Filosóficos y Sociales'),
(67, 'Departamento de Ciencia Política'),
(68, 'Departamento de Comunicación Social'),
(69, 'Centro de Consultoría Jurídica'),
(70, 'Centro de Conciliación'),
(71, 'Centro de Investigaciones Socio-Jurídicas'),
(72, 'Coordinación Programa de Derecho'),
(73, 'Coordinación Programa Ciencia Política'),
(74, 'Coordinación Programa de Comunicación Social'),
(75, 'Facultad de Ciencias de la Salud'),
(76, 'Consejo de Facultad'),
(77, 'Decanatura'),
(78, 'Secretaría General'),
(79, 'Departamento de Morfología'),
(80, 'Departamento de Ciencias Fisiológicas'),
(81, 'Departamento de Patología'),
(82, 'Departamento de Medicina Interna'),
(83, 'Departamento de Ciencias Quirúrgicas'),
(84, 'Departamento de Pediatría'),
(85, 'Departamento de Ginecología y Obstetricia'),
(86, 'Departamento de Medicina Social y Salud Familiar'),
(87, 'Departamento de Enfermería'),
(88, 'Departamento de Anestesiología'),
(89, 'Departamento de Fonoaudiología'),
(90, 'Departamento de Fisioterapia'),
(91, 'Centro Universitario en Salud “Alfonso López”'),
(92, 'Coordinación Programa de Medicina'),
(93, 'Coordinación Programa Enfermería'),
(94, 'Coordinación Programa Fonoaudiología'),
(95, 'Coordinación Programa Fisioterapia'),
(96, 'Laboratorio Clínico Unificado'),
(97, 'Facultad de Ingeniería Civil'),
(98, 'Consejo de Facultad'),
(99, 'Decanatura'),
(100, 'Secretaría General'),
(101, 'Departamento de Ciencias Básicas e Ingeniería Civil'),
(102, 'Departamento de Geotecnia'),
(103, 'Departamento de Construcción'),
(104, 'Departamento de Vías y Transporte'),
(105, 'Departamento de Hidráulica'),
(106, 'Departamento de Estructuras'),
(107, 'Departamento de Ingeniería Ambiental y Sanitaria'),
(108, 'Escuela Tecnológica en Ingeniería Civil'),
(109, 'Coordinación programa de Ingeniería Civil'),
(110, 'Coordinación programa de Ingeniería Ambiental'),
(111, 'Facultad de Ingeniería Electrónica y Telecomunicaciones'),
(112, 'Consejo de Facultad'),
(113, 'Decanatura'),
(114, 'Secretaría General'),
(115, 'Departamento de Telemática'),
(116, 'Departamento de Electrónica, Instrumentación y Control'),
(117, 'Departamento de Telecomunicaciones'),
(118, 'Departamento de Sistemas'),
(119, 'Coordinación Programa Ingeniería Automática Industrial'),
(120, 'Coordinación Programa Ingeniería de sistemas'),
(121, 'Coordinación Programa Ingeniería Electrónica'),
(122, 'Coordinación Tecnología en Telemática'),
(123, 'Coordinación del programa de Maestría en Electrónica y Telecomunicaciones'),
(124, 'Coordinación del Doctorado en Ciencias de la Electrónica'),
(125, 'Facultad de Ciencias Naturales, Exactas y de la Educación'),
(126, 'Consejo de Facultad'),
(127, 'Decanatura'),
(128, 'Secretaría General'),
(129, 'Departamento de Biología'),
(130, 'Departamento de Física'),
(131, 'Departamento de Matemáticas'),
(132, 'Departamento de Química'),
(133, 'Departamento de Educación y Pedagogía'),
(134, 'Departamento de Educación Física, Recreación y Deporte'),
(135, 'Coordinación Programa de Química'),
(136, 'Coordinación Programa de Ingeniería Física'),
(137, 'Coordinación Programa de Biología'),
(138, 'Coordinación Programa Educación Física'),
(139, 'Coordinación Programa de Matemáticas'),
(140, 'Coordinación Programa de Licenciatura en Matemáticas'),
(141, 'Coordinación Especialización en entrenamiento deportivo'),
(142, 'Coordinación Programa de Pedagogía'),
(143, 'Coordinación Maestría en Ciencias Matemáticas'),
(144, 'Coordinación Maestría en Educación'),
(145, 'Facultad de Artes'),
(146, 'Consejo de Facultad'),
(147, 'Decanatura'),
(148, 'Secretaría General'),
(149, 'Departamento de Música'),
(150, 'Departamento de Diseño'),
(151, 'Departamento de Artes Plásticas'),
(152, 'Conservatorio'),
(153, 'Centro de Altos Estudios Musicales'),
(154, 'Coordinación Diseño Grafico'),
(155, 'Coordinación Programa de Artes'),
(156, 'Coordinación Programa Música Instrumental'),
(157, 'Coordinación Programa Licenciatura en Música'),
(158, 'Coordinación Programa Dirección de Banda'),
(159, 'Facultad de Ciencias Humanas y Sociales'),
(160, 'Consejo de Facultad'),
(161, 'Decanatura'),
(162, 'Secretaría General'),
(163, 'Departamento de Español y Literatura'),
(164, 'Departamento de Lingüística'),
(165, 'Departamento de Lenguas'),
(166, 'Departamento de Antropología'),
(167, 'Departamento de Filosofía'),
(168, 'Departamento de Geografía'),
(169, 'Departamento de Historia'),
(170, 'Departamento de Estudios Interculturales'),
(171, 'Centro de Estudios Históricos \"José María Arboleda Llorente\"'),
(172, 'Coordinación Programa de Lenguas Modernas'),
(173, 'Coordinación Programa de Español y Literatura'),
(174, 'Coordinación Programa de Geografía'),
(175, 'Coordinación Programa de Antropología'),
(176, 'Coordinación Programa de Licenciatura en Etnoeducación'),
(177, 'Coordinación Programa de Historia'),
(178, 'Coordinación Programa de Filosofía'),
(179, 'Coordinación Componente de Formación Integral, Social y Humana'),
(180, 'Facultad de Ciencias Contables, Económicas y Administrativas'),
(181, 'Consejo de Facultad'),
(182, 'Decanatura'),
(183, 'Secretaría General'),
(184, 'Departamento de Ciencias Contables'),
(185, 'Departamento de Ciencias Administrativas'),
(186, 'Departamento de Ciencias Económicas'),
(187, 'Centro de Estudios Contables, Económicos y Administrativos'),
(188, 'Escuela de Ciencias Contables, Económicas y Administrativas'),
(189, 'Coordinación Contaduría'),
(190, 'Coordinación Administración'),
(191, 'Coordinación Turismo'),
(192, 'Coordinación de Economía'),
(193, 'Departamento de Ciencias del Turismo'),
(194, 'Facultad de Ciencias Agrarias'),
(195, 'Consejo de Facultad'),
(196, 'Decanatura'),
(197, 'Secretaría General'),
(198, 'Departamento de Ciencias Agropecuarias'),
(199, 'Departamento de Agroindustria'),
(200, 'Coordinación Programa Ingeniería Forestal'),
(201, 'Coordinación Programa Ingeniería Agroindustrial'),
(202, 'Coordinación Programa Tecnología en Agroindustria'),
(203, 'Coordinación Programa en Ingeniería Agropecuaria'),
(204, 'Comité de Dirección, Planeación y Coordinación Universitaria'),
(205, 'Comité de Coordinación de Control Interno'),
(206, 'Comité de Conciliación'),
(207, 'Consejo Universitario de Política Fiscal – Counfis'),
(208, 'Comité de Gestión de la Calidad y la Acreditación Institucional'),
(209, 'Comité Interno de Asignación y Reconocimiento de Puntaje'),
(210, 'Comité de Personal Docente Central'),
(211, 'Comité de Coordinación Académica'),
(212, 'Comité Curricular Central'),
(213, 'Comité Central de Postgrados'),
(214, 'Comité de Admisiones'),
(215, 'Comité Interno de Gestión Administrativa'),
(216, 'Junta de Licitaciones y Contratos'),
(217, 'Comité Administrador de Carrera'),
(218, 'Comité para la Convivencia'),
(219, 'Consejo de Investigaciones'),
(220, 'Comité de Ética para la Investigación'),
(221, 'Comité de Propiedad Intelectual'),
(222, 'Comités Ad-hoc de Asesoría y Consulta'),
(223, 'Comité Editorial'),
(224, 'Consejo de Cultura y Bienestar'),
(225, 'Comités Ad-hoc de Asesoría y Consulta'),
(226, 'Comité de Coordinación Curricular'),
(227, 'Comité de Facultad para la Investigación y Posgrados'),
(228, 'Comité de Personal Docente'),
(229, 'Comité de Posgrado de Facultad'),
(230, 'Comité de Facultad para la Promoción de la Cultura y el Bienestar'),
(231, 'Unidad de Salud'),
(232, 'Sede Santander de Quilichao'),
(233, 'Sede Silvia'),
(234, 'Sede Guapi'),
(235, 'Sede Bolívar'),
(236, 'Área de Gestión Documental');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleadocliente`
--

CREATE TABLE `empleadocliente` (
  `idEmpleadoCliente` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `tipoIdentificacion` enum('Cedula','Tarjeta de Identidad','Pasaporte') NOT NULL,
  `identificacion` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` enum('Activo','Eliminado') NOT NULL,
  `genero` enum('Masculino','Femenino') NOT NULL,
  `registradopor` varchar(100) NOT NULL,
  `modificadopor` varchar(100) NOT NULL DEFAULT '',
  `fechahorareg` datetime NOT NULL DEFAULT current_timestamp(),
  `fechahoramod` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `empleadocliente`
--

INSERT INTO `empleadocliente` (`idEmpleadoCliente`, `nombre`, `apellido`, `tipoIdentificacion`, `identificacion`, `fechaNacimiento`, `email`, `telefono`, `direccion`, `estado`, `genero`, `registradopor`, `modificadopor`, `fechahorareg`, `fechahoramod`) VALUES
(1, 'Jimmy Andrés', 'Núñez Astudillo', 'Cedula', '1061730370', '1990-07-10', 'jimmy-9010@hotmail.com', '3206048323', 'Car 20A # 2-14 B/Pandiguando', 'Activo', 'Masculino', 'Sistema', 'jnunez', '2023-09-07 12:06:31', '2023-09-20 12:12:21'),
(2, 'PORTAL', 'WEB', 'Cedula', '1061818950', '2022-01-16', 'portalwebv2@unicauca.edu.co', '3103603276', 'CARRERA 2 Nº 3N-111', 'Activo', 'Masculino', 'jnunez', '', '2023-11-02 14:48:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `idEvento` int(11) UNSIGNED NOT NULL,
  `tipo` enum('Periodo academico','Inicio y finalizacion de clases','Planeacion','Tramites academicos','Intersemestrales','Fin periodo academico','Otro') NOT NULL,
  `title` text NOT NULL,
  `descripcion` text NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `color` varchar(11) NOT NULL,
  `textColor` varchar(11) NOT NULL,
  `allDay` enum('false','true') NOT NULL,
  `estado` enum('Activo','Eliminado') NOT NULL,
  `registradopor` varchar(11) NOT NULL,
  `modificadopor` varchar(11) NOT NULL,
  `fechahorareg` datetime NOT NULL DEFAULT current_timestamp(),
  `fechahoramod` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`idEvento`, `tipo`, `title`, `descripcion`, `start`, `end`, `color`, `textColor`, `allDay`, `estado`, `registradopor`, `modificadopor`, `fechahorareg`, `fechahoramod`) VALUES
(1, 'Otro', 'SEMANA SANTA', 'La Semana Santa​ es la conmemoración cristiana anual de la pasión de Cristo, es decir, de la entrada a Jerusalén, la última cena, el viacrucis, la muerte y resurrección de Jesús de Nazaret.', '2023-10-09 00:00:00', '2023-10-14 00:00:00', '#ac3956', '#ffffff', 'true', 'Activo', 'jnunez', 'jnunez', '2023-09-12 14:35:12', '2023-10-03 10:25:23'),
(2, 'Otro', 'PARTIDO DE COLOMBIA', 'El próximo martes 12 de septiembre Colombia se medirá frente a Chile en Santiago. El duelo es válido por la segunda jornada de las Eliminatorias rumbo a la Copa Mundial de la FIFA, en Estados Unidos, México y Canadá 2026.', '2023-09-12 19:30:00', '2023-09-12 21:30:00', '#e3e60f', '#2f2d8b', 'false', 'Activo', 'jnunez', '', '2023-09-12 14:39:39', '0000-00-00 00:00:00'),
(3, 'Otro', 'FELIZ NAVIDAD', 'La Navidad es una de las festividades más importantes del cristianismo, junto con la Pascua de resurrección y Pentecostés', '2023-10-25 00:00:00', '2023-10-25 00:00:00', '#47ac39', '#990000', 'true', 'Activo', 'jnunez', 'jnunez', '2023-09-12 14:56:13', '2023-10-03 10:24:42'),
(4, 'Otro', 'REUNION CON LOS INVERSIONISTAS', 'Reunión con los inversionistas', '2023-09-12 08:00:00', '2023-09-12 18:00:00', '#3987ad', '#ffffff', 'false', 'Activo', 'jnunez', 'jnunez', '2023-09-12 15:00:23', '2023-09-13 12:14:47'),
(5, 'Otro', 'SALIR ALMORZAR CON LOS INVERSIONISTAS', 'Salir almorzar con los inversionistas.', '2023-09-14 12:00:00', '2023-09-14 14:00:00', '#3987ad', '#ffffff', 'false', 'Activo', 'jnunez', 'jnunez', '2023-09-12 15:01:59', '2023-09-13 14:17:15'),
(6, 'Otro', 'PARTIDO DE COLOMBIA', 'La selección de fútbol de Colombia es el equipo que representa a dicho país en las competiciones oficiales de fútbol masculino desde 1924. Su organización está a cargo de la Federación Colombiana de Fútbol y desde 1936 se encuentra afiliada tanto a la FIFA como a la Conmebol, de la cual es miembro asociado.', '2023-09-14 14:00:00', '2023-09-14 16:00:00', '#e8f901', '#2328b3', 'false', 'Activo', 'jnunez', 'jnunez', '2023-09-12 15:04:06', '2023-09-13 14:17:19'),
(7, 'Otro', 'REUNIÓN CON LOS INVERSIONISTAS', 'Reunión con los inversionistas', '2023-09-14 08:00:00', '2023-09-14 18:00:00', '#3987ad', '#ffffff', 'false', 'Activo', 'jnunez', 'jnunez', '2023-09-13 14:19:04', '2023-09-13 14:19:27'),
(8, 'Otro', 'EVENTO TEST', 'Prueba de contenido', '2023-09-26 16:00:00', '2023-09-26 18:00:00', '#3987ad', '#ffffff', 'false', 'Activo', 'jnunez', '', '2023-09-26 10:22:43', '0000-00-00 00:00:00'),
(9, 'Otro', 'INGRESO A TRABAJAR', 'La fecha de ingreso de trabajar en la Universidad del Cauca', '2023-09-26 00:00:00', '2023-09-26 00:00:00', '#3987ad', '#ffffff', 'true', 'Activo', 'jnunez', '', '2023-09-27 17:29:24', '0000-00-00 00:00:00'),
(10, 'Periodo academico', 'Inicio Periodo Académico', 'Inicio Periodo Académico', '2023-02-13 00:00:00', '2023-02-13 00:00:00', '#ff6c08', '#ffffff', 'true', 'Activo', 'jnunez', '', '2023-10-03 16:12:28', '0000-00-00 00:00:00'),
(11, 'Periodo academico', 'Matriculas académicas Estudiantes Regulares', 'Matriculas académicas Estudiantes Regulares', '2023-02-15 00:00:00', '2023-02-17 00:00:00', '#ff6c08', '#ffffff', 'true', 'Activo', 'jnunez', '', '2023-10-03 16:14:54', '0000-00-00 00:00:00'),
(12, 'Inicio y finalizacion de clases', 'Inicio de clases', 'Inicio de clases', '2023-03-01 00:00:00', '2023-03-01 00:00:00', '#ffb000', '#ffffff', 'true', 'Activo', 'jnunez', '', '2023-10-03 16:17:11', '0000-00-00 00:00:00'),
(13, 'Inicio y finalizacion de clases', 'Finalización de Clases', 'Finalización de Clases', '2023-06-23 00:00:00', '2023-06-23 00:00:00', '#ffb000', '#ffffff', 'true', 'Activo', 'jnunez', 'jnunez', '2023-10-03 16:18:31', '2023-10-03 16:22:43'),
(14, 'Planeacion', 'Planeación Académica i y II Periodo de 2023', 'Planeación Académica i y II Periodo de 2023', '2023-12-01 00:00:00', '2023-12-07 00:00:00', '#5bae40', '#ffffff', 'true', 'Activo', 'jnunez', '', '2023-10-03 16:28:37', '0000-00-00 00:00:00'),
(15, 'Intersemestrales', 'Cursos intersemestrales', 'Cursos intersemestrales', '2023-07-01 00:00:00', '2023-07-31 00:00:00', '#5a00ba', '#ffffff', 'true', 'Activo', 'jnunez', 'jnunez', '2023-10-03 16:31:01', '2023-10-03 16:31:43'),
(16, 'Tramites academicos', 'Vencimiento de los términos para acreditar situación prevista en el parágrafo quinto del artículo 4 del Acuerdo 085 de 2008 (Adicionando Acuerdo 044/2012) - 90 días Sustentación Trabajo de Grado.', 'Vencimiento de los términos para acreditar situación prevista en el parágrafo quinto del artículo 4 del Acuerdo 085 de 2008 (Adicionando Acuerdo 044/2012) - 90 días Sustentación Trabajo de Grado.', '2023-05-13 00:00:00', '2023-05-13 00:00:00', '#00aae5', '#ffffff', 'true', 'Activo', 'jnunez', '', '2023-10-03 16:51:21', '0000-00-00 00:00:00'),
(17, 'Fin periodo academico', 'Cursos intersemestrales', 'Cursos intersemestrales', '2023-06-23 00:00:00', '2023-06-23 00:00:00', '#db141c', '#ffffff', 'true', 'Activo', 'jnunez', '', '2023-10-03 16:58:33', '0000-00-00 00:00:00'),
(18, 'Otro', 'Partido de Colombia', '<p><strong>Colombia vs Brasil</strong></p>\r\n\r\n<p><span style=\"color:#f1c40f\">Estadio Metropolitano</span><span style=\"color:#2980b9\"> de F&uacute;tbol Roberto</span> <span style=\"color:#c0392b\">Mel&eacute;ndez</span></p>\r\n', '2023-11-16 19:00:00', '2023-11-16 08:30:00', '#e5de15', '#122be2', 'false', 'Activo', 'jnunez', 'jnunez', '2023-11-10 15:02:26', '2023-11-10 18:32:04'),
(19, 'Otro', 'Dia de las velitas', '<p>El&nbsp;<strong>d&iacute;a de las velitas</strong>&nbsp;o&nbsp;<strong>noche de las velitas</strong>&nbsp;es una de las&nbsp;<a href=\"https://es.wikipedia.org/wiki/Fiestas_de_Colombia\" title=\"Fiestas de Colombia\">festividades</a>&nbsp;m&aacute;s tradicionales de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Colombia\" title=\"Colombia\">Colombia</a>.<sup><a href=\"https://es.wikipedia.org/wiki/D%C3%ADa_de_las_velitas#cite_note-velitas-1\">1</a></sup>​</p>\r\n\r\n<p>El festejo var&iacute;a seg&uacute;n las regiones del pa&iacute;s, pero generalmente empieza desde la noche del 7 de diciembre, con el encendido de faroles y velas que iluminan calles, centros comerciales, hogares de los pueblos y ciudades. Esta celebraci&oacute;n marca el comienzo de las fiestas&nbsp;<a href=\"https://es.wikipedia.org/wiki/Navidad\" title=\"\">navide&ntilde;as</a>&nbsp;en el pa&iacute;s. Mientras, el 8 de diciembre se celebra el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Dogmas_de_la_Iglesia_cat%C3%B3lica\" title=\"Dogmas de la Iglesia católica\">dogma</a>&nbsp;de la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Inmaculada_Concepci%C3%B3n\" title=\"Inmaculada Concepción\">Inmaculada Concepci&oacute;n</a>&nbsp;de la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Virgen_Mar%C3%ADa\" title=\"Virgen María\">Virgen Mar&iacute;a</a>.<sup><a href=\"https://es.wikipedia.org/wiki/D%C3%ADa_de_las_velitas#cite_note-2\">2</a></sup></p>\r\n', '2023-12-07 00:00:00', '2023-12-07 00:00:00', '#000066', '#ffffff', 'true', 'Activo', 'jnunez', 'jnunez', '2023-11-10 19:17:41', '2023-11-10 22:09:42'),
(20, 'Otro', 'Navidad', '<p>La&nbsp;<strong>Navidad</strong>&nbsp;(del&nbsp;<a href=\"https://es.wikipedia.org/wiki/Lat%C3%ADn\" title=\"Latín\">lat&iacute;n</a>&nbsp;<em>nativitas</em>, &laquo;nacimiento&raquo;) es una de las festividades m&aacute;s importantes del&nbsp;<a href=\"https://es.wikipedia.org/wiki/Cristianismo\" title=\"Cristianismo\">cristianismo</a>, junto con la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Pascua\" title=\"Pascua\">Pascua de resurrecci&oacute;n</a>&nbsp;y&nbsp;<a href=\"https://es.wikipedia.org/wiki/Pentecost%C3%A9s\" title=\"Pentecostés\">Pentecost&eacute;s</a>. Esta solemnidad, que conmemora el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Natividad\" title=\"Natividad\">nacimiento</a>&nbsp;de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Jes%C3%BAs_de_Nazaret\" title=\"Jesús de Nazaret\">Jesucristo</a>&nbsp;en&nbsp;<a href=\"https://es.wikipedia.org/wiki/Bel%C3%A9n\" title=\"Belén\">Bel&eacute;n</a>, se celebra el&nbsp;<a href=\"https://es.wikipedia.org/wiki/25_de_diciembre\" title=\"25 de diciembre\">25 de diciembre</a>&nbsp;en la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Iglesia_cat%C3%B3lica\" title=\"Iglesia católica\">Iglesia cat&oacute;lica</a>, en la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Iglesia_anglicana\" title=\"Iglesia anglicana\">Iglesia anglicana</a>, en algunas&nbsp;<a href=\"https://es.wikipedia.org/wiki/Protestantismo\" title=\"Protestantismo\">comunidades protestantes</a>&nbsp;y en la mayor&iacute;a de las&nbsp;<a href=\"https://es.wikipedia.org/wiki/Iglesia_ortodoxa\" title=\"Iglesia ortodoxa\">Iglesias ortodoxas</a>.</p>\r\n\r\n<p>En cambio, se festeja el&nbsp;<a href=\"https://es.wikipedia.org/wiki/6_de_enero\" title=\"6 de enero\">6 de enero</a>&nbsp;o el&nbsp;<a href=\"https://es.wikipedia.org/wiki/7_de_enero\" title=\"7 de enero\">7 de enero</a>&nbsp;en otras&nbsp;<a href=\"https://es.wikipedia.org/wiki/Iglesias_ortodoxas\" title=\"Iglesias ortodoxas\">Iglesias ortodoxas</a>&nbsp;como la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Iglesia_ortodoxa_rusa\" title=\"Iglesia ortodoxa rusa\">Iglesia ortodoxa rusa</a>&nbsp;o la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Iglesia_ortodoxa_de_Jerusal%C3%A9n\" title=\"Iglesia ortodoxa de Jerusalén\">Iglesia ortodoxa de Jerusal&eacute;n</a>&nbsp;(6 de enero) o la Iglesia ortodoxa de Ucrania (7 de enero), instituciones que no aceptaron la reforma hecha al&nbsp;<a href=\"https://es.wikipedia.org/wiki/Calendario_juliano\" title=\"Calendario juliano\">calendario juliano</a>&nbsp;para pasar al calendario conocido como&nbsp;<a href=\"https://es.wikipedia.org/wiki/Calendario_gregoriano\" title=\"Calendario gregoriano\">gregoriano</a>, nombre derivado de su reformador, el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Papa\" title=\"Papa\">papa</a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Gregorio_XIII\" title=\"Gregorio XIII\">Gregorio XIII</a>.<sup><a href=\"https://es.wikipedia.org/wiki/Navidad#cite_note-1\">1</a></sup>​ El 25 de diciembre es un d&iacute;a festivo en muchos pa&iacute;ses celebrado por millones de personas en todo el mundo y tambi&eacute;n por un gran n&uacute;mero de no cristianos.<sup><a href=\"https://es.wikipedia.org/wiki/Navidad#cite_note-2\">2</a></sup>​</p>\r\n\r\n<p>La Navidad inicia un tiempo lit&uacute;rgico llamado&nbsp;<a href=\"https://es.wikipedia.org/wiki/Tiempo_de_Navidad\" title=\"Tiempo de Navidad\">tiempo de Navidad</a>, que finaliza con la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Bautismo_de_Jes%C3%BAs\" title=\"Bautismo de Jesús\">solemnidad del Bautismo del Se&ntilde;or</a>. Coloquialmente, al periodo que comienza con la Navidad y finaliza con la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Epifan%C3%ADa_del_Se%C3%B1or\" title=\"Epifanía del Señor\">Epifan&iacute;a del Se&ntilde;or</a>&nbsp;tambi&eacute;n se le conoce como&nbsp;<em>pascuas</em>.<sup><a href=\"https://es.wikipedia.org/wiki/Navidad#cite_note-3\">3</a></sup>​<sup><a href=\"https://es.wikipedia.org/wiki/Navidad#cite_note-4\">4</a></sup>​</p>\r\n\r\n<p>Existen varias teor&iacute;as sobre c&oacute;mo se lleg&oacute; a celebrar la Navidad el 25 de diciembre, que surgen desde diversos modos de indagar, seg&uacute;n algunos datos conocidos, en qu&eacute; fecha habr&iacute;a nacido Jes&uacute;s.</p>\r\n', '2023-12-25 00:00:00', '2023-12-25 00:00:00', '#000066', '#ffffff', 'true', 'Activo', 'jnunez', 'jnunez', '2023-11-10 19:22:06', '2023-11-10 22:10:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lvmen`
--

CREATE TABLE `lvmen` (
  `idLvmen` int(11) UNSIGNED NOT NULL,
  `idSubproceso` int(11) UNSIGNED NOT NULL,
  `idEmitido` int(10) UNSIGNED NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `tipoDocumento` enum('Formato','Proceso','Manual','Instructivo','Plan','Nomograma','Protocolo','Procedimiento','Otro') NOT NULL,
  `dirigido` varchar(100) NOT NULL,
  `publicacion` date NOT NULL,
  `archivo` varchar(100) NOT NULL,
  `estado` enum('Activo','Eliminado') NOT NULL,
  `registradopor` varchar(25) NOT NULL,
  `modificadopor` varchar(25) NOT NULL,
  `fechahorareg` datetime NOT NULL DEFAULT current_timestamp(),
  `fechahoramod` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `lvmen`
--

INSERT INTO `lvmen` (`idLvmen`, `idSubproceso`, `idEmitido`, `nombre`, `descripcion`, `tipoDocumento`, `dirigido`, `publicacion`, `archivo`, `estado`, `registradopor`, `modificadopor`, `fechahorareg`, `fechahoramod`) VALUES
(1, 1, 1, 'Proceso Estratégico\r\nOficina de relaciones interinstitucionales e internacionales\r\nSuscripción de convenios de cooperación académica', 'Proceso Estratégico\r\nOficina de relaciones interinstitucionales e internacionales\r\nSuscripción de convenios de cooperación académica', 'Procedimiento', 'Estudiantes, comunidad universitaria', '2015-09-04', 'LUMEN_651b1cc7445271_89379059.pdf', 'Activo', 'jnunez', '', '2023-10-06 09:57:12', '0000-00-00 00:00:00'),
(2, 19, 1, 'Gestión Administrativa\r\nApoyo Administrativo\r\nElaboración de Cuentas por Cobrar Servicios Prestados', 'Gestión Administrativa\r\nApoyo Administrativo\r\nElaboración de Cuentas por Cobrar Servicios Prestados', 'Procedimiento', 'Estudiantes, comunidad universitaria', '2017-04-20', 'LUMEN_651b18d7655212_70849650.pdf', 'Activo', 'jnunez', '', '2023-10-07 17:42:10', '0000-00-00 00:00:00'),
(3, 8, 1, 'Proceso Misional\r\nCentro de Regionalización\r\nGestión de la Oferta Académica', 'Proceso Misional\r\nCentro de Regionalización\r\nGestión de la Oferta Académica', 'Procedimiento', 'Estudiantes, comunidad universitaria', '2015-09-04', 'LUMEN_651b140e6394f4_59205690.pdf', 'Activo', 'jnunez', '', '2023-10-09 14:13:53', '0000-00-00 00:00:00'),
(4, 31, 1, 'Proceso de Evaluación\r\nGestión del Control y del Mejoramiento Continuo\r\nEvaluación de la Gestión del Riesgo\r\n', 'Proceso de Evaluación\r\nGestión del Control y del Mejoramiento Continuo\r\nEvaluación de la Gestión del Riesgo\r\n', 'Procedimiento', 'Estudiantes, comunidad universitaria', '2019-11-13', 'LUMEN_651b34841e5806_22347058.pdf', 'Activo', 'jnunez', '', '2023-10-09 14:18:31', '0000-00-00 00:00:00'),
(5, 2, 1, 'Proceso Estratégico\r\nSecretaría General\r\nActividades de Secretariado de las Corporaciones Universitarias: Consejo\r\nSuperior, Consejo Académico', 'Proceso Estratégico\r\nSecretaría General\r\nActividades de Secretariado de las Corporaciones Universitarias: Consejo\r\nSuperior, Consejo Académico', 'Procedimiento', 'Estudiantes, comunidad universitaria', '2016-11-29', 'LUMEN_6524d0962e21c4_30873491.pdf', 'Activo', 'jnunez', '', '2023-10-09 23:18:30', '0000-00-00 00:00:00'),
(6, 30, 1, 'test Lvmen 20231116', 'test Lvmen 20231116', 'Proceso', 'Para los chismosos', '2023-11-16', 'LUMEN_655642389a5161_92704865.pdf', 'Activo', 'jnunez', 'jnunez', '2023-11-16 11:24:24', '2023-11-16 11:42:27'),
(7, 27, 1, 'test Excel 20231117', 'test Excel 20231117', 'Formato', 'test Excel 20231117', '2023-11-17', 'LUMEN_6557a931f408c3_01069194.xlsx', 'Activo', 'jnunez', '', '2023-11-17 12:56:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `idMunicipio` int(6) UNSIGNED NOT NULL,
  `municipio` varchar(255) NOT NULL DEFAULT '',
  `estado` int(1) UNSIGNED NOT NULL,
  `idDepartamento` int(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`idMunicipio`, `municipio`, `estado`, `idDepartamento`) VALUES
(1, 'Abriaquí', 1, 5),
(2, 'Acacías', 1, 50),
(3, 'Acandí', 1, 27),
(4, 'Acevedo', 1, 41),
(5, 'Achí', 1, 13),
(6, 'Agrado', 1, 41),
(7, 'Agua de Dios', 1, 25),
(8, 'Aguachica', 1, 20),
(9, 'Aguada', 1, 68),
(10, 'Aguadas', 1, 17),
(11, 'Aguazul', 1, 85),
(12, 'Agustín Codazzi', 1, 20),
(13, 'Aipe', 1, 41),
(14, 'Albania', 1, 18),
(15, 'Albania', 1, 44),
(16, 'Albania', 1, 68),
(17, 'Albán', 1, 25),
(18, 'Albán (San José)', 1, 52),
(19, 'Alcalá', 1, 76),
(20, 'Alejandria', 1, 5),
(21, 'Algarrobo', 1, 47),
(22, 'Algeciras', 1, 41),
(23, 'Almaguer', 1, 19),
(24, 'Almeida', 1, 15),
(25, 'Alpujarra', 1, 73),
(26, 'Altamira', 1, 41),
(27, 'Alto Baudó (Pie de Pato)', 1, 27),
(28, 'Altos del Rosario', 1, 13),
(29, 'Alvarado', 1, 73),
(30, 'Amagá', 1, 5),
(31, 'Amalfi', 1, 5),
(32, 'Ambalema', 1, 73),
(33, 'Anapoima', 1, 25),
(34, 'Ancuya', 1, 52),
(35, 'Andalucía', 1, 76),
(36, 'Andes', 1, 5),
(37, 'Angelópolis', 1, 5),
(38, 'Angostura', 1, 5),
(39, 'Anolaima', 1, 25),
(40, 'Anorí', 1, 5),
(41, 'Anserma', 1, 17),
(42, 'Ansermanuevo', 1, 76),
(43, 'Anzoátegui', 1, 73),
(44, 'Anzá', 1, 5),
(45, 'Apartadó', 1, 5),
(46, 'Apulo', 1, 25),
(47, 'Apía', 1, 66),
(48, 'Aquitania', 1, 15),
(49, 'Aracataca', 1, 47),
(50, 'Aranzazu', 1, 17),
(51, 'Aratoca', 1, 68),
(52, 'Arauca', 1, 81),
(53, 'Arauquita', 1, 81),
(54, 'Arbeláez', 1, 25),
(55, 'Arboleda (Berruecos)', 1, 52),
(56, 'Arboledas', 1, 54),
(57, 'Arboletes', 1, 5),
(58, 'Arcabuco', 1, 15),
(59, 'Arenal', 1, 13),
(60, 'Argelia', 1, 5),
(61, 'Argelia', 1, 19),
(62, 'Argelia', 1, 76),
(63, 'Ariguaní (El Difícil)', 1, 47),
(64, 'Arjona', 1, 13),
(65, 'Armenia', 1, 5),
(66, 'Armenia', 1, 63),
(67, 'Armero (Guayabal)', 1, 73),
(68, 'Arroyohondo', 1, 13),
(69, 'Astrea', 1, 20),
(70, 'Ataco', 1, 73),
(71, 'Atrato (Yuto)', 1, 27),
(72, 'Ayapel', 1, 23),
(73, 'Bagadó', 1, 27),
(74, 'Bahía Solano (Mútis)', 1, 27),
(75, 'Bajo Baudó (Pizarro)', 1, 27),
(76, 'Balboa', 1, 19),
(77, 'Balboa', 1, 66),
(78, 'Baranoa', 1, 8),
(79, 'Baraya', 1, 41),
(80, 'Barbacoas', 1, 52),
(81, 'Barbosa', 1, 5),
(82, 'Barbosa', 1, 68),
(83, 'Barichara', 1, 68),
(84, 'Barranca de Upía', 1, 50),
(85, 'Barrancabermeja', 1, 68),
(86, 'Barrancas', 1, 44),
(87, 'Barranco de Loba', 1, 13),
(88, 'Barranquilla', 1, 8),
(89, 'Becerríl', 1, 20),
(90, 'Belalcázar', 1, 17),
(91, 'Bello', 1, 5),
(92, 'Belmira', 1, 5),
(93, 'Beltrán', 1, 25),
(94, 'Belén', 1, 15),
(95, 'Belén', 1, 52),
(96, 'Belén de Bajirá', 1, 27),
(97, 'Belén de Umbría', 1, 66),
(98, 'Belén de los Andaquíes', 1, 18),
(99, 'Berbeo', 1, 15),
(100, 'Betania', 1, 5),
(101, 'Beteitiva', 1, 15),
(102, 'Betulia', 1, 5),
(103, 'Betulia', 1, 68),
(104, 'Bituima', 1, 25),
(105, 'Boavita', 1, 15),
(106, 'Bochalema', 1, 54),
(107, 'Bogotá D.C.', 1, 11),
(108, 'Bojacá', 1, 25),
(109, 'Bojayá (Bellavista)', 1, 27),
(110, 'Bolívar', 1, 5),
(111, 'Bolívar', 1, 19),
(112, 'Bolívar', 1, 68),
(113, 'Bolívar', 1, 76),
(114, 'Bosconia', 1, 20),
(115, 'Boyacá', 1, 15),
(116, 'Briceño', 1, 5),
(117, 'Briceño', 1, 15),
(118, 'Bucaramanga', 1, 68),
(119, 'Bucarasica', 1, 54),
(120, 'Buenaventura', 1, 76),
(121, 'Buenavista', 1, 15),
(122, 'Buenavista', 1, 23),
(123, 'Buenavista', 1, 63),
(124, 'Buenavista', 1, 70),
(125, 'Buenos Aires', 1, 19),
(126, 'Buesaco', 1, 52),
(127, 'Buga', 1, 76),
(128, 'Bugalagrande', 1, 76),
(129, 'Burítica', 1, 5),
(130, 'Busbanza', 1, 15),
(131, 'Cabrera', 1, 25),
(132, 'Cabrera', 1, 68),
(133, 'Cabuyaro', 1, 50),
(134, 'Cachipay', 1, 25),
(135, 'Caicedo', 1, 5),
(136, 'Caicedonia', 1, 76),
(137, 'Caimito', 1, 70),
(138, 'Cajamarca', 1, 73),
(139, 'Cajibío', 1, 19),
(140, 'Cajicá', 1, 25),
(141, 'Calamar', 1, 13),
(142, 'Calamar', 1, 95),
(143, 'Calarcá', 1, 63),
(144, 'Caldas', 1, 5),
(145, 'Caldas', 1, 15),
(146, 'Caldono', 1, 19),
(147, 'California', 1, 68),
(148, 'Calima (Darién)', 1, 76),
(149, 'Caloto', 1, 19),
(150, 'Calí', 1, 76),
(151, 'Campamento', 1, 5),
(152, 'Campo de la Cruz', 1, 8),
(153, 'Campoalegre', 1, 41),
(154, 'Campohermoso', 1, 15),
(155, 'Canalete', 1, 23),
(156, 'Candelaria', 1, 8),
(157, 'Candelaria', 1, 76),
(158, 'Cantagallo', 1, 13),
(159, 'Cantón de San Pablo', 1, 27),
(160, 'Caparrapí', 1, 25),
(161, 'Capitanejo', 1, 68),
(162, 'Caracolí', 1, 5),
(163, 'Caramanta', 1, 5),
(164, 'Carcasí', 1, 68),
(165, 'Carepa', 1, 5),
(166, 'Carmen de Apicalá', 1, 73),
(167, 'Carmen de Carupa', 1, 25),
(168, 'Carmen de Viboral', 1, 5),
(169, 'Carmen del Darién (CURBARADÓ)', 1, 27),
(170, 'Carolina', 1, 5),
(171, 'Cartagena', 1, 13),
(172, 'Cartagena del Chairá', 1, 18),
(173, 'Cartago', 1, 76),
(174, 'Carurú', 1, 97),
(175, 'Casabianca', 1, 73),
(176, 'Castilla la Nueva', 1, 50),
(177, 'Caucasia', 1, 5),
(178, 'Cañasgordas', 1, 5),
(179, 'Cepita', 1, 68),
(180, 'Cereté', 1, 23),
(181, 'Cerinza', 1, 15),
(182, 'Cerrito', 1, 68),
(183, 'Cerro San Antonio', 1, 47),
(184, 'Chachaguí', 1, 52),
(185, 'Chaguaní', 1, 25),
(186, 'Chalán', 1, 70),
(187, 'Chaparral', 1, 73),
(188, 'Charalá', 1, 68),
(189, 'Charta', 1, 68),
(190, 'Chigorodó', 1, 5),
(191, 'Chima', 1, 68),
(192, 'Chimichagua', 1, 20),
(193, 'Chimá', 1, 23),
(194, 'Chinavita', 1, 15),
(195, 'Chinchiná', 1, 17),
(196, 'Chinácota', 1, 54),
(197, 'Chinú', 1, 23),
(198, 'Chipaque', 1, 25),
(199, 'Chipatá', 1, 68),
(200, 'Chiquinquirá', 1, 15),
(201, 'Chiriguaná', 1, 20),
(202, 'Chiscas', 1, 15),
(203, 'Chita', 1, 15),
(204, 'Chitagá', 1, 54),
(205, 'Chitaraque', 1, 15),
(206, 'Chivatá', 1, 15),
(207, 'Chivolo', 1, 47),
(208, 'Choachí', 1, 25),
(209, 'Chocontá', 1, 25),
(210, 'Chámeza', 1, 85),
(211, 'Chía', 1, 25),
(212, 'Chíquiza', 1, 15),
(213, 'Chívor', 1, 15),
(214, 'Cicuco', 1, 13),
(215, 'Cimitarra', 1, 68),
(216, 'Circasia', 1, 63),
(217, 'Cisneros', 1, 5),
(218, 'Ciénaga', 1, 15),
(219, 'Ciénaga', 1, 47),
(220, 'Ciénaga de Oro', 1, 23),
(221, 'Clemencia', 1, 13),
(222, 'Cocorná', 1, 5),
(223, 'Coello', 1, 73),
(224, 'Cogua', 1, 25),
(225, 'Colombia', 1, 41),
(226, 'Colosó (Ricaurte)', 1, 70),
(227, 'Colón', 1, 86),
(228, 'Colón (Génova)', 1, 52),
(229, 'Concepción', 1, 5),
(230, 'Concepción', 1, 68),
(231, 'Concordia', 1, 5),
(232, 'Concordia', 1, 47),
(233, 'Condoto', 1, 27),
(234, 'Confines', 1, 68),
(235, 'Consaca', 1, 52),
(236, 'Contadero', 1, 52),
(237, 'Contratación', 1, 68),
(238, 'Convención', 1, 54),
(239, 'Copacabana', 1, 5),
(240, 'Coper', 1, 15),
(241, 'Cordobá', 1, 63),
(242, 'Corinto', 1, 19),
(243, 'Coromoro', 1, 68),
(244, 'Corozal', 1, 70),
(245, 'Corrales', 1, 15),
(246, 'Cota', 1, 25),
(247, 'Cotorra', 1, 23),
(248, 'Covarachía', 1, 15),
(249, 'Coveñas', 1, 70),
(250, 'Coyaima', 1, 73),
(251, 'Cravo Norte', 1, 81),
(252, 'Cuaspud (Carlosama)', 1, 52),
(253, 'Cubarral', 1, 50),
(254, 'Cubará', 1, 15),
(255, 'Cucaita', 1, 15),
(256, 'Cucunubá', 1, 25),
(257, 'Cucutilla', 1, 54),
(258, 'Cuitiva', 1, 15),
(259, 'Cumaral', 1, 50),
(260, 'Cumaribo', 1, 99),
(261, 'Cumbal', 1, 52),
(262, 'Cumbitara', 1, 52),
(263, 'Cunday', 1, 73),
(264, 'Curillo', 1, 18),
(265, 'Curití', 1, 68),
(266, 'Curumaní', 1, 20),
(267, 'Cáceres', 1, 5),
(268, 'Cáchira', 1, 54),
(269, 'Cácota', 1, 54),
(270, 'Cáqueza', 1, 25),
(271, 'Cértegui', 1, 27),
(272, 'Cómbita', 1, 15),
(273, 'Córdoba', 1, 13),
(274, 'Córdoba', 1, 52),
(275, 'Cúcuta', 1, 54),
(276, 'Dabeiba', 1, 5),
(277, 'Dagua', 1, 76),
(278, 'Dibulla', 1, 44),
(279, 'Distracción', 1, 44),
(280, 'Dolores', 1, 73),
(281, 'Don Matías', 1, 5),
(282, 'Dos Quebradas', 1, 66),
(283, 'Duitama', 1, 15),
(284, 'Durania', 1, 54),
(285, 'Ebéjico', 1, 5),
(286, 'El Bagre', 1, 5),
(287, 'El Banco', 1, 47),
(288, 'El Cairo', 1, 76),
(289, 'El Calvario', 1, 50),
(290, 'El Carmen', 1, 54),
(291, 'El Carmen', 1, 68),
(292, 'El Carmen de Atrato', 1, 27),
(293, 'El Carmen de Bolívar', 1, 13),
(294, 'El Castillo', 1, 50),
(295, 'El Cerrito', 1, 76),
(296, 'El Charco', 1, 52),
(297, 'El Cocuy', 1, 15),
(298, 'El Colegio', 1, 25),
(299, 'El Copey', 1, 20),
(300, 'El Doncello', 1, 18),
(301, 'El Dorado', 1, 50),
(302, 'El Dovio', 1, 76),
(303, 'El Espino', 1, 15),
(304, 'El Guacamayo', 1, 68),
(305, 'El Guamo', 1, 13),
(306, 'El Molino', 1, 44),
(307, 'El Paso', 1, 20),
(308, 'El Paujil', 1, 18),
(309, 'El Peñol', 1, 52),
(310, 'El Peñon', 1, 13),
(311, 'El Peñon', 1, 68),
(312, 'El Peñón', 1, 25),
(313, 'El Piñon', 1, 47),
(314, 'El Playón', 1, 68),
(315, 'El Retorno', 1, 95),
(316, 'El Retén', 1, 47),
(317, 'El Roble', 1, 70),
(318, 'El Rosal', 1, 25),
(319, 'El Rosario', 1, 52),
(320, 'El Tablón de Gómez', 1, 52),
(321, 'El Tambo', 1, 19),
(322, 'El Tambo', 1, 52),
(323, 'El Tarra', 1, 54),
(324, 'El Zulia', 1, 54),
(325, 'El Águila', 1, 76),
(326, 'Elías', 1, 41),
(327, 'Encino', 1, 68),
(328, 'Enciso', 1, 68),
(329, 'Entrerríos', 1, 5),
(330, 'Envigado', 1, 5),
(331, 'Espinal', 1, 73),
(332, 'Facatativá', 1, 25),
(333, 'Falan', 1, 73),
(334, 'Filadelfia', 1, 17),
(335, 'Filandia', 1, 63),
(336, 'Firavitoba', 1, 15),
(337, 'Flandes', 1, 73),
(338, 'Florencia', 1, 18),
(339, 'Florencia', 1, 19),
(340, 'Floresta', 1, 15),
(341, 'Florida', 1, 76),
(342, 'Floridablanca', 1, 68),
(343, 'Florián', 1, 68),
(344, 'Fonseca', 1, 44),
(345, 'Fortúl', 1, 81),
(346, 'Fosca', 1, 25),
(347, 'Francisco Pizarro', 1, 52),
(348, 'Fredonia', 1, 5),
(349, 'Fresno', 1, 73),
(350, 'Frontino', 1, 5),
(351, 'Fuente de Oro', 1, 50),
(352, 'Fundación', 1, 47),
(353, 'Funes', 1, 52),
(354, 'Funza', 1, 25),
(355, 'Fusagasugá', 1, 25),
(356, 'Fómeque', 1, 25),
(357, 'Fúquene', 1, 25),
(358, 'Gachalá', 1, 25),
(359, 'Gachancipá', 1, 25),
(360, 'Gachantivá', 1, 15),
(361, 'Gachetá', 1, 25),
(362, 'Galapa', 1, 8),
(363, 'Galeras (Nueva Granada)', 1, 70),
(364, 'Galán', 1, 68),
(365, 'Gama', 1, 25),
(366, 'Gamarra', 1, 20),
(367, 'Garagoa', 1, 15),
(368, 'Garzón', 1, 41),
(369, 'Gigante', 1, 41),
(370, 'Ginebra', 1, 76),
(371, 'Giraldo', 1, 5),
(372, 'Girardot', 1, 25),
(373, 'Girardota', 1, 5),
(374, 'Girón', 1, 68),
(375, 'Gonzalez', 1, 20),
(376, 'Gramalote', 1, 54),
(377, 'Granada', 1, 5),
(378, 'Granada', 1, 25),
(379, 'Granada', 1, 50),
(380, 'Guaca', 1, 68),
(381, 'Guacamayas', 1, 15),
(382, 'Guacarí', 1, 76),
(383, 'Guachavés', 1, 52),
(384, 'Guachené', 1, 19),
(385, 'Guachetá', 1, 25),
(386, 'Guachucal', 1, 52),
(387, 'Guadalupe', 1, 5),
(388, 'Guadalupe', 1, 41),
(389, 'Guadalupe', 1, 68),
(390, 'Guaduas', 1, 25),
(391, 'Guaitarilla', 1, 52),
(392, 'Gualmatán', 1, 52),
(393, 'Guamal', 1, 47),
(394, 'Guamal', 1, 50),
(395, 'Guamo', 1, 73),
(396, 'Guapota', 1, 68),
(397, 'Guapí', 1, 19),
(398, 'Guaranda', 1, 70),
(399, 'Guarne', 1, 5),
(400, 'Guasca', 1, 25),
(401, 'Guatapé', 1, 5),
(402, 'Guataquí', 1, 25),
(403, 'Guatavita', 1, 25),
(404, 'Guateque', 1, 15),
(405, 'Guavatá', 1, 68),
(406, 'Guayabal de Siquima', 1, 25),
(407, 'Guayabetal', 1, 25),
(408, 'Guayatá', 1, 15),
(409, 'Guepsa', 1, 68),
(410, 'Guicán', 1, 15),
(411, 'Gutiérrez', 1, 25),
(412, 'Guática', 1, 66),
(413, 'Gámbita', 1, 68),
(414, 'Gámeza', 1, 15),
(415, 'Génova', 1, 63),
(416, 'Gómez Plata', 1, 5),
(417, 'Hacarí', 1, 54),
(418, 'Hatillo de Loba', 1, 13),
(419, 'Hato', 1, 68),
(420, 'Hato Corozal', 1, 85),
(421, 'Hatonuevo', 1, 44),
(422, 'Heliconia', 1, 5),
(423, 'Herrán', 1, 54),
(424, 'Herveo', 1, 73),
(425, 'Hispania', 1, 5),
(426, 'Hobo', 1, 41),
(427, 'Honda', 1, 73),
(428, 'Ibagué', 1, 73),
(429, 'Icononzo', 1, 73),
(430, 'Iles', 1, 52),
(431, 'Imúes', 1, 52),
(432, 'Inzá', 1, 19),
(433, 'Inírida', 1, 94),
(434, 'Ipiales', 1, 52),
(435, 'Isnos', 1, 41),
(436, 'Istmina', 1, 27),
(437, 'Itagüí', 1, 5),
(438, 'Ituango', 1, 5),
(439, 'Izá', 1, 15),
(440, 'Jambaló', 1, 19),
(441, 'Jamundí', 1, 76),
(442, 'Jardín', 1, 5),
(443, 'Jenesano', 1, 15),
(444, 'Jericó', 1, 5),
(445, 'Jericó', 1, 15),
(446, 'Jerusalén', 1, 25),
(447, 'Jesús María', 1, 68),
(448, 'Jordán', 1, 68),
(449, 'Juan de Acosta', 1, 8),
(450, 'Junín', 1, 25),
(451, 'Juradó', 1, 27),
(452, 'La Apartada y La Frontera', 1, 23),
(453, 'La Argentina', 1, 41),
(454, 'La Belleza', 1, 68),
(455, 'La Calera', 1, 25),
(456, 'La Capilla', 1, 15),
(457, 'La Ceja', 1, 5),
(458, 'La Celia', 1, 66),
(459, 'La Cruz', 1, 52),
(460, 'La Cumbre', 1, 76),
(461, 'La Dorada', 1, 17),
(462, 'La Esperanza', 1, 54),
(463, 'La Estrella', 1, 5),
(464, 'La Florida', 1, 52),
(465, 'La Gloria', 1, 20),
(466, 'La Jagua de Ibirico', 1, 20),
(467, 'La Jagua del Pilar', 1, 44),
(468, 'La Llanada', 1, 52),
(469, 'La Macarena', 1, 50),
(470, 'La Merced', 1, 17),
(471, 'La Mesa', 1, 25),
(472, 'La Montañita', 1, 18),
(473, 'La Palma', 1, 25),
(474, 'La Paz', 1, 68),
(475, 'La Paz (Robles)', 1, 20),
(476, 'La Peña', 1, 25),
(477, 'La Pintada', 1, 5),
(478, 'La Plata', 1, 41),
(479, 'La Playa', 1, 54),
(480, 'La Primavera', 1, 99),
(481, 'La Salina', 1, 85),
(482, 'La Sierra', 1, 19),
(483, 'La Tebaida', 1, 63),
(484, 'La Tola', 1, 52),
(485, 'La Unión', 1, 5),
(486, 'La Unión', 1, 52),
(487, 'La Unión', 1, 70),
(488, 'La Unión', 1, 76),
(489, 'La Uvita', 1, 15),
(490, 'La Vega', 1, 19),
(491, 'La Vega', 1, 25),
(492, 'La Victoria', 1, 15),
(493, 'La Victoria', 1, 17),
(494, 'La Victoria', 1, 76),
(495, 'La Virginia', 1, 66),
(496, 'Labateca', 1, 54),
(497, 'Labranzagrande', 1, 15),
(498, 'Landázuri', 1, 68),
(499, 'Lebrija', 1, 68),
(500, 'Leiva', 1, 52),
(501, 'Lejanías', 1, 50),
(502, 'Lenguazaque', 1, 25),
(503, 'Leticia', 1, 91),
(504, 'Liborina', 1, 5),
(505, 'Linares', 1, 52),
(506, 'Lloró', 1, 27),
(507, 'Lorica', 1, 23),
(508, 'Los Córdobas', 1, 23),
(509, 'Los Palmitos', 1, 70),
(510, 'Los Patios', 1, 54),
(511, 'Los Santos', 1, 68),
(512, 'Lourdes', 1, 54),
(513, 'Luruaco', 1, 8),
(514, 'Lérida', 1, 73),
(515, 'Líbano', 1, 73),
(516, 'López (Micay)', 1, 19),
(517, 'Macanal', 1, 15),
(518, 'Macaravita', 1, 68),
(519, 'Maceo', 1, 5),
(520, 'Machetá', 1, 25),
(521, 'Madrid', 1, 25),
(522, 'Magangué', 1, 13),
(523, 'Magüi (Payán)', 1, 52),
(524, 'Mahates', 1, 13),
(525, 'Maicao', 1, 44),
(526, 'Majagual', 1, 70),
(527, 'Malambo', 1, 8),
(528, 'Mallama (Piedrancha)', 1, 52),
(529, 'Manatí', 1, 8),
(530, 'Manaure', 1, 44),
(531, 'Manaure Balcón del Cesar', 1, 20),
(532, 'Manizales', 1, 17),
(533, 'Manta', 1, 25),
(534, 'Manzanares', 1, 17),
(535, 'Maní', 1, 85),
(536, 'Mapiripan', 1, 50),
(537, 'Margarita', 1, 13),
(538, 'Marinilla', 1, 5),
(539, 'Maripí', 1, 15),
(540, 'Mariquita', 1, 73),
(541, 'Marmato', 1, 17),
(542, 'Marquetalia', 1, 17),
(543, 'Marsella', 1, 66),
(544, 'Marulanda', 1, 17),
(545, 'María la Baja', 1, 13),
(546, 'Matanza', 1, 68),
(547, 'Medellín', 1, 5),
(548, 'Medina', 1, 25),
(549, 'Medio Atrato', 1, 27),
(550, 'Medio Baudó', 1, 27),
(551, 'Medio San Juan (ANDAGOYA)', 1, 27),
(552, 'Melgar', 1, 73),
(553, 'Mercaderes', 1, 19),
(554, 'Mesetas', 1, 50),
(555, 'Milán', 1, 18),
(556, 'Miraflores', 1, 15),
(557, 'Miraflores', 1, 95),
(558, 'Miranda', 1, 19),
(559, 'Mistrató', 1, 66),
(560, 'Mitú', 1, 97),
(561, 'Mocoa', 1, 86),
(562, 'Mogotes', 1, 68),
(563, 'Molagavita', 1, 68),
(564, 'Momil', 1, 23),
(565, 'Mompós', 1, 13),
(566, 'Mongua', 1, 15),
(567, 'Monguí', 1, 15),
(568, 'Moniquirá', 1, 15),
(569, 'Montebello', 1, 5),
(570, 'Montecristo', 1, 13),
(571, 'Montelíbano', 1, 23),
(572, 'Montenegro', 1, 63),
(573, 'Monteria', 1, 23),
(574, 'Monterrey', 1, 85),
(575, 'Morales', 1, 13),
(576, 'Morales', 1, 19),
(577, 'Morelia', 1, 18),
(578, 'Morroa', 1, 70),
(579, 'Mosquera', 1, 25),
(580, 'Mosquera', 1, 52),
(581, 'Motavita', 1, 15),
(582, 'Moñitos', 1, 23),
(583, 'Murillo', 1, 73),
(584, 'Murindó', 1, 5),
(585, 'Mutatá', 1, 5),
(586, 'Mutiscua', 1, 54),
(587, 'Muzo', 1, 15),
(588, 'Málaga', 1, 68),
(589, 'Nariño', 1, 5),
(590, 'Nariño', 1, 25),
(591, 'Nariño', 1, 52),
(592, 'Natagaima', 1, 73),
(593, 'Nechí', 1, 5),
(594, 'Necoclí', 1, 5),
(595, 'Neira', 1, 17),
(596, 'Neiva', 1, 41),
(597, 'Nemocón', 1, 25),
(598, 'Nilo', 1, 25),
(599, 'Nimaima', 1, 25),
(600, 'Nobsa', 1, 15),
(601, 'Nocaima', 1, 25),
(602, 'Norcasia', 1, 17),
(603, 'Norosí', 1, 13),
(604, 'Novita', 1, 27),
(605, 'Nueva Granada', 1, 47),
(606, 'Nuevo Colón', 1, 15),
(607, 'Nunchía', 1, 85),
(608, 'Nuquí', 1, 27),
(609, 'Nátaga', 1, 41),
(610, 'Obando', 1, 76),
(611, 'Ocamonte', 1, 68),
(612, 'Ocaña', 1, 54),
(613, 'Oiba', 1, 68),
(614, 'Oicatá', 1, 15),
(615, 'Olaya', 1, 5),
(616, 'Olaya Herrera', 1, 52),
(617, 'Onzaga', 1, 68),
(618, 'Oporapa', 1, 41),
(619, 'Orito', 1, 86),
(620, 'Orocué', 1, 85),
(621, 'Ortega', 1, 73),
(622, 'Ospina', 1, 52),
(623, 'Otanche', 1, 15),
(624, 'Ovejas', 1, 70),
(625, 'Pachavita', 1, 15),
(626, 'Pacho', 1, 25),
(627, 'Padilla', 1, 19),
(628, 'Paicol', 1, 41),
(629, 'Pailitas', 1, 20),
(630, 'Paime', 1, 25),
(631, 'Paipa', 1, 15),
(632, 'Pajarito', 1, 15),
(633, 'Palermo', 1, 41),
(634, 'Palestina', 1, 17),
(635, 'Palestina', 1, 41),
(636, 'Palmar', 1, 68),
(637, 'Palmar de Varela', 1, 8),
(638, 'Palmas del Socorro', 1, 68),
(639, 'Palmira', 1, 76),
(640, 'Palmito', 1, 70),
(641, 'Palocabildo', 1, 73),
(642, 'Pamplona', 1, 54),
(643, 'Pamplonita', 1, 54),
(644, 'Pandi', 1, 25),
(645, 'Panqueba', 1, 15),
(646, 'Paratebueno', 1, 25),
(647, 'Pasca', 1, 25),
(648, 'Patía (El Bordo)', 1, 19),
(649, 'Pauna', 1, 15),
(650, 'Paya', 1, 15),
(651, 'Paz de Ariporo', 1, 85),
(652, 'Paz de Río', 1, 15),
(653, 'Pedraza', 1, 47),
(654, 'Pelaya', 1, 20),
(655, 'Pensilvania', 1, 17),
(656, 'Peque', 1, 5),
(657, 'Pereira', 1, 66),
(658, 'Pesca', 1, 15),
(659, 'Peñol', 1, 5),
(660, 'Piamonte', 1, 19),
(661, 'Pie de Cuesta', 1, 68),
(662, 'Piedras', 1, 73),
(663, 'Piendamó', 1, 19),
(664, 'Pijao', 1, 63),
(665, 'Pijiño', 1, 47),
(666, 'Pinchote', 1, 68),
(667, 'Pinillos', 1, 13),
(668, 'Piojo', 1, 8),
(669, 'Pisva', 1, 15),
(670, 'Pital', 1, 41),
(671, 'Pitalito', 1, 41),
(672, 'Pivijay', 1, 47),
(673, 'Planadas', 1, 73),
(674, 'Planeta Rica', 1, 23),
(675, 'Plato', 1, 47),
(676, 'Policarpa', 1, 52),
(677, 'Polonuevo', 1, 8),
(678, 'Ponedera', 1, 8),
(679, 'Popayán', 1, 19),
(680, 'Pore', 1, 85),
(681, 'Potosí', 1, 52),
(682, 'Pradera', 1, 76),
(683, 'Prado', 1, 73),
(684, 'Providencia', 1, 52),
(685, 'Providencia', 1, 88),
(686, 'Pueblo Bello', 1, 20),
(687, 'Pueblo Nuevo', 1, 23),
(688, 'Pueblo Rico', 1, 66),
(689, 'Pueblorrico', 1, 5),
(690, 'Puebloviejo', 1, 47),
(691, 'Puente Nacional', 1, 68),
(692, 'Puerres', 1, 52),
(693, 'Puerto Asís', 1, 86),
(694, 'Puerto Berrío', 1, 5),
(695, 'Puerto Boyacá', 1, 15),
(696, 'Puerto Caicedo', 1, 86),
(697, 'Puerto Carreño', 1, 99),
(698, 'Puerto Colombia', 1, 8),
(699, 'Puerto Concordia', 1, 50),
(700, 'Puerto Escondido', 1, 23),
(701, 'Puerto Gaitán', 1, 50),
(702, 'Puerto Guzmán', 1, 86),
(703, 'Puerto Leguízamo', 1, 86),
(704, 'Puerto Libertador', 1, 23),
(705, 'Puerto Lleras', 1, 50),
(706, 'Puerto López', 1, 50),
(707, 'Puerto Nare', 1, 5),
(708, 'Puerto Nariño', 1, 91),
(709, 'Puerto Parra', 1, 68),
(710, 'Puerto Rico', 1, 18),
(711, 'Puerto Rico', 1, 50),
(712, 'Puerto Rondón', 1, 81),
(713, 'Puerto Salgar', 1, 25),
(714, 'Puerto Santander', 1, 54),
(715, 'Puerto Tejada', 1, 19),
(716, 'Puerto Triunfo', 1, 5),
(717, 'Puerto Wilches', 1, 68),
(718, 'Pulí', 1, 25),
(719, 'Pupiales', 1, 52),
(720, 'Puracé (Coconuco)', 1, 19),
(721, 'Purificación', 1, 73),
(722, 'Purísima', 1, 23),
(723, 'Pácora', 1, 17),
(724, 'Páez', 1, 15),
(725, 'Páez (Belalcazar)', 1, 19),
(726, 'Páramo', 1, 68),
(727, 'Quebradanegra', 1, 25),
(728, 'Quetame', 1, 25),
(729, 'Quibdó', 1, 27),
(730, 'Quimbaya', 1, 63),
(731, 'Quinchía', 1, 66),
(732, 'Quipama', 1, 15),
(733, 'Quipile', 1, 25),
(734, 'Ragonvalia', 1, 54),
(735, 'Ramiriquí', 1, 15),
(736, 'Recetor', 1, 85),
(737, 'Regidor', 1, 13),
(738, 'Remedios', 1, 5),
(739, 'Remolino', 1, 47),
(740, 'Repelón', 1, 8),
(741, 'Restrepo', 1, 50),
(742, 'Restrepo', 1, 76),
(743, 'Retiro', 1, 5),
(744, 'Ricaurte', 1, 25),
(745, 'Ricaurte', 1, 52),
(746, 'Rio Negro', 1, 68),
(747, 'Rioblanco', 1, 73),
(748, 'Riofrío', 1, 76),
(749, 'Riohacha', 1, 44),
(750, 'Risaralda', 1, 17),
(751, 'Rivera', 1, 41),
(752, 'Roberto Payán (San José)', 1, 52),
(753, 'Roldanillo', 1, 76),
(754, 'Roncesvalles', 1, 73),
(755, 'Rondón', 1, 15),
(756, 'Rosas', 1, 19),
(757, 'Rovira', 1, 73),
(758, 'Ráquira', 1, 15),
(759, 'Río Iró', 1, 27),
(760, 'Río Quito', 1, 27),
(761, 'Río Sucio', 1, 17),
(762, 'Río Viejo', 1, 13),
(763, 'Río de oro', 1, 20),
(764, 'Ríonegro', 1, 5),
(765, 'Ríosucio', 1, 27),
(766, 'Sabana de Torres', 1, 68),
(767, 'Sabanagrande', 1, 8),
(768, 'Sabanalarga', 1, 5),
(769, 'Sabanalarga', 1, 8),
(770, 'Sabanalarga', 1, 85),
(771, 'Sabanas de San Angel (SAN ANGEL)', 1, 47),
(772, 'Sabaneta', 1, 5),
(773, 'Saboyá', 1, 15),
(774, 'Sahagún', 1, 23),
(775, 'Saladoblanco', 1, 41),
(776, 'Salamina', 1, 17),
(777, 'Salamina', 1, 47),
(778, 'Salazar', 1, 54),
(779, 'Saldaña', 1, 73),
(780, 'Salento', 1, 63),
(781, 'Salgar', 1, 5),
(782, 'Samacá', 1, 15),
(783, 'Samaniego', 1, 52),
(784, 'Samaná', 1, 17),
(785, 'Sampués', 1, 70),
(786, 'San Agustín', 1, 41),
(787, 'San Alberto', 1, 20),
(788, 'San Andrés', 1, 68),
(789, 'San Andrés Sotavento', 1, 23),
(790, 'San Andrés de Cuerquía', 1, 5),
(791, 'San Antero', 1, 23),
(792, 'San Antonio', 1, 73),
(793, 'San Antonio de Tequendama', 1, 25),
(794, 'San Benito', 1, 68),
(795, 'San Benito Abad', 1, 70),
(796, 'San Bernardo', 1, 25),
(797, 'San Bernardo', 1, 52),
(798, 'San Bernardo del Viento', 1, 23),
(799, 'San Calixto', 1, 54),
(800, 'San Carlos', 1, 5),
(801, 'San Carlos', 1, 23),
(802, 'San Carlos de Guaroa', 1, 50),
(803, 'San Cayetano', 1, 25),
(804, 'San Cayetano', 1, 54),
(805, 'San Cristobal', 1, 13),
(806, 'San Diego', 1, 20),
(807, 'San Eduardo', 1, 15),
(808, 'San Estanislao', 1, 13),
(809, 'San Fernando', 1, 13),
(810, 'San Francisco', 1, 5),
(811, 'San Francisco', 1, 25),
(812, 'San Francisco', 1, 86),
(813, 'San Gíl', 1, 68),
(814, 'San Jacinto', 1, 13),
(815, 'San Jacinto del Cauca', 1, 13),
(816, 'San Jerónimo', 1, 5),
(817, 'San Joaquín', 1, 68),
(818, 'San José', 1, 17),
(819, 'San José de Miranda', 1, 68),
(820, 'San José de Montaña', 1, 5),
(821, 'San José de Pare', 1, 15),
(822, 'San José de Uré', 1, 23),
(823, 'San José del Fragua', 1, 18),
(824, 'San José del Guaviare', 1, 95),
(825, 'San José del Palmar', 1, 27),
(826, 'San Juan de Arama', 1, 50),
(827, 'San Juan de Betulia', 1, 70),
(828, 'San Juan de Nepomuceno', 1, 13),
(829, 'San Juan de Pasto', 1, 52),
(830, 'San Juan de Río Seco', 1, 25),
(831, 'San Juan de Urabá', 1, 5),
(832, 'San Juan del Cesar', 1, 44),
(833, 'San Juanito', 1, 50),
(834, 'San Lorenzo', 1, 52),
(835, 'San Luis', 1, 73),
(836, 'San Luís', 1, 5),
(837, 'San Luís de Gaceno', 1, 15),
(838, 'San Luís de Palenque', 1, 85),
(839, 'San Marcos', 1, 70),
(840, 'San Martín', 1, 20),
(841, 'San Martín', 1, 50),
(842, 'San Martín de Loba', 1, 13),
(843, 'San Mateo', 1, 15),
(844, 'San Miguel', 1, 68),
(845, 'San Miguel', 1, 86),
(846, 'San Miguel de Sema', 1, 15),
(847, 'San Onofre', 1, 70),
(848, 'San Pablo', 1, 13),
(849, 'San Pablo', 1, 52),
(850, 'San Pablo de Borbur', 1, 15),
(851, 'San Pedro', 1, 5),
(852, 'San Pedro', 1, 70),
(853, 'San Pedro', 1, 76),
(854, 'San Pedro de Cartago', 1, 52),
(855, 'San Pedro de Urabá', 1, 5),
(856, 'San Pelayo', 1, 23),
(857, 'San Rafael', 1, 5),
(858, 'San Roque', 1, 5),
(859, 'San Sebastián', 1, 19),
(860, 'San Sebastián de Buenavista', 1, 47),
(861, 'San Vicente', 1, 5),
(862, 'San Vicente del Caguán', 1, 18),
(863, 'San Vicente del Chucurí', 1, 68),
(864, 'San Zenón', 1, 47),
(865, 'Sandoná', 1, 52),
(866, 'Santa Ana', 1, 47),
(867, 'Santa Bárbara', 1, 5),
(868, 'Santa Bárbara', 1, 68),
(869, 'Santa Bárbara (Iscuandé)', 1, 52),
(870, 'Santa Bárbara de Pinto', 1, 47),
(871, 'Santa Catalina', 1, 13),
(872, 'Santa Fé de Antioquia', 1, 5),
(873, 'Santa Genoveva de Docorodó', 1, 27),
(874, 'Santa Helena del Opón', 1, 68),
(875, 'Santa Isabel', 1, 73),
(876, 'Santa Lucía', 1, 8),
(877, 'Santa Marta', 1, 47),
(878, 'Santa María', 1, 15),
(879, 'Santa María', 1, 41),
(880, 'Santa Rosa', 1, 13),
(881, 'Santa Rosa', 1, 19),
(882, 'Santa Rosa de Cabal', 1, 66),
(883, 'Santa Rosa de Osos', 1, 5),
(884, 'Santa Rosa de Viterbo', 1, 15),
(885, 'Santa Rosa del Sur', 1, 13),
(886, 'Santa Rosalía', 1, 99),
(887, 'Santa Sofía', 1, 15),
(888, 'Santana', 1, 15),
(889, 'Santander de Quilichao', 1, 19),
(890, 'Santiago', 1, 54),
(891, 'Santiago', 1, 86),
(892, 'Santo Domingo', 1, 5),
(893, 'Santo Tomás', 1, 8),
(894, 'Santuario', 1, 5),
(895, 'Santuario', 1, 66),
(896, 'Sapuyes', 1, 52),
(897, 'Saravena', 1, 81),
(898, 'Sardinata', 1, 54),
(899, 'Sasaima', 1, 25),
(900, 'Sativanorte', 1, 15),
(901, 'Sativasur', 1, 15),
(902, 'Segovia', 1, 5),
(903, 'Sesquilé', 1, 25),
(904, 'Sevilla', 1, 76),
(905, 'Siachoque', 1, 15),
(906, 'Sibaté', 1, 25),
(907, 'Sibundoy', 1, 86),
(908, 'Silos', 1, 54),
(909, 'Silvania', 1, 25),
(910, 'Silvia', 1, 19),
(911, 'Simacota', 1, 68),
(912, 'Simijaca', 1, 25),
(913, 'Simití', 1, 13),
(914, 'Sincelejo', 1, 70),
(915, 'Sincé', 1, 70),
(916, 'Sipí', 1, 27),
(917, 'Sitionuevo', 1, 47),
(918, 'Soacha', 1, 25),
(919, 'Soatá', 1, 15),
(920, 'Socha', 1, 15),
(921, 'Socorro', 1, 68),
(922, 'Socotá', 1, 15),
(923, 'Sogamoso', 1, 15),
(924, 'Solano', 1, 18),
(925, 'Soledad', 1, 8),
(926, 'Solita', 1, 18),
(927, 'Somondoco', 1, 15),
(928, 'Sonsón', 1, 5),
(929, 'Sopetrán', 1, 5),
(930, 'Soplaviento', 1, 13),
(931, 'Sopó', 1, 25),
(932, 'Sora', 1, 15),
(933, 'Soracá', 1, 15),
(934, 'Sotaquirá', 1, 15),
(935, 'Sotara (Paispamba)', 1, 19),
(936, 'Sotomayor (Los Andes)', 1, 52),
(937, 'Suaita', 1, 68),
(938, 'Suan', 1, 8),
(939, 'Suaza', 1, 41),
(940, 'Subachoque', 1, 25),
(941, 'Sucre', 1, 19),
(942, 'Sucre', 1, 68),
(943, 'Sucre', 1, 70),
(944, 'Suesca', 1, 25),
(945, 'Supatá', 1, 25),
(946, 'Supía', 1, 17),
(947, 'Suratá', 1, 68),
(948, 'Susa', 1, 25),
(949, 'Susacón', 1, 15),
(950, 'Sutamarchán', 1, 15),
(951, 'Sutatausa', 1, 25),
(952, 'Sutatenza', 1, 15),
(953, 'Suárez', 1, 19),
(954, 'Suárez', 1, 73),
(955, 'Sácama', 1, 85),
(956, 'Sáchica', 1, 15),
(957, 'Tabio', 1, 25),
(958, 'Tadó', 1, 27),
(959, 'Talaigua Nuevo', 1, 13),
(960, 'Tamalameque', 1, 20),
(961, 'Tame', 1, 81),
(962, 'Taminango', 1, 52),
(963, 'Tangua', 1, 52),
(964, 'Taraira', 1, 97),
(965, 'Tarazá', 1, 5),
(966, 'Tarqui', 1, 41),
(967, 'Tarso', 1, 5),
(968, 'Tasco', 1, 15),
(969, 'Tauramena', 1, 85),
(970, 'Tausa', 1, 25),
(971, 'Tello', 1, 41),
(972, 'Tena', 1, 25),
(973, 'Tenerife', 1, 47),
(974, 'Tenjo', 1, 25),
(975, 'Tenza', 1, 15),
(976, 'Teorama', 1, 54),
(977, 'Teruel', 1, 41),
(978, 'Tesalia', 1, 41),
(979, 'Tibacuy', 1, 25),
(980, 'Tibaná', 1, 15),
(981, 'Tibasosa', 1, 15),
(982, 'Tibirita', 1, 25),
(983, 'Tibú', 1, 54),
(984, 'Tierralta', 1, 23),
(985, 'Timaná', 1, 41),
(986, 'Timbiquí', 1, 19),
(987, 'Timbío', 1, 19),
(988, 'Tinjacá', 1, 15),
(989, 'Tipacoque', 1, 15),
(990, 'Tiquisio (Puerto Rico)', 1, 13),
(991, 'Titiribí', 1, 5),
(992, 'Toca', 1, 15),
(993, 'Tocaima', 1, 25),
(994, 'Tocancipá', 1, 25),
(995, 'Toguí', 1, 15),
(996, 'Toledo', 1, 5),
(997, 'Toledo', 1, 54),
(998, 'Tolú', 1, 70),
(999, 'Tolú Viejo', 1, 70),
(1000, 'Tona', 1, 68),
(1001, 'Topagá', 1, 15),
(1002, 'Topaipí', 1, 25),
(1003, 'Toribío', 1, 19),
(1004, 'Toro', 1, 76),
(1005, 'Tota', 1, 15),
(1006, 'Totoró', 1, 19),
(1007, 'Trinidad', 1, 85),
(1008, 'Trujillo', 1, 76),
(1009, 'Tubará', 1, 8),
(1010, 'Tuchín', 1, 23),
(1011, 'Tulúa', 1, 76),
(1012, 'Tumaco', 1, 52),
(1013, 'Tunja', 1, 15),
(1014, 'Tunungua', 1, 15),
(1015, 'Turbaco', 1, 13),
(1016, 'Turbaná', 1, 13),
(1017, 'Turbo', 1, 5),
(1018, 'Turmequé', 1, 15),
(1019, 'Tuta', 1, 15),
(1020, 'Tutasá', 1, 15),
(1021, 'Támara', 1, 85),
(1022, 'Támesis', 1, 5),
(1023, 'Túquerres', 1, 52),
(1024, 'Ubalá', 1, 25),
(1025, 'Ubaque', 1, 25),
(1026, 'Ubaté', 1, 25),
(1027, 'Ulloa', 1, 76),
(1028, 'Une', 1, 25),
(1029, 'Unguía', 1, 27),
(1030, 'Unión Panamericana (ÁNIMAS)', 1, 27),
(1031, 'Uramita', 1, 5),
(1032, 'Uribe', 1, 50),
(1033, 'Uribia', 1, 44),
(1034, 'Urrao', 1, 5),
(1035, 'Urumita', 1, 44),
(1036, 'Usiacuri', 1, 8),
(1037, 'Valdivia', 1, 5),
(1038, 'Valencia', 1, 23),
(1039, 'Valle de San José', 1, 68),
(1040, 'Valle de San Juan', 1, 73),
(1041, 'Valle del Guamuez', 1, 86),
(1042, 'Valledupar', 1, 20),
(1043, 'Valparaiso', 1, 5),
(1044, 'Valparaiso', 1, 18),
(1045, 'Vegachí', 1, 5),
(1046, 'Venadillo', 1, 73),
(1047, 'Venecia', 1, 5),
(1048, 'Venecia (Ospina Pérez)', 1, 25),
(1049, 'Ventaquemada', 1, 15),
(1050, 'Vergara', 1, 25),
(1051, 'Versalles', 1, 76),
(1052, 'Vetas', 1, 68),
(1053, 'Viani', 1, 25),
(1054, 'Vigía del Fuerte', 1, 5),
(1055, 'Vijes', 1, 76),
(1056, 'Villa Caro', 1, 54),
(1057, 'Villa Rica', 1, 19),
(1058, 'Villa de Leiva', 1, 15),
(1059, 'Villa del Rosario', 1, 54),
(1060, 'Villagarzón', 1, 86),
(1061, 'Villagómez', 1, 25),
(1062, 'Villahermosa', 1, 73),
(1063, 'Villamaría', 1, 17),
(1064, 'Villanueva', 1, 13),
(1065, 'Villanueva', 1, 44),
(1066, 'Villanueva', 1, 68),
(1067, 'Villanueva', 1, 85),
(1068, 'Villapinzón', 1, 25),
(1069, 'Villarrica', 1, 73),
(1070, 'Villavicencio', 1, 50),
(1071, 'Villavieja', 1, 41),
(1072, 'Villeta', 1, 25),
(1073, 'Viotá', 1, 25),
(1074, 'Viracachá', 1, 15),
(1075, 'Vista Hermosa', 1, 50),
(1076, 'Viterbo', 1, 17),
(1077, 'Vélez', 1, 68),
(1078, 'Yacopí', 1, 25),
(1079, 'Yacuanquer', 1, 52),
(1080, 'Yaguará', 1, 41),
(1081, 'Yalí', 1, 5),
(1082, 'Yarumal', 1, 5),
(1083, 'Yolombó', 1, 5),
(1084, 'Yondó (Casabe)', 1, 5),
(1085, 'Yopal', 1, 85),
(1086, 'Yotoco', 1, 76),
(1087, 'Yumbo', 1, 76),
(1088, 'Zambrano', 1, 13),
(1089, 'Zapatoca', 1, 68),
(1090, 'Zapayán (PUNTA DE PIEDRAS)', 1, 47),
(1091, 'Zaragoza', 1, 5),
(1092, 'Zarzal', 1, 76),
(1093, 'Zetaquirá', 1, 15),
(1094, 'Zipacón', 1, 25),
(1095, 'Zipaquirá', 1, 25),
(1096, 'Zona Bananera (PRADO - SEVILLA)', 1, 47),
(1097, 'Ábrego', 1, 54),
(1098, 'Íquira', 1, 41),
(1099, 'Úmbita', 1, 15),
(1100, 'Útica', 1, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `idProceso` int(10) UNSIGNED NOT NULL,
  `proceso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proceso`
--

INSERT INTO `proceso` (`idProceso`, `proceso`) VALUES
(1, 'Estratégicos '),
(2, 'Misionales'),
(3, 'Apoyo'),
(4, 'Evaluación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursorbac_rol`
--

CREATE TABLE `recursorbac_rol` (
  `idRecurso` int(10) UNSIGNED NOT NULL,
  `idRol` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recursorbac_rol`
--

INSERT INTO `recursorbac_rol` (`idRecurso`, `idRol`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos_rbac`
--

CREATE TABLE `recursos_rbac` (
  `idRecurso` int(10) UNSIGNED NOT NULL,
  `recurso` varchar(80) NOT NULL,
  `metodo` varchar(80) NOT NULL,
  `estado` enum('Activo','Eliminado') NOT NULL,
  `registradopor` varchar(100) NOT NULL,
  `modificadopor` varchar(100) NOT NULL,
  `fechahorareg` datetime NOT NULL,
  `fechahoramod` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recursos_rbac`
--

INSERT INTO `recursos_rbac` (`idRecurso`, `recurso`, `metodo`, `estado`, `registradopor`, `modificadopor`, `fechahorareg`, `fechahoramod`) VALUES
(1, 'Usermanager\\Controller\\PerfilController.index', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Usermanager\\Controller\\PerfilController.cambiarfoto', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Usermanager\\Controller\\PerfilController.cambiarfoto', 'POST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Usermanager\\Controller\\PerfilController.editar', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Usermanager\\Controller\\PerfilController.editar', 'POST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Usermanager\\Controller\\PerfilController.cambiarpassword', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Usermanager\\Controller\\PerfilController.cambiarpassword', 'POST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Usermanager\\Controller\\EmpleadoclienteController.index', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Usermanager\\Controller\\EmpleadoclienteController.registrar', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Usermanager\\Controller\\EmpleadoclienteController.registrar', 'POST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Usermanager\\Controller\\EmpleadoclienteController.editar', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Usermanager\\Controller\\EmpleadoclienteController.editar', 'POST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Usermanager\\Controller\\EmpleadoclienteController.detalle', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Usermanager\\Controller\\EmpleadoclienteController.eliminar', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Usermanager\\Controller\\EmpleadoclienteController.eliminar', 'POST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Usermanager\\Controller\\EmpleadoclienteController.existeidentificacion', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Administracion\\Controller\\ArchivoController.index', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Administracion\\Controller\\ArchivoController.registrar', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Administracion\\Controller\\ArchivoController.registrar', 'POST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Administracion\\Controller\\ArchivoController.editar', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Administracion\\Controller\\ArchivoController.editar', 'POST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Administracion\\Controller\\ArchivoController.detalle', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Administracion\\Controller\\ArchivoController.eliminar', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Administracion\\Controller\\ArchivoController.eliminar', 'POST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Administracion\\Controller\\ArchivoController.activar', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Administracion\\Controller\\ArchivoController.activar', 'POST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Administracion\\Controller\\ArchivoController.verArchivo', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Administracion\\Controller\\ArchivoController.actualizararchivo', 'GET', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Administracion\\Controller\\ArchivoController.actualizararchivo', 'POST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRol` int(10) UNSIGNED NOT NULL,
  `rol` varchar(80) NOT NULL,
  `estado` enum('Activo','Eliminado') NOT NULL,
  `registradopor` varchar(100) NOT NULL,
  `modificadopor` varchar(100) NOT NULL,
  `fechahorareg` datetime NOT NULL,
  `fechahoramod` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `rol`, `estado`, `registradopor`, `modificadopor`, `fechahorareg`, `fechahoramod`) VALUES
(1, 'SuperUsuario', 'Activo', 'jnunez', 'jnunez', '2023-11-02 23:54:34', '2023-11-08 16:34:00'),
(2, 'Administrador', 'Activo', 'jnunez', 'jnunez', '2023-11-03 03:16:23', '2023-11-08 16:34:13'),
(3, 'Editor', 'Activo', 'jnunez', '', '2023-11-08 16:34:24', '0000-00-00 00:00:00'),
(4, 'Visitante', 'Activo', 'jnunez', '', '2023-11-08 16:34:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `idSolicitud` int(11) NOT NULL,
  `idMunicipio` int(10) UNSIGNED NOT NULL,
  `tipoIdentificacion` enum('Cedula','Tarjeta de Identidad','Pasaporte') NOT NULL,
  `identificacion` varchar(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `genero` enum('Masculino','Femenino') NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `comentario` text NOT NULL,
  `fechahorareg` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`idSolicitud`, `idMunicipio`, `tipoIdentificacion`, `identificacion`, `nombre`, `apellido`, `genero`, `telefono`, `correo`, `direccion`, `comentario`, `fechahorareg`) VALUES
(1, 679, 'Cedula', '1061730370', 'Jimmy Andrés', 'Núñez Astduillo', 'Masculino', '3206048323', 'jimmy-9010@hotmail.com', 'Car 20A # 2-14 B/Pandiguando', 'Hola mundo compañeros de la Universidad del Cauca.', '2023-09-25 11:47:40'),
(2, 679, 'Cedula', '34550334', 'Rubiela', 'Astudillo Espinosa', 'Femenino', '3206053503', 'rubiela600718@gmail.com', 'Car  20A #2-14 B/Pandiguando', 'Hola mundo desde el Hospital Universitario de Cali.', '2023-09-25 13:26:40'),
(3, 679, 'Cedula', '25279114', 'Beatriz Eugenia', 'Cucuñame Valencia', 'Femenino', '3166168147', 'beatrizeu2006@gmail.com', 'Manzana 13 Casa 10 Apartamento 101', 'Hola mundo desde el Barrio Tomas Cipriano de Mosquera.', '2023-09-27 17:37:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subproceso`
--

CREATE TABLE `subproceso` (
  `idSubproceso` int(11) UNSIGNED NOT NULL,
  `idTipoProceso` int(11) UNSIGNED NOT NULL,
  `subproceso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `subproceso`
--

INSERT INTO `subproceso` (`idSubproceso`, `idTipoProceso`, `subproceso`) VALUES
(1, 1, 'Relaciones Interinstitucionales e Internacionales'),
(2, 1, 'Gestión de las Comunicaciones'),
(3, 1, 'Secretaría General'),
(4, 2, 'Gestión de la Planeación y Desarrollo Institucional'),
(5, 3, 'Gestión de la Certificación'),
(6, 3, 'Gestión de la Acreditación'),
(7, 3, 'Gestión Ambiental'),
(8, 4, 'Gestión Curricular'),
(9, 4, 'Gestión de Facultades y programas Académicos'),
(10, 4, 'Servicios de laboratorio de apoyo a la docencia'),
(11, 5, 'Gestión de la Investigación'),
(12, 5, 'Gestión editorial'),
(13, 5, 'Gestión de transferencia del conocimiento'),
(14, 6, 'Gestión del bienestar universitario'),
(15, 6, 'Gestión de la cultura'),
(16, 6, 'Gestión de la formación humana'),
(17, 6, 'Gestión administrativa unisalud'),
(18, 6, 'Gestión asistencial unisalud'),
(19, 7, 'Apoyo Administrativo'),
(20, 7, 'Gestión del Talento Humano'),
(21, 7, 'Gestión financiera'),
(22, 7, 'Gestión del Mantenimiento de Bienes Muebles, Inmuebles y Equipos'),
(23, 7, 'Gestión Jurídica'),
(24, 7, 'Gestión de bienes y servicios'),
(25, 7, 'Gestión de recursos tecnológicos'),
(26, 7, 'Gestión admisiones, registro y control académico'),
(27, 7, 'Gestión documental'),
(28, 7, 'Gestión recursos bibliográficos'),
(29, 7, 'Gestión de la seguridad y movilidad'),
(30, 7, 'Gestión de Seguridad y Salud en el Trabajo'),
(31, 8, 'Gestión del Control y del Mejoramiento Continuo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_proceso`
--

CREATE TABLE `tipo_proceso` (
  `idTipoProceso` int(10) UNSIGNED NOT NULL,
  `idProceso` int(10) UNSIGNED NOT NULL,
  `tipoProceso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_proceso`
--

INSERT INTO `tipo_proceso` (`idTipoProceso`, `idProceso`, `tipoProceso`) VALUES
(1, 1, 'Gestión de la Dirección Universitaria'),
(2, 1, 'Gestión de la Planeación y Desarrollo Institucional'),
(3, 1, 'Gestión de la Calidad'),
(4, 2, 'Gestión Académica'),
(5, 2, 'Gestión de la Investigación, Innovación e Interacción Social'),
(6, 3, 'Gestión de la cultura y bienestar'),
(7, 3, 'Gestión Administrativa Financiera'),
(8, 4, 'Gestión de control y mejoramiento continuo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `idEmpleadoCliente` int(10) UNSIGNED DEFAULT NULL,
  `usuario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwordseguro` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('Activo','Bloqueado','Eliminado','Registrado') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `registradopor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modificadopor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechahorareg` datetime NOT NULL,
  `fechahoramod` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `idEmpleadoCliente`, `usuario`, `login`, `password`, `passwordseguro`, `foto`, `estado`, `registradopor`, `modificadopor`, `fechahorareg`, `fechahoramod`) VALUES
(1, 1, 'Jimmy Andrés Núñez Astudillo', 'jnunez', '$2y$10$PQVWpXJjAS8rGXLlu/JpHOzcHZmXMSjt8BJYOHEHO0AkbL3JwtX2K', 'F0rc3@rmy4lfa', '521AAFCE422405BC074A4A1EB42B9125.jpg', 'Activo', 'Sistema', 'jnunez', '2022-04-11 16:24:29', '2023-09-20 13:15:40'),
(2, 2, 'PORTAL WEB', 'pweb', '$2y$10$uWqES2yFs.MIBKN7klaequ6JjL/GxjiLFcimq/hIoMjb9cKdVBpXi', 'C0nTr4s3n14P0rtalWeb', 'perfilHombre.png', 'Activo', 'jnunez', 'pweb', '2023-11-02 14:48:33', '2023-11-02 14:49:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `idRol` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`idUsuario`, `idRol`) VALUES
(1, 1),
(2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`idArchivo`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  ADD PRIMARY KEY (`idDependencia`);

--
-- Indices de la tabla `empleadocliente`
--
ALTER TABLE `empleadocliente`
  ADD PRIMARY KEY (`idEmpleadoCliente`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`idEvento`);

--
-- Indices de la tabla `lvmen`
--
ALTER TABLE `lvmen`
  ADD PRIMARY KEY (`idLvmen`),
  ADD KEY `idSubproceso` (`idSubproceso`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`idMunicipio`),
  ADD KEY `departamento_id` (`idDepartamento`);

--
-- Indices de la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`idProceso`);

--
-- Indices de la tabla `recursorbac_rol`
--
ALTER TABLE `recursorbac_rol`
  ADD PRIMARY KEY (`idRecurso`,`idRol`),
  ADD KEY `idRol` (`idRol`);

--
-- Indices de la tabla `recursos_rbac`
--
ALTER TABLE `recursos_rbac`
  ADD PRIMARY KEY (`idRecurso`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`idSolicitud`);

--
-- Indices de la tabla `subproceso`
--
ALTER TABLE `subproceso`
  ADD PRIMARY KEY (`idSubproceso`),
  ADD KEY `idTipoProceso` (`idTipoProceso`);

--
-- Indices de la tabla `tipo_proceso`
--
ALTER TABLE `tipo_proceso`
  ADD PRIMARY KEY (`idTipoProceso`),
  ADD KEY `idProceso` (`idProceso`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idEmpleado` (`idEmpleadoCliente`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`idUsuario`,`idRol`),
  ADD KEY `idRol` (`idRol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `idArchivo` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `idDepartamento` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  MODIFY `idDependencia` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT de la tabla `empleadocliente`
--
ALTER TABLE `empleadocliente`
  MODIFY `idEmpleadoCliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `idEvento` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `lvmen`
--
ALTER TABLE `lvmen`
  MODIFY `idLvmen` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `idMunicipio` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT de la tabla `proceso`
--
ALTER TABLE `proceso`
  MODIFY `idProceso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `recursos_rbac`
--
ALTER TABLE `recursos_rbac`
  MODIFY `idRecurso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `idSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `subproceso`
--
ALTER TABLE `subproceso`
  MODIFY `idSubproceso` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `tipo_proceso`
--
ALTER TABLE `tipo_proceso`
  MODIFY `idTipoProceso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lvmen`
--
ALTER TABLE `lvmen`
  ADD CONSTRAINT `lvmen_ibfk_1` FOREIGN KEY (`idSubproceso`) REFERENCES `subproceso` (`idSubproceso`);

--
-- Filtros para la tabla `recursorbac_rol`
--
ALTER TABLE `recursorbac_rol`
  ADD CONSTRAINT `recursorbac_rol_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`),
  ADD CONSTRAINT `recursorbac_rol_ibfk_2` FOREIGN KEY (`idRecurso`) REFERENCES `recursos_rbac` (`idRecurso`);

--
-- Filtros para la tabla `subproceso`
--
ALTER TABLE `subproceso`
  ADD CONSTRAINT `subproceso_ibfk_1` FOREIGN KEY (`idTipoProceso`) REFERENCES `tipo_proceso` (`idTipoProceso`);

--
-- Filtros para la tabla `tipo_proceso`
--
ALTER TABLE `tipo_proceso`
  ADD CONSTRAINT `tipo_proceso_ibfk_1` FOREIGN KEY (`idProceso`) REFERENCES `proceso` (`idProceso`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `usuario_rol_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`),
  ADD CONSTRAINT `usuario_rol_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
