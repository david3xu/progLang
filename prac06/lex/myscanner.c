#include <stdio.h>
#include "myscanner.h"

// define external outside file from a different module
extern int yylex(); // function: return integer 
extern int yylineno; // variable 
extern char* yytext; // actual value of the token are found in a string pointer 

char *names[] = {NULL, "db_type", "db_name", "db_table_prefix", "db_port"};

// write parser 
int main(void) {
    int ntoken, vtoken; // name token, value token
    // call yylex function iteratively to get the token, first token is always the name token
    ntoken = yylex(); // call my custom scanner and return the first valid token
    // loop until the end of the file: 0
    while(ntoken) {
        printf("%d\n", ntoken); // print the name token
        if (yylex() != COLON) { // check if the next token is a colon
            printf("Syntax error in line %d, Expected a ':' but found %s\n", yylineno, yytext);
            return 1; // exit the program right away
        }
        vtoken = yylex(); // get the value token
        switch (ntoken) {
        case TYPE:
        case NAME:
        case TABLE_PREFIX:
            if (vtoken != IDENTIFIER) {
                printf("Syntax error in line %d, Expected an identifier but found %s\n", yylineno, yytext);
                return 1;
            }
            printf("%s is set to %s\n", names[ntoken], yytext);
            break;
        case PORT: 
            if (vtoken != INTEGER) {
                printf("Syntax error in line %d, Expected an integer but found %s\n", yylineno, yytext);
                return 1;
            }
            printf("%s is set to %s\n", names[ntoken], yytext);
            break;
        default:
            printf("Syntax error in line %d\n", yylineno);
            return 1;
        }                   

        ntoken = yylex(); // get the next token
    }
    return 0;
}