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

**Outcome Variable:** y_rate_wtkg

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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        birthwt                       n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ---------------------------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       193     244  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   51     244  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       208     218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       194     228  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   34     228  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       209     228  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   19     228  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       262     279  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   17     279  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       254     271  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   17     271  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       177     187  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                   10     187  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       290     331  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   41     331  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight       330     394  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          Low birthweight                   64     394  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       200     319  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight                  119     319  y_rate_wtkg      
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        27      32  y_rate_wtkg      
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    5      32  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       962    1265  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  303    1265  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       386     549  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  163     549  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       485     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  155     640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       552     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  173     725  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1951    2019  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   68    2019  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1065    1249  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight                  184    1249  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       355     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  154     509  y_rate_wtkg      
0-3 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         8      11  y_rate_wtkg      
0-3 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      11  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15327   15327  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   15327  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7123    8172  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1049    8172  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       731     798  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   67     798  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      5310    6667  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1357    6667  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     11315   19402  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 8087   19402  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1861    2500  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  639    2500  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       181     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   49     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       198     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       190     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   32     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       207     226  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   19     226  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       248     264  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   16     264  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       229     242  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     242  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       171     180  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     180  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       282     322  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   40     322  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight       330     394  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          Low birthweight                   64     394  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       175     274  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight                   99     274  y_rate_wtkg      
3-6 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        22      23  y_rate_wtkg      
3-6 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    1      23  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       852    1108  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  256    1108  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       358     504  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  146     504  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       457     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  144     601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       533     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  169     702  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1593    1648  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   55    1648  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight       814     951  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight                  137     951  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       330     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  139     469  y_rate_wtkg      
3-6 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         7       9  y_rate_wtkg      
3-6 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    2       9  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13318   13318  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   13318  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5342    6117  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  775    6117  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       623     684  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   61     684  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      4949    6174  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1225    6174  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      6510   10870  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 4360   10870  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1303    1736  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  433    1736  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       177     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       188     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       189     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       205     223  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     223  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       227     242  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   15     242  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       218     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   12     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       163     171  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     171  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       286     325  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39     325  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight       335     404  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          Low birthweight                   69     404  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       201     300  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight                   99     300  y_rate_wtkg      
6-9 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        20      20  y_rate_wtkg      
6-9 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    0      20  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       871    1129  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  258    1129  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       337     480  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  143     480  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       438     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  138     576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       534     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  159     693  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1441    1482  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   41    1482  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight       496     572  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight                   76     572  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       341     476  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  135     476  y_rate_wtkg      
6-9 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6       8  y_rate_wtkg      
6-9 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    2       8  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight     12437   12437  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   12437  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      4833    5553  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  720    5553  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       608     672  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   64     672  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      4354    5415  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1061    5415  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2020    2706  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  686    2706  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       176     223  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   47     223  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       184     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       186     218  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                   32     218  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       205     223  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     223  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       218     232  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight                   14     232  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       218     232  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   14     232  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       161     169  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     169  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       290     327  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   37     327  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight       329     397  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          Low birthweight                   68     397  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       217     324  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight                  107     324  y_rate_wtkg      
9-12 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        19      21  y_rate_wtkg      
9-12 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    2      21  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       871    1132  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  261    1132  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       324     465  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  141     465  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       433     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  136     569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       524     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  159     683  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1043    1073  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   30    1073  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight       496     567  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight                   71     567  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       319     453  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  134     453  y_rate_wtkg      
9-12 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5       7  y_rate_wtkg      
9-12 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    2       7  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     12687   12687  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0   12687  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      4340    5038  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  698    5038  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       657     721  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                   64     721  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      3770    4659  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight                  889    4659  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2224    2993  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  769    2993  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       164     210  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   46     210  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       174     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       185     217  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   32     217  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       206     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       209     222  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   13     222  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       215     227  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   12     227  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       161     169  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     169  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       295     334  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39     334  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight       320     386  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          Low birthweight                   66     386  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       196     297  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight                  101     297  y_rate_wtkg      
12-15 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        12      14  y_rate_wtkg      
12-15 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                    2      14  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       887    1155  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  268    1155  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       312     445  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  133     445  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       417     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  120     537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       510     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  156     666  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       763     786  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   23     786  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       764     884  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  120     884  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       311     451  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  140     451  y_rate_wtkg      
12-15 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6       7  y_rate_wtkg      
12-15 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1       7  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      1001    1001  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0    1001  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1558    1850  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  292    1850  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       583     637  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   54     637  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2211    3010  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  799    3010  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       163     210  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   47     210  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       168     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    7     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184     217  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     217  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       198     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   14     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       213     224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   11     224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       158     166  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     166  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       286     325  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39     325  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight       315     377  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          Low birthweight                   62     377  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       183     277  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight                   94     277  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       889    1162  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  273    1162  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       302     432  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  130     432  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       412     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  121     533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       460     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  145     605  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       640     658  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   18     658  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       767     883  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  116     883  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       333     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  144     477  y_rate_wtkg      
15-18 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5       6  y_rate_wtkg      
15-18 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1       6  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight       279     279  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     279  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       981    1196  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  215    1196  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       531     585  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   54     585  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2208    2979  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  771    2979  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       162     207  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     207  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       160     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    7     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184     217  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     217  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202     220  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     220  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       188     200  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   12     200  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       219     232  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     232  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       151     159  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     159  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       272     310  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   38     310  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight       312     375  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          Low birthweight                   63     375  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       179     255  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight                   76     255  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       283     407  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  124     407  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       412     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  130     542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       411     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  136     547  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight        11      11  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0      11  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       749     865  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  116     865  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       316     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  131     447  y_rate_wtkg      
18-21 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6       7  y_rate_wtkg      
18-21 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1       7  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight       215     215  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     215  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       530     656  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  126     656  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       518     569  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   51     569  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       160     205  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     205  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       157     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    8     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184     217  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     217  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202     220  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     220  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       177     187  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   10     187  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       221     234  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     234  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       149     157  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     157  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       275     311  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   36     311  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       318     384  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          Low birthweight                   66     384  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight        68     106  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                   38     106  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       276     396  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  120     396  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       366     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  119     485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       371     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  122     493  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       671     782  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  111     782  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       254     342  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                   88     342  y_rate_wtkg      
21-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1       1  y_rate_wtkg      
21-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    0       1  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight       210     210  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     210  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       233     301  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                   68     301  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       549     601  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   52     601  y_rate_wtkg      


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
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/bcc96aad-0bb1-4551-949c-a543cb1dfbe7/3d64ee1a-32cf-4083-b6a4-fcf619261a5c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bcc96aad-0bb1-4551-949c-a543cb1dfbe7/3d64ee1a-32cf-4083-b6a4-fcf619261a5c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bcc96aad-0bb1-4551-949c-a543cb1dfbe7/3d64ee1a-32cf-4083-b6a4-fcf619261a5c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.8841741    0.8576567   0.9106915
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.8634546    0.8124432   0.9144660
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                1.0604244    1.0250479   1.0958009
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                1.2473023    1.1119543   1.3826503
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.7494335    0.7243591   0.7745079
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.8039968    0.7477936   0.8601999
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.9615382    0.9331428   0.9899337
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.9140753    0.8306259   0.9975247
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.9726961    0.9462728   0.9991194
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.9146598    0.8269954   1.0023242
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.9315676    0.9041248   0.9590104
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.9954956    0.9001016   1.0908896
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.8875402    0.8523462   0.9227343
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.9211576    0.7572103   1.0851048
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.7489972    0.7236821   0.7743123
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.7238261    0.6561915   0.7914607
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.7710376    0.7496276   0.7924476
0-3 months     ki1000108-IRC              INDIA                          Low birthweight              NA                0.7505817    0.7034879   0.7976755
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.6700298    0.6425774   0.6974822
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.7221533    0.6819835   0.7623230
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                0.7541024    0.6711404   0.8370643
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                0.6604174    0.4239730   0.8968617
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.7916506    0.7683487   0.8149525
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.7879146    0.7722723   0.8035569
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.8150780    0.7961192   0.8340369
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.8178524    0.7828948   0.8528100
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.9097751    0.8923678   0.9271825
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.8723892    0.8442943   0.9004840
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.8860292    0.8692190   0.9028395
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.8880262    0.8605336   0.9155188
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.9210788    0.9107465   0.9314111
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.9493286    0.8956722   1.0029850
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.9370312    0.9239199   0.9501426
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.9134049    0.8749850   0.9518247
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.8295296    0.8091679   0.8498913
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.8224223    0.7904327   0.8544119
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.9512911    0.9458714   0.9567108
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.9394374    0.9245204   0.9543544
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7983055    0.7807059   0.8159050
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.7923547    0.7326504   0.8520591
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.8197247    0.8146571   0.8247922
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.7708731    0.7603020   0.7814441
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.8651211    0.8613456   0.8688967
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.8428050    0.8385177   0.8470924
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.7008059    0.6838250   0.7177869
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.8516567    0.8352303   0.8680831
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.4727876    0.4533478   0.4922274
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.4882228    0.4539386   0.5225070
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.5798509    0.5475312   0.6121706
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                0.4649985    0.3494165   0.5805805
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.4374661    0.4178096   0.4571226
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.4879576    0.4461999   0.5297153
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.5161501    0.4954388   0.5368614
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.5992724    0.4999507   0.6985941
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.4997166    0.4798894   0.5195439
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.4956585    0.4238480   0.5674689
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.4650230    0.4391574   0.4908886
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.4758735    0.2941258   0.6576211
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.4712659    0.4411969   0.5013348
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.4541128    0.3593947   0.5488309
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.4696562    0.4495125   0.4897999
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.5001390    0.4434500   0.5568280
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.4669862    0.4478139   0.4861585
3-6 months     ki1000108-IRC              INDIA                          Low birthweight              NA                0.4718330    0.4327090   0.5109571
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.4705353    0.4457527   0.4953179
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.4761546    0.4460508   0.5062585
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4477177    0.4319789   0.4634564
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.4661192    0.4470357   0.4852028
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4576602    0.4388275   0.4764929
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4477474    0.4100689   0.4854260
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4854062    0.4717074   0.4991051
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.5070099    0.4717472   0.5422725
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4984428    0.4859440   0.5109415
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.4936236    0.4697155   0.5175317
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.4180729    0.4091757   0.4269700
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.4694592    0.4258370   0.5130814
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.4378324    0.4259121   0.4497528
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.4603619    0.4308387   0.4898851
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5009704    0.4840158   0.5179249
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.4880579    0.4651806   0.5109352
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.4730313    0.4682364   0.4778262
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.5168298    0.5034839   0.5301758
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.4636674    0.4514679   0.4758670
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.4409374    0.4024690   0.4794058
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.4836581    0.4791551   0.4881612
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.4775079    0.4684782   0.4865376
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4340372    0.4300634   0.4380111
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.4456022    0.4406282   0.4505762
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.4426942    0.4320922   0.4532961
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.4305035    0.4159687   0.4450383
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2481436    0.2308668   0.2654204
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.2333619    0.1995696   0.2671543
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.3803752    0.3541827   0.4065676
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                0.3067511    0.1414665   0.4720357
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.2365429    0.2205369   0.2525489
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.2258358    0.1817710   0.2699005
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.2719598    0.2575614   0.2863581
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.2767862    0.2128019   0.3407705
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.2648086    0.2487326   0.2808847
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.2436303    0.1891683   0.2980924
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.2619162    0.2400696   0.2837627
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.2148532    0.0585990   0.3711074
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2346782    0.2046594   0.2646971
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2533572    0.1824539   0.3242604
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2598242    0.2424459   0.2772026
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.2464297    0.2033208   0.2895386
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2618019    0.2468629   0.2767410
6-9 months     ki1000108-IRC              INDIA                          Low birthweight              NA                0.2577142    0.2249206   0.2905079
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2522979    0.2339454   0.2706504
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.2557738    0.2294981   0.2820496
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2091984    0.1942818   0.2241150
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.2126663    0.1928121   0.2325204
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.2428483    0.2256128   0.2600838
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.2311233    0.2080903   0.2541564
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2530814    0.2414982   0.2646647
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.2321335    0.1917891   0.2724778
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.2708153    0.2582364   0.2833942
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.2633437    0.2446717   0.2820157
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2565038    0.2475448   0.2654628
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2464266    0.1645550   0.3282982
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.2069302    0.1907764   0.2230840
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1978174    0.1554463   0.2401886
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1790499    0.1664950   0.1916047
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.2072082    0.1795901   0.2348264
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2581480    0.2532793   0.2630166
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.2587480    0.2467946   0.2707014
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.2126243    0.2015979   0.2236506
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.2326492    0.1943671   0.2709313
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2841242    0.2793964   0.2888521
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.2696706    0.2605109   0.2788304
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2359807    0.2301883   0.2417731
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.2484893    0.2365698   0.2604087
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1741177    0.1585025   0.1897328
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.1669692    0.1379787   0.1959597
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.2828315    0.2501841   0.3154790
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                0.4462768    0.2884423   0.6041113
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1721643    0.1564694   0.1878591
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.2075557    0.1731452   0.2419662
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1879998    0.1739139   0.2020857
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.1977921    0.1660286   0.2295555
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1891737    0.1730188   0.2053285
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.2093586    0.1563102   0.2624069
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.2152307    0.1920495   0.2384119
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.2158050    0.1478934   0.2837166
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1693588    0.1458754   0.1928422
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1742499    0.0432102   0.3052897
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2128776    0.1938999   0.2318552
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1919221    0.1470009   0.2368433
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2146919    0.1991166   0.2302671
9-12 months    ki1000108-IRC              INDIA                          Low birthweight              NA                0.2235948    0.1887626   0.2584270
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2542823    0.2344177   0.2741469
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.2342301    0.2033430   0.2651171
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1984604    0.1899116   0.2070092
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.1752218    0.1572490   0.1931945
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1565362    0.1395278   0.1735445
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1691682    0.1490540   0.1892825
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1792932    0.1687573   0.1898292
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.1678617    0.1479834   0.1877400
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1981158    0.1858638   0.2103678
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.1958047    0.1766118   0.2149976
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2063399    0.1961517   0.2165281
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2068017    0.1271591   0.2864444
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1648669    0.1504810   0.1792529
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1811817    0.1440150   0.2183483
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1412216    0.1272543   0.1551890
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.1476306    0.1197319   0.1755292
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1787230    0.1738049   0.1836411
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1894051    0.1775205   0.2012897
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1521865    0.1419988   0.1623741
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.1683796    0.1352795   0.2014796
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2219675    0.2170656   0.2268694
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.2141364    0.2041716   0.2241012
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1527689    0.1477302   0.1578076
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.1450880    0.1362542   0.1539219
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1334778    0.1148807   0.1520750
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.1433630    0.1074592   0.1792668
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.2085337    0.1829252   0.2341421
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                0.1691947    0.0514943   0.2868951
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1749166    0.1567561   0.1930771
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.1595099    0.1163241   0.2026958
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1516372    0.1350967   0.1681776
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.1564270    0.1337447   0.1791093
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1382987    0.1208829   0.1557145
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.1551861    0.1070798   0.2032923
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1887972    0.1626248   0.2149696
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.1801850    0.0703055   0.2900646
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1497145    0.1205443   0.1788846
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1581712    0.0245778   0.2917646
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1487780    0.1340914   0.1634645
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1716240    0.1265904   0.2166576
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1862196    0.1725311   0.1999082
12-15 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.1575014    0.1199335   0.1950692
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1316491    0.1090868   0.1542113
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.1408932    0.1109172   0.1708691
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1859438    0.1768388   0.1950489
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.1802889    0.1410792   0.2194986
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1320385    0.1172351   0.1468419
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1294253    0.1061598   0.1526908
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1780200    0.1646364   0.1914036
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.1943289    0.1678647   0.2207931
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1724755    0.1602144   0.1847365
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.1446017    0.1240283   0.1651750
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1728827    0.1615775   0.1841878
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2706829    0.1585016   0.3828641
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1801064    0.1676706   0.1925422
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1965725    0.1630684   0.2300767
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1687663    0.1524427   0.1850900
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.1806658    0.1569698   0.2043617
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1518841    0.1431034   0.1606649
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1401518    0.1207688   0.1595347
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1530893    0.1419834   0.1641952
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.1580301    0.1095347   0.2065255
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1338509    0.1283764   0.1393255
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.1278068    0.1204476   0.1351660
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1414527    0.1229896   0.1599158
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.1480234    0.1139532   0.1820935
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.2033143    0.1759439   0.2306847
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                0.2059451    0.0974859   0.3144042
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1636627    0.1477879   0.1795374
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.1531743    0.1038586   0.2024900
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1748805    0.1586182   0.1911428
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.1405653    0.0912342   0.1898964
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1491383    0.1289845   0.1692922
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.1027760    0.0618431   0.1437090
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.2166623    0.1882044   0.2451202
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.3309873    0.2024383   0.4595362
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1490420    0.1203521   0.1777320
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1222320    0.0070208   0.2374433
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1506031    0.1373672   0.1638389
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1723102    0.1057093   0.2389110
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1589685    0.1442630   0.1736740
15-18 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.1595232    0.1217934   0.1972530
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0928822    0.0741286   0.1116357
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.0866280    0.0656609   0.1075952
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1701135    0.1539736   0.1862533
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.2014112    0.1761712   0.2266512
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1574118    0.1385915   0.1762322
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1425240    0.1173839   0.1676640
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1572087    0.1435427   0.1708747
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.1570758    0.1317112   0.1824404
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1637853    0.1511251   0.1764456
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.1525112    0.1343287   0.1706937
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1670372    0.1525195   0.1815550
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1790198    0.1168214   0.2412183
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1599654    0.1465600   0.1733709
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1597788    0.1294925   0.1900650
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2465323    0.2277521   0.2653125
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.2143441    0.1890636   0.2396247
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1315969    0.1199598   0.1432339
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1379058    0.1114861   0.1643255
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1402063    0.1266137   0.1537989
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.1507299    0.1086594   0.1928005
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1615636    0.1556742   0.1674530
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.1557936    0.1456607   0.1659266
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1422640    0.1221158   0.1624123
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.1360404    0.1031597   0.1689210
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.1636181    0.1389944   0.1882418
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                0.0927869   -0.0159952   0.2015690
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1757353    0.1589318   0.1925387
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.1814525    0.1455382   0.2173668
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1457105    0.1268534   0.1645675
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.1541961    0.0888673   0.2195249
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1635881    0.1436167   0.1835596
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.0912177    0.0272644   0.1551710
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1822281    0.1554266   0.2090295
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.1101005   -0.0429045   0.2631055
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1500533    0.1192859   0.1808207
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1318538    0.0553950   0.2083127
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1396441    0.1253649   0.1539233
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1239548    0.0498686   0.1980409
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1599532    0.1445095   0.1753968
18-21 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.1617472    0.1341774   0.1893170
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1396405    0.1207659   0.1585151
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.1049923    0.0747216   0.1352629
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1775274    0.1563634   0.1986913
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1633862    0.1367570   0.1900154
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1343742    0.1207684   0.1479799
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.1269036    0.1053200   0.1484872
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1452513    0.1331597   0.1573429
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.1409251    0.1178106   0.1640397
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1554913    0.1419143   0.1690683
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1502034    0.1148248   0.1855820
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1486989    0.1297795   0.1676182
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.1287722    0.1014030   0.1561414
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1167968    0.0974136   0.1361800
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1409311    0.1062326   0.1756297
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1630193    0.1501017   0.1759369
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.1394747    0.1045569   0.1743926
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1550452    0.1369990   0.1730915
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.1569516    0.1258318   0.1880714
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.1424216    0.1181183   0.1667249
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                0.1644582    0.0993632   0.2295532
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1582106    0.1432906   0.1731306
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.1488219    0.1207799   0.1768639
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1682564    0.1486191   0.1878937
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.1337276    0.0668456   0.2006096
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1788047    0.1583425   0.1992670
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.3772777    0.2981605   0.4563949
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1891457    0.1648884   0.2134030
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.1837223    0.0496675   0.3177771
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1421298    0.1123071   0.1719524
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2583732    0.1393378   0.3774086
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1511339    0.1365116   0.1657563
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1518390    0.1034199   0.2002581
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1797096    0.1640312   0.1953879
21-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.1716034    0.1406046   0.2026022
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2098656    0.1812812   0.2384499
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.1690558    0.1341155   0.2039961
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1406126    0.1218037   0.1594214
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1431452    0.1138225   0.1724679
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1486468    0.1351184   0.1621752
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.1178811    0.0959134   0.1398489
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1745391    0.1601031   0.1889752
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.1753061    0.1492892   0.2013230
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1738984    0.1599608   0.1878360
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1376300    0.1038306   0.1714293
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1633830    0.1342595   0.1925065
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.2348210    0.1818020   0.2878401
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1062080    0.0737702   0.1386459
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1102623    0.0501788   0.1703458
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1913692    0.1792284   0.2035100
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.1645582    0.1303602   0.1987561


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8797984   0.8565879   0.9030090
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0647180   1.0304826   1.0989534
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7574332   0.7346343   0.7802322
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9575933   0.9305710   0.9846155
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9696425   0.9444017   0.9948833
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9402738   0.9137375   0.9668100
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8889411   0.8547941   0.9230881
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.6927615   0.6697463   0.7157767
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.7394641   0.6594131   0.8195151
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7908355   0.7705160   0.8111550
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.8154665   0.7984471   0.8324859
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9224848   0.9123284   0.9326411
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.9338086   0.9213719   0.9462452
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9496947   0.9445678   0.9548217
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7980090   0.7812054   0.8148126
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8098118   0.8052049   0.8144186
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8552819   0.8522151   0.8583487
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7391078   0.7253570   0.7528586
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4752476   0.4584089   0.4920863
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4447673   0.4267925   0.4627422
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5230308   0.5024653   0.5435963
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4972772   0.4781464   0.5164080
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4655525   0.4396062   0.4914987
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4704082   0.4414476   0.4993688
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4677504   0.4504662   0.4850346
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.4729699   0.4540570   0.4918828
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4517646   0.4385634   0.4649658
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4543307   0.4371718   0.4714896
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4195400   0.4108160   0.4282639
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.4433116   0.4322608   0.4543624
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4784042   0.4738739   0.4829346
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4612551   0.4496963   0.4728139
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4823605   0.4783270   0.4863939
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4386301   0.4354785   0.4417818
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4394625   0.4306717   0.4482533
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2437740   0.2291890   0.2583590
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2319441   0.2167458   0.2471424
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2717319   0.2573187   0.2861451
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2624126   0.2468740   0.2779512
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2596104   0.2384684   0.2807524
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2355521   0.2067399   0.2643643
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2612677   0.2477581   0.2747773
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.2526631   0.2378002   0.2675260
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2094896   0.1946085   0.2243707
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2392374   0.2254253   0.2530495
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2567079   0.2478001   0.2656156
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.2053304   0.1903540   0.2203067
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1879225   0.1758605   0.1999845
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2583079   0.2538050   0.2628108
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2142312   0.2037313   0.2247312
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2814401   0.2772484   0.2856319
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2390681   0.2338512   0.2442849
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1729651   0.1592042   0.1867261
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1772215   0.1628754   0.1915677
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1884027   0.1752581   0.2015473
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1871010   0.1715991   0.2026029
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2153147   0.1931793   0.2374501
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1695903   0.1463740   0.1928067
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2145332   0.2004359   0.2286306
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2472268   0.2305732   0.2638804
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1942469   0.1874175   0.2010763
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1597918   0.1465056   0.1730780
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2063331   0.1962080   0.2164581
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1666278   0.1532497   0.1800059
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1439867   0.1312614   0.1567119
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800077   0.1754721   0.1845433
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1536805   0.1439613   0.1633996
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2204550   0.2160776   0.2248323
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1508971   0.1464837   0.1553106
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1357013   0.1197899   0.1516128
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1730640   0.1566960   0.1894320
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1518926   0.1365752   0.1672100
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1401312   0.1235206   0.1567418
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1879898   0.1627929   0.2131868
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1501148   0.1216136   0.1786159
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1817789   0.1688651   0.1946927
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1352175   0.1173436   0.1530913
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1844376   0.1766800   0.1921952
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1312281   0.1188263   0.1436299
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1741243   0.1627901   0.1854585
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1836031   0.1720874   0.1951187
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1720672   0.1589120   0.1852223
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1496602   0.1416971   0.1576232
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1533737   0.1426494   0.1640980
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1321699   0.1277224   0.1366174
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1428338   0.1271384   0.1585293
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1631968   0.1479600   0.1784335
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1716820   0.1562577   0.1871064
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1465356   0.1275499   0.1655214
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2227120   0.1942678   0.2511562
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1477500   0.1198702   0.1756298
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1602425   0.1464995   0.1739855
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0889396   0.0746678   0.1032114
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1778904   0.1645794   0.1912014
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1534742   0.1384078   0.1685405
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1680204   0.1538057   0.1822350
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1597995   0.1475686   0.1720304
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1336195   0.1229907   0.1442483
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1405213   0.1277098   0.1533328
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1600610   0.1549496   0.1651724
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1418704   0.1248998   0.1588411
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1751792   0.1599697   0.1903887
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1453165   0.1273552   0.1632779
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1605735   0.1414833   0.1796637
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1755205   0.1490254   0.2020155
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1491376   0.1196596   0.1786157
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1591517   0.1455946   0.1727088
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1296202   0.1137821   0.1454583
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1734865   0.1569855   0.1899874
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1549513   0.1422792   0.1676234
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1213512   0.1043097   0.1383927
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1606509   0.1484608   0.1728410
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1527258   0.1374782   0.1679734
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1570073   0.1437285   0.1702861
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1657172   0.1469649   0.1844694
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1820121   0.1620908   0.2019334
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1878453   0.1639966   0.2116939
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1480530   0.1188307   0.1772753
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1784799   0.1645322   0.1924277
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1933736   0.1711433   0.2156039
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1414362   0.1257895   0.1570829
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1702342   0.1574124   0.1830560
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1770981   0.1526133   0.2015829
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1095786   0.0814997   0.1376575
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1889768   0.1774858   0.2004678


