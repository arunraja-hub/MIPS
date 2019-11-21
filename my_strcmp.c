#include <stdio.h>

int my_strcmp(char* a, char* b) {
int i = 0;
while (1) {
if (a[i] != b[i]) {
return 0; // false
} else if (a[i] == '\0') {
// End of string, return
return 1;
}
i += 1;
}
}


void main()
{
    int j=my_strcmp("test","test");
    printf("|%d|",j);
}