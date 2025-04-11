#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Book
{
    char title[100];
    char author[30];
    float price;
};

int main()
{
    struct Book obj;

    printf("Enter the book title");
    gets(obj.title);
    printf("Enter the author name");
    gets(obj.author);
    printf("Enter the book price");
    scanf("%f",&obj.price);

    printf("The details of book with old price is: \n");
    printf("Title: %s Author: %s Old Price: %f\n",obj.title, obj.author, obj.price);

    update_price(obj);

    return 0;
}

void update_price(struct Book new_obj)
{

    printf("Enter the new price for the book");
    scanf("%f",&new_obj.price);

    printf("The details of book with New price is: \n");
    printf("Title: %s Author: %s New Price: %f",new_obj.title, new_obj.author, new_obj.price);

}
