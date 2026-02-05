# 2026-01-29
# Nkowu

vec = c(1, 0, 2, 1)
vec
vec[ c(T, F, T, F)] # Using True and False to subset the data 

3 == 3
x = 1
y = 3
x == y # One equal sign is an assignor and double equal sign is truly asking if one is equal to the other

x = 1
y = 3
x != y

x %in% vec
x

c(1,2,3,4) %in% c(3,2,1)


world_oceans = data.frame(ocean = c("Atlantic", "Pacific", "Indian", "Arctic", "Southern"),
                           area_km2 = c(77e6, 156e6, 69e6, 14e6, 20e6),
                           avg_depth_m = c(3926, 4028, 3963, 3953, 4500))
world_oceans
world_oceans$avg_depth_m > 4000 # test condition
world_oceans$ocean[world_oceans$avg_depth_m>4000]

1+2 == 3
0.1+0.2 == 0.3

(0.1 + 0.2) - 0.3

vec1 = c(1,2,3)
vec2 = c(3,2,1,0,-1)
vec1 == vec2

world_oceans[(world_oceans$avg_depth_m > 4000) & world_oceans$area_km2 > 100e6,]

vec2 = c(1,2,NA,4)
2 %in% vec2
NA %in% vec2
x = NA
y = NA
x == y
is.na(x)
is.na(vec2)
sum( is.na(vec2))

# test is else statements

num = -2
if(num < 0){
  num = num * -1
  print("I made num positive!")
}
num

temp = 99
fever = 98.6
if(temp < fever) {
  print ("low fever")
}
temp

temp = 98.9
fever = 98.6
if(temp > fever & > 101) {
  print ("warning message")
}
temp

a = 200
b = 200

if(a>b) {
  print("a wins!")
} else if (b > a){
  print("b wins!")
} else {
  print ("its a tie!")
}