### Parameter: ATE


agecat         studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0207195   -0.0782595    0.0368205
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.1868779    0.0470128    0.3267431
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0545633   -0.0068842    0.1160107
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.0474629   -0.1356508    0.0407250
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0580363   -0.1494788    0.0334062
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0639281   -0.0354455    0.1633017
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0336173   -0.1338643    0.2010989
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0251711   -0.0972729    0.0469308
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0204559   -0.0720888    0.0311770
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0521235    0.0036898    0.1005572
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0936850   -0.3442616    0.1568916
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.0037361   -0.0196660    0.0121939
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0027743   -0.0365555    0.0421042
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0373859   -0.0704680   -0.0043039
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0019969   -0.0299024    0.0338963
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0282498   -0.0262980    0.0827976
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0236264   -0.0640909    0.0168382
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0071073   -0.0450377    0.0308230
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0118537   -0.0276296    0.0039222
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0059507   -0.0682306    0.0563292
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0488516   -0.0605398   -0.0371634
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0223161   -0.0275535   -0.0170787
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.1508508    0.1278101    0.1738915
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0154352   -0.0243215    0.0551919
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.1148524   -0.2353926    0.0056878
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0504915    0.0040787    0.0969043
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0831223   -0.0184751    0.1847197
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0040582   -0.0785512    0.0704348
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0108505   -0.1727800    0.1944809
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0171531   -0.1165294    0.0822232
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0304828   -0.0294136    0.0903792
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0048469   -0.0385842    0.0482779
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0056194   -0.0337292    0.0449680
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.0184016   -0.0041191    0.0409222
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0099128   -0.0519874    0.0321618
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0216036   -0.0165033    0.0597105
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0048192   -0.0319187    0.0222804
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0513864    0.0068931    0.0958796
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0225295   -0.0092781    0.0543371
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0129125   -0.0413942    0.0155693
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0437985    0.0296261    0.0579709
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0227301   -0.0630740    0.0176139
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0061503   -0.0161882    0.0038876
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0115650    0.0053152    0.0178148
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0121907   -0.0301933    0.0058119
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0147817   -0.0528089    0.0232456
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.0736241   -0.2410617    0.0938136
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.0107071   -0.0578719    0.0364577
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0048264   -0.0605424    0.0701952
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0211783   -0.0783207    0.0359642
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0470630   -0.2047061    0.1105801
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0186789   -0.0583172    0.0956751
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0133945   -0.0598536    0.0330645
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0040877   -0.0401817    0.0320063
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0034760   -0.0288323    0.0357842
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.0034678   -0.0108667    0.0178024
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0117250   -0.0405856    0.0171357
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0209480   -0.0627880    0.0208920
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0074716   -0.0298542    0.0149110
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0100772   -0.0924267    0.0722724
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0091128   -0.0545839    0.0363584
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0281584   -0.0022267    0.0585434
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0006001   -0.0123085    0.0135086
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0200250   -0.0198294    0.0598794
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0144536   -0.0247489   -0.0041583
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0125086   -0.0006887    0.0257059
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0071485   -0.0399499    0.0256529
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.1634453    0.0021369    0.3247537
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0353914   -0.0024631    0.0732459
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0097923   -0.0250232    0.0446079
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.0201849   -0.0352360    0.0756057
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0005742   -0.0712158    0.0723643
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0048911   -0.1282362    0.1380184
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0209554   -0.0697285    0.0278176
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0089030   -0.0294569    0.0472629
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0200522   -0.0569582    0.0168537
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.0232387   -0.0428147   -0.0036626
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0126321   -0.0137549    0.0390191
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0114315   -0.0338695    0.0110065
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0023111   -0.0249841    0.0203619
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0004618   -0.0798812    0.0808049
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0163147   -0.0234578    0.0560872
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0064089   -0.0249062    0.0377240
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0106821   -0.0021849    0.0235491
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0161931   -0.0184893    0.0508755
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0078311   -0.0189350    0.0032728
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0076809   -0.0177367    0.0023750
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0098851   -0.0306246    0.0503948
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.0393390   -0.1599250    0.0812470
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.0154066   -0.0624142    0.0316010
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0047898   -0.0232209    0.0328006
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.0168874   -0.0342898    0.0680646
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0086121   -0.1216166    0.1043923
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0084567   -0.1282842    0.1451977
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0228461   -0.0247636    0.0704557
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0287183   -0.0689156    0.0114790
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0092441   -0.0282965    0.0467847
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.0056550   -0.0501379    0.0388280
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0026132   -0.0300065    0.0247801
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0163089   -0.0133655    0.0459832
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0278738   -0.0518973   -0.0038503
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0978002   -0.0150506    0.2106510
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0164662   -0.0193882    0.0523205
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0118994   -0.0167957    0.0405946
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0117324   -0.0330431    0.0095783
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0049408   -0.0448397    0.0547213
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0060441   -0.0151891    0.0031008
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0065707   -0.0322624    0.0454038
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0026308   -0.1092286    0.1144902
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.0104883   -0.0624479    0.0414713
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.0343152   -0.0862867    0.0176563
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0463623   -0.0918732   -0.0008514
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1143249   -0.0173012    0.2459511
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0268100   -0.1455397    0.0919197
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0217071   -0.0462364    0.0896506
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0005547   -0.0399796    0.0410890
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0062542   -0.0345671    0.0220588
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.0312977    0.0020848    0.0605107
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0148879   -0.0463259    0.0165502
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0001329   -0.0289002    0.0286344
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0112741   -0.0334485    0.0109002
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0119826   -0.0519096    0.0758748
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0001867   -0.0333817    0.0330084
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0321881   -0.0637966   -0.0005796
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0063089   -0.0225861    0.0352040
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0105236   -0.0335713    0.0546186
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0057700   -0.0172889    0.0057490
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0062237   -0.0449713    0.0325239
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.0708312   -0.1823654    0.0407030
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0057172   -0.0340113    0.0454458
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0084857   -0.0593699    0.0763412
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0723705   -0.1394715   -0.0052694
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0721276   -0.2277645    0.0835094
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0181995   -0.1006166    0.0642177
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0156893   -0.0911776    0.0597990
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0017940   -0.0298264    0.0334145
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0346482   -0.0704886    0.0011921
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0141411   -0.0482583    0.0199760
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0074706   -0.0330856    0.0181444
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0043262   -0.0304708    0.0218184
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0052879   -0.0432158    0.0326399
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0199266   -0.0533576    0.0135043
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0241343   -0.0157021    0.0639707
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0235445   -0.0607817    0.0136926
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0019064   -0.0343772    0.0381900
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0220366   -0.0474473    0.0915205
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.0093887   -0.0412405    0.0224632
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.0345288   -0.1045885    0.0355309
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.1984730    0.1167057    0.2802403
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0054234   -0.1415592    0.1307123
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1162434   -0.0064709    0.2389578
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0007051   -0.0501237    0.0515338
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0081062   -0.0430199    0.0268075
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0408098   -0.0861926    0.0045731
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0025326   -0.0321457    0.0372110
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0307657   -0.0566265   -0.0049048
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0007670   -0.0288247    0.0303586
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0362684   -0.0728890    0.0003522
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0714380    0.0108894    0.1319867
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0040543   -0.0645849    0.0726935
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0268110   -0.0629853    0.0093633


