#Data
# 2019년 1월 부터 12월까지의 수입revenue과 지출expenses 데이터 입니다.
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#각 월별 수익(a)을 계산하세요.
profit <- revenue - expenses
profit

# 세금은 수익의 30% 입니다. 
# 따라서 각 월별, 세금을 구하세요.
# round 함수(반올림 함수)를 이용해서 소수점 2 자리까지 표현하세요.
help("round")


tax <- round(profit * 0.3, digits = 2)
tax

# 이제 월별 세후 수익을 구하세요.

profit.after.tax <- profit - tax
profit.after.tax

# 월 이름을 붙이자
names(profit.after.tax) <- c('1월','2월', '3월', '4월','5월','6월', '7월', '8월', '9월', '10월', '11월', '12월')
profit.after.tax


# 각 월별, 비용대비 세후수익이 얼마인지 계산하세요.
profit.margin <- profit.after.tax / revenue * 100
profit.margin <- round(profit.margin, 2)

# 퍼센트로 나오도록, 100을 곱하세요.

profit.margin * 100


# 2019년도 세후 수익은 얼마인지 평균을 구하세요.
mean.pat <- sum(profit.after.tax) / 12
mean.pat


# 월별로, 평균수익 이상으로 수익을 낸 월을 찾으세요.

profit.after.tax > mean.pat
good.months <- profit.after.tax[profit.after.tax >= mean.pat]
good.months

# 반대로, 평균수익 이상 내지 못한 월들을 찾으세요.
bad.months <- profit.after.tax[profit.after.tax < mean.pat]
bad.months

# 세후 수익이 가장 좋은 달은 몇월입니까?

max.data <- max(profit.after.tax)
max.data

profit.after.tax == max.data
profit.after.tax[profit.after.tax == max.data]


# 세후 수익이 가장 나쁜달은 몇월입니까?

min.data > min(profit.after.tax)
min.data
profit.after.tax == min.data
profit.after.tax[profit.after.tax == min.data]

