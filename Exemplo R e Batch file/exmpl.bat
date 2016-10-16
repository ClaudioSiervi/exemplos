set R_Script="C:\Program Files\R\R-2.15.2\bin\RScript.exe"	
%R_Script% exmpl.R 2010-01-28 example 100  %~dp0 > exmpl.batch 2>&1

::set R_TERM="C:\Program Files\R\R-2.15.2\bin\i386\Rterm.exe"
::%R_TERM% --no-restore --no-save --args 2010-01-28 example 100 %~dp0 < exmpl.R > exmpl.batch 2>&1