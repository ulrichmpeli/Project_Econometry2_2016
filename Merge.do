* PREPARATION DE LA BASE DE DONNEES (Fusion des bases: en ajout des variables)

use "G:\eec12_indiv12_dbase\indiv123.dta", clear
sort  ident noi trim
save "G:\eec12_indiv12_dbase\indiv123.dta", replace

use "G:\eec12_indiv12_dbase\indiv122.dta", clear
sort  ident noi trim
save "G:\eec12_indiv12_dbase\indiv122.dta", replace

use "G:\eec12_indiv12_dbase\indiv121.dta", clear
sort  ident noi trim

merge  ident noi trim using  "G:\eec12_indiv12_dbase\indiv122.dta"
tab  _merge
save "F:\ENSAE\2A\Semestre 2\Econometrie 2\Bases\bon\prepa.dta"
drop _merge

use "F:\ENSAE\2A\Semestre 2\Econometrie 2\Bases\bon\prepa.dta", clear
sort  ident noi trim
merge  ident noi trim using "G:\eec12_indiv12_dbase\indiv123.dta"
tab  _merge
save "F:\ENSAE\2A\Semestre 2\Econometrie 2\Bases\bon\base_finale.dta"

