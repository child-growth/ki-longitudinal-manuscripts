---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        birthwt                       n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ---------------------------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       190     241  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   51     241  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       161     168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    7     168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       152     176  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   24     176  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       138     152  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   14     152  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       248     264  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   16     264  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       201     210  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    9     210  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       168     178  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                   10     178  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        77      88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   11      88  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight       311     373  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          Low birthweight                   62     373  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       191     302  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight                  111     302  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        27      32  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    5      32  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       959    1261  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  302    1261  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       386     550  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  164     550  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       485     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  155     640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       549     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  172     721  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1058    1242  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight                  184    1242  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       354     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  155     509  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         8      11  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      11  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15319   15319  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   15319  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      6936    7951  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1015    7951  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       631     683  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   52     683  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      5126    6463  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1337    6463  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     11093   19023  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 7930   19023  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1880    2517  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  637    2517  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       179     228  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   49     228  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       198     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       190     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   32     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       207     226  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   19     226  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       248     264  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   16     264  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       229     242  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     242  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       171     180  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     180  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       269     307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   38     307  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight       329     392  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          Low birthweight                   63     392  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       178     279  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight                  101     279  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        22      23  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    1      23  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       854    1115  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  261    1115  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       359     505  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  146     505  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       457     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  141     598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       527     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  168     695  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1591    1646  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   55    1646  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight       813     950  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight                  137     950  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       330     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  139     469  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         7       9  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    2       9  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13309   13309  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   13309  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5389    6157  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  768    6157  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       623     680  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   57     680  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      4767    5975  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1208    5975  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      6432   10752  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 4320   10752  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1322    1758  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  436    1758  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       177     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       188     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       189     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       205     223  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     223  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       227     242  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   15     242  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       218     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   12     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       163     171  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     171  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       274     313  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39     313  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight       335     401  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          Low birthweight                   66     401  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       202     303  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight                  101     303  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        20      20  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    0      20  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       873    1135  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  262    1135  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       337     480  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  143     480  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       433     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  132     565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       529     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  159     688  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1433    1474  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   41    1474  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight       496     572  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight                   76     572  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       343     480  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  137     480  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6       8  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    2       8  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight     12428   12428  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   12428  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5192    5910  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  718    5910  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       609     671  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   62     671  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      4327    5388  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1061    5388  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2002    2688  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  686    2688  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       176     223  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   47     223  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       184     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       186     218  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                   32     218  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       205     223  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     223  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       218     232  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight                   14     232  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       218     232  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   14     232  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       161     169  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     169  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       280     317  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   37     317  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight       329     394  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          Low birthweight                   65     394  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       217     325  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight                  108     325  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        19      21  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    2      21  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       872    1138  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  266    1138  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       324     466  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  142     466  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       430     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  136     566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       515     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  159     674  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1041    1071  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   30    1071  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight       496     567  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight                   71     567  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       330     468  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  138     468  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5       7  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    2       7  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     12682   12682  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0   12682  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5197    5914  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  717    5914  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       656     720  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                   64     720  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      3737    4624  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight                  887    4624  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2208    2978  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  770    2978  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       164     210  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   46     210  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       174     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       185     217  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   32     217  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       206     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       209     222  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   13     222  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       215     227  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   12     227  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       161     169  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     169  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       290     329  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39     329  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight       320     384  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          Low birthweight                   64     384  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       195     296  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight                  101     296  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        12      14  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                    2      14  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       887    1159  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  272    1159  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       312     445  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  133     445  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       412     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  120     532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       504     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  156     660  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       763     786  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   23     786  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       764     884  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  120     884  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       324     468  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  144     468  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6       7  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1       7  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      1001    1001  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0    1001  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      2205    2538  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  333    2538  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       579     634  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   55     634  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2201    3006  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  805    3006  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       163     210  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   47     210  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       168     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    7     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202     220  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     220  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       197     211  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   14     211  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       213     224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   11     224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       155     163  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     163  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       282     321  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39     321  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight       315     376  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          Low birthweight                   61     376  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       184     278  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight                   94     278  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       888    1162  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  274    1162  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       302     432  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  130     432  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       407     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  121     528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       459     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  145     604  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       640     658  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   18     658  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       766     881  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  115     881  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       336     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  144     480  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5       6  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1       6  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight       275     275  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     275  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1763    2031  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  268    2031  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       525     580  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   55     580  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2226    3015  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  789    3015  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       162     207  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     207  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       160     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    7     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184     217  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     217  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202     220  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     220  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       188     200  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   12     200  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       219     232  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     232  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       147     155  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     155  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       267     305  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   38     305  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight       312     374  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          Low birthweight                   62     374  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       179     254  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight                   75     254  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       283     407  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  124     407  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       411     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  130     541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       411     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  135     546  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         9       9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       9  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       748     864  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  116     864  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       315     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  130     445  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6       7  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1       7  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight       218     218  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     218  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1404    1591  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  187    1591  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       507     558  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   51     558  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       160     205  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     205  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       157     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    8     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184     217  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     217  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202     220  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     220  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       177     187  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   10     187  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       221     234  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     234  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       147     155  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     155  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       272     308  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   36     308  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       318     384  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          Low birthweight                   66     384  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight        68     106  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                   38     106  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       276     396  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  120     396  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       355     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  116     471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       368     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  122     490  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       671     781  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  110     781  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       252     341  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                   89     341  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1       1  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    0       1  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight       209     209  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     209  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1024    1164  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  140    1164  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       538     590  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   52     590  y_rate_haz       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/c87fe91a-7371-4bec-9175-3035173945d5/7753634c-4960-48e8-9030-0f07051ebb07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c87fe91a-7371-4bec-9175-3035173945d5/7753634c-4960-48e8-9030-0f07051ebb07/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c87fe91a-7371-4bec-9175-3035173945d5/7753634c-4960-48e8-9030-0f07051ebb07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1518172   -0.1890986   -0.1145358
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0257752   -0.1001415    0.0485910
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.1180299    0.0598237    0.1762362
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.5030250    0.3948260    0.6112240
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0711501   -0.1272826   -0.0150176
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                 0.0570672   -0.0662458    0.1803802
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0206864   -0.0236698    0.0650427
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                 0.3301519    0.1736759    0.4866278
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.2719855   -0.3065680   -0.2374029
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -0.0701296   -0.2200103    0.0797511
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1851276   -0.2353578   -0.1348975
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -0.0816544   -0.3099199    0.1466111
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1618843   -0.2077322   -0.1160364
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0289160   -0.1496889    0.0918569
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0667167   -0.1789684    0.0455350
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.0204190   -0.3011610    0.3419989
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.2185913   -0.2796666   -0.1575160
0-3 months     ki1000108-IRC              INDIA                          Low birthweight              NA                -0.4258575   -0.5517666   -0.2999484
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.2519501   -0.3074947   -0.1964055
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.1578668   -0.2270845   -0.0886490
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.4606344   -0.7204747   -0.2007941
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                -0.2237574   -0.5399283    0.0924136
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.1558073   -0.1897056   -0.1219091
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.0421479   -0.0825386   -0.0017573
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2720197   -0.3039059   -0.2401335
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.1528824   -0.2009077   -0.1048570
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.2081968   -0.2284467   -0.1879469
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.1277007   -0.1598764   -0.0955251
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2415922   -0.2615897   -0.2215948
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.1945485   -0.2298584   -0.1592385
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.2931951   -0.3184799   -0.2679104
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.2283015   -0.2950298   -0.1615733
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0523938   -0.0814647   -0.0233229
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                 0.0155843   -0.0343815    0.0655500
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1357075   -0.1465643   -0.1248507
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.1674660   -0.1980859   -0.1368462
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.5419481   -0.5651239   -0.5187723
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.4116006   -0.4922952   -0.3309060
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0808551   -0.0884011   -0.0733091
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                 0.0136615   -0.0022281    0.0295511
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0203587    0.0142041    0.0265133
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                 0.1120508    0.1048807    0.1192209
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.3920091   -0.4263434   -0.3576747
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                 0.0704073    0.0412498    0.0995649
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0375017   -0.0638488   -0.0111547
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                 0.0314295   -0.0229871    0.0858461
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0504361    0.0127127    0.0881595
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.2446777    0.1331539    0.3562015
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0443932   -0.0782206   -0.0105659
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -0.0158183   -0.0784481    0.0468115
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0347516   -0.0618910   -0.0076121
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                 0.0884430   -0.0070347    0.1839207
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0169255   -0.0153247    0.0491758
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                 0.0757531   -0.0456006    0.1971069
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0082262   -0.0473040    0.0308515
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.0183985   -0.1546016    0.1913987
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0817218   -0.1183295   -0.0451142
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.1055344   -0.0529042    0.2639730
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1229822   -0.1736310   -0.0723334
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.0672086   -0.0619980    0.1964153
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0721396   -0.1048870   -0.0393923
3-6 months     ki1000108-IRC              INDIA                          Low birthweight              NA                 0.0603916   -0.0192757    0.1400590
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0354223    0.0010859    0.0697586
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                 0.1215347    0.0774725    0.1655968
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0308611   -0.0525240   -0.0091982
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                 0.0481903    0.0141568    0.0822239
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0602554   -0.0860679   -0.0344429
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0342785   -0.0810093    0.0124522
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0439304   -0.0615034   -0.0263573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                 0.0209135   -0.0169813    0.0588083
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0148623   -0.0040010    0.0337255
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                 0.0717725    0.0353611    0.1081839
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0884594   -0.1054724   -0.0714465
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0199948   -0.0689264    0.1089159
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0541873   -0.0771216   -0.0312530
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                 0.0545236    0.0024575    0.1065897
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1863241   -0.2076128   -0.1650354
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.1022646   -0.1372620   -0.0672672
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0164779   -0.0262652   -0.0066906
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.1072456    0.0811642    0.1333271
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1108760   -0.1265834   -0.0951686
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.0327697   -0.0810636    0.0155243
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0655211   -0.0720558   -0.0589863
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                -0.0174646   -0.0307582   -0.0041710
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0347684   -0.0408829   -0.0286539
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                 0.0391845    0.0308291    0.0475399
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0225182   -0.0387951   -0.0062414
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                 0.0344293    0.0079209    0.0609378
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0732281   -0.0922052   -0.0542510
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0636965   -0.1045175   -0.0228756
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0079117   -0.0280528    0.0438762
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.0972351   -0.0552421    0.2497124
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0806446   -0.1070451   -0.0542441
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -0.0162775   -0.0563248    0.0237699
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0344589   -0.0546987   -0.0142192
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.0270679   -0.1303830    0.0762471
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0327344   -0.0576521   -0.0078168
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -0.1304817   -0.2305227   -0.0304406
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0259145   -0.0539007    0.0020716
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.1333746   -0.0325054    0.2992546
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1096828   -0.1515950   -0.0677705
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0192033   -0.1143770    0.0759704
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0832272   -0.1197576   -0.0466968
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0804836   -0.1872785    0.0263113
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0228760   -0.0475368    0.0017848
6-9 months     ki1000108-IRC              INDIA                          Low birthweight              NA                 0.0121657   -0.0352844    0.0596158
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.1005528   -0.1258230   -0.0752826
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.0571690   -0.0930500   -0.0212879
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0858773   -0.0992416   -0.0725130
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.0723707   -0.0978663   -0.0468751
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0649226   -0.0867499   -0.0430953
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0533514   -0.0871308   -0.0195720
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0627934   -0.0753165   -0.0502703
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.0568650   -0.0788278   -0.0349022
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0281911   -0.0426328   -0.0137495
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.0377617   -0.0658570   -0.0096663
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0530189   -0.0692177   -0.0368201
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0789363   -0.2021063    0.0442336
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0029521   -0.0335623    0.0276580
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.0327028   -0.0862749    0.0208693
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0552863   -0.0723943   -0.0381783
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0160626   -0.0614816    0.0293563
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0384210   -0.0474020   -0.0294400
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0139341   -0.0092239    0.0370921
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1227882   -0.1362740   -0.1093023
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.1130168   -0.1581857   -0.0678479
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1033729   -0.1090774   -0.0976685
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                -0.0681933   -0.0801255   -0.0562612
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0358106   -0.0468808   -0.0247404
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -0.0028627   -0.0203170    0.0145915
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0936692   -0.1119925   -0.0753459
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0609544   -0.0983590   -0.0235497
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0028610   -0.0292390    0.0349610
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.0971011    0.0156193    0.1785830
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0941626   -0.1125256   -0.0757996
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -0.0807917   -0.1062404   -0.0553431
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0637882   -0.0810415   -0.0465348
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.0245472   -0.0914918    0.0423975
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0379384   -0.0605221   -0.0153547
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -0.1478875   -0.2292013   -0.0665737
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0850442   -0.1127546   -0.0573338
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -0.0816569   -0.2153451    0.0520314
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1482099   -0.1901023   -0.1063175
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0765645   -0.1389312   -0.0141979
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1241197   -0.1547671   -0.0934722
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0562879   -0.1407718    0.0281959
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0410104   -0.0591419   -0.0228790
9-12 months    ki1000108-IRC              INDIA                          Low birthweight              NA                -0.0140024   -0.0654751    0.0374703
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.1027221   -0.1202601   -0.0851841
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.0965463   -0.1238938   -0.0691987
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0906244   -0.1013138   -0.0799351
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.0461911   -0.0715843   -0.0207979
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0498972   -0.0669788   -0.0328155
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0235571   -0.0519708    0.0048567
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0695512   -0.0823931   -0.0567092
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.0433060   -0.0652327   -0.0213792
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0434945   -0.0556062   -0.0313828
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.0077406   -0.0332762    0.0177949
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0664582   -0.0809748   -0.0519416
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0091388   -0.1320149    0.1137373
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1078934   -0.1322782   -0.0835086
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.0976960   -0.1356977   -0.0596944
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0776842   -0.0907604   -0.0646079
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0842696   -0.1185302   -0.0500091
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0640085   -0.0720077   -0.0560093
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0222701   -0.0428520   -0.0016882
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0964378   -0.1079814   -0.0848941
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.0484874   -0.0879329   -0.0090420
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0851555   -0.0908445   -0.0794665
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                -0.0922648   -0.1042333   -0.0802964
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0563586   -0.0652217   -0.0474955
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -0.0371255   -0.0534721   -0.0207788
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0561860   -0.0740622   -0.0383097
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0527047   -0.0884713   -0.0169382
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0019569   -0.0212380    0.0251518
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                -0.0865668   -0.1669278   -0.0062058
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0542654   -0.0707873   -0.0377435
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -0.0741763   -0.1259735   -0.0223791
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0560194   -0.0726294   -0.0394094
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.0438955   -0.0920378    0.0042468
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0679503   -0.0864231   -0.0494775
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                 0.1043132    0.0381889    0.1704375
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0609403   -0.0848302   -0.0370504
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -0.0405486   -0.1640216    0.0829243
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0608494   -0.0894695   -0.0322292
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.1596087   -0.3143813   -0.0048361
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0813877   -0.1109561   -0.0518193
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0196492   -0.1115642    0.0722657
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0432544   -0.0620677   -0.0244410
12-15 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -0.0574948   -0.0984737   -0.0165159
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0072028   -0.0227166    0.0083111
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                 0.0152271   -0.0078928    0.0383470
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0844207   -0.1053969   -0.0634444
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.0941906   -0.1194804   -0.0689009
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1361891   -0.1521321   -0.1202460
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0832432   -0.1331794   -0.0333070
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0379837   -0.0495715   -0.0263960
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.0505598   -0.0711780   -0.0299416
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0397657   -0.0506515   -0.0288799
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.0340618   -0.0539737   -0.0141500
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0693262   -0.0833408   -0.0553116
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0302740   -0.1312482    0.1917961
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0501820   -0.0649219   -0.0354420
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.0432593   -0.0790445   -0.0074740
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0736147   -0.0849857   -0.0622436
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0523526   -0.0770316   -0.0276736
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0624585   -0.0737156   -0.0512013
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0613673   -0.0929789   -0.0297557
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0976507   -0.1105996   -0.0847019
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.0737460   -0.1173059   -0.0301861
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0502303   -0.0580189   -0.0424416
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -0.0416560   -0.0524632   -0.0308488
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0475339   -0.0621654   -0.0329023
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0413818   -0.0767820   -0.0059817
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0213753   -0.0428094    0.0000587
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.0044517   -0.1089498    0.1178532
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0411514   -0.0551078   -0.0271950
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -0.0130082   -0.0533482    0.0273319
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0559395   -0.0724879   -0.0393911
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.0573495   -0.0925240   -0.0221749
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0393290   -0.0553699   -0.0232882
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                 0.0635491    0.0046987    0.1223995
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0294573   -0.0492944   -0.0096202
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -0.0337372   -0.0968788    0.0294043
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0944847   -0.1207632   -0.0682063
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0334010   -0.0448876    0.1116895
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0687374   -0.0917054   -0.0457694
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0459638   -0.1430093    0.0510818
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0386088   -0.0545626   -0.0226551
15-18 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -0.0277197   -0.0692944    0.0138551
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0266076   -0.0406363   -0.0125790
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.0238114   -0.0432428   -0.0043800
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0114109   -0.0243358    0.0015141
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.0028661   -0.0336471    0.0279149
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0650288   -0.0822782   -0.0477794
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0346572   -0.0638099   -0.0055044
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0418266   -0.0516593   -0.0319939
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.0235835   -0.0429737   -0.0041933
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0203329   -0.0300859   -0.0105799
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.0044539   -0.0200982    0.0111903
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0203345   -0.0358805   -0.0047885
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0395217   -0.0710802    0.1501237
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0328741   -0.0481945   -0.0175537
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.0089457   -0.0372392    0.0193477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0820217   -0.0959405   -0.0681029
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0367973   -0.0632461   -0.0103485
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0622426   -0.0740245   -0.0504607
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0620404   -0.0925450   -0.0315358
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0568480   -0.0701155   -0.0435805
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.0481614   -0.1018334    0.0055106
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0357845   -0.0431270   -0.0284420
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -0.0315646   -0.0438618   -0.0192674
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0178746   -0.0303405   -0.0054087
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0028661   -0.0375568    0.0318245
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0200516   -0.0453345    0.0052313
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                -0.0273850   -0.1229621    0.0681920
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0063279   -0.0063773    0.0190332
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                 0.0029073   -0.0285713    0.0343860
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0289458   -0.0427856   -0.0151061
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.0202717   -0.0644550    0.0239117
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0070694   -0.0229000    0.0087612
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -0.0175130   -0.1005851    0.0655590
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0328363   -0.0526233   -0.0130493
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.0000644   -0.0922614    0.0923901
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0285962   -0.0553538   -0.0018387
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0218471   -0.1196305    0.0759363
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0465942   -0.0706199   -0.0225685
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0400710   -0.1100852    0.0299431
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0402978   -0.0551024   -0.0254932
18-21 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -0.0447756   -0.0783191   -0.0112322
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0339883   -0.0456120   -0.0223646
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.0396743   -0.0652757   -0.0140729
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0324550   -0.0473695   -0.0175405
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0441855   -0.0685230   -0.0198479
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0165573   -0.0259178   -0.0071969
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                 0.0089085   -0.0076441    0.0254611
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0321891   -0.0409181   -0.0234600
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.0111674   -0.0297821    0.0074474
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0147397   -0.0304883    0.0010090
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.0108114   -0.0412290    0.0196062
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0209953    0.0060566    0.0359340
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                 0.0009531   -0.0136973    0.0156035
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0708068   -0.0833610   -0.0582527
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0530804   -0.0860531   -0.0201078
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0223449   -0.0337175   -0.0109724
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.0084650   -0.0632778    0.0463477
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0225138    0.0092060    0.0358217
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                 0.0417020    0.0109909    0.0724131
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0164160   -0.0002349    0.0330669
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.0178809   -0.0282567    0.0640186
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0319564    0.0197245    0.0441884
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                 0.0405851    0.0089818    0.0721884
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0026334   -0.0157512    0.0104844
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                 0.0253020   -0.0147465    0.0653505
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0581194    0.0419030    0.0743358
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                 0.0526058    0.0244712    0.0807403
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0436655    0.0265657    0.0607654
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.0097287   -0.0792551    0.0987126
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0130770   -0.0123692    0.0385232
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0198528   -0.0697383    0.1094440
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0135559   -0.0073207    0.0344325
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.0642102   -0.0288714    0.1572918
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0145311   -0.0293630    0.0003008
21-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -0.0061789   -0.0410770    0.0287193
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0042113   -0.0202179    0.0117953
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.0100684   -0.0307188    0.0105819
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0395836    0.0252804    0.0538868
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                 0.0369356    0.0142697    0.0596016
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0457647    0.0358799    0.0556495
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                 0.0495342    0.0310221    0.0680462
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0566902    0.0470566    0.0663238
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                 0.0624436    0.0466172    0.0782700
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0146719    0.0004249    0.0289188
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                 0.0313983    0.0020719    0.0607247
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0383625    0.0202430    0.0564820
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                 0.0745224    0.0463114    0.1027334
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0188440    0.0055005    0.0321875
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0070830   -0.0311961    0.0453621
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0052087   -0.0148873    0.0044700
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                 0.0098088   -0.0204253    0.0400429


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1233623   -0.1573331   -0.0893915
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0558315   -0.1073579   -0.0043050
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0479108    0.0033823    0.0924392
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2637392   -0.2979115   -0.2295670
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1806931   -0.2298379   -0.1315482
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1524797   -0.1965253   -0.1084341
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2517387   -0.3068690   -0.1966084
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.2173541   -0.2600129   -0.1746953
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.4236224   -0.6503899   -0.1968549
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.2365683   -0.2634819   -0.2096547
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2839136   -0.3073760   -0.2604512
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1396500   -0.1498974   -0.1294026
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5327514   -0.5552134   -0.5102895
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0616347   -0.0685285   -0.0547409
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0581717    0.0531516    0.0631917
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.2753025   -0.3035698   -0.2470352
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0223165   -0.0461740    0.0015410
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0410555   -0.0712575   -0.0108535
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0217886   -0.0484402    0.0048630
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0231042   -0.0080725    0.0542808
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0066117   -0.0446285    0.0314052
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0723590   -0.1085248   -0.0361933
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0507703   -0.0811159   -0.0204248
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0655669    0.0381519    0.0929818
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0134541   -0.0340772    0.0071691
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0529028   -0.0754199   -0.0303858
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0846842   -0.1014105   -0.0679580
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0397129   -0.0607889   -0.0186369
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0011401   -0.0103512    0.0080709
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1040917   -0.1191397   -0.0890438
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0555469   -0.0614231   -0.0496706
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0048183   -0.0101890    0.0005525
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0086180   -0.0226664    0.0054305
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0710999   -0.0883796   -0.0538202
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0729456   -0.0963830   -0.0495082
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0352521   -0.0549582   -0.0155461
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0361297   -0.0602222   -0.0120373
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0177890   -0.0460334    0.0104554
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1054498   -0.1457511   -0.0651485
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0162775   -0.0381158    0.0055609
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.0859143   -0.1065467   -0.0652819
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0830719   -0.0908166   -0.0753272
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0625218   -0.0807337   -0.0443099
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0526742   -0.0687710   -0.0365775
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0065406   -0.0339788    0.0208975
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0435425   -0.0610734   -0.0260116
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0318556   -0.0402430   -0.0234683
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1219168   -0.1348310   -0.1090025
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0963715   -0.1015092   -0.0912339
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0277781   -0.0371747   -0.0183815
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0866490   -0.1028810   -0.0704169
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0901975   -0.1063468   -0.0740481
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0607617   -0.0776200   -0.0439035
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0411805   -0.0628061   -0.0195549
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0847380   -0.1117373   -0.0577388
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1448184   -0.1849028   -0.1047340
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0363102   -0.0534781   -0.0191422
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.1012899   -0.1160503   -0.0865295
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0803162   -0.0926753   -0.0679571
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0423937   -0.0570582   -0.0277292
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0652418   -0.0796317   -0.0508518
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1070876   -0.1287238   -0.0854514
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0799887   -0.0936094   -0.0663679
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0592096   -0.0666786   -0.0517405
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0932852   -0.1042607   -0.0823097
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0865275   -0.0916546   -0.0814004
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0513240   -0.0590544   -0.0435937
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0553468   -0.0709909   -0.0397027
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0570181   -0.0726888   -0.0413475
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0556717   -0.0713623   -0.0399811
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0667709   -0.0846929   -0.0488488
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0600337   -0.0829414   -0.0371260
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0655244   -0.0939345   -0.0371143
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0461529   -0.0631421   -0.0291637
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0009386   -0.0138727    0.0119955
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0858392   -0.1000816   -0.0715968
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1257162   -0.1430906   -0.1083418
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0651955   -0.0796086   -0.0507823
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0505089   -0.0640589   -0.0369589
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0665123   -0.0773867   -0.0556379
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0624978   -0.0730686   -0.0519271
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0958538   -0.1082171   -0.0834904
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0481485   -0.0546739   -0.0416231
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0465581   -0.0600639   -0.0330524
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0392444   -0.0524562   -0.0260326
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0560076   -0.0714213   -0.0405938
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0355924   -0.0511744   -0.0200104
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0284295   -0.0474993   -0.0093597
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0882081   -0.1138460   -0.0625703
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0372117   -0.0520811   -0.0223423
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0256550   -0.0369587   -0.0143512
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0103307   -0.0201744   -0.0004870
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0565325   -0.0714057   -0.0416592
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0192601   -0.0346672   -0.0038530
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0293214   -0.0431069   -0.0155360
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622601   -0.0732419   -0.0512783
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0559720   -0.0688825   -0.0430614
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0345206   -0.0410991   -0.0279421
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0152856   -0.0270052   -0.0035661
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0066992   -0.0048549    0.0182534
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0283427   -0.0415128   -0.0151727
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0075024   -0.0228526    0.0078478
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0324839   -0.0517228   -0.0132451
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282479   -0.0541225   -0.0023733
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0407480   -0.0541320   -0.0273640
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0357223   -0.0470222   -0.0244224
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0363472   -0.0490347   -0.0236597
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0156182   -0.0297814   -0.0014550
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0692820   -0.0810605   -0.0575034
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0219623   -0.0332925   -0.0106320
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0266812    0.0145631    0.0387993
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0308992    0.0196401    0.0421582
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0007364   -0.0118324    0.0133051
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0568758    0.0414457    0.0723058
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0440882    0.0272574    0.0609190
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0134267   -0.0111463    0.0379997
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0137009   -0.0274163    0.0000145
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                 0.0395499    0.0276352    0.0514645
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0164472    0.0035222    0.0293722
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0477538    0.0321932    0.0633143
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0177092    0.0051862    0.0302321
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0032689   -0.0124286    0.0058908


