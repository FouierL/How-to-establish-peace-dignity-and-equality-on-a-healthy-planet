chordDiagram(
x = mydata,
grid.col = hcl.colors(16, palette = "Reds"),
directional = 1,
direction.type = c("arrows", "diffHeight"),
diffHeight = -0.02,
annotationTrack = c("name", "grid", "axis"),
annotationTrackHeight = c(0.05, 0.08),
link.arr.type = "big.arrow",
link.sort = TRUE,
link.largest.ontop = TRUE,
transparency = 0.25 13. )
corrplot( 
corr = abs(M), 
order = 'AOE',method = 'pie',
type = 'lower', 18. tl.pos = 'd') 
corrplot(
corr = abs(M),
add = TRUE,
type = 'upper',
method = 'number',
order = 'AOE',
diag = FALSE,
tl.pos = 'n',
cl.pos = 'n') 
mydata=as.data.frame(mydata) 
mydata2=as.data.frame(mydata2)
forceNetwork(Links = mydata, Nodes = mydata2, Source = "source",
Target = "target", Value = "value", NodeID = "name",
Nodesize = 'size', radiusCalculation = "d.nodesize",
Group = "group", opacity = 1, legend = T, bounded = F)