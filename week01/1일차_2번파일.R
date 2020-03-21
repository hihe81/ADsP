nvec <- c(1,2,3,4,5) # c : vector을 만듦, 같은 종류의 데이터타입combine의 약자
(nvec)

class(nvec)

cvec <- c('K', 'O', 'R', 'E', 'A')

class(cvec)

lvec <- c(TRUE, FALSE)
class(lvec)

v <- c(FALSE, 2)
v
v <- c(FALSE, 2, 3.3, 4, TRUE)
v
class(v)

v <- c('A', 1)
v
class(v)


temps <- c(23, 21, 19, 24, 30, 22, 26)
temps

#temps 원래 벡터에다가 이름(컬럼명)을 붙여보자

names(temps) <-c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
temps

days<- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
temps2 <- c(1,2,3,4,5,6,7)
names(temps2) <- days
temps2

#숫자는 기본적으로 double(실수)형으로 인식하며 정수로 하고자 하면 숫자 뒤에 L붙임 
my.first <- c(3,45,56,73)
is.numeric(my.first)
is.integer(my.first)
is.double(my.first)

v2 <- c(3L,45L,56L,73L)
is.numeric(v2)
is.integer(v2)
is.double(v2)

v3 <- c('a','b5','hello','73')
is.numeric(v3)
is.integer(v3)
is.double(v3)


#연속된 숫자 만들기
z <- 1:15


x <- seq(1,15)


y <- seq(1,15,2)#1부터 15까지 만드는데 두칸씩 띄어쓰기(step)


#vector의 연산
#각 열의 합
v1 <- c(1,2,3)
v2 <- c(5,6,7)
v1 + v2
v1 - v2
v1 * v2
v1 / v2

#각 행의 합
sum(v1)
sum(v2)


#표준편차
sd(v1)
sd(v2)

#편차
var(v1)
var(v2)


v <- c(12,45,100,2)
sum(v)
var(v)
sd(v)
max(v)
min(v)

prod(v) # 전부 곱하고 싶다


#R Comparson Operators
#비교연산자 , R기초 10번 슬라이드

x <- 5

x > 5
x >= 5
x < 5
x <= 5
x == 5
x != 5 

5 > 6
5 >= 6

v1 <- c(1,2,3)
v2 <- c(10,20,30)
v1 < v2

v1 <- c(1,200,3)


#변수로도 해보자
var <- 1
var

var < -2
var <-1 # 마이너스는 주의할것

5 == 5
5 != 5

v <- c(1,2,3,4,5)
v < 2

##########################
v1 <- c(100,200,300)
v2 <- c('a', 'b', 'c')

#위 v1에서 200이라는 데이터를 가져오고 싶다면 대괄호[] 사용 
v1[2] #인덱스번호(순서) 2 의 데이터를 가져온다
v2[1]
v1[2] * 3


v1[1]
v1[3]
#v1의 인덱스 1과 3을 가져오고 싶다면..#v1[1,3]는 안됨
v1[c(1,3)] 


#데이터 슬라이싱
v <- 1:10
v
v[7]

v[ c(2,5,7) ]

v[ 3:6 ]  # 3~6까지 가져오고싶다. = v[ c(3:6)]

v1

names(v1) <- c('a', 'b', 'c') # v1에 이름을 붙이자
v1

# 이름을 붙인건 인덱스 대신 이름으로 데이터 접근하기 위함이다. 
v1[2] # 2번 인덱스에 있는 데이터가져와라
v1['b'] # b라는 이름 데이터 가져와라

v1
v1[c(1,3)]
v1[c('a','c')]


# TRUE와 FALSE 로 데이터에 접근할 수 있다. 

c <- c(45,22,87,19,99)
c > 50 # c가 50보다 크냐
filter <- c > 50  #50보다 크면 filter로 저장하자
c[filter] # filter가 TRUE인 것들을 가져옴, 아래와 같음
c[ c > 50 ] # c가 50보다 큰 데이터만 가져와라. 


