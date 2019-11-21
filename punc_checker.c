/***********************************************************************
* File       : <spell_checker.c>
*
* Author     : <Siavash Katebzadeh>
*
* Description: 
*
* Date       : 08/10/18
*
***********************************************************************/
// ==========================================================================
// Spell checker
// ==========================================================================
// Marks misspelled words in a sentence according to a dictionary

// Inf2C-CS Coursework 1. Task B/C
// PROVIDED file, to be used as a skeleton.

// Instructor: Boris Grot
// TA: Siavash Katebzadeh
// 08 Oct 2018

#include <stdio.h>

// maximum size of input file
#define MAX_INPUT_SIZE 2048
// maximum number of words in dictionary file
#define MAX_DICTIONARY_WORDS 10000
// maximum size of each word in the dictionary
#define MAX_WORD_SIZE 20

int read_char() { return getchar(); }
int read_int()
{
  int i;
  scanf("%i", &i);
  return i;
}
void read_string(char *s, int size) { fgets(s, size, stdin); }

void print_char(int c) { putchar(c); }
void print_int(int i) { printf("%i", i); }
void print_string(char *s) { printf("%s", s); }
void output(char *string) { print_string(string); }

// dictionary file name
char dictionary_file_name[] = "dictionary.txt";
// input file name
char input_file_name[] = "input.txt";
// content of input file
char content[MAX_INPUT_SIZE + 1];
// valid punctuation marks
char punctuations[] = ",.!?";
// tokens of input file
char tokens[MAX_INPUT_SIZE + 1][MAX_INPUT_SIZE + 1];
// number of tokens in input file
int tokens_number = 0;
// content of dictionary file
char dictionary[MAX_DICTIONARY_WORDS * MAX_WORD_SIZE + 1];

///////////////////////////////////////////////////////////////////////////////
/////////////// Do not modify anything above
///////////////////////////////////////////////////////////////////////////////

// You can define your global variables here!

// Task B
//printf("%s",dictionary_file_name[]);
int dict_number = 0;
//int dict_d_idx;
char dict_token[MAX_DICTIONARY_WORDS][MAX_WORD_SIZE + 1];

// converting dictionary into 2d array
void dict_tokenizer()
{
  char d;

  // index of content
  int d_idx = 0;
  d = dictionary[d_idx];
  do
  {

    // end of content
    if (d == '\0')
    {
      break;
    }

    // if the token starts with an alphabetic character
    if (d >= 'a' && d <= 'z')
    {

      int dict_d_idx = 0;
      // copy till see any non-alphabetic character
      do
      {
        dict_token[dict_number][dict_d_idx] = d;

        dict_d_idx += 1;
        d_idx += 1;

        d = dictionary[d_idx];
      } while (d >= 'a' && d <= 'z');
      dict_token[dict_number][dict_d_idx] = '\0';
      dict_number += 1;
    }
    d_idx += 1;
    d = dictionary[d_idx];
  } while (dictionary[d_idx] != '\0');

 
}

//dict_tokenizer ends here
//alph_token--just words tokens from input tokens, no punctuation
int alph_number = 0;
//int dict_d_idx;
char alph_token[MAX_INPUT_SIZE + 1][MAX_INPUT_SIZE + 1];
void alph_tokenizer()
{
  char f;

  // index of content
  int f_idx = 0;
  f = content[f_idx];
  do
  {

    // end of content
    if (f == '\0')
    {
      break;
    }

    // if the token starts with an alphabetic character
    if (f >= 'a' && f <= 'z' || f >= 'A' && f <= 'Z')
    {

      int alph_f_idx = 0;
      // copy till see any non-alphabetic character
      do
      {
        alph_token[alph_number][alph_f_idx] = f;

        alph_f_idx += 1;
        f_idx += 1;

        f = content[f_idx];
      } while (f >= 'a' && f <= 'z' || f >= 'A' && f <= 'Z');
      alph_token[alph_number][alph_f_idx] = '\0';
      alph_number += 1;
    }
    f_idx += 1;
    f = content[f_idx];
  } while (content[f_idx] != '\0');

 
}

//lowercase
char lower(char d)
{
  int a = (int)d;

  if ((a >= 65) && (a <= 90))
  {
    a = a + 32;
    char c = a;
    return c;
  }
  else
  {
    return d;
  }
}

//my_strcmp
int my_strcmp(char *a, char *b)
{
  int i = 0;
  while (1)
  {
    if (a[i] != b[i])
    {
      return 0; // false
    }
    else if (a[i] == '\0')
    {
      // End of string, return
      return 1;
    }
    i += 1;
  }
}
//------------------------------------------------------------------------------------
int dup_number = 0;
//int dict_d_idx;
char dup_token[MAX_INPUT_SIZE + 1][MAX_INPUT_SIZE + 1];

void dup_tokenizer()
{
  char p;

  // index of content
  int p_idx = 0;
  p = content[p_idx];
  do
  {

    // end of content
    if (p == '\0')
    {
      break;
    }

    // if the token starts with an alphabetic character
    if (p >= 'A' && p <= 'Z' || p >= 'a' && p <= 'z')
    {

      int dup_p_idx = 0;
      // copy till see any non-alphabetic character
      do
      {
        dup_token[dup_number][dup_p_idx] = p;

        dup_p_idx += 1;
        p_idx += 1;

        p = content[p_idx];
      } while (p >= 'A' && p <= 'Z' || p >= 'a' && p <= 'z');
      dup_token[dup_number][dup_p_idx] = '\0';
      dup_number += 1;

      // if the token starts with one of punctuation marks
    }
    else if (p == ',' || p == '.' || p == '!' || p == '?')
    {

      int dup_p_idx = 0;
      // copy till see any non-punctuation mark character
      do
      {
        dup_token[dup_number][dup_p_idx] = p;

        dup_p_idx += 1;
        p_idx += 1;

        p = content[p_idx];
      } while (p == ',' || p == '.' || p == '!' || p == '?');
      dup_token[dup_number][dup_p_idx] = '\0';
      dup_number += 1;

      // if the token starts with space
    }
    else if (p == ' ')
    {

      int dup_p_idx = 0;
      // copy till see any non-space character
      do
      {
        dup_token[dup_number][dup_p_idx] = p;

        dup_p_idx += 1;
        p_idx += 1;

        p = content[p_idx];
      } while (p == ' ');
      dup_token[dup_number][dup_p_idx] = '\0';
      dup_number += 1;
    }
  } while (1);
}

