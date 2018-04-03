题目描述
二维数组中的查找：
在一个二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。
请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。

#include<vector>
#include<iostream>
using std::vector;

class Solution {
public:
	bool Find(int target, vector<vector<int> > array) {
		bool find = false;
		int m = array.size();
		if (m == 0)
			return find;
		int n = array[0].size();	
		int i = 0;
		int j = n - 1;
		while (i >= 0 && i <= m - 1 && j >= 0 && j <= n - 1)
		{
			if (array[i][j]>target)
				j--;
			else if (array[i][j]<target)
				i++;
			else
				return true;
		}
		return find;
	}
};

int main()
{
	Solution *p = new Solution();
	vector<vector<int>> array(4,vector<int>(4,0));
	int arr[4][4] = 
	{ 
	{ 1,2,8,9 },
	{ 2,4,9,12 },
	{ 4,7,10,13 },
	{ 6,8,11,15 },
	};
	for (int i = 0; i < 4; i++)
	{
		for (int j = 0; j < 4; j++)
		{
			array[i][j] = arr[i][j];
		}
	}
	int target = 11;
	bool find = p->Find(target,array);
	delete p;
	std::cout << find << std::endl;
	while (1);
	return 0;
}