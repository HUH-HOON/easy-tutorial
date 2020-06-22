
# 2시 수업시작.

dat <- iris$Sepal.Width
var(dat)
sd(dat)
sum(dat)
mean(dat)
median(dat)
max(dat)
min(dat)
var(dat)
sort(dat)
range(dat)
length(dat)
        # 간단한 명령어
 
d <- c( 1 : 10)
sort(x =d, decreasing = FALSE)


2 + 3
`+`(2.3)

        # sum 말고 다른 표현도 가능하다. ' ' 을 통하여 문자가 아닌 함수로 사용가능하다,

x <- 1:10
x >= 5
x[ x > 5 ]
        # 식의 논리값을 넣을수도있다.
sum(x> 5)
sum(x[x >5 ])
        # true = 1:
        # false = 0:
x[x>5 & x<8]

x <- c(90, 34, 89, 22)
lst <- list(name = "홍길동", age= 34, status = TRUE, score = x)
lst[1]
lst[[4]]
        # 4번째(score) 값을 가져올수 있다.
lst[[4]][3]
        # 원하는 값을 도출하는 방법.
lst$age

#factor


x <- c("A", "B","0","B" )
f <- factor(x)
x[2]
f[2]
levels(f)
as.integer(f)



m <- matrix(1:20, nrow = 4, ncol = 5)
m
m <- matrix(1:20, nrow = 4 )
m
        # row 값 , col 값
        # 열을 우선으로 표를 채운다.

m <- matrix(1:19, ncol = 5, nrow = 4)
m
        # recycleing rule 적용.
        # 모자르더라도 반복이 가능함.

(m1 <- matrix(1:20, nrow = 4, ncol = 5, byrow = T))

        # byrow 라는 함수를 쓰면 행을 우선으로 나열된다.

# 3시!!!


x <- 1:4
y <- 5:8
cbind(x,y)
rbind(x,y)

        # c바인드는 기존에 있던 백터에다가 매트릭스를 갖다 붙일때.
        # column bind 로 기억하는게 더 좋음.

(x <- matrix(1:20, ncol = 5))
x[2,3]
x[3, ]
x[ ,2]

        # 행, 열 헷갈리지 말것! - l

x[2,2:3]

        # 행 값을 입력할때 T,F 로 처리가 가능함.
        # 행만 가능함. (열은 절대 안됨!)

city <- c("seoul", "washington", "hongkong")
ranking <- c(1, 2, 3)
df <- data.frame(city, ranking)
str(df)
df <- data.frame(city, ranking, stringsAsFactors = F)
str(df)


iris[, c(1,2)]
iris[, c(1, 3, 5)]
iris[, c("Sepal.Length", "Species")]
iris[1:2, -5]


iris


dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
head(iris)
tail(iris)

unique(iris[, 5])
table(iris$Species)

        # 5열만 가져오는 코드 ( 갯수 확인 가능.)
        # 짤라서 백터로 가져옴.


#3시 수업끝.


# 4시 수업


m <- matrix(1:50)
m
m[,1] >= 3
m [seq(1, 10, 2),]
seq(1, 10, 2)


colSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])[1:2]
rowMeans(iris[,-5])[1:2]

m <- matrix(1:6, nrow = 2)
t(m)
        # t() 하면 2x3 이 3x2로 된다.


iris

subset(iris, Species == "setosa")
iris[iris$Species == 'setosa',]

        # 두개다 가능하다. 하지만 둘다 알고있을것.
        # subset (데이터 프레임, 조건문)[1:5, ]


class(iris)
is.matrix(iris)
is.data.frame(iris)
typeof(iris)
is.matrix(state.x77)
is.data.frame(state.x77)


setwd("c:/haka")
write.csv(airquality, "airquality.csv", row.names = F)

wirte.csv(airquality, "airquality.scv", row.names = F)
wirte.csv(iris, "iris.csv", row.names = F)


        # 저장하는 방법.


air <- read.csv("airquality.csv", header = T)
head(air)



air <- airquality

subset(air, Month ==5)
air[air$Month == 5, ]


        # 불러오는 방법.



# 5시 수업시작


grade <- "A"
if (grade == "A"){
  bouns <- 100
} else {
  bouns <- 50
}
print(bouns)


a<- 10
b<- 20
ifelse(a > 5 && b>10, a+b, 0)
ifelse(a > 5 || b>30, a*b, 0)

head(iris)
iris$Grade <- ifelse(iris$Sepal.Length >= 5, 'H','L' )
iris

        # iris $ grade 그레이드라는 항목을 만든다.
        # ifelse 문을 활용하여 5이상일때 h , 아닌경우 l 을 입력.





for (i in 2:9 ){
  for (j in 1:9){
      cat(i, "X", i, ' = ', i*j, '\n')
  }  
  cat("2 X", i, "=", 2 * 1, "\n")
}

        #cat 함수는 다 보여주는 함수.





total <- 0
for (i in 1:100){
    total <- total +i
}
print(total)





for (i in 2:9){
    cat("9 X", i, "=", 9*i, "\n")
}


head(iris[, 1:4])
apply(iris[,1:4],2,mean)
apply(iris[,-5],1,mean[1:10])



apply(iris[,1:4],2,mean)



