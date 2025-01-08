#include <stdio.h>
#include <time.h>
#include <unistd.h>

int main() {
    again: printf("Hello World\n");

    sleep(5);
  
    goto again;
    
    return 0;
}
