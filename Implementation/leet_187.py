"""
leetcode 
https://leetcode.com/problems/repeated-dna-sequences/description/
187번
"""

class Solution:
    def findRepeatedDnaSequences(self, s: str) -> List[str]:
        ans = []
        arr = {}
        temp = ''
        for i in range(0, len(s)):
            temp += s[i] # 우선 넣어
            if len(temp) == 10:
                if temp not in arr:
                    arr[temp] = 1
                else:
                    arr[temp] +=1
            if len(temp) > 10:
                temp = temp[1:]
                if temp not in arr:
                    arr[temp] = 1
                else:
                    arr[temp] +=1

        lst = sorted(arr.items(), key = lambda x : -x[1])
        
        for (dna, val) in lst:
            if val >=2:
                ans.append(dna)
            else:
                break
  
        return ans
