class Solution {
public:
    vector<string> buildArray(vector<int>& target, int n) {
        vector<string> res;
         int i=0,j=1;
         while(i<target.size() && j<=n){
            if(target[i]!=j){
               res.push_back("Push");
               res.push_back("Pop");
               j++;
            }
            else{
                res.push_back("Push");
                i++;
                j++;
            }
         }
            return res;
    }
};