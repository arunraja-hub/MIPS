#include <stdio.h>

//char dict[] = "dictionary.txt";




  
void main() 
{
char* dictionary[] = {"the", "bird","is","big"};
char* tokens[] = {"the", "birdy","is"," ",".","big","..."};
// declaring string 
//size_t nTokens = sizeof(tokens)/sizeof(char);
int nTokens=7;
int nDict = 4;
int max=4;
static int* match[7];



int a;
int b;
int i=0;

//counting no of punctuation
int punc=0;
for(a=0;a<nTokens;a++)
{
    if( tokens[a]=='.'||','||':'||';')
    {
        punc+=1;
    }

}
for(a=0;a<nTokens;a++)
{
    if( tokens[a]==" " && tokens[a+1]='.'||','||':'||';')
    {
        match[i]+=0;// 0 means wrong
    }

    if(tokens[a]= '.' && tokens[a+1]>='A' && tokens[a+1]<='Z' || tokens[a+1]>='a' && tokens[a+1]<='z' )
    {
        match[i]+=0;// 0 means wrong
    }

    if(tokens[a]= '...')
    {
        match[i]+=0;// 0 means wrong
    }

    

    if(tokens[a]='.'||','||':'||';' && punc>1)
    {
        match[i]+=0;
    }
   
    else
    {
        match[i]+=1;
    }
    i++;
    printf("%d ",match[i]);
}

    