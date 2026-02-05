#Tutorials

ant_ice_loss = read.table("data/antarctica_mass_200204_202505.txt",
                         skip=31,
                         sep="",
                         header = FALSE,
                         col.names = c("decimal_date", "mass_Gt", "sigma_Gt"))
grn_ice_loss = read.table("data/greenland_mass_200204_202505.txt",
                         skip=31,
                         sep="",
                         header= FALSE,
                         col.names = c("decimal_date", "mass_Gt", "sigma_Gt"))

head(grn_ice_loss)
summary(grn_ice_loss)
plot(mass_Gt ~ decimal_date,
     data=ant_ice_loss,
     ylab="Antarctica Mass Loss (Gt)")
plot(mass_Gt ~ decimal_date,
     data=grn_ice_loss,
     ylab="Greenland Mass Loss (Gt)")

plot(mass_Gt ~ decimal_date,
     data=ant_ice_loss,
     ylab="Antarctica Mass Loss (Gt)",
     type='l',
     ylim=range(grn_ice_loss$mass_Gt)) +
lines(mass_Gt ~ decimal_date,
     data=grn_ice_loss,
     type= 'l'
     col='red')

data_break = data.frame(decimal_date=2018.0, mass_Gt=NA, sigma_Gt=NA)
data_break
