# 2022-10-27
# 프로그래머스 https://school.programmers.co.kr/learn/courses/30/lessons/42862

def solution(n, lost, reserve):
    
    set_lost = set(lost)-set(reserve)
    set_reserve = set(reserve)-set(lost)
    
    lost = list(set_lost)
    reserve = list(set_reserve)
    
    for l in lost:
        if l-1 in reserve:
            reserve.remove(l-1)
        elif l+1 in reserve:
            reserve.remove(l+1)
        else:
            n = n-1
    
    return n