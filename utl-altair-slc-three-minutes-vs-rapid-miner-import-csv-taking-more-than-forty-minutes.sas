%let pgm=utl-altair-slc-three-minutes-vs-rapid-miner-import-csv-taking-more-than-forty-minutes;

%stop_submission;

Altair slc 3 minutes vs rapid miner import csv taking more than 40 minutes;

SLC took: real time : 2:35.311 minutes

Too long to post on list, see github
https://github.com/rogerjdeangelis/utl-altair-slc-three-minutes-vs-rapid-miner-import-csv-taking-more-than-forty-minutes

Altair Post
https://community.altair.com/discussion/50204
https://community.altair.com/discussion/50204/rapid-miner-import-csv-file-just-3-2-gb-taking-more-than-40-mins-and-i-dont-knw-the-progress?tab=all

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

data _null_;
 file "d:/csv/gb4.csv";
 put "name,sex,age,height,weight";
  do j=1 to 176012450;
    put "roger,M,77,74,195";
 end;
 stop;
run;

/**************************************************************************************************************************/
/* d:/csv/gb4.csv  3.266gb                                                                                                */
/*                                                                                                                        */
/*           1 name,sex,age,height,weight                                                                                 */
/*           2 roger,M,77,74,195                                                                                          */
/*           3 roger,M,77,74,195                                                                                          */
/* ...                                                                                                                    */
/* 176,012,448 name,sex,age,height,weight                                                                                 */
/* 176,012,449 roger,M,77,74,195                                                                                          */
/* 1,7601,2450 roger,M,77,74,195                                                                                          */
/*                                                                                                                        */
/* real time : 3:14.083                                                                                                   */
/**************************************************************************************************************************/

/*                   _     _
(_)_ __  _ __  _   _| |_  | | ___   __ _
| | `_ \| `_ \| | | | __| | |/ _ \ / _` |
| | | | | |_) | |_| | |_  | | (_) | (_| |
|_|_| |_| .__/ \__,_|\__| |_|\___/ \__, |
        |_|                        |___/
*/

libname workx wpd "d:/wpswrkx";

data workx.gb4;
  infile 'd:\csv\gb4.csv' delimiter=',' missover dsd firstobs=2 lrecl=32760;
  informat
    name $5.
    sex $1. ;
  input name sex age height weight;
run;quit;

1                                          Altair SLC        10:17 Saturday, March 28, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: AUTOEXEC source line
1       +  ï»¿ods _all_ close;
           ^
ERROR: Expected a statement keyword : found "?"

NOTE: AUTOEXEC processing completed

1         libname workx wpd "d:/wpswrkx";
NOTE: Library workx assigned as follows:
      Engine:        WPD
      Physical Name: d:\wpswrkx

2
3         data workx.gb4;
4           infile 'd:\csv\gb4.csv' delimiter=',' missover dsd firstobs=2 lrecl=32760;
5           informat
6             name $5.
7             sex $1. ;
8           input name sex age height weight;
9         run;

NOTE: The infile 'd:\csv\gb4.csv' is:
      Filename='d:\csv\gb4.csv',
      Owner Name=SLC\suzie,
      File size (bytes)=3344236578,
      Create Time=09:58:14 Mar 28 2026,
      Last Accessed=10:16:26 Mar 28 2026,
      Last Modified=10:16:26 Mar 28 2026,
      Lrecl=32760, Recfm=V

NOTE: 176012450 records were read from file 'd:\csv\gb4.csv'
      The minimum record length was 17
      The maximum record length was 17
NOTE: Data set "WORKX.gb4" has 176012450 observation(s) and 5 variable(s)
NOTE: The data step took :
      real time : 3:14.083
      cpu time  : 3:11.093

9       !     quit;
10

ERROR: Error printed on page 1

NOTE: Submitted statements took :
      real time : 3:14.160
      cpu time  : 3:11.187

/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

libname workx wpd "d:/wpswrkx";

data workx.gb4;
  infile 'd:\csv\gb4.csv' delimiter=',' missover dsd firstobs=2 lrecl=32760;
  informat
    name $5.
    sex $1. ;
  input name sex age height weight;
run;quit;


/**************************************************************************************************************************/
/* WORKX.gb4 real time : 2:35.311                                                                                         */
/*                                                                                                                        */
/* Obs    NAME     SEX    AGE    HEIGHT    WEIGHT                                                                         */
/*                                                                                                                        */
/*         1    roger     M      77      74        195                                                                    */
/*         2    roger     M      77      74        195                                                                    */
/*         3    roger     M      77      74        195                                                                    */
/* ...                                                                                                                    */
/* 176012448    roger     M      77      74        195                                                                    */
/* 176012449    roger     M      77      74        195                                                                    */
/* 176012450    roger     M      77      74        195                                                                    */
/**************************************************************************************************************************/

/*                                   _
 _ __  _ __ ___   ___ ___  ___ ___  | | ___   __ _
| `_ \| `__/ _ \ / __/ _ \/ __/ __| | |/ _ \ / _` |
| |_) | | | (_) | (_|  __/\__ \__ \ | | (_) | (_| |
| .__/|_|  \___/ \___\___||___/___/ |_|\___/ \__, |
|_|                                          |___/
*/

1                                          Altair SLC        11:09 Saturday, March 28, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: AUTOEXEC source line
1       +  ï»¿ods _all_ close;
           ^
ERROR: Expected a statement keyword : found "?"

NOTE: AUTOEXEC processing completed

1         libname workx wpd "d:/wpswrkx";
NOTE: Library workx assigned as follows:
      Engine:        WPD
      Physical Name: d:\wpswrkx

2
3         data workx.gb4;
4           infile 'd:\csv\gb4.csv' delimiter=',' missover dsd firstobs=2 lrecl=32760;
5           informat
6             name $5.
7             sex $1. ;
8           input name sex age height weight;
9         run;

NOTE: The infile 'd:\csv\gb4.csv' is:
      Filename='d:\csv\gb4.csv',
      Owner Name=SLC\suzie,
      File size (bytes)=3344236578,
      Create Time=09:58:14 Mar 28 2026,
      Last Accessed=10:46:57 Mar 28 2026,
      Last Modified=10:46:57 Mar 28 2026,
      Lrecl=32760, Recfm=V

NOTE: 176012450 records were read from file 'd:\csv\gb4.csv'
      The minimum record length was 17
      The maximum record length was 17
NOTE: Data set "WORKX.gb4" has 176012450 observation(s) and 5 variable(s)
NOTE: The data step took :
      real time : 2:35.225
      cpu time  : 2:34.609


9       !     quit;
10
ERROR: Error printed on page 1

NOTE: Submitted statements took :
      real time : 2:35.311
      cpu time  : 2:34.687

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
