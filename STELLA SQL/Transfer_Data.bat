:: NOTE >> BCP Arguments
:: You may not require the -U sa & -P hpser log in arguments at all depending how you DB is set up
:: If the instance of SQL server is local, you may not need the server -S <server name> arg either

:: Imports data from SQL DB to CSV file for to prepare for importing into iThink model
BCP Simulation.dbo.Import_Data out import.csv -c -t, -U <user name> -P <password> -S <server name>

:: Run iThink model that import settings from the CSV that was just populated from the DB
"%PROGRAMFILES%\isee systems\iThink 9.1.4\iThink.exe" -i -r -nq Supply_Chain.itm