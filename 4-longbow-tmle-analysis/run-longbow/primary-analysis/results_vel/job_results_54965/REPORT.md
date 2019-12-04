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

**Outcome Variable:** y_rate_len

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       190     241  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   51     241  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       161     168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    7     168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       152     176  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   24     176  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       138     152  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   14     152  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       248     264  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   16     264  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       201     210  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    9     210  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       168     178  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                   10     178  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        77      88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   11      88  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight       311     373  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          Low birthweight                   62     373  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       191     302  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight                  111     302  y_rate_len       
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        27      32  y_rate_len       
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    5      32  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       959    1261  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  302    1261  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       386     550  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  164     550  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       485     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  155     640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       549     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  172     721  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1058    1242  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight                  184    1242  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       354     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  155     509  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         8      11  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      11  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15319   15319  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   15319  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      6936    7951  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1015    7951  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       631     683  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   52     683  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      5126    6463  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1337    6463  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     11093   19023  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 7930   19023  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1880    2517  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  637    2517  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       179     228  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   49     228  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       198     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       190     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   32     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       207     226  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   19     226  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       248     264  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   16     264  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       229     242  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     242  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       171     180  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     180  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       269     307  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   38     307  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight       329     392  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          Low birthweight                   63     392  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       178     279  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight                  101     279  y_rate_len       
3-6 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        22      23  y_rate_len       
3-6 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    1      23  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       854    1115  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  261    1115  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       359     505  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  146     505  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       457     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  141     598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       527     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  168     695  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1591    1646  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   55    1646  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight       813     950  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight                  137     950  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       330     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  139     469  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         7       9  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    2       9  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13309   13309  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   13309  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5389    6157  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  768    6157  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       623     680  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   57     680  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      4767    5975  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1208    5975  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      6432   10752  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 4320   10752  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1322    1758  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  436    1758  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       177     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       188     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       189     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     222  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       205     223  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     223  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       227     242  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   15     242  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       218     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   12     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       163     171  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     171  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       274     313  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39     313  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight       335     401  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          Low birthweight                   66     401  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       202     303  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight                  101     303  y_rate_len       
6-9 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        20      20  y_rate_len       
6-9 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    0      20  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       873    1135  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  262    1135  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       337     480  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  143     480  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       433     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  132     565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       529     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  159     688  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1433    1474  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   41    1474  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight       496     572  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight                   76     572  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       343     480  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  137     480  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6       8  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    2       8  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight     12428   12428  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   12428  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5192    5910  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  718    5910  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       609     671  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   62     671  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      4327    5388  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1061    5388  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2002    2688  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  686    2688  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       176     223  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   47     223  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       184     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       186     218  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                   32     218  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       205     223  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     223  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       218     232  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight                   14     232  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       218     232  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   14     232  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       161     169  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     169  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       280     317  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   37     317  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight       329     394  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          Low birthweight                   65     394  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       217     325  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight                  108     325  y_rate_len       
9-12 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        19      21  y_rate_len       
9-12 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    2      21  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       872    1138  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  266    1138  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       324     466  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  142     466  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       430     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  136     566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       515     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  159     674  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1041    1071  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   30    1071  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight       496     567  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight                   71     567  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       330     468  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  138     468  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5       7  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    2       7  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     12682   12682  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0   12682  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5197    5914  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  717    5914  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       656     720  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                   64     720  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      3737    4624  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight                  887    4624  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2208    2978  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  770    2978  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       164     210  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   46     210  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       174     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       185     217  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   32     217  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       206     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       209     222  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   13     222  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       215     227  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   12     227  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       161     169  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     169  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       290     329  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39     329  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight       320     384  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          Low birthweight                   64     384  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       195     296  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight                  101     296  y_rate_len       
12-15 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        12      14  y_rate_len       
12-15 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                    2      14  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       887    1159  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  272    1159  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       312     445  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  133     445  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       412     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  120     532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       504     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  156     660  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       763     786  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   23     786  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       764     884  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  120     884  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       324     468  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  144     468  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6       7  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1       7  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      1001    1001  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0    1001  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      2205    2538  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  333    2538  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       579     634  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   55     634  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2201    3006  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  805    3006  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       163     210  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   47     210  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       168     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    7     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202     220  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     220  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       197     211  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   14     211  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       213     224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   11     224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       155     163  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     163  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       282     321  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39     321  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight       315     376  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          Low birthweight                   61     376  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       184     278  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight                   94     278  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       888    1162  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  274    1162  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       302     432  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  130     432  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       407     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  121     528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       459     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  145     604  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       640     658  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   18     658  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       766     881  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  115     881  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       336     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  144     480  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5       6  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1       6  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight       275     275  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     275  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1763    2031  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  268    2031  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       525     580  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   55     580  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2226    3015  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  789    3015  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       162     207  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     207  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       160     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    7     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184     217  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     217  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202     220  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     220  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       188     200  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   12     200  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       219     232  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     232  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       147     155  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     155  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       267     305  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   38     305  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight       312     374  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          Low birthweight                   62     374  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       179     254  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight                   75     254  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       283     407  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  124     407  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       411     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  130     541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       411     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  135     546  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         9       9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       9  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       748     864  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  116     864  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       315     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  130     445  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6       7  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1       7  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight       218     218  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     218  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1404    1591  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  187    1591  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       507     558  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   51     558  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       160     205  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     205  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       157     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    8     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184     217  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     217  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202     220  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     220  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       177     187  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   10     187  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       221     234  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     234  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       147     155  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     155  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       272     308  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   36     308  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       318     384  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          Low birthweight                   66     384  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight        68     106  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                   38     106  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       276     396  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  120     396  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       355     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  116     471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       368     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  122     490  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       671     781  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  110     781  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       252     341  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                   89     341  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1       1  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    0       1  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight       209     209  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     209  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1024    1164  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  140    1164  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       538     590  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   52     590  y_rate_len       


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
![](/tmp/6ad1be7e-15ee-47d3-a4e0-121a7c7b40fb/9d1656c0-c0a3-4aae-ae17-b964e91b391e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6ad1be7e-15ee-47d3-a4e0-121a7c7b40fb/9d1656c0-c0a3-4aae-ae17-b964e91b391e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6ad1be7e-15ee-47d3-a4e0-121a7c7b40fb/9d1656c0-c0a3-4aae-ae17-b964e91b391e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                3.3094716   3.2353287   3.3836146
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                3.4425494   3.2968494   3.5882493
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                3.7756828   3.6622452   3.8891203
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                4.3281292   4.0899732   4.5662852
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                3.3427931   3.2336502   3.4519360
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                3.5502484   3.2736458   3.8268511
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                3.5691461   3.4734203   3.6648719
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                4.0385286   3.7258777   4.3511795
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                3.0410213   2.9725280   3.1095146
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                3.3428012   3.0935361   3.5920663
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                3.1783826   3.0796643   3.2771010
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                3.2180963   2.6689922   3.7672004
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                3.2509716   3.1623540   3.3395891
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                3.2724662   3.0331078   3.5118245
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                3.5072064   3.2788732   3.7355396
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                3.8266666   3.1342616   4.5190716
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                3.2303737   3.1092751   3.3514724
0-3 months     ki1000108-IRC              INDIA                          Low birthweight              NA                2.7117078   2.4700021   2.9534135
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                3.0579828   2.9482831   3.1676824
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                3.1046707   2.9724603   3.2368810
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                2.6745628   2.1459187   3.2032070
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                2.9865176   2.3064198   3.6666155
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                3.3211306   3.2568981   3.3853632
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                3.4360370   3.3603898   3.5116841
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                3.0606862   2.9966663   3.1247061
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                3.2042797   3.1049370   3.3036223
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                3.2400228   3.1968447   3.2832010
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                3.3146134   3.2425319   3.3866949
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                3.1299973   3.0880889   3.1719058
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                3.1214891   3.0474397   3.1955384
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                3.1089359   3.0586623   3.1592094
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                3.1277559   2.9983244   3.2571873
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                3.5894514   3.5306187   3.6482842
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                3.6288349   3.5254868   3.7321829
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                3.3582723   3.3364519   3.3800927
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                3.1968870   3.1367242   3.2570497
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                2.5784453   2.5324383   2.6244522
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                2.6609733   2.5033984   2.8185483
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                3.4898330   3.4744329   3.5052331
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                3.5833444   3.5510490   3.6156398
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                3.6304324   3.6178857   3.6429792
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                3.7272978   3.7122236   3.7423719
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                2.8091975   2.7443584   2.8740366
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                3.5962704   3.5382075   3.6543334
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                1.9048454   1.8477245   1.9619662
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                2.0234749   1.9093245   2.1376253
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                2.1313847   2.0493961   2.2133733
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                2.5832682   2.3696809   2.7968555
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                1.8806406   1.8078604   1.9534207
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                1.8954278   1.7659625   2.0248931
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                1.9454235   1.8878789   2.0029681
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                2.2010769   1.9589140   2.4432398
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                2.0004820   1.9316843   2.0692797
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                2.0750796   1.8264277   2.3237315
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                1.9672652   1.8842700   2.0502603
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                1.9265929   1.5513599   2.3018259
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.8100282   1.7314328   1.8886236
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                2.1341755   1.8031232   2.4652279
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                1.7618625   1.6541418   1.8695832
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                2.1746086   1.9105419   2.4386754
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                1.8479487   1.7785492   1.9173481
3-6 months     ki1000108-IRC              INDIA                          Low birthweight              NA                2.0644558   1.8915726   2.2373390
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                2.0537934   1.9795791   2.1280077
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                2.1627464   2.0697664   2.2557263
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                1.9209996   1.8723099   1.9696893
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                2.0377366   1.9608203   2.1146529
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.8239322   1.7674489   1.8804155
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                1.8421247   1.7414322   1.9428172
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                1.9397233   1.9021204   1.9773262
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                2.0514640   1.9711312   2.1317967
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                1.9896054   1.9486519   2.0305589
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                2.0723244   1.9949880   2.1496608
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.7887036   1.7520055   1.8254016
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                2.0315082   1.8428790   2.2201374
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                1.9250110   1.8759161   1.9741060
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                2.1371674   2.0167315   2.2576032
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                1.6747436   1.6289935   1.7204937
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                1.7846600   1.7096924   1.8596277
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.9496014   1.9286649   1.9705380
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                2.1557007   2.0994446   2.2119567
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                1.7373481   1.7042104   1.7704859
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                1.8248183   1.7161534   1.9334833
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                1.8636095   1.8494527   1.8777663
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                1.9191491   1.8904311   1.9478670
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                1.8711108   1.8578780   1.8843436
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                1.9848982   1.9670078   2.0027885
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                1.8825145   1.8469773   1.9180517
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                1.9591679   1.9012512   2.0170847
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                1.2494221   1.2059377   1.2929064
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                1.2305625   1.1320644   1.3290607
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                1.4842389   1.4008562   1.5676215
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                1.5988954   1.2419916   1.9557992
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                1.2236389   1.1643776   1.2829001
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                1.2963126   1.1875545   1.4050706
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                1.3594920   1.3133821   1.4056019
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                1.3292368   1.0937365   1.5647372
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                1.3247804   1.2688618   1.3806991
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                1.0493798   0.8160597   1.2826998
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                1.3583688   1.2946055   1.4221321
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                1.6930312   1.2448419   2.1412205
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.1588626   1.0609577   1.2567675
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.3143037   1.0895312   1.5390762
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                1.2201941   1.1373804   1.3030078
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                1.2822792   1.0540522   1.5105063
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                1.3636304   1.3082299   1.4190309
6-9 months     ki1000108-IRC              INDIA                          Low birthweight              NA                1.4143341   1.3063634   1.5223047
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                1.1509320   1.0935068   1.2083571
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                1.2291978   1.1462502   1.3121453
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                1.2179543   1.1861889   1.2497197
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                1.2082428   1.1513270   1.2651585
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.2524706   1.2029187   1.3020226
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                1.2430442   1.1664235   1.3196650
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                1.2860497   1.2569351   1.3151642
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                1.2705479   1.2192975   1.3217983
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                1.3427574   1.3094539   1.3760609
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                1.2801403   1.2142445   1.3460362
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.3227934   1.2859494   1.3596373
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.2676121   0.9633846   1.5718396
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                1.4322433   1.3625029   1.5019836
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                1.3297340   1.2063980   1.4530700
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                1.2978501   1.2592630   1.3364372
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                1.3699146   1.2594594   1.4803697
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.3361834   1.3157587   1.3566082
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                1.4139288   1.3610123   1.4668453
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                1.1068012   1.0759499   1.1376525
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                1.0930214   0.9950576   1.1909851
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                1.1869245   1.1739352   1.1999139
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                1.2262642   1.1993276   1.2532007
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                1.3178523   1.2923852   1.3433194
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                1.3572200   1.3173427   1.3970972
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.9797711   0.9360063   1.0235358
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                1.0243661   0.9337008   1.1150315
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                1.2855003   1.2084662   1.3625345
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                1.5742632   1.3487775   1.7997490
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.9790090   0.9345511   1.0234670
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                1.0451709   0.9907899   1.0995519
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                1.0883843   1.0465475   1.1302212
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                1.1474456   0.9640187   1.3308725
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                1.1120425   1.0587090   1.1653760
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.8090540   0.6266951   0.9914129
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                1.0161632   0.9495438   1.0827826
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.9867866   0.6504185   1.3231546
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.8357490   0.7349738   0.9365243
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.9614607   0.8095239   1.1133974
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.8916130   0.8187932   0.9644328
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.9865733   0.7897913   1.1833552
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                1.1182185   1.0763119   1.1601252
9-12 months    ki1000108-IRC              INDIA                          Low birthweight              NA                1.1520430   1.0311510   1.2729350
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.9263137   0.8839140   0.9687134
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.9021793   0.8370450   0.9673137
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.9875460   0.9611556   1.0139364
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                1.0489049   0.9910535   1.1067563
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.0826252   1.0409372   1.1243131
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                1.1028754   1.0334892   1.1722616
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                1.0418289   1.0101729   1.0734849
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                1.0808969   1.0271235   1.1346704
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                1.1121904   1.0830933   1.1412874
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                1.1714285   1.1102059   1.2326511
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.0851421   1.0505565   1.1197276
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.0961406   0.8481009   1.3441803
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.9669238   0.9091816   1.0246659
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.9715292   0.8888670   1.0541914
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                1.0127405   0.9815735   1.0439075
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.9596900   0.8740335   1.0453466
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.0743786   1.0552118   1.0935453
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                1.1326347   1.0823045   1.1829650
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.9387088   0.9102963   0.9671213
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                1.0192501   0.9259126   1.1125876
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                1.0099447   0.9960181   1.0238713
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.9505109   0.9212771   0.9797447
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                1.0702511   1.0488391   1.0916632
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                1.0840106   1.0440576   1.1239636
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.9213836   0.8749653   0.9678018
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.8886842   0.7919962   0.9853722
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                1.1581544   1.0974325   1.2188764
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                0.9119265   0.5820537   1.2417993
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.9209165   0.8788908   0.9629422
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.8895317   0.7598090   1.0192545
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.9577551   0.9153611   1.0001491
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.9721739   0.8468049   1.0975429
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.8889304   0.8412372   0.9366236
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                1.1242909   0.8788668   1.3697150
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.9164591   0.8563439   0.9765744
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.9262121   0.6393672   1.2130571
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.8854245   0.8123206   0.9585284
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.5731887   0.1836907   0.9626867
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.8361356   0.7622209   0.9100502
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                1.0922395   0.8918012   1.2926779
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.9688685   0.9220161   1.0157208
12-15 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.8684155   0.7650748   0.9717563
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                1.0025832   0.9633065   1.0418599
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                1.0206181   0.9619333   1.0793029
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.8443889   0.7899617   0.8988160
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.7748704   0.7053813   0.8443594
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7090535   0.6680438   0.7500632
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.8170621   0.6774681   0.9566562
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.9757705   0.9459154   1.0056255
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.8979621   0.8440805   0.9518436
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.9786461   0.9504580   1.0068341
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.9555309   0.9033713   1.0076904
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.9211538   0.8853077   0.9569998
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.3795732   1.0296977   1.7294488
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.9541100   0.9164432   0.9917768
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.9028444   0.8019105   1.0037784
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.8722939   0.8420467   0.9025411
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.8983852   0.8297841   0.9669863
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.9259355   0.8972324   0.9546387
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.8817032   0.8015093   0.9618972
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7657617   0.7319565   0.7995669
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.7937481   0.6900244   0.8974718
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.9378018   0.9174923   0.9581113
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.9235797   0.8960789   0.9510805
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.8262753   0.7863297   0.8662208
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.8092642   0.7092757   0.9092526
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.9998146   0.9395542   1.0600750
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                1.0572335   0.7564092   1.3580579
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.8371918   0.7974976   0.8768860
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.8895020   0.7803734   0.9986305
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.8436874   0.7981709   0.8892038
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.8117612   0.7057108   0.9178116
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.8487847   0.8046573   0.8929120
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.9123787   0.7406335   1.0841240
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.8857076   0.8305875   0.9408278
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.9120267   0.7494394   1.0746140
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.6698128   0.5976435   0.7419822
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.9717881   0.7417462   1.2018299
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.7350240   0.6733879   0.7966602
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6699090   0.3893913   0.9504268
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.8654909   0.8231896   0.9077921
15-18 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.8574753   0.7437551   0.9711955
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.8470663   0.8076290   0.8865035
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.8205325   0.7648170   0.8762480
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.9168804   0.8824030   0.9513577
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.8859652   0.8031509   0.9687794
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7641766   0.7166702   0.8116831
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.8080068   0.7281664   0.8878472
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.8546206   0.8274702   0.8817709
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.8591887   0.8052605   0.9131169
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.9164753   0.8895982   0.9433523
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.9192087   0.8751856   0.9632317
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.9342197   0.8914915   0.9769480
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.1096141   0.8055729   1.4136554
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.8852795   0.8434819   0.9270772
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.8966598   0.8214221   0.9718975
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.7318851   0.6929179   0.7708524
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.8182223   0.7423863   0.8940584
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.8051070   0.7729330   0.8372810
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.7667204   0.6825223   0.8509185
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7460500   0.7099048   0.7821953
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.6833957   0.5395633   0.8272282
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.8597988   0.8396673   0.8799303
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.8391740   0.8061203   0.8722277
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.8165387   0.7799971   0.8530804
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.8026213   0.7015678   0.9036748
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.9173515   0.8445898   0.9901132
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                0.8869185   0.5913371   1.1824998
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.8826614   0.8442472   0.9210756
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.8777054   0.7803850   0.9750259
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.8203071   0.7797618   0.8608525
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.8177917   0.6976017   0.9379816
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.8481868   0.8021997   0.8941738
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.7163416   0.3466265   1.0860566
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.7807020   0.7234252   0.8379788
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.7207621   0.4332114   1.0083127
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7458999   0.6679178   0.8238819
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.7248911   0.4350413   1.0147408
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6942969   0.6259732   0.7626207
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.7309484   0.5467119   0.9151850
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.7659902   0.7231383   0.8088420
18-21 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.7187338   0.6250085   0.8124591
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.7342988   0.6998606   0.7687370
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.6794509   0.5998545   0.7590472
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7593888   0.7160710   0.8027065
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.6787186   0.6091001   0.7483372
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.8316111   0.8039451   0.8592771
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.8664462   0.8176066   0.9152858
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.7957775   0.7702415   0.8213135
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.8161094   0.7621446   0.8700742
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.8442720   0.7986653   0.8898787
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.7924603   0.7074470   0.8774735
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.9276616   0.8841252   0.9711980
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.8470101   0.8047031   0.8893170
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.6797829   0.6435253   0.7160406
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.6876307   0.5887656   0.7864958
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7468707   0.7140646   0.7796769
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.7364332   0.5759292   0.8969371
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.7665503   0.7287594   0.8043412
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.8005880   0.7015915   0.8995844
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.7949626   0.7495609   0.8403642
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                0.8194924   0.6429312   0.9960536
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.8289636   0.7939010   0.8640262
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.8460107   0.7666230   0.9253984
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.7627240   0.7237038   0.8017443
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.8630229   0.7230647   1.0029811
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.7667656   0.7173734   0.8161578
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.7063447   0.5818024   0.8308871
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.8404441   0.7877997   0.8930885
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.8407194   0.5491081   1.1323307
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7433977   0.6686331   0.8181624
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.6960984   0.4384482   0.9537486
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6956142   0.6345909   0.7566375
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.7093559   0.4414471   0.9772646
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.7127850   0.6676075   0.7579625
21-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.6998236   0.5912371   0.8084102
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.6598353   0.6156733   0.7039972
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.6411474   0.5681441   0.7141506
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7258056   0.6824468   0.7691645
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.6756824   0.6087260   0.7426388
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.7717546   0.7429279   0.8005813
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.7382406   0.6834560   0.7930252
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.8051839   0.7764716   0.8338961
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.7817279   0.7326215   0.8308342
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.7223336   0.6793448   0.7653225
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.7123477   0.6290865   0.7956088
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.7791621   0.7245324   0.8337917
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.8520103   0.7710406   0.9329801
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.6996247   0.6589711   0.7402783
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.6294225   0.5134014   0.7454435
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.6848529   0.6562226   0.7134832
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.6870455   0.6030696   0.7710215


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3390373   3.2728432   3.4052315
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3601774   3.2597020   3.4606528
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6105008   3.5178376   3.7031640
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0498590   2.9832659   3.1164521
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.1800847   3.0827045   3.2774648
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2588989   3.1743320   3.3434658
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1454764   3.0350485   3.2559044
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                3.0754939   2.9926408   3.1583470
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.7233058   2.2630483   3.1835633
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.1045079   3.0503454   3.1586704
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1088673   3.0622791   3.1554554
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3380871   3.3175065   3.3586677
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5898758   2.5454966   2.6342550
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5088797   3.4947939   3.5229654
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6691874   3.6587387   3.6796362
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.0073628   2.9543803   3.0603453
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9283390   1.8775585   1.9791194
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8827462   1.8175816   1.9479107
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9673196   1.9109592   2.0236800
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0100110   1.9439209   2.0761010
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9671422   1.8863932   2.0478912
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8262356   1.7490601   1.9034111
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8829389   1.8185938   1.9472840
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0932208   2.0350047   2.1514369
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9467880   1.9003915   1.9931846
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8284951   1.7795462   1.8774440
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7957205   1.7596788   1.8317621
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9488147   1.9036527   1.9939766
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9757147   1.9560293   1.9954002
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7471774   1.7154586   1.7788961
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8751561   1.8624222   1.8878899
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9170252   1.9055186   1.9285319
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8995564   1.8689852   1.9301276
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2454009   1.2056182   1.2851837
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2410596   1.1880355   1.2940836
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3566194   1.3114246   1.4018143
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3146145   1.2602523   1.3689766
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3769400   1.3125507   1.4413293
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1661347   1.0720900   1.2601794
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3729748   1.3238177   1.4221319
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                1.1757589   1.1287961   1.2227217
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2147750   1.1953379   1.2342122
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.2484616   1.2072078   1.2897155
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3226687   1.2860389   1.3592984
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.4212704   1.3585809   1.4839600
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3179573   1.2772204   1.3586943
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3463754   1.3273025   1.3654484
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.1057216   1.0763005   1.1351427
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.1949852   1.1833243   1.2066461
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.3268234   1.3052230   1.3484237
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9907809   0.9519842   1.0295777
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9852222   0.9463510   1.0240933
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0939376   1.0533004   1.1345749
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.1005496   1.0492639   1.1518354
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0146639   0.9495597   1.0797680
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8416999   0.7453414   0.9380583
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1239607   1.0840510   1.1638704
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.9146470   0.8793095   0.9499846
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0016791   0.9726077   1.0307506
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.0882312   1.0525404   1.1239219
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0876478   1.0533198   1.1219759
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9646969   0.9132937   1.0161001
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9980141   0.9654660   1.0305622
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0809593   1.0630526   1.0988660
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9422318   0.9153211   0.9691426
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9988088   0.9862524   1.0113652
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0737488   1.0550752   1.0924224
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9148826   0.8743049   0.9554603
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9106109   0.8702442   0.9509776
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9576285   0.9176992   0.9975577
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8884260   0.8419793   0.9348727
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9172722   0.8595621   0.9749824
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8706441   0.7979070   0.9433811
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9546734   0.9124823   0.9968645
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                1.0089454   0.9762462   1.0416446
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8307271   0.7924733   0.8689808
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7243319   0.6786653   0.7699985
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9297547   0.8930560   0.9664534
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9450642   0.9108478   0.9792806
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8802996   0.8513400   0.9092592
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9201721   0.8932058   0.9471383
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7674566   0.7353706   0.7995425
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9335450   0.9165121   0.9505779
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8216648   0.7848112   0.8585184
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8426336   0.8052128   0.8800544
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8399245   0.7974756   0.8823733
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8548043   0.8123190   0.8972897
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8873549   0.8344616   0.9402481
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6846337   0.6143621   0.7549053
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8637493   0.8239670   0.9035315
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8376536   0.8054297   0.8698774
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9084115   0.8843011   0.9325219
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7757022   0.7349342   0.8164703
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9377036   0.8953613   0.9800459
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8875418   0.8498514   0.9252322
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7996806   0.7696890   0.8296721
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7440254   0.7088058   0.7792450
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8546698   0.8367097   0.8726300
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8136679   0.7790722   0.8482635
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8827271   0.8472024   0.9182519
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8197914   0.7811649   0.8584179
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8434370   0.7984484   0.8884256
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7810829   0.7253333   0.8368325
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7448156   0.6693569   0.8202742
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7590047   0.7202948   0.7977147
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7183112   0.6840373   0.7525850
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7343577   0.6975310   0.7711845
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8357017   0.7947215   0.8766819
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6798583   0.6458239   0.7138927
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7432244   0.7105937   0.7758552
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7725966   0.7370830   0.8081102
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8305349   0.7986957   0.8623740
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7708319   0.7335205   0.8081433
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7601169   0.7128224   0.8074114
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8395115   0.7878135   0.8912095
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7409565   0.6687955   0.8131175
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7100124   0.6686492   0.7513756
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6493410   0.6112910   0.6873909
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7123568   0.6763975   0.7483161
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.7199091   0.6811555   0.7586627
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7982404   0.7527824   0.8436984
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6924947   0.6543197   0.7306696
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6850635   0.6579407   0.7121863


### Parameter: ATE


agecat         studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.1330777   -0.0306511    0.2968065
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.5524465    0.2886542    0.8162387
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.2074553   -0.0892766    0.5041873
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.4693825    0.1418325    0.7969325
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.3017799    0.0431889    0.5603709
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0397137   -0.5181937    0.5976210
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0214946   -0.2341346    0.2771238
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.3194602   -0.4162623    1.0551827
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.5186659   -0.7880480   -0.2492839
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0466879   -0.1252833    0.2186590
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight     0.3119548   -0.5494381    1.1733477
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.1149063    0.0168643    0.2129483
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.1435935    0.0258426    0.2613444
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0745906   -0.0086302    0.1578114
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0085083   -0.0936836    0.0766671
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0188200   -0.1196320    0.1572719
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0393835   -0.0787179    0.1574848
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.1613853   -0.2253355   -0.0974352
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0825281   -0.0811520    0.2462082
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0935114    0.0581017    0.1289211
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0968653    0.0793661    0.1143645
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.7870730    0.7005170    0.8736289
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.1186296   -0.0094213    0.2466804
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.4518835    0.2227133    0.6810537
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0147872   -0.1331234    0.1626979
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.2556534    0.0068456    0.5044612
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.0745976   -0.1834354    0.3326306
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0406723   -0.4250284    0.3436837
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.3241473   -0.0161069    0.6644015
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.4127462    0.1277636    0.6977288
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.2165072    0.0301095    0.4029048
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.1089530   -0.0105437    0.2284496
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.1167369    0.0411185    0.1923553
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0181925   -0.0969238    0.1333087
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.1117407    0.0233166    0.2001648
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0827191   -0.0044463    0.1698844
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.2428047    0.0507511    0.4348582
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.2121563    0.0822982    0.3420144
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.1099164    0.0217045    0.1981284
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.2060992    0.1460632    0.2661353
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0874702   -0.0261777    0.2011181
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0555396    0.0236385    0.0874406
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     0.1137874    0.0933211    0.1342536
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0766534    0.0096309    0.1436759
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0188595   -0.1264772    0.0887581
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.1146565   -0.2524416    0.4817547
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0726737   -0.0517128    0.1970602
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.0302551   -0.2711990    0.2106887
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.2754007   -0.5150305   -0.0357708
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.3346624   -0.1182453    0.7875701
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1554411   -0.0897283    0.4006105
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0620852   -0.1809193    0.3050896
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0507036   -0.0707798    0.1721871
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0782658   -0.0238686    0.1804003
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.0097115   -0.0906243    0.0712013
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0094264   -0.1005887    0.0817359
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0155018   -0.0744542    0.0434506
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0626170   -0.1362194    0.0109853
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0551813   -0.3616450    0.2512824
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.1025093   -0.2441689    0.0391503
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0720645   -0.0450335    0.1891624
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0777454    0.0210057    0.1344850
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0137798   -0.1165280    0.0889683
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0393396    0.0094599    0.0692193
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0393677   -0.0077717    0.0865070
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0445951   -0.0565180    0.1457081
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.2887629    0.0509603    0.5265655
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0661618   -0.0040961    0.1364198
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0590612   -0.1294586    0.2475811
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.3029885   -0.4935399   -0.1124372
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0293767   -0.3724892    0.3137359
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1257116   -0.0566080    0.3080312
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0949603   -0.1153637    0.3052842
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0338245   -0.0941695    0.1618185
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0241344   -0.1014490    0.0531802
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.0613589    0.0098046    0.1129132
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0202502   -0.0606689    0.1011694
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0390681   -0.0232921    0.1014282
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0592381   -0.0088443    0.1273205
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0109986   -0.2395401    0.2615372
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0046054   -0.0973225    0.1065333
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0530505   -0.1442477    0.0381468
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0582562    0.0043924    0.1121199
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0805413   -0.0173666    0.1784491
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0594338   -0.0918017   -0.0270659
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0137595   -0.0321473    0.0596662
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0326994   -0.1399162    0.0745175
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.2462279   -0.5817112    0.0892554
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.0313848   -0.1678614    0.1050919
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0144188   -0.1184660    0.1473036
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.2353605   -0.0165129    0.4872339
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0097530   -0.2842932    0.3037992
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.3122358   -0.7085347    0.0840632
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.2561040    0.0426321    0.4695758
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.1004529   -0.2141604    0.0132546
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0180348   -0.0523423    0.0884120
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.0695185   -0.1745278    0.0354908
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.1080086   -0.0379084    0.2539257
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0778084   -0.1394805   -0.0161363
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0231152   -0.0824520    0.0362216
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.4584195    0.1069322    0.8099067
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0512655   -0.1594096    0.0568785
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0260912   -0.0488122    0.1009947
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0442323   -0.1294658    0.0410012
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0279864   -0.0811446    0.1371174
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0142221   -0.0474708    0.0190266
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0170111   -0.1248694    0.0908472
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0574189   -0.2493817    0.3642195
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0523101   -0.0640068    0.1686271
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.0319262   -0.1479742    0.0841218
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.0635941   -0.1139320    0.2411202
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0263191   -0.1455189    0.1981570
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.3019752    0.0608784    0.5430721
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0651150   -0.3526411    0.2224111
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0080156   -0.1296166    0.1135854
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0265337   -0.0948665    0.0417990
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.0309152   -0.1323185    0.0704881
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0438302   -0.0489404    0.1366007
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0045681   -0.0557766    0.0649129
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0027334   -0.0489540    0.0544208
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1753944   -0.1316592    0.4824480
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0113803   -0.0743800    0.0971405
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0863372    0.0015108    0.1711635
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0383866   -0.1286295    0.0518563
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0626543   -0.2113650    0.0860564
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0206248   -0.0575695    0.0163199
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0139174   -0.1214643    0.0936295
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.0304330   -0.3348383    0.2739723
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.0049560   -0.1096528    0.0997409
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.0025155   -0.1292888    0.1242579
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.1318452   -0.5060088    0.2423184
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0599399   -0.3529712    0.2330913
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0210088   -0.3211656    0.2791479
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0366515   -0.1599406    0.2332436
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0472564   -0.1499981    0.0554854
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0548479   -0.1417975    0.0321017
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0806701   -0.1627013    0.0013610
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0348351   -0.0211119    0.0907821
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0203319   -0.0394326    0.0800963
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0518117   -0.1484764    0.0448531
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0806515   -0.1415827   -0.0197204
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0078477   -0.0975438    0.1132392
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0104376   -0.1746557    0.1537806
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0340377   -0.0720831    0.1401584
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0245298   -0.1577753    0.2068350
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0170471   -0.0696894    0.1037836
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.1002989   -0.0449494    0.2455472
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0604208   -0.1942699    0.0734282
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0002753   -0.2965327    0.2970833
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0472993   -0.3155779    0.2209792
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0137417   -0.2608393    0.2883227
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0129614   -0.1310190    0.1050963
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0186879   -0.1044459    0.0670701
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0501232   -0.1301466    0.0299002
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0335140   -0.0954561    0.0284281
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0234560   -0.0803363    0.0334242
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0099860   -0.1039173    0.0839453
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0728483   -0.0249199    0.1706165
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0702022   -0.1933569    0.0529525
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0021926   -0.0864804    0.0908657


### Parameter: PAR


agecat         studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0295657   -0.0057861    0.0649175
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0230186    0.0029902    0.0430470
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0173843   -0.0215002    0.0562688
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0413547    0.0076302    0.0750791
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0088377   -0.0088888    0.0265642
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0017020   -0.0222332    0.0256372
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0079273   -0.0060866    0.0219413
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0470188   -0.1416303    0.0475926
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0848973   -0.1336916   -0.0361029
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0175111   -0.0462719    0.0812942
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.0487429   -0.0916316    0.1891175
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0304300    0.0078541    0.0530059
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0438217    0.0084790    0.0791644
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0176582   -0.0026631    0.0379796
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0007525   -0.0210075    0.0195025
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0000686   -0.0204410    0.0203038
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0095169   -0.0253052    0.0443390
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0201852   -0.0284329   -0.0119375
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0114306   -0.0016067    0.0244679
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0190467    0.0116854    0.0264079
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0387550    0.0313021    0.0462078
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1981653    0.1702301    0.2261005
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0234936   -0.0057755    0.0527627
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0146968    0.0006188    0.0287748
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0021056   -0.0186729    0.0228841
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0218961    0.0015707    0.0422215
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0095290   -0.0054769    0.0245349
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0001230   -0.0202669    0.0200209
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0162074   -0.0037060    0.0361207
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0419255    0.0034238    0.0804272
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0349902    0.0048778    0.0651027
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0394274   -0.0046799    0.0835347
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0257884    0.0089509    0.0426259
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0045629   -0.0278652    0.0369911
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0260225    0.0058032    0.0462418
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0161919   -0.0049912    0.0373750
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0070169    0.0006032    0.0134306
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0238036    0.0060397    0.0415675
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0348249    0.0074814    0.0621684
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0261133    0.0184407    0.0337860
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0098292    0.0002104    0.0194480
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0115465    0.0051138    0.0179793
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0459145    0.0375154    0.0543135
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0170419    0.0001696    0.0339143
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0040211   -0.0262289    0.0181867
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0011229   -0.0172767    0.0150308
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0174207   -0.0008858    0.0357272
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0028725   -0.0200316    0.0142866
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0101660   -0.0248456    0.0045136
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0185712   -0.0041381    0.0412806
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0072721   -0.0052142    0.0197584
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0028559   -0.0329086    0.0271968
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0093444   -0.0101319    0.0288206
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0248269   -0.0095742    0.0592281
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0031792   -0.0230116    0.0166531
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0040090   -0.0312085    0.0231905
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0036312   -0.0173178    0.0100554
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0144879   -0.0310776    0.0021019
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0001247   -0.0078847    0.0076352
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0109728   -0.0288845    0.0069389
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0201072   -0.0120793    0.0522938
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0101920    0.0031872    0.0171968
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0010796   -0.0107663    0.0086071
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0080607    0.0022378    0.0138835
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0089711   -0.0031411    0.0210832
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0110099   -0.0099730    0.0319927
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0127556    0.0000687    0.0254424
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0062131   -0.0044183    0.0168445
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0055533   -0.0086085    0.0197151
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0114929   -0.0233063    0.0003205
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0014993   -0.0196826    0.0166840
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0059508   -0.0035771    0.0154788
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0079094   -0.0157442    0.0315629
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0057422   -0.0146659    0.0261502
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0116667   -0.0372659    0.0139325
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0141331    0.0015413    0.0267249
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0056060   -0.0189833    0.0301953
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0081461   -0.0065293    0.0228215
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0112841   -0.0047939    0.0273621
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0025057   -0.0047624    0.0097739
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0022269   -0.0150313    0.0105776
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0147264   -0.0405845    0.0111318
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0065808    0.0000229    0.0131386
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0035230   -0.0047306    0.0117766
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0111359   -0.0173112   -0.0049606
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0034977   -0.0081838    0.0151791
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0065010   -0.0287900    0.0157880
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0159770   -0.0308224   -0.0011316
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0103056   -0.0301534    0.0095423
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0001266   -0.0098503    0.0095971
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0005044   -0.0155821    0.0145732
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0008131   -0.0101037    0.0117299
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0147804   -0.0360514    0.0064906
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0172369   -0.0096182    0.0440919
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0141951   -0.0325290    0.0041389
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0063621   -0.0175791    0.0303034
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0136618   -0.0376280    0.0103045
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0152784   -0.0228079    0.0533646
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0160204   -0.0303683   -0.0016725
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0075066   -0.0213349    0.0063217
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0086009   -0.0030334    0.0202352
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0090458   -0.0229225    0.0048309
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0080057   -0.0141591    0.0301705
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0057635   -0.0168162    0.0052892
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0016949   -0.0075287    0.0109185
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0042569   -0.0131708    0.0046571
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0046105   -0.0279559    0.0187349
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0022968   -0.0100886    0.0146821
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0054417   -0.0121742    0.0230577
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0037629   -0.0132865    0.0057606
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0060197   -0.0051687    0.0172081
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0016472   -0.0067438    0.0100382
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0148209   -0.0007013    0.0303430
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0011105   -0.0345131    0.0322921
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0017416   -0.0210653    0.0175821
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0094127   -0.0325965    0.0137711
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0084689   -0.0340807    0.0171430
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0115256   -0.0161619    0.0392131
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0014793   -0.0121364    0.0150949
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0012415   -0.0111694    0.0136524
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0034838   -0.0046564    0.0116241
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0022623   -0.0087540    0.0132785
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0230668   -0.0014287    0.0475623
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0054264   -0.0172606    0.0064077
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0020247   -0.0159335    0.0118842
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0051290   -0.0149008    0.0046428
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0028709   -0.0248705    0.0191288
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0012756   -0.0140688    0.0115176
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0000657   -0.0154198    0.0155512
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0005157   -0.0113515    0.0103201
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0047497   -0.0192258    0.0097263
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0003809   -0.0145545    0.0153163
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0010843   -0.0165937    0.0144250
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0056950   -0.0181961    0.0295862
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0069854   -0.0242126    0.0102417
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0159876   -0.0426369    0.0106616
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0250310   -0.0502559    0.0001939
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0077266   -0.0057608    0.0212140
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0019980   -0.0128113    0.0168073
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0085703   -0.0213262    0.0041856
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0237661   -0.0412454   -0.0062867
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0000754   -0.0123534    0.0125041
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0036463   -0.0175217    0.0102292
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0060463   -0.0157795    0.0278721
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0011893   -0.0076864    0.0100651
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0015712   -0.0111073    0.0142498
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0081079   -0.0029456    0.0191614
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0066487   -0.0144048    0.0011075
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0009326   -0.0158048    0.0139397
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0024413   -0.0163862    0.0115037
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0112330   -0.0191486    0.0416145
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0027726   -0.0230093    0.0174641
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0104943   -0.0411185    0.0201299
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0134489   -0.0372444    0.0103467
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0086155   -0.0236578    0.0064267
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0058485   -0.0198565    0.0081595
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0024245   -0.0154914    0.0106423
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0190783   -0.0079111    0.0460678
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0071300   -0.0215468    0.0072867
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0002106   -0.0075241    0.0079453
