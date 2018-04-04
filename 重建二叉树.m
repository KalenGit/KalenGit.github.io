��Ŀ����
����ĳ��������ǰ���������������Ľ�������ؽ����ö�������
���������ǰ���������������Ľ���ж������ظ������֡�
��������ǰ���������{1,2,4,7,3,5,6,8}�������������
{4,7,2,1,5,3,8,6}�����ؽ������������ء�


#include<iostream>
#include<vector>
using std::vector;

 struct TreeNode {
    int val;
   TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
 };
 class Solution {
 public:
	 TreeNode * reConstructBinaryTree(vector<int> pre, vector<int> vin) {
		 if (pre.size() == 0 || vin.size() == 0)
			 return NULL;

		 vector<int> pre_left, pre_right, vin_left, vin_right;
		 int len = pre.size();
		 int i = 0;
		 for (; i<len; i++)
		 {
			 if (vin[i] == pre[0])
				 break;
			 else
			 {
				 pre_left.push_back(pre[i + 1]);
				 vin_left.push_back(vin[i]);
			 }
		 }
		 for (i++; i<len; i++)
		 {
			 pre_right.push_back(pre[i]);
			 vin_right.push_back(vin[i]);
		 }

		 TreeNode *root = new TreeNode(pre[0]);
		 root->left = reConstructBinaryTree(pre_left, vin_left);
		 root->right = reConstructBinaryTree(pre_right, vin_right);
		 return root;

	 }
 };


int main()
{
	using std::cout;
	using std::endl;
	Solution *ps = new Solution();
	vector<int> pre = {1,2,4,7,3,5,6,8};
	vector<int> vin = { 4,7,2,1,5,3,8,6 };
	TreeNode * root=ps->reConstructBinaryTree(pre,vin);
	delete ps;
	return 0;
}