### Parameter: ATE


agecat         studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.1260420    0.0426713    0.2094126
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.3849950    0.2621334    0.5078567
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.1282173   -0.0074891    0.2639237
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.3094654    0.1466557    0.4722752
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.2018559    0.0479562    0.3557556
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1034733   -0.1302535    0.3372000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1329683    0.0041599    0.2617767
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0871356   -0.2554028    0.4296741
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.2072662   -0.3473127   -0.0672197
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0940833    0.0051846    0.1829820
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight     0.2368770   -0.1723675    0.6461215
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.1136594    0.0599891    0.1673297
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.1191373    0.0614962    0.1767785
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0804960    0.0424203    0.1185717
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0470438    0.0064510    0.0876365
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0648936   -0.0064442    0.1362314
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0679781    0.0101122    0.1258440
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0317585   -0.0642495    0.0007325
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.1303475    0.0466080    0.2140870
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0945167    0.0769464    0.1120869
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0916922    0.0831398    0.1002445
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.4624164    0.4174000    0.5074328
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0689312    0.0084183    0.1294442
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.1942416    0.0762108    0.3122724
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0285749   -0.0424774    0.0996273
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.1231946    0.0236321    0.2227571
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.0588276   -0.0668339    0.1844891
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0266247   -0.1507157    0.2039652
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1872563    0.0246435    0.3498690
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.1901909    0.0512810    0.3291007
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.1325313    0.0462966    0.2187660
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0861124    0.0299198    0.1423050
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.0790514    0.0431996    0.1149032
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0259769   -0.0276080    0.0795618
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0648439    0.0230323    0.1066554
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0569102    0.0158919    0.0979286
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1084542    0.0180442    0.1988642
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.1087110    0.0518226    0.1655993
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0840595    0.0430811    0.1250378
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.1237236    0.0958641    0.1515830
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0781063    0.0273068    0.1289059
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0480564    0.0332546    0.0628582
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0739530    0.0643651    0.0835408
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0569476    0.0261650    0.0877301
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0095316   -0.0352908    0.0543540
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0893234   -0.0679262    0.2465730
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0643671    0.0163435    0.1123907
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0073910   -0.0986904    0.1134724
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0977472   -0.2007682    0.0052737
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1592891   -0.0085192    0.3270974
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0904795   -0.0135141    0.1944731
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0027436   -0.1102179    0.1157050
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0350417   -0.0184830    0.0885664
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0433838   -0.0006896    0.0874572
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.0135066   -0.0220141    0.0490273
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0115712   -0.0285990    0.0517413
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0059284   -0.0193508    0.0312076
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0095705   -0.0410315    0.0218905
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0259174   -0.1501062    0.0982713
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0297506   -0.0911552    0.0316539
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0392237   -0.0096437    0.0880910
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0523551    0.0275095    0.0772007
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0097714   -0.0373488    0.0568915
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0351796    0.0219626    0.0483965
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0329479    0.0123258    0.0535699
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0327148   -0.0090858    0.0745155
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0942402    0.0072692    0.1812112
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0133708   -0.0180110    0.0447527
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0392410   -0.0299830    0.1084650
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.1099491   -0.1946411   -0.0252572
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0033873   -0.1332424    0.1400171
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0716454   -0.0034850    0.1467757
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0678317   -0.0224890    0.1581525
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0270080   -0.0275892    0.0816052
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0061758   -0.0261383    0.0384899
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.0444333    0.0217443    0.0671223
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0263401   -0.0068093    0.0594896
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0262452    0.0007917    0.0516987
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0357539    0.0074609    0.0640470
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0573194   -0.0664710    0.1811098
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0101974   -0.0361161    0.0565109
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0065855   -0.0432445    0.0300735
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0417384    0.0196623    0.0638145
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0479503    0.0067349    0.0891658
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0071093   -0.0203582    0.0061396
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0192331    0.0004322    0.0380341
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0034812   -0.0365614    0.0435239
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.0885237   -0.1719082   -0.0051392
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.0199109   -0.0747382    0.0349163
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0121239   -0.0388268    0.0630746
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.1722635    0.1027073    0.2418196
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0203916   -0.1058619    0.1466452
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0987593   -0.2561559    0.0586372
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0617384   -0.0347574    0.1582343
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0142404   -0.0594020    0.0309211
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0224299   -0.0053123    0.0501721
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.0097700   -0.0494362    0.0298962
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0529459    0.0003556    0.1055362
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0125761   -0.0362630    0.0111109
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0057038   -0.0170462    0.0284539
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0996002   -0.0624504    0.2616508
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0069227   -0.0319457    0.0457911
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0212621   -0.0059612    0.0484854
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0010912   -0.0324964    0.0346789
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0239048   -0.0215855    0.0693951
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0085743   -0.0044300    0.0215785
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0061521   -0.0322539    0.0445581
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0258270   -0.0895823    0.1412364
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0281433   -0.0145281    0.0708147
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.0014100   -0.0401507    0.0373307
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.1028782    0.0417479    0.1640084
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0042800   -0.0703502    0.0617903
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1278857    0.0453045    0.2104668
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0227736   -0.0772022    0.1227494
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0108892   -0.0337444    0.0555227
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0027962   -0.0211779    0.0267704
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.0085448   -0.0284216    0.0455112
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0303716   -0.0035430    0.0642862
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0182431   -0.0035374    0.0400235
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0158789   -0.0025264    0.0342843
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0598562   -0.0518591    0.1715715
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0239284   -0.0084865    0.0563432
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0452244    0.0152692    0.0751797
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0002022   -0.0325322    0.0329367
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0086866   -0.0468591    0.0642324
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0042199   -0.0094570    0.0178969
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0150085   -0.0219237    0.0519406
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.0073335   -0.1061980    0.0915311
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.0034206   -0.0373717    0.0305305
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0086742   -0.0374500    0.0547983
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0104437   -0.0950246    0.0741373
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0329007   -0.0617168    0.1275182
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0067492   -0.0946292    0.1081275
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0065232   -0.0680176    0.0810640
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0044778   -0.0409897    0.0320341
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0056860   -0.0338781    0.0225061
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0117305   -0.0402989    0.0168379
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0254658    0.0064742    0.0444574
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0210217    0.0004717    0.0415717
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0039283   -0.0304231    0.0382796
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0200422   -0.0410476    0.0009632
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0177264   -0.0175512    0.0530040
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0138799   -0.0421214    0.0698812
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0191882   -0.0143243    0.0527007
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0014650   -0.0475854    0.0505153
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0086287   -0.0251430    0.0424003
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0279354   -0.0143989    0.0702697
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0055136   -0.0383049    0.0272776
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0339368   -0.1244291    0.0565555
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0067758   -0.0863589    0.0999106
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0506543   -0.0446830    0.1459916
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0083522   -0.0295970    0.0463015
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0058571   -0.0320314    0.0203171
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0026480   -0.0294441    0.0241482
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0037695   -0.0172462    0.0247851
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0057535   -0.0126809    0.0241878
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0167264   -0.0160082    0.0494611
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0361599    0.0025681    0.0697518
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0117610   -0.0523899    0.0288679
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0150175   -0.0167488    0.0467837


