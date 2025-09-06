class Solution {
public:
    vector<int> findOriginalArray(vector<int>& changed) {
        vector<int> res;
        sort(changed.begin(),changed.end());
        if(changed.size()%2!=0)return {};
        if(changed[0]==0 && changed[1]!=0)return {};
        unordered_map<int,int> freq;
        for(int i:changed)freq[i]++;
        for(int i:changed){
            if(freq[i]==0)continue;
            if(freq[2*i]==0)return {};
            res.push_back(i);
            freq[i]--;
            freq[2*i]--;
        }
        return res;
    }
};