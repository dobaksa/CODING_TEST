"""

프로그래머스 - 해시 - 베스트앨범 - LV3
https://school.programmers.co.kr/learn/courses/30/lessons/42579?language=python3


"""
def solution(genres, plays):
    answer = []
    d1 = {}             # 장르 : 장르별 재생횟수 딕셔너리
    d2 = {}             # 장르 : (고유번호, 재생횟수)  딕셔너리
    
    # 장르의 배열을 보며 장르별 전체 재생횟수, 장르별 고유번호와 재생횟수를 생성한다.
    
    for i in range(len(genres)):
        gen = genres[i]
        # d1 장르별 전체 재생횟수를 확인
        if gen in d1:
            d1[gen] += plays[i]

        else:
            d1[gen] = plays[i]
        
        # d2. 장르별 가지고 있는 고유번호와 그 번호의 재생횟수를 따로 저장
        if gen in d2:
            d2[gen] += [(i,plays[i])]
        else:
            d2[gen] = [(i, plays[i])]
    
    # d1. 전체 장르의 재생횟수별로 내림차순으로 정렬
    gen_sort = sorted(d1.items(), key = lambda x : -x[1])
    
    # 전체 장르의 재생횟수의 순서로 각 장르마다 재생횟수가 높은 고유번호를 확인
    # g, p : g는 장르, p는 그 장르의 전체 재생횟수
    for (g, p) in gen_sort:
        # 장르를 가지고 d2에 존재하는 장르별 곡의 고유번호와 재생횟수를 확인
        # 그 장르의 최대 재생 곡의 재생횟수를 기준으로 내림차순 정렬
        ans_sort = sorted(d2[g], key = lambda x : (-x[1], x[0]))
        
        # d2가 가진 장르별 곡의 고유번호와 재생횟수를 정렬하여 2개까지만 정답에 대입
        # num : 곡의 고유번호, play: 곡의 재생횟수
        for (num, play) in ans_sort[:2]:
            answer.append(num)


    
    return answer
