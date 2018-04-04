��Ŀ����
������ջ��ʵ��һ�����У���ɶ��е�Push��Pop������ �����е�Ԫ��Ϊint���͡�


#include<stack>
#include<iostream>
using std::stack;


class Solution
{
public:
    void push(int node) {
        stack1.push(node);
    }

    int pop() {
        while(!stack1.empty())
        {
            stack2.push(stack1.top());
            stack1.pop();
        }
        int node=stack2.top();
        stack2.pop();
        while(!stack2.empty())
        {
            stack1.push(stack2.top());
            stack2.pop();
        }
        return node;
    }

private:
    stack<int> stack1;
    stack<int> stack2;//����
};


int main()
{
	using std::cout;
	using std::endl;
	Solution *ps=new Solution();
	ps->push(1);
	ps->push(2);
	ps->push(3);
	cout<<ps->pop()<<endl;
	cout<<ps->pop()<<endl;
	cout<<ps->pop()<<endl;
	delete ps;
	return 0;
}
