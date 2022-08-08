library(calendR)
calendR(year = 2022, ## Year
        start = "S",   ## Start the week
        orientation="portrait",
        months.pos=0)

calendR(year = 2022,   ## Year
        start = "S",
        orientation = "portrait",
        mbg.col = 2,         ## Background color for the month names
        months.col = "white",  ## Text color of the month names
        special.days = c(1,26,83,     # Color days of the year
                         99, 102, 205, 266, 45),
        special.col = "pink", # Color of the special.days
        months.pos = 0.5)     # Horizontal alignment of the month names


## Add background
calendR(mbg.col = 4,               # Background color for the month names
        months.col = "white",      # Text color of the month names
        special.days = "weekend",  # Color the weekends
        special.col = "lightblue", # Color of the special.days
        lty = 0,                   # Line type
        weeknames = c("Mon", "Tue",  # Week names
                      "Wed", "Thu",
                      "Fri", "Sat",
                      "Sun"),
        title.size = 30,   # Title size
        orientation = "p", # Portrait orientation
        start = "S",       # Start the week on Sundays
        bg.img = "https://i.pinimg.com/originals/10/1e/f6/101ef6a9e146b23de28fa2cd568ad17b.jpg")  # Image

## Lunar Calender
calendR(month = 3,
        lunar = TRUE,         # Add moons to monthly calendar
        lunar.col = "gray60", # Color of the non-visible area of the moon
        lunar.size = 7)       # Size of the moons


# Set the corresponding events
events<-rep(NA,365)
events[40:45]<-"Trip"
events[213:240]<-"Holidays"
events[252]<-"Birthday"
events[359]<-"Christmas" 

calendR(year=2022,
        special.days=events,
        special.col=c("pink","lightblue",
                      "lightgreen","lightsalmon"),
        legend.pos="top",
        pdf=TRUE,
        doc_name="my_calender1")

calendR(year=2022,month=8,
        start="M",
        text=c("Running","Running",
               "Class"), 
        text.pos=c(5,16,25), 
        text.size=4.5,
        text.col = 4)
