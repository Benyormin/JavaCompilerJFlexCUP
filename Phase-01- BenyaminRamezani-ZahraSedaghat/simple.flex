/* Compiler Project - Part01
Benyamin Ramezani	980122680008
Zahra Sedaghat	990122681003
 */


%% 

%{
  private int comment_count = 0 ;
%}

%public
%class subst
%caseless
%ignorecase
%standalone
%line
%char
%column
%state COMMENT
%unicode


ALPHA=[A-Za-z]
DIGIT=[0-9]
Identifier = {ALPHA}({ALPHA}|{DIGIT}|_)*
NONNEWLINE_WHITE_SPACE_CHAR=[ \t\b\012]
WHITE_SPACE_CHAR=[\n\r\ \t\b\012]
InputCharacter = [^\r\n]
STRING_TEXT=(\\\"|[^\n\r\"]|\\{WHITE_SPACE_CHAR}+\\)*
LineTerminator = \r|\n|\r\n

COMMENT_TEXT = {TraditionalComment} | {EndOfLineComment} | {DocumentationComment}
TraditionalComment = "/*" [^*] ~"*/" | "/*" "*"+ "/"
EndOfLineComment = "//" {InputCharacter}* {LineTerminator}?
DocumentationComment = "/*" "*"+ [^/*] ~"*/"


%%

<YYINITIAL> {

//Keywords
"abstract"		{System.out.println("Keyword: \"abstract\" "+  "line " + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"boolean"		{System.out.println("Keyword: \"boolean\" "+  "line " + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"break"		{System.out.println("Keyword: \"break\" "+  "line " + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"catch"		{System.out.println("Keyword: \"catch\" "+  "line " + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"char"		{System.out.println("Keyword: \"char\" "+  "line " + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"continue"		{System.out.println("Keyword: \"continue\" "+  "line " + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"default"		{System.out.println("Keyword: \"default\" "+  "line " + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"do"			{System.out.println("Keyword: \"do\" "+  "line " + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"double"		{System.out.println("Keyword: \"double\" "+  "line" + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"else"		{System.out.println("Keyword: \"else\" "+  "line" + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"enum"		{System.out.println("Keyword: \"enum\" "+  "line" + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"extends"		{System.out.println("Keyword: \"extends\" "+  "line" + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"final"		{System.out.println("Keyword: \"final\" "+  "line" + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"float"		{System.out.println("Keyword: \"float\" "+  "line" + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"for"			{System.out.println("Keyword: \"for\" "+  "line" + (yyline + 1) + " | " + "column " + (yycolumn + 1));}
"int"			{System.out.println("Keyword: \"int\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"if"             	{System.out.println("Keyword: \"if\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"implements"	{System.out.println("Keyword: \"implements\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"import"		{System.out.println("Keyword: \"import\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"interface"		{System.out.println("Keyword: \"interface\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"long"		{System.out.println("Keyword: \"long\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"new"			{System.out.println("Keyword: \"new\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"package"		{System.out.println("Keyword: \"package\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"private"		{System.out.println("Keyword: \"private\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"protected"		{System.out.println("Keyword: \"protected\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"public"		{System.out.println("Keyword: \"public\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"return"		{System.out.println("Keyword: \"return\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"short"		{System.out.println("Keyword: \"short\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"static"		{System.out.println("Keyword: \"static\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"switch"		{System.out.println("Keyword: \"switch\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"this"		{System.out.println("Keyword: \"this\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"throws"		{System.out.println("Keyword: \"throws\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"try"			{System.out.println("Keyword: \"try\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"var"			{System.out.println("Keyword: \"var\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"void"		{System.out.println("Keyword: \"void\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}
"while"		{System.out.println("Keyword: \"while\" "+  "line" + (yyline + 1) + " | " + "column" + (yycolumn + 1));}



//Operators 
"+"			{System.out.println("Operator: \"ADDITION Statement\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"-"			{System.out.println("Operator: \"SUBTRACTION Statement\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"*"             	{System.out.println("Operator: \"MULTIPLICATION Statement\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"/"		    	{System.out.println("Operator: \"DIVISION Statement\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"%"             	{System.out.println("Operator: \"MODULUS Statement\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"="             	{System.out.println("Operator: \"ASSIGNMENT Statement\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"+="			{System.out.println("Operator: \"ADDITION Assignment\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"-="			{System.out.println("Operator: \"SUBTRACTION Assignment\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"*="			{System.out.println("Operator: \"MULTIPLICATION Assignment\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"/="			{System.out.println("Operator: \"DIVISION Assignment\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"%="			{System.out.println("Operator: \"MODULUS Assignment\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"<="            	{System.out.println("Operator: \"Less than or Equal to\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
">="            	{System.out.println("Operator: \"Greater than or Equal to\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"<"             	{System.out.println("Operator: \"Less than\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
">"             	{System.out.println("Operator: \"Greater that\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"=="            	{System.out.println("Operator: \"Equal to\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"!="            	{System.out.println("Operator: \"Not Equal\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
":="		  	{System.out.println("Operator: \":= Sign\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
":"             	{System.out.println("Operator: \"Colon\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
";"             	{System.out.println("Operator: \"Semicolon\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"'"            	{System.out.println("Operator: \"Single Quotation\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
","             	{System.out.println("Operator: \"Comma\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"."             	{System.out.println("Operator: \"Period\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"["             	{System.out.println("Operator: \"Opening bracket\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"]"             	{System.out.println("Operator: \"Closing bracket\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"("             	{System.out.println("Operator: \"Opening paranthesis\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
")"             	{System.out.println("Operator: \"Closing parenthesis\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"{"             	{System.out.println("Operator: \"Opening brace\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"}"             	{System.out.println("Operator: \"Closing brace\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"\"" 		 	{System.out.println("Operator: \"Double quotation\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"<>" 	         	{System.out.println("Operator: \"<> Sign\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"++"            	{System.out.println("Operator: \"INCREMENTAL Statement\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"--"            	{System.out.println("Operator: \"DECREMENTAL Statement\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"**"            	{System.out.println("Operator: \"POWER Statement\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"&"  		   	{System.out.println("Operator: \"And\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"|" 		   	{System.out.println("Operator: \"Or\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"&&"  		{System.out.println("Operator: \"Logical And\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"||" 		   	{System.out.println("Operator: \"Logical Or\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }
"!"  		   	{System.out.println("Operator: \"Logical Not\" line " + (yyline + 1) + " | " + "column " + (yycolumn + 1)); }


//Whitespace
{NONNEWLINE_WHITE_SPACE_CHAR}+ {System.out.println("Whitespace: line " + (yyline + 1) + " | " + "column " + (yycolumn + 1));}

//String
\"{STRING_TEXT}\" {
    String str =  yytext().substring(1,yylength()-1);
    System.out.println ("String: " + "\"" + str + "\"" + " line " + (yyline + 1) + " | " + "column " + (yycolumn + 1));}

//Reserved Words
"CLEAR"		{System.out.println("Reserved word: \"clear\" line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1));}
"inumber"       	{System.out.println("Reserved word: \"inumber\" line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1));}
"println"       	{System.out.println("Reserved word: \"println\" line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1));}

//Identifier
{Identifier}	{System.out.println("Identifier: " + "\"" + yytext() + "\"" + " line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1)); }

//Incremental and Decremental Operators
//"++"{Identifier}  {System.out.println(yytext() + ": \"Incremental\" line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1)); }
//"--"{Identifier}  {System.out.println(yytext() + ": \"Decremental\" line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1)); }
//{Identifier}"++"  {System.out.println(yytext() + ": \"Incremental\" line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1)); }
//{Identifier}"--"  {System.out.println(yytext() + ": \"Decremental\" line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1)); }
 
//Positive Integer
("+"{DIGIT}+ | {DIGIT}+)			      {System.out.println("Positive Integer: " + "\"" + yytext() + "\"" + " line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1)); }
//Negative Integer
"-"{DIGIT}+					            {System.out.println("Negative Integer: " + "\"" + yytext() + "\"" + " line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1)); }
//Positive Float
("+"{DIGIT}+"."{DIGIT}+ | {DIGIT}+"."{DIGIT}+) 	{System.out.println("Positive Float: " + "\"" + yytext() + "\"" + " line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1)); }
//Negative Float
"-"{DIGIT}+"."{DIGIT}+ 				      {System.out.println("Negative Float: " + "\"" + yytext() + "\"" + " line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1)); }

//Comment
<COMMENT> {
  "/*" { comment_count++; } 
  "*/" { if (--comment_count == 0) yybegin(YYINITIAL); }
  {COMMENT_TEXT} {System.out.println("Comment: " + "\n" + yytext() + " line " + (yyline + 1) +  " | "+ "column " + (yycolumn + 1)); }
}

}
