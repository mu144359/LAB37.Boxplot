####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Selene Muñoz Ortega (UAEH)
#V5
# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
# Boxplot en R (diagrama de cajas y bigotes)


#instalando paquete con los datos
#install.packages("gapminder")
#install.packages("ggplot2")



# cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)

# cargando datos a entorno
data("gapminder")

# filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]



# boxplot en ggplot2
ggplot(data = gapminder2007,
       mapping = aes(y=lifeExp))+
  geom_boxplot()

# boxplot varias variables ggplot2
ggplot(data = gapminder2007,
       mapping = aes(x=continent,
                     y=lifeExp))+
  geom_boxplot()

# marcando datos atipicos
ggplot(data = gapminder2007,
       mapping = aes(x=continent,
                     y=lifeExp))+
  geom_boxplot(outlier.colour = "red",
               outlier.shape = 8,
               outlier.size = 4)

# marcando datos atipicos (vertical)
ggplot(data = gapminder2007,
       mapping = aes(x=continent,
                     y=lifeExp))+
  geom_boxplot(outlier.colour = "red",
               outlier.shape = 8,
               outlier.size = 4)+
  coord_flip()

# marcando datos atipicos y observaciones
ggplot(data = gapminder2007,
       mapping = aes(x= continent,
                     y=lifeExp))+
  geom_boxplot()+
  geom_jitter(shape = 16,
              position = position_jitter(0.2))

# cambiando color de cajas
ggplot(data = gapminder2007,
       mapping = aes(x= continent,
                     y=lifeExp,
                     fill=continent))+
  geom_boxplot()

# grafico optimo