### Parameter: PAR


agecat         studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0043757   -0.0162152    0.0074639
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0042937   -0.0019717    0.0105591
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0079998   -0.0016108    0.0176103
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0039450   -0.0116842    0.0037943
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0030536   -0.0080293    0.0019222
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0087062    0.0016351    0.0157773
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0014009   -0.0061660    0.0089678
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0022413   -0.0110119    0.0065293
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0030470   -0.0111748    0.0050807
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0227318    0.0043706    0.0410929
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.0146383   -0.0555811    0.0263045
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0008151   -0.0048873    0.0032570
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0003885   -0.0111118    0.0118888
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0081279   -0.0161192   -0.0001367
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0015073   -0.0092040    0.0061894
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0014060   -0.0004128    0.0032247
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0032226   -0.0089189    0.0024736
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0025175   -0.0137466    0.0087117
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0015964   -0.0036129    0.0004202
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0002964   -0.0054649    0.0048720
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0099129   -0.0123306   -0.0074952
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0098392   -0.0120033   -0.0076751
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0383019    0.0317642    0.0448395
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0024600   -0.0061322    0.0110521
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0016533   -0.0078728    0.0045661
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0073012    0.0000394    0.0145630
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0068807   -0.0013000    0.0150613
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0024395   -0.0071400    0.0022610
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0005294   -0.0084672    0.0095261
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0008577   -0.0058566    0.0041413
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0055004   -0.0017744    0.0127752
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0007642   -0.0062637    0.0077922
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0024346   -0.0119671    0.0168363
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0040469   -0.0012393    0.0093331
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0033295   -0.0153541    0.0086950
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0036549   -0.0051892    0.0124990
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0003884   -0.0069936    0.0062169
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0014671   -0.0000149    0.0029492
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0054792    0.0008910    0.0100673
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0033587   -0.0119631    0.0052457
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0053729    0.0035440    0.0072018
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0024123   -0.0059114    0.0010867
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0012977   -0.0032620    0.0006666
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0045929    0.0020502    0.0071355
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0032317   -0.0077187    0.0012553
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0043696   -0.0123439    0.0036048
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0027747   -0.0053836    0.0109330
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0045988   -0.0119576    0.0027600
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0002278   -0.0059126    0.0054569
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0023960   -0.0065902    0.0017981
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0023058   -0.0078309    0.0032193
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0008739   -0.0027768    0.0045245
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0002353   -0.0057021    0.0052315
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0005342   -0.0065509    0.0054824
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0003652   -0.0104977    0.0112281
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0002912   -0.0032175    0.0037999
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0036109   -0.0121439    0.0049221
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0039161   -0.0126844    0.0048522
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0033056   -0.0084043    0.0017930
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0002041   -0.0016803    0.0020884
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0015998   -0.0075794    0.0043797
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0088727   -0.0000354    0.0177808
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0001599   -0.0015058    0.0018257
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0016070   -0.0020260    0.0052400
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0026841   -0.0046772   -0.0006910
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0030874   -0.0001388    0.0063135
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0011525   -0.0080414    0.0057364
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0017608   -0.0054796    0.0090012
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0050572   -0.0006631    0.0107776
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0004029   -0.0023352    0.0031411
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0020726   -0.0053694    0.0012241
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0000840   -0.0042059    0.0043738
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0002315   -0.0060723    0.0065354
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0005468   -0.0058398    0.0047463
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0001586   -0.0065777    0.0062605
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0070555   -0.0192820    0.0051711
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0042136   -0.0084672    0.0000401
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0032556   -0.0048461    0.0113574
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0017616   -0.0071250    0.0036018
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0002709   -0.0055529    0.0050111
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0000068   -0.0021862    0.0021726
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0017609   -0.0030712    0.0065929
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0027650   -0.0064601    0.0119901
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0012847   -0.0004865    0.0030560
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0014940   -0.0015573    0.0045453
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0015125   -0.0035853    0.0005603
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0018718   -0.0044220    0.0006784
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0022235   -0.0067125    0.0111595
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0016609   -0.0041318    0.0074536
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0018526   -0.0080514    0.0043462
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0002554   -0.0019109    0.0024218
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0018325   -0.0011651    0.0048301
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0008074   -0.0057810    0.0041663
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0004003   -0.0060783    0.0068790
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0016888   -0.0036135    0.0069912
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0044408   -0.0112381    0.0023566
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0035684   -0.0092854    0.0164222
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0015062   -0.0121421    0.0091297
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0008104   -0.0088651    0.0072443
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0020124   -0.0044320    0.0084567
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0084152   -0.0141793   -0.0026511
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0012416   -0.0016959    0.0041791
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0034967   -0.0012030    0.0081963
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0033008   -0.0054136    0.0120153
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0022240   -0.0055652    0.0011173
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0002844   -0.0033842    0.0039531
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0016810   -0.0040968    0.0007348
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0013811   -0.0067812    0.0095435
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0001052   -0.0043698    0.0045803
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0004659   -0.0081449    0.0072130
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0031985   -0.0073953    0.0009983
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0026027   -0.0055378    0.0003324
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0060497   -0.0030617    0.0151611
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0012920   -0.0070806    0.0044966
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0015804   -0.0066486    0.0098095
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0012740   -0.0054025    0.0079505
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0039426   -0.0136263    0.0057412
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0077770    0.0006745    0.0148795
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0039377   -0.0132561    0.0053808
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0008573   -0.0073589    0.0056443
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0025881   -0.0079161    0.0027400
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0009831   -0.0007828    0.0027490
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0001660   -0.0043833    0.0040514
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0117587   -0.0215260   -0.0019914
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0020226   -0.0031999    0.0072452
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0003150   -0.0034636    0.0040936
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0015026   -0.0044839    0.0014786
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0003936   -0.0088703    0.0080831
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0029690   -0.0081186    0.0021807
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0005561   -0.0065079    0.0053958
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0003939   -0.0055007    0.0047129
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0030146   -0.0067759    0.0007466
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0067076   -0.0151785    0.0017632
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0009157   -0.0051086    0.0032772
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0044113   -0.0132036    0.0043810
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0008015   -0.0061070    0.0045040
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0100203   -0.0207972    0.0007566
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0040409   -0.0145876    0.0065058
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0018860   -0.0081834    0.0044114
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0025904   -0.0091156    0.0039348
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0005400   -0.0056394    0.0045594
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0063041   -0.0160275    0.0034193
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0045544   -0.0037556    0.0128643
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0023684   -0.0058808    0.0011440
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0023194   -0.0105283    0.0058895
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0010684   -0.0023775    0.0045144
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0012033   -0.0060288    0.0036222
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0025392   -0.0082356    0.0031571
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0032074   -0.0016738    0.0080885
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0013004   -0.0080967    0.0054958
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0059232   -0.0015058    0.0133523
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0026849   -0.0083538    0.0029840
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0012296   -0.0071859    0.0047266
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0164920   -0.0331236    0.0001397
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0008236   -0.0096546    0.0113018
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0066763   -0.0131752   -0.0001774
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0005109   -0.0066733    0.0076951
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0036642   -0.0087879    0.0014594
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0137151   -0.0014320    0.0288622
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0033706   -0.0118954    0.0186366
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0023924   -0.0057137    0.0009288
