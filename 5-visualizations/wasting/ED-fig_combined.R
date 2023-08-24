
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
require(cowplot)


# Install and load necessary package
if (!require(magick)) {
  install.packages("magick")
}
library(magick)

# Define the DPI and size in cm
dpi <- 600
width_cm <- 18
height_cm <- 17

# Convert size in cm to size in pixels
width_px <- dpi * width_cm / 2.54  # 1 inch is 2.54 cm
height_px <- dpi * height_cm / 2.54

# Make them integers (round and convert to integer)
width_px <- round(width_px)
height_px <- round(height_px)


fig4 <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig4-initial-size.jpeg"))
fig4_resized <- image_scale(fig4, geometry = paste0(height_px/1.3, "x", height_px, "!"))
image_write(fig4_resized, paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig4.jpeg"))



# # Read the images
# fig4a <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig4a.jpeg"))
# fig4b <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig4b.jpeg"))
# 
# fig5a <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig5a.jpeg"))
# fig5b <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig5b.jpeg"))
# fig5c <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig5c.jpeg"))
# fig5d <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig5d.jpeg"))
# fig5e <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig5e.jpeg"))

load(paste0(here::here(),"/figures/ED-pngs/wasting/ED-plots_5a_5d.Rdata"))
load(paste0(here::here(),"/figures/ED-pngs/wasting/ED-plots_5b.Rdata"))
load(paste0(here::here(),"/figures/ED-pngs/wasting/ED-plots_5c.Rdata"))
load(paste0(here::here(),"/figures/ED-pngs/wasting/ED-plots_5e.Rdata"))

fig5bc <- plot_grid(fig5b, fig5c, labels = c("b","c"), ncol = 2, align = 'v', axis = 'l')
EDfig5 <- plot_grid(fig5a, fig5bc, fig5d, fig5e, labels = c("a","","d","e"), ncol = 1, align = 'v', axis = 'l', rel_heights = c(1, 0.75, 1, 1))
ggsave(plot = EDfig5, width=38, height=34, units = "cm", dpi=600,
       filename=paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig5-initial-size.jpeg"), device='jpeg')

fig5 <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig5.jpeg"))
EDfig5_resized <- image_scale(fig5, geometry = paste0(width_px, "x", height_px, "!"))
image_write(EDfig5_resized, paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig5.jpeg"))

image_write(fig5, paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig5.jpeg"))

fig6a <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig6a.jpeg"))
fig6b <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig6b.jpeg"))
fig6c <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig6c.jpeg"))
fig6 <- image_append(c(fig6a, fig6b, fig6c), stack=TRUE)

image_write(fig6, paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig6.jpeg"))


fig11a <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig11a.jpeg"))
fig11b <- image_read(paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig11b.jpeg"))
#fig11a <- image_annotate(fig11a, text = "a", location = "+10+10", gravity = "northwest")

fig11 <- image_append(c(fig11a, fig11b), stack=TRUE)
image_write(fig11, paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig11.jpeg"))

