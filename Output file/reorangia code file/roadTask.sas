/** Import an XLSX file.  **/

PROC IMPORT DATAFILE="/folders/myfolders/odot.xlsx"
		    OUT=WORK.road_table
		    DBMS=XLSX
		    REPLACE;
RUN;

/** regression model  **/
PROC IMPORT DATAFILE="/folders/myfolders/0.xlsx"
		    OUT=WORK.road_0
		    DBMS=XLSX
		    REPLACE;
RUN;
PROC PRINT DATA=WORK.road_0; RUN;

/** regression model data (i) **/
PROC IMPORT DATAFILE="/folders/myfolders/1.xlsx"
		    OUT=WORK.road_1
		    DBMS=XLSX
		    REPLACE;
RUN;
PROC PRINT DATA=WORK.road_1; RUN;



/** regression model data (iii) **/
PROC IMPORT DATAFILE="/folders/myfolders/part3.xlsx"
		    OUT=WORK.road_p3
		    DBMS=XLSX
		    REPLACE;
RUN;
PROC PRINT DATA=WORK.road_p3; RUN;

/** regression model data (4) **/
PROC IMPORT DATAFILE="/folders/myfolders/part4.xlsx"
		    OUT=WORK.road_p4
		    DBMS=XLSX
		    REPLACE;
RUN;
PROC PRINT DATA=WORK.road_p5; RUN;

/** regression model data (5) **/
PROC IMPORT DATAFILE="/folders/myfolders/part5.xlsx"
		    OUT=WORK.road_p5
		    DBMS=XLSX
		    REPLACE;
RUN;
PROC PRINT DATA=WORK.road_p5; RUN;

/** regression model data (6) **/
PROC IMPORT DATAFILE="/folders/myfolders/part6.xlsx"
		    OUT=WORK.road_p6
		    DBMS=XLSX
		    REPLACE;
RUN;
PROC PRINT DATA=WORK.road_p6; RUN;












/** data set including end **/


/** regression model **/
proc reg data=work.road_0 ALPHA=0.1;
	model Ratio=Bidders Rigged Length Days FxCost FairPr;
run;


/** regression model (i) **/
proc reg data=work.road_1 ALPHA=0.1;
	model Ratio=Bidders Rigged Length Days FxCost FairPr;
run;

/** regression model (iii) **/
proc reg data=work.road_p3 ALPHA=0.05;
	model Ratio=Bidders Rigged Length Days;
run;

/** regression model (4) **/
proc reg data=work.road_p4;
	model Ratio=Bidders Rigged Length Days Hot FxCost FairPr;
run;


/** regression model (5) **/
proc reg data=work.road_p5;
	model Price=Bidders Rigged FxCost FairPr;
run;

/** regression model (6) **/
proc reg data=work.road_p6 ALPHA=0.1;
	model Price=Bidders Rigged FxCost FairPr;
run;




























