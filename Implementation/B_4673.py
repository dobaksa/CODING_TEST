# 1. 1~ 10000까지의 수를 하나씩 확인
# 2. 수를 보면서 그 수와 각자리수를 더한 값인 생성자 배열을 생성
# 3. 전체 수 중에서 생성자 배열을 빼줌
# 4. 이게 정답


arr = set()                     # 전체 수배열
generate = set()                # 생성자 배열

# 전체 수 대입
for i in range(1, 10001):
    arr.add(i)

# 생성자 배열 생성하기
for j in range(1, 10001):
    temp = j

    # 각자리 수 더해주기
    for num in str(j):
        temp += int(num)
    
    generate.add(temp)

# 전체 수에서 생성자 배열 빼주기
ans = sorted(arr-generate)

for val in ans:
    print(val)

