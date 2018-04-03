输入一个链表，从尾到头打印链表每个节点的值。


#include<iostream>
#include<vector>
#include<stack>
using std::stack;
using std::vector;
using namespace std;

struct ListNode{
	int val;
	ListNode *next;
	ListNode(int x):
		val(x),next(NULL){
	}
};

class Solution {
public:
    vector<int> printListFromTailToHead(ListNode* head) {
        stack<int>  my_stack;
        while(head!=NULL)
        {
            my_stack.push(head->val);
            head=head->next;
        }
        vector<int> arr;
        while(!my_stack.empty())
        {
            arr.push_back(my_stack.top());
            my_stack.pop();
        }
        return arr;
    }
};

int main()
{
	ListNode *p1=new ListNode(1);
	ListNode *p2=new ListNode(2);
	ListNode *p3=new ListNode(3);
	p1->next=p2;
	p2->next=p3;

	Solution *ps=new Solution();
	vector<int> arr=ps->printListFromTailToHead(p1);

	vector<int>::iterator it=arr.begin();
	while(it!=arr.end())
	{
		cout<<*it<<"\t";
		it++;
	}

	return 0;
}
