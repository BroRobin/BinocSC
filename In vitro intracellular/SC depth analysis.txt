## ----setup, include=FALSE-----------------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)
# using knit_hooks with purl() to convert Rmd to Rscript; make sure to use knitr::hook_purl

## -----------------------------------------------------------------------------
library(ggplot2)

## -----------------------------------------------------------------------------
# Load dataframe
contra_4 <- read.csv("contra_4.csv", stringsAsFactors = T)
ipsi_4 <- read.csv("ipsi_4.csv", stringsAsFactors = T)

## -----------------------------------------------------------------------------
# Convert um to mm values
contra_4$distance.from.midline..um.<- (contra_4$distance.from.midline..um.)/1000
contra_4$depth..um. <- (contra_4$depth..um.)/1000
ipsi_4$distance.from.midline..um. <- (ipsi_4$distance.from.midline..um.)/1000
ipsi_4$depth..um. <- (ipsi_4$depth..um.)/1000

## -----------------------------------------------------------------------------
# Contralateral midline graph (Figure 4F crossed)
Figure_4F_crossed <- ggplot(data = contra_4)+
  geom_point(aes(y = distance.from.midline..um., x = adjusted.bregma..mm., size = amplitude.at.0.5mW, fill = type, stroke = 0), shape = 21, alpha = 0.8, show.legend = T)+
  scale_fill_manual(values = c("black", "red3"))+  
  scale_size_continuous(range = c(1, 11), breaks = c(0.99,5,10, 20, 30, 40 ,50), labels = c("< 1", "5", "10", "20", "30", "40", "50"), name = "Amplitude (mV)")+ 
  ggtitle("contralateral SC")+
  theme(plot.title = element_text(hjust = 0.5))+ 
  scale_x_reverse(breaks = seq(-3.0, -4.8, -0.3), expand = c(0,0.3))+ 
  scale_y_continuous(breaks = seq(0, 1.75, 0.25), expand = c(0,0.25))+ 
  coord_cartesian(expand = F, xlim = c(-3.0, -4.8), ylim = c(0, 1.75))+ 
  ylab("horizontal distance from midline (mm)")+
  xlab("anterior to posterior from bregma (mm)")+
  theme(legend.position="right")+
  labs(color = "amplitude (mV)")

# save figure as svg
ggsave("figure_4F_crossed.svg", plot = Figure_4F_crossed, width = 6.5, height = 5, dpi = 1200, device = "svg")


## -----------------------------------------------------------------------------
# Ipsilateral midline graph (Figure 4F Uncrossed)
Figure_4F_uncrossed <- ggplot(data = ipsi_4)+
  geom_point(aes(y = distance.from.midline..um., x = adjusted.bregma..mm., size = amplitude.at.0.5mW, fill = type, stroke = 0), shape = 21, alpha = 0.8, show.legend = T)+
  scale_fill_manual(values = c("black", "red3"))+  
  scale_size_continuous(range = c(1, 11), breaks = c(0.99,5,10, 20, 30, 40 ,50), labels = c("< 1", "5", "10", "20", "30", "40", "50"), name = "Amplitude (mV)")+ 
  ggtitle("ipsilateral SC")+
  theme(plot.title = element_text(hjust = 0.5))+ 
  scale_x_reverse(breaks = seq(-3.0, -4.8, -0.3), expand = c(0,0.3))+ 
  scale_y_continuous(breaks = seq(0, 1.75, 0.25), expand = c(0,0.25))+ 
  coord_cartesian(expand = F, xlim = c(-3.0, -4.8), ylim = c(0, 1.75))+ 
  ylab("horizontal distance from midline (mm)")+
  xlab("anterior to posterior from bregma (mm)")+
  theme(legend.position="right")+
  labs(color = "amplitude (mV)")

ggsave("figure_4F_uncrossed.svg", plot = Figure_4F_uncrossed, width = 6.5, height = 5, dpi = 1200, device = "svg")


## -----------------------------------------------------------------------------
# Contralateral depth graph (Figure 4G crossed)
Figure_4G_crossed <- ggplot(data = contra_4) +
  geom_point(aes(x = adjusted.bregma..mm., y = depth..um., size = amplitude.at.0.5mW, fill = type, stroke = 0), shape = 21, alpha = 0.8, show.legend = T) +
  scale_fill_manual(values = c("black", "red3"))+   
  scale_size_continuous(range = c(1, 11), breaks = c(0.99,5,10, 20, 30, 40 ,50), labels = c("< 1", "5", "10", "20", "30", "40", "50"), name = "Amplitude (mV)")+ 
  ggtitle("contralateral SC")+
  theme(plot.title = element_text(hjust = 0.5))+ 
  scale_x_reverse(breaks = seq(-3.0, -4.8, by = -0.3), expand = c(0,0.3))+ 
  scale_y_reverse(breaks = seq(0, 1, by = 0.25), expand = c(0,0.25))+ 
  coord_cartesian(expand = F, xlim = c(-3.0, -4.8), ylim = c(1.25,0))+ 
  xlab("anterior to posterior from bregma (mm)")+
  ylab("depth from SC pia (mm)")+
  theme(legend.position="right")+
  labs(color = "amplitude (mV)")

ggsave("figure_4G_crossed.svg", plot = Figure_4G_crossed, width = 6.5, height = 5, dpi = 1200, device = "svg")
  

## -----------------------------------------------------------------------------
# Ipsilateral depth graph (Figure 4G uncrossed)
Figure_4G_uncrossed <- ggplot(data = ipsi_4) +
  geom_point(aes(x = adjusted.bregma..mm., y = depth..um., size = amplitude.at.0.5mW, fill = type, stroke = 0), shape = 21, alpha = 0.8, show.legend = T) +
  scale_fill_manual(values = c("black", "red3"))+   
  scale_size_continuous(range = c(1, 11), breaks = c(0.99,5,10, 20, 30, 40 ,50), labels = c("< 1", "5", "10", "20", "30", "40", "50"), name = "Amplitude (mV)")+ 
  ggtitle("ipsilateral SC")+
  theme(plot.title = element_text(hjust = 0.5))+ 
  scale_x_reverse(breaks = seq(-3.0, -4.8, -0.3), expand = c(0,0.3))+ 
  scale_y_reverse(breaks = seq(0, 1, 0.25), expand = c(0,0.25))+ 
  coord_cartesian(expand = F, xlim = c(-3.0, -4.8), ylim = c(1.25,0))+ 
  xlab("anterior to posterior from bregma")+
  ylab("depth from SC pia (mm)")+
  theme(legend.position="right")+
  labs(color = "amplitude (mV)")

ggsave("figure_4G_uncrossed.svg", plot = Figure_4G_uncrossed, width = 6.5, height = 5, dpi = 1200, device = "svg")
  

