source(paste0(here::here(), "/0-config.R"))

tableau10 <- tableau_color_pal("Tableau 10")
pcols <- c("black",tableau10(10)[c(1, 2, 5)])

############################################# 
### dhs_plotd_laz
#############################################

dhs_plotd_laz = readRDS(paste0("results/figure-data/figdata-",laz_ageplot_name,".RDS"))
dhs_plotd_laz$region<-recode_factor(dhs_plotd_laz$region, 
                                    OVERALL = "Overall", 
                                    AFRO = "Africa", 
                                    PAHO = "Latin America", 
                                    SEARO = "South Asia")

laz_ageplot <- ggplot(dhs_plotd_laz,
                      aes(x=agem,y=fit,color=region,fill=region,linetype=dsource))+
  facet_grid(~region)+
  geom_abline(intercept=0,slope=0,color="gray70")+
  geom_ribbon(aes(ymin=fit_lb,ymax=fit_ub),color=NA,alpha=0.2)+
  geom_line(alpha=1)+
  scale_x_continuous(breaks=seq(0,24,by=6))+
  scale_y_continuous(breaks=seq(-2,0,by=0.5))+
  scale_color_manual(values=pcols,guide=FALSE)+
  scale_fill_manual(values=pcols,guide=FALSE)+
  scale_linetype_manual(values=c("solid","dashed","dotdash"))+
  labs(x="Child age, months",y="Length-for-age z-score")+
  coord_cartesian(ylim=c(-2,0))+
  theme_minimal()+
  theme(legend.position = "bottom",
        strip.placement="outside",
        strip.background = element_rect(fill=NA,color=NA),
        # strip.text.y = element_text(angle=180),
        panel.spacing = unit(0.5, "lines"),
        panel.grid.minor.x = element_blank()
  )

laz_ageplot


#############################################
# dhsden_plot_laz
#############################################

dhsden_plot_laz = readRDS(paste0("results/figure-data/figdata-",laz_dplot_name,".RDS"))

dhsden_plot_laz$region = recode_factor(dhsden_plot_laz$region, 
                                    OVERALL = "Overall", 
                                    AFRO = "Africa", 
                                    PAHO = "Latin America", 
                                    SEARO = "South Asia")

ki_medians = readRDS(paste0("results/ki.zscore.medians.monthly.rds"))
ki_medians = ki_medians[ki_medians$measure == "haz", c(1, 3)]
ki_medians$dsource = "ki cohorts"

ki_medians$region = recode_factor(ki_medians_haz$region, 
                                      OVERALL = "Overall", 
                                      AFRO = "Africa", 
                                      PAHO = "Latin America", 
                                      SEARO = "South Asia")

dhs_medians = data.table(cbind(c("Africa", "Overall", "Latin America", "South Asia"), rep(0, 4), rep("DHS", 4)))
names(dhs_medians) = c("region", "median", "dsource")

medians = rbind(ki_medians, dhs_medians)

dhsden_plot_laz = merge(x = dhsden_plot_laz, y = medians, by = c("region", "dsource"),  all.x = TRUE)

laz_dplot <- ggplot(data=dhsden_plot_laz,aes(x=x,y=y,color=region,linetype=dsource))+
  facet_grid(~region)+
  geom_line()+
  geom_point(aes(x = as.double(median), y = 0, shape = dsource))+
  scale_color_manual(values=pcols,guide=FALSE)+
  scale_fill_manual(values=pcols,guide=FALSE)+
  scale_linetype_manual(values=c("solid","dashed","dotdash"))+
  scale_shape_manual(values=c(19, 1))+
  scale_x_continuous(breaks=seq(-6,6,by=2))+
  coord_cartesian(xlim=c(-6,6),ylim=c(0,0.4))+
  labs(y="Density",x="Length-for-age z-score")+
  theme_minimal()+
  theme(legend.position="none",
        panel.grid.minor.y=element_blank()
  )

laz_dplot

#############################################
# Merge above plots into a single figure
#############################################

arrange_figures = grid.arrange(laz_dplot, 
                              laz_ageplot, 
                              nrow = 2, ncol = 1,
                              heights = c(2, 2),
                              widths= 8)

ggsave(arrange_figures, file=paste0("figures/stunting/fig-DHS-LAZ.png"), width=8, height=4)
