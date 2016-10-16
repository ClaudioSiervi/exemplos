
:: Comentários podem ser feitos por REM ou ::
:: start /min Leitura.bat ^& exir REM Esta linha executa um programa no cmd minimizado e então fecha o cmd

:: Seleciona pasta do executável
set R_Script="C:\Program Files\R\R-2.15.2\bin\RScript.exe"
:: Seleciona a pasta raíz deste arquivo
set Caminho=%~dp0
set Caminho=%Caminho:\=/%


:: Executa a rotina.R no programa R_Script e passa como parametro o caminho desta pasta
%R_Script% teste.R %Caminho%
::%~dp0
::2010-01-28 example 100 > exmpl.batch 2>&1
::%R_Script% exmpl.R 2010-01-28 example 100 > exmpl.batch 2>&1


::set R_TERM="C:\Program Files\R\R-2.15.2\bin\i386\Rterm.exe"
::%R_TERM% --no-restore --no-save --args 2010-01-28 example 100 < exmpl.R > exmpl.batch 2>&1
