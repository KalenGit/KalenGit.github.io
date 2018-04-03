请实现一个函数，将一个字符串中的空格替换成“%20”。
例如，当字符串为We Are Happy.则经过替换之后的字符串为We%20Are%20Happy。


class Solution {
public:
	void replaceSpace(char *str,int length) {
        int numberOfSpace=0;
        int i=0;
        while(str[i]!='\0')
        {
            if(str[i]==' ')
                numberOfSpace++;
            i++;
        }
        int newLength=length+2*numberOfSpace;
        i=length;
        int j=newLength;
        while(i>=0)
        {
            if(str[i]!=' ')
                str[j]=str[i];
            else
            {
                str[j--]='0';
                str[j--]='2';
                str[j]='%';
            }
            i--;
            j--;

        }
	}
};

#include<iostream>
#include <string.h>
using namespace std;

int main()
{
	Solution *p = new Solution();
	char str[100]="a b h";
    p->replaceSpace(str,strlen(str));
    delete p;

	return 0;
}
