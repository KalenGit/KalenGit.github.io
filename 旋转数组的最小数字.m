把一个数组最开始的若干个元素搬到数组的末尾，我们称之为数组的旋转。
 输入一个非递减排序的数组的一个旋转，输出旋转数组的最小元素。
 例如数组{3,4,5,1,2}为{1,2,3,4,5}的一个旋转，该数组的最小值为1。
 NOTE：给出的所有元素都大于0，若数组大小为0，请返回0。
 
 
 

#include<vector>
#include<iostream>

using std::vector;

class Solution {
public:
    int minNumberInRotateArray(vector<int> rotateArray) {
        int i=0;
        int j=rotateArray.size()-1;
        if(rotateArray.size()==0)
            return 0;
        if(rotateArray.size()==1)
            return rotateArray[0];
        while(i!=j)
        {
            int k=(i+j)/2;
            if(j-i==1)
            	break;
            if(rotateArray[k]>=rotateArray[j])
            {
                i=k;  //rotateArray[i]一定是>=min
            }
            else
            {
                j=k;
            }
        }
        return rotateArray[i+1];
    }
};


int main()
{
	Solution *ps=new Solution();
	int arr[]={3,4,5,1,2};
	vector<int> arrv(arr,arr+5);
	ps->minNumberInRotateArray(arrv);
	delete ps;
	return 0;
}
