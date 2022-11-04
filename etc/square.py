import math

def solution(w,h):
    answer = 0
    k = math.gcd(w, h)
    w2 = w//k
    h2 = h//k
    
    if w2<h2:   # 크기 비교
        for i in range(1,w2+1):
            answer += math.ceil(h2*i/w2)-math.floor(h2*(i-1)/w2)    # math.ceil(h2/w2*i) 계산 시 오차 발생함
    else:
        for i in range(1,h2+1):
            answer += math.ceil(w2*i/h2)-math.floor(w2*(i-1)/h2)
   
    return w*h - answer*k

print(solution(8,12))   # result = 80