题目描述
大家都知道斐波那契数列，现在要求输入一个整数n，请你输出斐波那契数列的第n项。
n<=39

#include<vector>
#include<iostream>

using std::vector;
//F0=0，F1=1，Fn=F(n-1)+F(n-2)（n>=2，n∈N*）
class Solution {
public:
    int Fibonacci(int n) {

        if(n==0||n==1)
            return n;
        int f0=0;
        int f1=1;
        int f2;
        for(int i=0;i<n-1;i++)
        {
        	f2=f1+f0;
        	f0=f1;
        	f1=f2;
        }
        return f2;

    }
};

int main()
{
	Solution *ps=new Solution();

	int m=ps->Fibonacci(39);
	std::cout<<m<<std::endl;
	delete ps;
	return 0;
}