//--------------------------------------------------------------------
int punc=0;
void punc_checker()
{
  // TODO Please implement me!

  for (int v = 0; v < MAX_INPUT_SIZE + 1; v++)
  {

    for (int j = 0; j < MAX_INPUT_SIZE + 1; j++)
    {
      if (tokens[v][j] >= 65 && tokens[v][j] <= 90)
      {
        tokens[v][j] = lower(tokens[v][j]); // lowercased in place
      }
    }
  }

  //-------------------------------------------String comparison-----------------------

  int match, j = 0;

  for (int a = 0; a < tokens_number; a++) //MAX_INPUT_SIZE
  {
    //int match=0;

    for (int b = 0; b < MAX_DICTIONARY_WORDS; b++)
    {
      if (tokens[a][0] >= 'a' && tokens[a][0] <= 'z')
      {
        //match=my_strcmp(tokens[a],dict_token[b]);
        j = my_strcmp(tokens[a], dict_token[b]);
        if (j == 1)
        {
          break;
        }
      }
    }

    if (j == 1 || tokens[a][0] == ',' || tokens[a][0] == '.' || tokens[a][0] == '!' || tokens[a][0] == '?' || tokens[a][0] == ' ')
    {
      printf("%s", dup_token[a]);
    }

    else
    {
      printf("_%s_ ", dup_token[a]);
    }

  
  //---------------------------------------Punctuation checker--------------------------------
    //counting number of punctuations, int punc
    if( tokens[a]=='.'||','||':'||';')
    {
        punc+=1;
    }
    


  }
}







//---------------------------------------------------------------------------
// Tokenizer function
// Split content into tokens
//---------------------------------------------------------------------------
void tokenizer()
{
  char c;

  // index of content
  int c_idx = 0;
  c = content[c_idx];
  do
  {

    // end of content
    if (c == '\0')
    {
      break;
    }

    // if the token starts with an alphabetic character
    if (c >= 'A' && c <= 'Z' || c >= 'a' && c <= 'z')
    {

      int token_c_idx = 0;
      // copy till see any non-alphabetic character
      do
      {
        tokens[tokens_number][token_c_idx] = c;

        token_c_idx += 1;
        c_idx += 1;

        c = content[c_idx];
      } while (c >= 'A' && c <= 'Z' || c >= 'a' && c <= 'z');
      tokens[tokens_number][token_c_idx] = '\0';
      tokens_number += 1;

      // if the token starts with one of punctuation marks
    }
    else if (c == ',' || c == '.' || c == '!' || c == '?')
    {

      int token_c_idx = 0;
      // copy till see any non-punctuation mark character
      do
      {
        tokens[tokens_number][token_c_idx] = c;

        token_c_idx += 1;
        c_idx += 1;

        c = content[c_idx];
      } while (c == ',' || c == '.' || c == '!' || c == '?');
      tokens[tokens_number][token_c_idx] = '\0';
      tokens_number += 1;

      // if the token starts with space
    }
    else if (c == ' ')
    {

      int token_c_idx = 0;
      // copy till see any non-space character
      do
      {
        tokens[tokens_number][token_c_idx] = c;

        token_c_idx += 1;
        c_idx += 1;

        c = content[c_idx];
      } while (c == ' ');
      tokens[tokens_number][token_c_idx] = '\0';
      tokens_number += 1;
    }
  } while (1);

}


//---------------------------------------------------------------------------
// MAIN function
//---------------------------------------------------------------------------

int main(void)
{

  /////////////Reading dictionary and input files//////////////
  ///////////////Please DO NOT touch this part/////////////////
  int c_input;
  int idx = 0;

  // open input file
  FILE *input_file = fopen(input_file_name, "r");
  // open dictionary file
  FILE *dictionary_file = fopen(dictionary_file_name, "r");

  // if opening the input file failed
  if (input_file == NULL)
  {
    print_string("Error in opening input file.\n");
    return -1;
  }

  // if opening the dictionary file failed
  if (dictionary_file == NULL)
  {
    print_string("Error in opening dictionary file.\n");
    return -1;
  }

  // reading the input file
  do
  {
    c_input = fgetc(input_file);
    // indicates the the of file
    if (feof(input_file))
    {
      content[idx] = '\0';
      break;
    }

    content[idx] = c_input;

    if (c_input == '\n')
    {
      content[idx] = '\0';
    }

    idx += 1;

  } while (1);

  // closing the input file
  fclose(input_file);

  idx = 0;

  // reading the dictionary file
  do
  {
    c_input = fgetc(dictionary_file);
    // indicates the end of file
    if (feof(dictionary_file))
    {
      dictionary[idx] = '\0';
      break;
    }

    dictionary[idx] = c_input;
    idx += 1;
  } while (1);

  // closing the dictionary file
  fclose(dictionary_file);
  //////////////////////////End of reading////////////////////////
  ////////////////////////////////////////////////////////////////
  tokenizer();
  dup_tokenizer();
  dict_tokenizer();

  punc_checker();

  //output_tokens();

  return 0;
}
