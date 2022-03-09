#include <stdio.h>

int iZahl = 1;

void ZahlenTest() {
	int iZahl =2;
	printf("%d", iZahl);
}

int main() {
	printf("%d", iZahl);
	int iZahl = 3;
	printf("%d", iZahl);
  ZahlenTest();
  printf("%d", iZahl);
  }
  return 0;
}
