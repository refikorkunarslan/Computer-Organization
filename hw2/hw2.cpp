#include <iostream>
#define MAX_SIZE 1000

using namespace std;
bool CheckSumPossibility(int arr[], int n, int sum)
{
   
    if (sum == 0)
    {
       
        return true;
    }
    if (n == 0)
     {
        return false;
     }  
    if (arr[n - 1] > sum)
    {
        return CheckSumPossibility(arr, n - 1, sum);
    }
  
    return CheckSumPossibility(arr, n - 1, sum)
           || CheckSumPossibility(arr, n - 1, sum - arr[n - 1]);
}
int main()
{
    int array[10];
 int arraySize;
 int arr[MAX_SIZE];
 int num;
 int a=0;
 int returnVal;
 cin >> arraySize;
 cin >> num;
 for(int i = 0; i < arraySize; ++i)
 {
 cin >> arr[i];
 }

 returnVal = CheckSumPossibility(arr, arraySize, num);
;
 if(returnVal == 1)
 {
 cout << "Possible!" << endl;
 }
 else
 {
 cout << "Not possible!" << endl;
 }

 return 0;
}
