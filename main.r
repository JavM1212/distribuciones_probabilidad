###### DISCRETAS ######


### BINOMIAL ###
# Da la probabilidad de que se den x exitos en n intentos, cada intento con
# una probabilidad de p
# -----------------------------------------------------------------------------#
# Distribucion Binomial [P(X=2)]
x <- 2 # exitos
n <- 5 # intentos
p <- 0.5 # probabilidad de exito
dbinom(x, n, p)

# Acumulativa Binomial [P(X<=2)]
r <- 2 # x = 0, 1, 2, ..., r
n <- 5 # numero de intentos
p <- 0.5 # probabilidad de exito
pbinom(r, n, p)
### BINOMIAL ###

### MULTINOMIAL ###
# Da la probabilidad de que E1 ocurra x1 veces, E2 ocurra x2 veces, ..., Ek 
# ocurra xk veces. Sabiendo que E1 tiene una probabilidad p1, E2 de p2, ...
# y Ek de pk
# -----------------------------------------------------------------------------#
# Da la probabilidad de que en el intento k, 
# Distribucion multinomial
x <- c(1, 5, 6) # x1, x2, ..., xk exitos
p <- c(0.3, 0.6, 0.1) # con probabilidad p1, p2, ..., pk
n <- sum(x) # numero de intentos
dmultinom(x, n, p)
### MULTINOMIAL ###

### HIPERGEOMETRICA ###
# Da la probabildad de que seleccionar x exitos, de k articulos considerados
# exito y (n - x) fracasos de los (N - k) articulos considerados fracasos, 
# cuando se hace una muestra aleatoria de n articulos de un total de N
# -----------------------------------------------------------------------------#
# Distribucion Hipergeometrica [P(X=1)]
x <- 1 # obtener x exitos
n <- 5 # tamano de la muestra en la poblacion
f <- 37 # f se consideran fracasos (f = N - k). En este caso N = 40
k <- 3 # k se consideran exitos
dhyper(x, k, f, n)

# Acumulativa Hipergeometrica [P(X<=1)]
x <- 1 # obtener x exitos
n <- 5 # tamano de la muestra en la poblacion
f <- 37 # f se consideran fracasos
k <- 3 # k se consideran exitos
phyper(x, k, f, n)
# ### HIPERGEOMETRICA ###

### BINOMIAL NEGATIVA ###
# Da la probabilidad de que el k-esimo exito ocurra en x-esimo intento, cada
# intento con una probabilidad de p
# -----------------------------------------------------------------------------#
# Distribucion Binomial Negativa [P(X=4)]
k <- 4 # cantidad de exitos por alcanzar
x <- 4 - k # numero de fallos antes de los k exitos
p <- 0.55 # probabilidad de cada intento
dnbinom(x, k, p) 

# Acumulativa Binomial Negativa [P(4<=X<=7)]
k <- 4 # cantidad de exitos por alcanzar
x <- 7 - k # numero de fallos antes de los k exitos
p <- 0.55 # probabilidad de cada intento
pnbinom(x, k, p) 
# ### BINOMIAL NEGATIVA ###

### GEOMETRICA ###
# Distribucion binomial cuando k = 1
# -----------------------------------------------------------------------------#
# Distribucion Geometrica [P(X=5)]
x <- 5 # numero de intntos
p <- 0.01 # probabilidad de cada intento
dgeom(x, p) 

# Acumulativa Geometrica [P(X<=5)]
x <- 5 # numero de intntos
p <- 0.01 # probabilidad de cada intento
pgeom(x, p) 
# ### GEOMETRICA ###

### POISSON ###
# Da la probabilidad de que ocurra un numero de eventos en un intervalo de 
# tiempo λt
# -----------------------------------------------------------------------------#
# Distribucion Poisson [P(X=6)]
x <- 6 # numero de eventos
λt <- 4 # intervalo de tiempo λt
ppois(x, λt)

# Acumulativa Poisson [P(X<=15)]
x <- 15 # numero de eventos
λt <- 10 # intervalo de tiempo λt
ppois(x, λt)
# ### POISSON ###


###### DISCRETAS ######




###### CONTINUAS ######


### UNIFORME ###
# Si tenemos una variable aleatoria continua X, y fdp es una f(x) tal que para 
# todo x, f(x) = c, entonces es una fdp uniforme
# -----------------------------------------------------------------------------#
# Distribucion Uniforme [P(X=3)] (en realidad es P(2.5<X<3.5))
x <- 3
A <- 0
B <- 4
dunif(x, A, B)

# Acumulativa Uniforme [P(X<3)]
x <- 3
A <- 0
B <- 4
punif(x, A, B)
### UNIFORME ###

### NORMAL ###
# Muchas variables aleatorias pueden ser representadas por esta distribucion
# -----------------------------------------------------------------------------#
# Acumulativa Normal [P(X<362)]
x <- -4.67
μ <- 0
σ <- 1
pnorm(x, μ, σ)
### NORMAL ###

### EXPONENTIAL ###
# Se usa para averiguar el parametro λt en el proceso de Poisson
# -----------------------------------------------------------------------------#
# Acumulativa Exponential [P(X<8)]
x <- 8 # tiempo
β <- 5 # tiempo medio entre fallas
λ <- 1/β # parametro de la exponencial
# exact
pexp(x, λ)
### EXPONENTIAL ###

### GAMMA ###
# Se usa para averiguar el parametro λt en el proceso de Poisson
# -----------------------------------------------------------------------------#
# Acumulativa Gamma [P(X<1)]
x <- 60 # tiempo
α <- 5 # forma (cuantos eventos se van a dar en el intervalo elegido)
β <- 10 # tiempo medio entre fallas
# exact
pgamma(x, shape=α, scale=β)
### GAMMA ###

### CHICUADRADA ###
# Se usa para averiguar el parametro λt en el proceso de Poisson
# -----------------------------------------------------------------------------#
# Acumulativa ChiCuadrada [P(X<1)]
x <- 1 # tiempo
v <- 2 # grados de libertad
# exact
pchisq(x, v)
### CHICUADRADA ###

### BETA ###
# Se usa para averiguar el parametro λt en el proceso de Poisson
# -----------------------------------------------------------------------------#
# Acumulativa Beta [P(X<1/3)]
x <- 1/3
α <- 1
β <- 3
# exact
pbeta(x, α, β)
### BETA ###

### LOGNORMAL ###
# Se usa para averiguar el parametro λt en el proceso de Poisson
# -----------------------------------------------------------------------------#
# Acumulativa Lognormal [P(X<8)]
x <- -1.12
μ <- 0
σ <- 1
# exact
dlnorm(x, μ, σ)
### LOGNORMAL ###

### WEIBULL ###
# Se usa para averiguar el parametro λt en el proceso de Poisson
# -----------------------------------------------------------------------------#
# Acumulativa Weibull [P(X<8)]
x <- 8
α <- 0.01
β <- 2
# exact
pweibull(x, α, β)
### WEIBULL ###


###### CONTINUAS ######