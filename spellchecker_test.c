#include <stdio.h>

//char dict[] = "dictionary.txt";




  
void main() 
{
char* dictionary[] = {"the", "bird","is","big"};
char* tokens[] = {"the", "birdy","is","big"};
// declaring string 
int nTokens = 4;
int nDict = 4;
int max=4;
static int match[4];

int a;
int b;
int i=0;

for(a=0;a<nTokens;a++)
{

    for (b=0;b<nDict;b++)
    {
        if(tokens[a]==dictionary[b])
        {
            match[i]+=1;
            
        }


        else
        {
            match[i]+=0;
            

        }

}
printf("%d ",match[i]);// 0 means that the token word is incorrectly spelled
i++;
}

for (i=0;i<4;i++)
{
    if(match[i]==1)
    {
        printf(tokens[i]);
    }
    else
    {
        printf("_%s",tokens[i]);
        printf("_%s");
    }
}

} 

