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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthwt                       swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------------------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      172     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        5     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       35     215  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1        3     215  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0       60      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0        2      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        0      62  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0       38      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1        0      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                     0        7      45  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                     1        0      45  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0       24      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        0      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0        1      26  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        1      26  swasted          
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      218     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                     0       10     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                     1        0     228  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      115     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0        5     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        0     120  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      113     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        2     115  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     115  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       76      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0        9      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1        1      86  swasted          
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          0      264     343  swasted          
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          1       32     343  swasted          
Birth       ki1000108-IRC              INDIA                          Low birthweight                     0       25     343  swasted          
Birth       ki1000108-IRC              INDIA                          Low birthweight                     1       22     343  swasted          
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      135     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          1        3     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                     0       36     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                     1        3     177  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       34      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        0      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        4      38  swasted          
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        0      38  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      890    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1        4    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      184    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1       25    1103  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      412     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        9     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0      125     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1       29     575  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      397     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        4     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      122     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1        9     532  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      536     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       18     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      124     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1       29     707  swasted          
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1212    1465  swasted          
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       61    1465  swasted          
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                     0      150    1465  swasted          
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                     1       42    1465  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      467     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1        5     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0      147     641  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1       22     641  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0       14      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        4      19  swasted          
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        1      19  swasted          
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2  swasted          
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2  swasted          
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    12924   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1      906   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   13830  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11254   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      360   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0      871   12917  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1      432   12917  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      660     756  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       42     756  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       36     756  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1       18     756  swasted          
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5079    6193  swasted          
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          1       99    6193  swasted          
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                     0      794    6193  swasted          
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                     1      221    6193  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2623    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       65    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      155    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1       56    2899  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    12553   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1       34   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     5112   18014  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1      315   18014  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     1755    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1        3    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0      610    2396  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1       28    2396  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      186     238  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        2     238  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       50     238  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1        0     238  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      199     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0       10     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        0     209  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      187     227  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1        6     227  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       34     227  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                     1        0     227  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      210     229  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        0     229  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       19     229  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        0     229  swasted          
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      254     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        0     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                     0       16     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                     1        0     270  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      235     253  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        3     253  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0       15     253  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        0     253  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      177     186  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     186  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        9     186  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     186  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      315     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       10     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0       41     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1        2     368  swasted          
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          0      318     402  swasted          
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          1       16     402  swasted          
6 months    ki1000108-IRC              INDIA                          Low birthweight                     0       63     402  swasted          
6 months    ki1000108-IRC              INDIA                          Low birthweight                     1        5     402  swasted          
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      236     374  swasted          
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          1        7     374  swasted          
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                     0      125     374  swasted          
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                     1        6     374  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       28      34  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1      34  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        5      34  swasted          
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        0      34  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      978    1324  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1       23    1324  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      304    1324  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1       19    1324  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      364     518  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        3     518  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0      148     518  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1        3     518  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      458     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        2     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      140     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1        3     603  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      545     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        0     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      170     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1        0     715  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1932    2010  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       11    2010  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       66    2010  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        1    2010  swasted          
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1132    1334  swasted          
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       14    1334  swasted          
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                     0      183    1334  swasted          
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                     1        5    1334  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      394     563  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1        3     563  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0      162     563  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1        4     563  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        9      12  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0      12  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        3      12  swasted          
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        0      12  swasted          
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2  swasted          
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2  swasted          
6 months    ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2  swasted          
6 months    ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2  swasted          
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    15742   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       16   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   15758  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     7337    8473  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       68    8473  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1057    8473  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1       11    8473  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      701     774  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1        3     774  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       70     774  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1        0     774  swasted          
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     4893    6252  swasted          
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      107    6252  swasted          
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                     0     1156    6252  swasted          
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                     1       96    6252  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2387    2664  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       29    2664  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      242    2664  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1        6    2664  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0     8258   14105  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1       80   14105  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     5649   14105  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1      118   14105  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2988    4045  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1       17    4045  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0     1029    4045  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1       11    4045  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      165     210  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        0     210  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       45     210  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1        0     210  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      160     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        1     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0        8     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        0     169  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      184     218  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1        1     218  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       32     218  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     1        1     218  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      203     221  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        0     221  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       18     221  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        0     221  swasted          
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      186     199  swasted          
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        1     199  swasted          
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     0       11     199  swasted          
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     1        1     199  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      224     237  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        0     237  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0       13     237  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        0     237  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      154     162  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     162  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        8     162  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     162  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      327     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1        2     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0       42     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1        1     372  swasted          
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      332     403  swasted          
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1        3     403  swasted          
24 months   ki1000108-IRC              INDIA                          Low birthweight                     0       66     403  swasted          
24 months   ki1000108-IRC              INDIA                          Low birthweight                     1        2     403  swasted          
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          0       98     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          1        3     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     0       66     168  swasted          
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     1        1     168  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      284     413  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        2     413  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0      119     413  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1        8     413  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      437     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        3     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      133     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1        6     579  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      387     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        1     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      123     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1        3     514  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0        6       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0       6  swasted          
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0      890    1057  swasted          
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       15    1057  swasted          
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     0      146    1057  swasted          
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     1        6    1057  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      344     486  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1       11     486  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0      127     486  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1        4     486  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        8      11  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0      11  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        3      11  swasted          
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        0      11  swasted          
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2  swasted          
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2  swasted          
24 months   ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2  swasted          
24 months   ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2  swasted          
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0     3968    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1        4    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0    3972  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0      312     431  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       25     431  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0       88     431  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1        6     431  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      593     657  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1        2     657  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       62     657  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1        0     657  swasted          
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     3880    4821  swasted          
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1       31    4821  swasted          
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     0      890    4821  swasted          
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     1       20    4821  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2174    2410  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       21    2410  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      212    2410  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1        3    2410  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0     4134    7282  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1       91    7282  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     2870    7282  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1      187    7282  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2888    3997  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1       56    3997  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0      998    3997  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1       55    3997  swasted          


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

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
![](/tmp/7288526a-fc58-4b14-8fd6-b5ca16f417f2/c7595dc8-6b4e-4dc8-9dc2-52fb05ae2228/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7288526a-fc58-4b14-8fd6-b5ca16f417f2/c7595dc8-6b4e-4dc8-9dc2-52fb05ae2228/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7288526a-fc58-4b14-8fd6-b5ca16f417f2/c7595dc8-6b4e-4dc8-9dc2-52fb05ae2228/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7288526a-fc58-4b14-8fd6-b5ca16f417f2/c7595dc8-6b4e-4dc8-9dc2-52fb05ae2228/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   NA                0.1081081   0.0726822   0.1435341
Birth       ki1000108-IRC             INDIA         Low birthweight              NA                0.4680851   0.3252231   0.6109471
Birth       ki1017093-NIH-Birth       BANGLADESH    Normal or high birthweight   NA                0.0213777   0.0075492   0.0352061
Birth       ki1017093-NIH-Birth       BANGLADESH    Low birthweight              NA                0.1883117   0.1265102   0.2501132
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Normal or high birthweight   NA                0.0324910   0.0177166   0.0472654
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Low birthweight              NA                0.1895425   0.1273943   0.2516906
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                0.0479183   0.0361810   0.0596557
Birth       ki1101329-Keneba          GAMBIA        Low birthweight              NA                0.2187500   0.1602555   0.2772445
Birth       ki1113344-GMS-Nepal       NEPAL         Normal or high birthweight   NA                0.0105932   0.0013501   0.0198363
Birth       ki1113344-GMS-Nepal       NEPAL         Low birthweight              NA                0.1301775   0.0794052   0.1809498
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                0.0309971   0.0278450   0.0341491
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              NA                0.3315426   0.3059803   0.3571049
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   NA                0.0598291   0.0422730   0.0773851
Birth       ki1135781-COHORTS         GUATEMALA     Low birthweight              NA                0.3333333   0.2075183   0.4591483
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                0.0191194   0.0153890   0.0228497
Birth       ki1135781-COHORTS         INDIA         Low birthweight              NA                0.2177340   0.1923424   0.2431256
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                0.0241815   0.0183734   0.0299897
Birth       ki1135781-COHORTS         PHILIPPINES   Low birthweight              NA                0.2654028   0.2058148   0.3249909
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0027012   0.0015973   0.0038051
Birth       kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              NA                0.0580431   0.0507091   0.0653771
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   NA                0.0479042   0.0249721   0.0708362
6 months    ki1000108-IRC             INDIA         Low birthweight              NA                0.0735294   0.0114167   0.1356422
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   NA                0.0288066   0.0077482   0.0498650
6 months    ki1000109-EE              PAKISTAN      Low birthweight              NA                0.0458015   0.0099545   0.0816486
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   NA                0.0229770   0.0136003   0.0323538
6 months    ki1000304b-SAS-CompFeed   INDIA         Low birthweight              NA                0.0588235   0.0395168   0.0781303
6 months    ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                0.0122164   0.0058540   0.0185788
6 months    ki1101329-Keneba          GAMBIA        Low birthweight              NA                0.0265957   0.0035874   0.0496041
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                0.0091830   0.0070103   0.0113557
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              NA                0.0102996   0.0042441   0.0163551
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                0.0214000   0.0173885   0.0254115
6 months    ki1135781-COHORTS         INDIA         Low birthweight              NA                0.0766773   0.0619375   0.0914171
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                0.0120033   0.0076601   0.0163465
6 months    ki1135781-COHORTS         PHILIPPINES   Low birthweight              NA                0.0241935   0.0050671   0.0433200
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0095946   0.0073396   0.0118496
6 months    kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              NA                0.0204612   0.0161867   0.0247357
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0056572   0.0002794   0.0110351
6 months    kiGH5241-JiVitA-4         BANGLADESH    Low birthweight              NA                0.0105769   0.0023089   0.0188449
24 months   ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                0.0165746   0.0082527   0.0248965
24 months   ki1101329-Keneba          GAMBIA        Low birthweight              NA                0.0394737   0.0085037   0.0704436
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                0.0741840   0.0461713   0.1021967
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              NA                0.0638298   0.0143557   0.1133039
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                0.0079264   0.0051469   0.0107058
24 months   ki1135781-COHORTS         INDIA         Low birthweight              NA                0.0219780   0.0124514   0.0315047
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0215385   0.0167365   0.0263404
24 months   kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              NA                0.0611711   0.0523294   0.0700127
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0190217   0.0130496   0.0249939
24 months   kiGH5241-JiVitA-4         BANGLADESH    Low birthweight              NA                0.0522317   0.0378830   0.0665804


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC             INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ki1101329-Keneba          GAMBIA        NA                   NA                0.0703072   0.0572109   0.0834034
Birth       ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.0421217   0.0265597   0.0576837
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0613145   0.0571772   0.0654519
Birth       ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0516712   0.0461576   0.0571849
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0193738   0.0169653   0.0217823
6 months    ki1000108-IRC             INDIA         NA                   NA                0.0522388   0.0304606   0.0740170
6 months    ki1000109-EE              PAKISTAN      NA                   NA                0.0347594   0.0161707   0.0533480
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0317221   0.0237601   0.0396840
6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0142429   0.0078820   0.0206038
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0093237   0.0072772   0.0113703
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0324696   0.0280758   0.0368634
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0131381   0.0088134   0.0174629
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0140376   0.0118094   0.0162658
6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0069221   0.0024171   0.0114272
24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0198675   0.0114511   0.0282840
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0719258   0.0475057   0.0963459
24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0105787   0.0076905   0.0134669
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0381763   0.0335656   0.0427871
24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0277708   0.0219080   0.0336336


### Parameter: RR


agecat      studyid                   country       intervention_level           baseline_level                  estimate     ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------------------  -----------  -----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1000108-IRC             INDIA         Low birthweight              Normal or high birthweight     4.3297872    2.7668559    6.775582
Birth       ki1017093-NIH-Birth       BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1017093-NIH-Birth       BANGLADESH    Low birthweight              Normal or high birthweight     8.8088023    4.2648085   18.194252
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Low birthweight              Normal or high birthweight     5.8336964    3.3302347   10.219104
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1101329-Keneba          GAMBIA        Low birthweight              Normal or high birthweight     4.5650614    3.1765610    6.560487
Birth       ki1113344-GMS-Nepal       NEPAL         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1113344-GMS-Nepal       NEPAL         Low birthweight              Normal or high birthweight    12.2887574    4.7253145   31.958414
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              Normal or high birthweight    10.6959325    9.4144861   12.151802
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS         GUATEMALA     Low birthweight              Normal or high birthweight     5.5714286    3.4540996    8.986659
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS         INDIA         Low birthweight              Normal or high birthweight    11.3881473    9.0727038   14.294515
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS         PHILIPPINES   Low birthweight              Normal or high birthweight    10.9754284    7.9000950   15.247921
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight    21.4879033   14.0821177   32.788391
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000108-IRC             INDIA         Low birthweight              Normal or high birthweight     1.5349265    0.5813148    4.052880
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000109-EE              PAKISTAN      Low birthweight              Normal or high birthweight     1.5899673    0.5448486    4.639814
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA         Low birthweight              Normal or high birthweight     2.5601023    1.4720113    4.452496
6 months    ki1101329-Keneba          GAMBIA        Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1101329-Keneba          GAMBIA        Low birthweight              Normal or high birthweight     2.1770517    0.7930960    5.976015
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              Normal or high birthweight     1.1215989    0.5951146    2.113852
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS         INDIA         Low birthweight              Normal or high birthweight     3.5830522    2.7393375    4.686631
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS         PHILIPPINES   Low birthweight              Normal or high birthweight     2.0155729    0.8449075    4.808259
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight     2.1325733    1.5637653    2.908281
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH    Low birthweight              Normal or high birthweight     1.8696267    0.5434655    6.431878
24 months   ki1101329-Keneba          GAMBIA        Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1101329-Keneba          GAMBIA        Low birthweight              Normal or high birthweight     2.3815789    0.9382768    6.045037
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              Normal or high birthweight     0.8604255    0.3633053    2.037769
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS         INDIA         Low birthweight              Normal or high birthweight     2.7727756    1.5877342    4.842300
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight     2.8400860    2.1710299    3.715328
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH    Low birthweight              Normal or high birthweight     2.7458960    1.8210568    4.140423


### Parameter: PAR


agecat      studyid                   country       intervention_level           baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.0493263    0.0252661   0.0733865
Birth       ki1017093-NIH-Birth       BANGLADESH    Normal or high birthweight   NA                 0.0447093    0.0267021   0.0627165
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Normal or high birthweight   NA                 0.0339871    0.0193630   0.0486112
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.0223889    0.0140308   0.0307469
Birth       ki1113344-GMS-Nepal       NEPAL         Normal or high birthweight   NA                 0.0315285    0.0173231   0.0457338
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.0303175    0.0272865   0.0333485
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   NA                 0.0195360    0.0091640   0.0299081
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.0325519    0.0279643   0.0371395
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.0175570    0.0126383   0.0224757
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.0166726    0.0144181   0.0189272
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.0043346   -0.0069046   0.0155739
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   NA                 0.0059528   -0.0086328   0.0205383
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   NA                 0.0087450    0.0022125   0.0152775
6 months    ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.0020265   -0.0013485   0.0054014
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.0001407   -0.0006702   0.0009517
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.0110696    0.0079618   0.0141775
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.0011348   -0.0006960   0.0029656
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.0044429    0.0024939   0.0063920
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.0012649   -0.0012811   0.0038109
24 months   ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.0032930   -0.0013440   0.0079299
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                -0.0022582   -0.0146646   0.0101481
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.0026524    0.0007727   0.0045320
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.0166379    0.0123473   0.0209284
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.0087491    0.0047168   0.0127814


### Parameter: PAF


agecat      studyid                   country       intervention_level           baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.3133133    0.1608005   0.4381091
Birth       ki1017093-NIH-Birth       BANGLADESH    Normal or high birthweight   NA                 0.6765221    0.4330886   0.8154245
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Normal or high birthweight   NA                 0.5112528    0.3041613   0.6567109
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.3184435    0.2051937   0.4155567
Birth       ki1113344-GMS-Nepal       NEPAL         Normal or high birthweight   NA                 0.7485091    0.4487581   0.8852633
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.4944581    0.4555653   0.5305725
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   NA                 0.2461538    0.1181998   0.3555410
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.6299808    0.5653736   0.6849842
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.4206421    0.3189707   0.5071349
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.8605748    0.7958374   0.9047847
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.0829769   -0.1563338   0.2727607
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   NA                 0.1712567   -0.3593562   0.4947495
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   NA                 0.2756767    0.0380805   0.4545861
6 months    ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.1422798   -0.1195459   0.3428729
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.0150959   -0.0757711   0.0982875
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.3409222    0.2508533   0.4201622
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.0863765   -0.0608389   0.2131625
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.3165040    0.1780579   0.4316305
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.1827312   -0.3283867   0.4971883
24 months   ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.1657459   -0.0898431   0.3613943
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                -0.0313966   -0.2188193   0.1272054
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.2507257    0.0671537   0.3981731
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.4358163    0.3238337   0.5292530
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.3150460    0.1606208   0.4410608
