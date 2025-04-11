#include <stdio.h>
#include <stdlib.h>

struct node
{
    int data;
    struct node *next;  //Self referential structure.
    struct node *prev;

};

int main()
{
    //Creating nodes
    struct node *head;
    struct node *one = NULL;
    struct node *two = NULL;
    struct node *three = NULL;
    struct node *four = NULL;

    //Allocate memory to nodes

    one = malloc(sizeof(struct node));
    two = malloc(sizeof(struct node));
    three = malloc(sizeof(struct node));
    four = malloc(sizeof(struct node));

    //Assign values to nodes

    one->data = 20;
    two->data = 12;
    three->data = 50;
    four->data = 90;

    //Link all the nodes

    one->next = two;    //4000
    two->next = three;  //4500
    three->next = four; //8002
    four->next = NULL;  //8050


    four->prev = three;
    three->prev = two;
    two->prev = one;
    one->prev = NULL;

    head = one; //4000

    for(int i=0;i<4;i++)
    {
        printf("%d\n",head->data);
        head = head->next;
    }

    head = four;

    printf("The previous is: \n");
    for(int i=0;i<4;i++)
    {
        printf("%d\n",head->data);
        head = head->prev;
    }

    printf("The one data is %d",one->data);
}
