﻿* Encoding: UTF-8.
FILE HANDLE data /NAME="c:\temp".

* create a permanent dataset name.
STATS GETSET DATASET ASSIGNCUSTOMDSN=YES CUSTOMDSN=thename.
SAVE OUTFILE="data\employee dataFred.sav".

* open the file.
STATS GETSET DATASET  FILE="c:\temp\employee dataFred.sav" CONFLICT=NONAME.

* with conflict.
STATS GETSET DATASET  FILE="c:\temp\employee dataFred.sav" CONFLICT=OVERRIDE.

*errors.
STATS GETSET DATASET ASSIGNCUSTOMDSN=YES.
STATS GETSET DATASET ASSIGNCUSTOMDSN=YES CUSTOMDSN=thename ASSIGNSESSIONNAME=YES.
STATS GETSET DATASET ASSIGNCUSTOMDSN=NO ASSIGNSESSIONNAME=NO.
