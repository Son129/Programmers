def solution(n):
    answer = []
    for a in range(1,n+1):
        if n % a == 0:
            b = n//a
            answer.append(a)
           
    answer.sort()
    return answer