using Leaflet, Blink, GADM
layers = Leaflet.Layer.([GADM.get("CAN").geom]; color=:pink); 
provider = Leaflet.Esri(:imagery)
m = Leaflet.Map(; layers,
                provider,
                zoom=3,
                width=1000,
                height=1000,
                center=[50, -95.0]
                );
w = Blink.Window()
body!(w, m)