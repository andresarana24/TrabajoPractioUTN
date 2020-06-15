// TRABAJO PRÁCTICO 2.
// Fecha: .
// Integrantes: Andrés Arana Castillo.
// Comisión: 114.

program tp1;

uses Crt;

//################################################################################
//################################################################################
// SUBPROGRAMA IMPRIMIR MENU:

procedure imprimirMenu();
   begin
   clrscr;
   writeln('MENU DE OPCIONES:');
   writeln('1 - PROVINCIAS');
   writeln('2 - SINTOMAS');
   writeln('3 - ENFERMEDADES');
   writeln('4 - PACIENTES');
   writeln('5 - HISTORIAS CLINICAS');
   writeln('6 - ESTADISTICAS');
   writeln('0 - SALIR');
   end;

//################################################################################
//################################################################################
// SUBPROGRAMA MENU OPCIONES:

procedure menuOpciones(var opc: integer);
   begin
   imprimirMenu();
   repeat
      write('Seleccione opcion: ');
      readln(opc);
      if (opc < 0) or (opc > 6) then
         writeln('Opcion seleccionada INCORRECTA!!');
   until ((opc >= 0) and (opc <= 6));
   end;

//################################################################################
//################################################################################
// SUBPROGRAMA EN CONSTRUCION:

procedure enConstruccion(msg: string[30]);
   begin
   writeln(msg);
   writeln('En construccion.');
   write('Presione Enter para continuar...');
   readln();
   end;

//################################################################################
//################################################################################
// SUBPROGRAMA PROVINCIAS:

procedure menuProvincias();
   var cont, i: integer;
   var cod_prov: char;
   var det_prov: string[20];

   begin
   writeln('1 - PROVINCIAS:');
   writeln('Carga de todas las provincias con sus respectivos codigos y nombres.');
   cont := 0;
   for i := 1 to 24 do
      begin
      write('Ingrese el codigo de la provincia ', i, ': ');
      readln(cod_prov);
      write('Ingrese el nombre de la provincia ', i, ': ');
      readln(det_prov);
      if det_prov[1] = 'S' then
         cont := cont + 1;
      end;
   writeln('Existen ', cont, ' provincias que empiezan con la letra S.');
   write('Presione Enter para continuar...');
   readln();
   end;

//################################################################################
//################################################################################
// SUBPROGRAMA INICIAR VAR PACIENTES:

procedure iniciarVarPacientes(var edM, cont, cur: integer; var prm: real; var preg1, preg2: char);
   begin
   edM := 0;
   cont := 0;
   cur := 0;
   prm := 0;
   preg1 := ' ';
   preg2 := ' ';
   end;

//################################################################################
//################################################################################
// SUBPROGRAMA PREGUNTAR:

procedure preguntar(msg: string[30]; var resp: char);
   begin
   repeat
      write(msg);
      readln(resp);
      if (resp <> 's') and (resp <> 'n') then
         writeln('Opcion seleccionada INCORRECTA!!');
   until (resp = 's') or (resp = 'n');
   end;

//################################################################################
//################################################################################
// SUBPROGRAMA ASIGNAR VALORES:

procedure asignarValores(dni: string[8]; edad: integer; preg: char; var edM, cont, cur: integer; var prm: real; var  dniM: string[8]);
   begin
   prm := prm + edad;
   cont := cont + 1;
   if preg = 's' then
      cur := cur + 1;
   if edM < edad then
      begin
      dniM := dni;
      edM := edad;
      end;
   end;

//################################################################################
//################################################################################
// SUBPROGRAMA MOSTRAR VALORES:

procedure mostrarValores(prm: real; cur, edM: integer; dniM: string[8]);
   begin
   writeln('El promedio de edad de todos los pacientes ingresados es ', prm:2:1, ' anios.');
   writeln('Se curaron ', cur, ' pacientes.');
   writeln('El paciente con mayor edad afectado por esta enfermedad es el identificado con DNI ', dniM, ' y tiene ', edM, ' anios.');
   write('Presione Enter para continuar...');
   readln();
   end;

//################################################################################
//################################################################################
// SUBPROGRAMA PACIENTES:

procedure menuPacientes();
   var edad, cont, edM, cur: integer;
   var prm: real;
   var dni, dniM: string[8];
   var preg1, preg2: char;

   begin
   writeln('4 - PACIENTES:');
   writeln('Alta de todos los pacientes, donde se deben ingresar DNI, edad y si esta o no curado.');
   iniciarVarPacientes(edM, cont, cur, prm, preg1, preg2);
   repeat
      preguntar('Agregar paciente? (s/n): ', preg1);
      if preg1 = 's' then
         begin
         write('Ingrese DNI del paciente: ');
         readln(dni);
         write('Ingrese edad del paciente: ');
         readln(edad);
         preguntar('Paciente curado?: ', preg2);
         asignarValores(dni, edad, preg2, edM, cont, cur, prm, dniM);
         end;
   until preg1 = 'n';
   if cont > 0 then
      begin
      prm := prm / cont;
      mostrarValores(prm, cur, edM, dniM);
      end;
   end;

//################################################################################
//################################################################################
// SUBPROGRAMA EJECUTAR OPCION:

procedure ejecutarOpcion(opc: integer);
   begin
   clrscr();
   case opc of
      1: menuProvincias();
      2: enConstruccion('2 - SINTOMAS:');
      3: enConstruccion('3 - ENFERMEDADES:');
      4: menuPacientes();
      5: enConstruccion('5 - HISTORIAS CLINICAS:');
      6: enConstruccion('6 - ESTADISTICAS:');
      end;
   end;

//################################################################################
//################################################################################
// PROGRAMA PRINCIPAL:

var opcion: integer;

begin
   opcion := 0;
   repeat
      menuOpciones(opcion);
      ejecutarOpcion(opcion);
   until opcion = 0;
end.
