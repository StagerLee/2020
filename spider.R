library(fmsb)

data <- data.frame(danceability = c(100, 0, 20, 23),
                   energy = c(100, 0, 9, 100),
                   positivness = c(100, 0, 4, 2),
                   speechiness = c(100, 0, 0, 27),
                   acousticness = c(100, 0, 56, 17),
                   instrumentalness = c(100, 0, 57, 39),
                   liveness = c(100, 0, 14, 13),
                   row.names = c('max', 'min', 'Focus Music', 'Anti-focus Music')
)
                   
# Define fill colors
colors_fill <- c(scales::alpha("blue", 0.1),
                 scales::alpha("red", 0.1),
                 scales::alpha("tomato", 0.9),
                 scales::alpha("skyblue", 0.9))

# Define line colors
colors_line <- c(scales::alpha("blue", 0.8),
                 scales::alpha("red", 0.8),
                 scales::alpha("tomato", 0.5),
                 scales::alpha("royalblue", 0.5))



radarchart(data, seg = 7, title = 'Mean Audio Features', pcol = colors_line, pfcol = colors_fill, plwd = 4)

# Add a legend
legend(x=0.6, 
       y=1.35, 
       legend = rownames(data[-c(1,2),]), 
       bty = "n", pch=20 , col = colors_line, cex = 1.05, pt.cex = 3)

