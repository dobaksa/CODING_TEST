"""
https://www.acmicpc.net/problem/18126
"""


from collections import deque


def bfs(si, cost):
    global ans
    q = deque()
    q.append((si,cost))
    v[si] = 1


    while q:
        c_node, c_cost = q.popleft()        # 현재노드 

        
        ans = max(ans, c_cost)

        
        for (next, next_cost) in arr[c_node]:
           

            if v[next] != 1:
                v[next] = 1
                
                sum_cost = c_cost + next_cost
                
                q.append((next, sum_cost))
                



N = int(input())
arr = [[]  for _ in range(N+1)]
v = [0] * (N+1)

for i in range(N-1):
    a, b, c = map(int, input().split())

    arr[a].append((b,c))
    arr[b].append((a,c))


ans = 0 
bfs(1, 0)


print(ans)
