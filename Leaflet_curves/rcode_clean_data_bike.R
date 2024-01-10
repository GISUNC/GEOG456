df = read.csv("/Users/javierarce/Downloads/IndeSt_Trips.csv")
#sLatLon = aggregate(cbind(start_lat, start_lon) ~ start_station, df, mean)
eLatLon = aggregate(cbind(end_lat, end_lon) ~ end_station, df, mean)
names(eLatLon) = c("station","lat","lon")
#names(sLatLon) = c("station","lat","lon")
#stations = rbind(sLatLon, eLatLon)
# the start station is already a possible end station
library(jsonlite)
write_json(eLatLon, "/Users/javierarce/Documents/dev/clases/GEOG456/Leaflet_curves/data/stations.js", dataframe = c("columns"))