### Parameter: PAR


agecat         studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0284549    0.0095099    0.0473999
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0160415    0.0032998    0.0287831
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0153186   -0.0034914    0.0341287
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0272243    0.0074285    0.0470202
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0082462   -0.0027959    0.0192884
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0044346   -0.0059774    0.0148466
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0094046    0.0007267    0.0180825
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0211219   -0.0678433    0.0255994
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0331474   -0.0575994   -0.0086954
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0345960    0.0011657    0.0680262
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.0370120   -0.0337380    0.1077621
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0284507    0.0159394    0.0409620
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0354514    0.0177370    0.0531657
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0201566    0.0104797    0.0298335
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0103315    0.0005888    0.0200741
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0092815   -0.0010268    0.0195898
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0206258    0.0032711    0.0379805
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0039425   -0.0081026    0.0002176
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0091966    0.0024688    0.0159244
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0192204    0.0154872    0.0229536
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0378130    0.0340389    0.0415871
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1167066    0.1013588    0.1320543
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0151852    0.0013484    0.0290220
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0092931    0.0018947    0.0166914
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0033377   -0.0068944    0.0135698
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0129630    0.0029601    0.0229659
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0061786   -0.0014661    0.0138233
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0016146   -0.0078355    0.0110646
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0093628   -0.0007294    0.0194550
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0250207    0.0064646    0.0435768
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0213693    0.0073397    0.0353989
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0301446    0.0090646    0.0512246
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0174070    0.0093612    0.0254528
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0073525   -0.0076824    0.0223875
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0169679    0.0071865    0.0267493
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0119118    0.0020561    0.0217675
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0037752    0.0007532    0.0067972
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0144745    0.0061950    0.0227539
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0249264    0.0120820    0.0377707
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0153378    0.0117306    0.0189450
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0067843    0.0021964    0.0113721
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0099742    0.0069683    0.0129801
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0299501    0.0259797    0.0339206
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0139003    0.0060846    0.0217159
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0021282   -0.0073193    0.0115757
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0008716   -0.0060778    0.0078211
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0076989   -0.0004604    0.0158583
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0007932   -0.0081035    0.0065171
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0033953   -0.0095422    0.0027516
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0081255   -0.0013911    0.0176421
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0042330   -0.0014168    0.0098827
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0012616   -0.0120934    0.0146165
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0065985   -0.0019424    0.0151395
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0146385   -0.0002243    0.0295012
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0028054   -0.0059049    0.0115158
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0024008   -0.0096242    0.0144257
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0013670   -0.0045228    0.0072569
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0031726   -0.0103051    0.0039598
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0003447   -0.0030213    0.0037106
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0035885   -0.0113142    0.0041372
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0117438   -0.0020265    0.0255141
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0065654    0.0035036    0.0096271
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0008714   -0.0034514    0.0051942
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0070014    0.0044089    0.0095939
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0080325    0.0027067    0.0133583
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0070202   -0.0017922    0.0158326
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0053174    0.0004457    0.0101892
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0039651   -0.0007599    0.0086901
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0030264   -0.0028769    0.0089298
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0032421   -0.0078766    0.0013923
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0003062   -0.0070954    0.0077077
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0033915   -0.0008442    0.0076272
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0053041   -0.0047226    0.0153307
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0047002   -0.0039033    0.0133037
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0014321   -0.0092444    0.0121087
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0103082    0.0045778    0.0160387
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0075035   -0.0026733    0.0176802
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0065042    0.0003962    0.0126122
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0091950    0.0025807    0.0158094
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0012164   -0.0018099    0.0042427
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0008058   -0.0051176    0.0067291
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0023045   -0.0131028    0.0084938
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0047990    0.0020998    0.0074981
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0031525   -0.0003128    0.0066179
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0013720   -0.0038872    0.0011432
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0050346    0.0002333    0.0098359
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0008392   -0.0076132    0.0092916
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0049999   -0.0103736    0.0003737
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0027528   -0.0106573    0.0051518
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0003477   -0.0035658    0.0042612
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0011794   -0.0046161    0.0069750
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0009066   -0.0034182    0.0052314
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0046750   -0.0127726    0.0034226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0101541   -0.0007314    0.0210395
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0028985   -0.0102154    0.0044183
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0062642   -0.0032110    0.0157393
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0014185   -0.0105612    0.0077241
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0104728   -0.0039035    0.0248492
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0029270   -0.0082980    0.0024440
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0014344   -0.0039271    0.0067958
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0041308   -0.0006224    0.0088839
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0003269   -0.0055334    0.0048795
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0071024   -0.0012467    0.0154514
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0000393   -0.0043529    0.0042743
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0017970   -0.0019325    0.0055265
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0020817   -0.0013772    0.0055406
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0009758   -0.0073880    0.0093395
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0010331   -0.0036441    0.0057103
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0019070   -0.0043896    0.0082037
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0000681   -0.0031906    0.0030544
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0037366   -0.0007901    0.0082633
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0010278   -0.0018146    0.0038701
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0062766    0.0004006    0.0121526
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0006503   -0.0117241    0.0130247
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0013971   -0.0057533    0.0085475
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0009527   -0.0071127    0.0090181
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0010802   -0.0084693    0.0106297
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0084963   -0.0017865    0.0187790
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0041828   -0.0007729    0.0091386
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0034255   -0.0010744    0.0079254
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0010744   -0.0019237    0.0040725
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0035527   -0.0005997    0.0077050
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0130641    0.0040480    0.0220802
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0000175   -0.0043122    0.0042773
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0008761   -0.0042803    0.0060324
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0012639   -0.0023599    0.0048877
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0025890   -0.0048542    0.0100321
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0003074   -0.0044574    0.0038427
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0003713   -0.0045871    0.0053297
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0006031   -0.0030554    0.0042616
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0004330   -0.0045882    0.0037221
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0003524   -0.0046995    0.0054042
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0003483   -0.0048894    0.0055861
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0028285   -0.0060374    0.0116943
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0004502   -0.0063086    0.0054083
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0017340   -0.0103982    0.0069303
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0038922   -0.0125975    0.0048131
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0056174    0.0009432    0.0102916
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0042203   -0.0008960    0.0093367
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0008786   -0.0053276    0.0035705
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0054026   -0.0112898    0.0004845
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0015249   -0.0026749    0.0057246
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0003827   -0.0044428    0.0052081
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0041673   -0.0030073    0.0113419
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0000710   -0.0023077    0.0024497
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0010573   -0.0060045    0.0038899
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0033697   -0.0004421    0.0071816
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0012436   -0.0031847    0.0006974
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0004226   -0.0044389    0.0052842
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0003497   -0.0044631    0.0051625
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0041452   -0.0063043    0.0145948
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0008302   -0.0060819    0.0077423
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0023083   -0.0116783    0.0070618
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0000337   -0.0079423    0.0078748
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0004695   -0.0046232    0.0055622
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0020719   -0.0025007    0.0066445
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0017753   -0.0027543    0.0063050
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0093913    0.0002474    0.0185351
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0011348   -0.0058618    0.0035922
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0019397   -0.0007585    0.0046379
