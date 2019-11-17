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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        birthwt                       ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------------------------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      184     260
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       21     260
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       38     260
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1       17     260
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      219     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        1     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      168     241
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       37     241
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       24     241
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     1       12     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      200     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1       14     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       14     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        5     233
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      275     299
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        7     299
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     0       12     299
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     1        5     299
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      274     310
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       16     310
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0       15     310
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        5     310
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      172     196
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       14     196
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        9     196
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        1     196
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      271     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       59     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1       27     373
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      295     404
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1       40     404
0-24 months   ki1000108-IRC              INDIA                          Low birthweight                     0       36     404
0-24 months   ki1000108-IRC              INDIA                          Low birthweight                     1       33     404
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      154     378
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       91     378
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     0       55     378
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     1       78     378
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       33      42
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        2      42
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        4      42
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        3      42
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      943    1503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      193    1503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      210    1503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1      157    1503
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      364     603
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       59     603
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0      106     603
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1       74     603
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      489     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1       43     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      121     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1       47     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      549     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       32     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      138     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1       39     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     2188    2371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      101    2371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       67    2371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1       15    2371
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1139    1538
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      177    1538
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     0      145    1538
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     1       77    1538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      374     685
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1      103     685
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0      110     685
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1       98     685
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0       12      20
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        2      20
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        4      20
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        2      20
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16870   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       27   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11726   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      339   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1581   13897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1      251   13897
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      763     929
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       85     929
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       64     929
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1       17     929
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5088    6758
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      291    6758
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     0     1059    6758
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     1      320    6758
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2283    3001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1      431    3001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      168    3001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1      119    3001
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    12621   22524
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      411   22524
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     7875   22524
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1     1617   22524
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2974    4508
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      355    4508
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0      792    4508
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1      387    4508
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      202     260
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        3     260
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       49     260
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1        6     260
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      221     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        1     233
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      194     241
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       11     241
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       31     241
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                     1        5     241
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      210     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        4     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       16     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        3     233
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      282     299
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        0     299
0-6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                     0       15     299
0-6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                     1        2     299
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      290     310
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        0     310
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0       17     310
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        3     310
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      186     196
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     196
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        9     196
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        1     196
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      313     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1       19     368
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          0      327     403
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          1        8     403
0-6 months    ki1000108-IRC              INDIA                          Low birthweight                     0       53     403
0-6 months    ki1000108-IRC              INDIA                          Low birthweight                     1       15     403
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      216     378
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       29     378
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight                     0      106     378
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight                     1       27     378
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       34      42
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1      42
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        5      42
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        2      42
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0     1095    1495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1       40    1495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      294    1495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1       66    1495
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      415     601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        8     601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0      142     601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1       36     601
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      527     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        5     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      143     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1       25     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      580     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        1     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      161     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1       16     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     2277    2371
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       12    2371
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       77    2371
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        5    2371
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1300    1537
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       16    1537
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                     0      196    1537
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                     1       25    1537
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      469     685
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1        8     685
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0      180     685
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1       28     685
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0       14      20
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0      20
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        5      20
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        1      20
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16874   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       19   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11995   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       39   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1640   13802
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1      128   13802
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      802     896
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       16     896
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       77     896
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1        1     896
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5223    6593
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          1       30    6593
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight                     0     1192    6593
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight                     1      148    6593
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2674    3000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       40    3000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      255    3000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1       31    3000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    12976   22477
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1       55   22477
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     8641   22477
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1      805   22477
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     3292    4466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1       28    4466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0     1050    4466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1       96    4466
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      167     237
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       19     237
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       36     237
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1       15     237
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      195     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0       10     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      159     226
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       33     226
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       24     226
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     1       10     226
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      198     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1       11     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       17     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        2     228
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      244     267
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        7     267
6-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     0       12     267
6-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     1        4     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      227     258
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       16     258
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0       11     258
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        4     258
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      162     184
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       14     184
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        8     184
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     184
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      279     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       51     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0       24     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1       19     373
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      299     404
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1       36     404
6-24 months   ki1000108-IRC              INDIA                          Low birthweight                     0       43     404
6-24 months   ki1000108-IRC              INDIA                          Low birthweight                     1       26     404
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      155     371
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       86     371
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     0       60     371
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     1       70     371
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       25      32
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        2      32
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        3      32
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        2      32
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      865    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      181    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      201    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1      132    1379
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      312     522
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       54     522
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0       99     522
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1       57     522
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      427     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1       39     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      112     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1       36     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      528     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       31     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      139     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1       32     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1834    1997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       98    1997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       52    1997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1       13    1997
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1096    1473
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      173    1473
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     0      138    1473
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     1       66    1473
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      311     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1      101     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0       87     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1       90     589
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        7      12
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        2      12
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        2      12
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        1      12
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16589   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1        9   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     9068   10778
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      309   10778
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1267   10778
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1      134   10778
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      679     825
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       74     825
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       56     825
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1       16     825
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     4750    6296
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      284    6296
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     0     1019    6296
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     1      243    6296
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2091    2765
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1      420    2765
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      148    2765
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1      106    2765
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0     8212   14513
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      364   14513
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     4988   14513
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1      949   14513
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2983    4499
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      338    4499
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0      847    4499
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1      331    4499


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/eec435e9-c4bc-407a-9780-0861fef73cf1/f13ec1f2-ff9c-4892-b571-bc96d27a5dcd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eec435e9-c4bc-407a-9780-0861fef73cf1/f13ec1f2-ff9c-4892-b571-bc96d27a5dcd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eec435e9-c4bc-407a-9780-0861fef73cf1/f13ec1f2-ff9c-4892-b571-bc96d27a5dcd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eec435e9-c4bc-407a-9780-0861fef73cf1/f13ec1f2-ff9c-4892-b571-bc96d27a5dcd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1035979   0.0620752   0.1451207
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.3558192   0.2306405   0.4809979
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1811763   0.1283342   0.2340184
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.3232386   0.1600862   0.4863909
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0654206   0.0322204   0.0986207
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.2631579   0.0647309   0.4615849
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0248227   0.0066333   0.0430120
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.2941176   0.0771586   0.5110767
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0551724   0.0288523   0.0814925
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.2500000   0.0599205   0.4400795
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1785730   0.1371682   0.2199778
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6288713   0.4807982   0.7769444
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1177592   0.0831308   0.1523876
0-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.4955409   0.3762559   0.6148260
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3707106   0.3099984   0.4314228
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.5911676   0.5074147   0.6749205
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1696981   0.1335411   0.2058550
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.4317806   0.3674003   0.4961609
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1372463   0.1041838   0.1703088
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4214452   0.3502235   0.4926669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0812656   0.0578966   0.1046346
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.2951770   0.2242972   0.3660569
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0540320   0.0355055   0.0725586
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.2311119   0.1694147   0.2928091
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0440957   0.0356794   0.0525120
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1652695   0.0820424   0.2484965
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1331505   0.1146999   0.1516011
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.3578063   0.2948943   0.4207183
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2077851   0.1713080   0.2442622
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.4824178   0.4135879   0.5512478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0279680   0.0250198   0.0309161
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1407782   0.1245465   0.1570098
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0999387   0.0797370   0.1201404
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.2127306   0.1205965   0.3048646
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0533884   0.0473755   0.0594013
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.2401645   0.2178166   0.2625124
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1579646   0.1442198   0.1717094
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.4253204   0.3678868   0.4827541
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0309534   0.0277731   0.0341336
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.1717939   0.1637612   0.1798267
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1060225   0.0935407   0.1185043
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.3342533   0.3027161   0.3657904
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0536585   0.0227472   0.0845698
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.1388889   0.0256845   0.2520932
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0369155   0.0163766   0.0574544
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.4350856   0.2806435   0.5895278
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0238806   0.0075110   0.0402502
0-6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                0.2205882   0.1219131   0.3192634
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1176197   0.0770346   0.1582047
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.2068856   0.1365883   0.2771829
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0351963   0.0175729   0.0528197
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.1870652   0.1338010   0.2403295
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0189125   0.0059208   0.0319043
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.2022472   0.1431897   0.2613047
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0093985   0.0011934   0.0176035
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.1488095   0.0949537   0.2026653
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0052425   0.0022835   0.0082015
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0609756   0.0091733   0.1127779
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0122319   0.0062495   0.0182142
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1048696   0.0624325   0.1473067
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0167715   0.0052391   0.0283039
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.1346154   0.0881975   0.1810333
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0032630   0.0022392   0.0042867
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0726271   0.0602212   0.0850331
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0055936   0.0035904   0.0075969
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.1108289   0.0939607   0.1276970
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0146358   0.0101157   0.0191560
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.1093455   0.0725925   0.1460986
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0041540   0.0030248   0.0052833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.0852740   0.0793368   0.0912111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0084050   0.0044841   0.0123258
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.0858788   0.0662850   0.1054725
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1026918   0.0589703   0.1464133
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.2846007   0.1636842   0.4055171
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1716331   0.1179664   0.2252998
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.2458707   0.0841820   0.4075594
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1549750   0.1158600   0.1940899
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.5005119   0.3481170   0.6529067
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1064000   0.0731598   0.1396401
6-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.3954470   0.2791481   0.5117459
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3577963   0.2969489   0.4186437
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.5381601   0.4531478   0.6231724
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1725753   0.1413871   0.2037636
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.4007161   0.3329644   0.4684678
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1464189   0.1098384   0.1829995
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.3705716   0.2949334   0.4462098
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0835143   0.0582542   0.1087745
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.2425379   0.1717605   0.3133153
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0545814   0.0355973   0.0735655
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.1911041   0.1313811   0.2508271
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0506574   0.0408719   0.0604430
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2225994   0.1273589   0.3178398
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1349980   0.1161428   0.1538531
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.3343497   0.2714771   0.3972223
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2363394   0.1952795   0.2773994
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.5266260   0.4528254   0.6004266
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0327151   0.0291080   0.0363221
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0989271   0.0833584   0.1144958
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0979451   0.0767001   0.1191901
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.2224173   0.1234032   0.3214314
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0556238   0.0492874   0.0619603
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.2001748   0.1783719   0.2219778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1666918   0.1520905   0.1812932
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.4276566   0.3663151   0.4889982
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0416266   0.0370881   0.0461650
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.1627391   0.1527458   0.1727324
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1009761   0.0888139   0.1131383
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.2847599   0.2562526   0.3132672


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1461538   0.1031316   0.1891761
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2033195   0.1524012   0.2542378
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0815451   0.0463297   0.1167604
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0401338   0.0178494   0.0624181
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0677419   0.0397221   0.0957618
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1806931   0.1431275   0.2182586
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4470899   0.3969017   0.4972782
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2328676   0.1923832   0.2733520
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2205638   0.1874426   0.2536851
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0489245   0.0402400   0.0576090
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1651495   0.1465863   0.1837128
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2934307   0.2593074   0.3275539
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0424552   0.0391029   0.0458075
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1097955   0.0896809   0.1299101
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0904114   0.0835737   0.0972490
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1832722   0.1694278   0.1971167
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0900373   0.0858293   0.0942453
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1645963   0.1519758   0.1772167
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0663900   0.0348925   0.0978876
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0570720   0.0343950   0.0797490
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1481481   0.1122884   0.1840079
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0709030   0.0481799   0.0936261
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0732113   0.0523687   0.0940539
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0071700   0.0037732   0.0105668
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0266753   0.0186172   0.0347335
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0525547   0.0358322   0.0692773
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120997   0.0102756   0.0139237
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0269983   0.0230857   0.0309109
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236667   0.0182263   0.0291070
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0382613   0.0355749   0.0409477
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0277653   0.0218336   0.0336971
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1434599   0.0987369   0.1881829
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1902655   0.1389784   0.2415526
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1534653   0.1182750   0.1886557
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4204852   0.3701867   0.4707837
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2269761   0.1910133   0.2629388
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2126437   0.1775086   0.2477788
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0555834   0.0455321   0.0656347
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1622539   0.1434197   0.1810881
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3242784   0.2864427   0.3621142
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0411022   0.0373541   0.0448504
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1090909   0.0878048   0.1303770
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0837039   0.0768626   0.0905453
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1902351   0.1756031   0.2048671
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0904706   0.0854589   0.0954824
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1486997   0.1368826   0.1605168


### Parameter: RR


agecat        studyid                    country                        intervention_level           baseline_level                 estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     3.434616    2.0083237    5.873849
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     1.784110    0.9970422    3.192493
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     4.022556    1.6209628    9.982314
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    11.848740    4.1890056   33.514548
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     4.531250    1.8467195   11.118216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     3.521648    2.5304353    4.901135
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     4.208088    2.8826761    6.142904
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.594688    1.2849234    1.979128
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     2.544405    2.0894548    3.098415
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     3.070721    2.2909041    4.115986
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     3.632251    2.4970234    5.283591
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     4.277314    2.7672469    6.611413
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     3.747972    2.1874594    6.421740
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     2.687232    2.1512469    3.356759
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     2.321715    1.8556282    2.904872
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     5.033548    4.3059318    5.884117
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     2.128611    1.3196055    3.433591
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     4.498440    3.8888004    5.203652
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     2.692505    2.2940414    3.160180
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     5.550091    4.9809626    6.184248
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     3.152663    2.7121064    3.664784
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     2.588384    0.9540245    7.022599
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    11.785989    6.0828279   22.836342
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     9.237132    4.0743311   20.941993
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.758937    1.0843918    2.853084
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     5.314916    3.2349455    8.732242
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    10.693820    5.0694818   22.558082
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    15.833333    6.1537207   40.738678
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    11.631098    4.1942654   32.254142
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     8.573485    4.5507812   16.152096
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     8.026442    3.7191996   17.321944
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    22.257939   15.5717878   31.814962
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    19.813396   13.4266425   29.238187
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     7.471083    4.7327033   11.793912
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    20.527926   15.5332424   27.128641
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    10.217620    6.1125969   17.079443
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     2.771406    1.5349338    5.003922
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     1.432537    0.6896928    2.975472
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     3.229630    2.1766600    4.791981
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     3.716608    2.4217647    5.703764
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.504096    1.1933224    1.895804
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     2.321978    1.9176652    2.811534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     2.530899    1.8329713    3.494573
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     2.904147    1.9062380    4.424457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     3.501268    2.1933647    5.589075
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     4.394208    2.7472010    7.028632
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     2.476702    1.9626088    3.125458
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     2.228261    1.7854536    2.780889
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     3.023900    2.4955099    3.664169
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     2.270836    1.3832935    3.727840
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     3.598723    3.0757165    4.210664
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     2.565552    2.1698318    3.033442
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     3.909499    3.4577352    4.420287
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     2.820073    2.4117359    3.297547


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0425559    0.0133988   0.0717130
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0221432   -0.0031094   0.0473958
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0161245   -0.0016978   0.0339468
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0153111    0.0010506   0.0295716
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0125695   -0.0009119   0.0260510
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0519900    0.0293022   0.0746778
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0629339    0.0382114   0.0876564
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0763793    0.0384260   0.1143326
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0631695    0.0408691   0.0854699
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0833175    0.0578007   0.1088344
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0473058    0.0288217   0.0657900
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0396355    0.0238324   0.0554387
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0048288    0.0017467   0.0079109
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0319991    0.0219388   0.0420593
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0856456    0.0604578   0.1108334
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0144872    0.0122871   0.0166873
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0098568    0.0016288   0.0180848
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0370230    0.0320331   0.0420129
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0253077    0.0190884   0.0315269
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0590839    0.0554409   0.0627270
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0585738    0.0495508   0.0675967
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0127315   -0.0052142   0.0306772
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0473236    0.0252796   0.0693677
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0331914    0.0148417   0.0515411
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0305285    0.0022175   0.0588395
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0357067    0.0195604   0.0518531
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0542988    0.0351779   0.0734197
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0334586    0.0196592   0.0472581
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0019275    0.0000868   0.0037682
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0144435    0.0081243   0.0207627
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0357833    0.0207029   0.0508636
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0088367    0.0072355   0.0104380
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0214047    0.0178240   0.0249854
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0090308    0.0054259   0.0126357
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0341073    0.0314966   0.0367179
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0193604    0.0142426   0.0244782
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0407681    0.0117901   0.0697461
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0186324   -0.0070025   0.0442672
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0326926    0.0126989   0.0526863
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0470654    0.0244460   0.0696847
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0626889    0.0246708   0.1007069
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0544007    0.0345541   0.0742474
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0662247    0.0396563   0.0927932
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0386355    0.0199919   0.0572791
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0317200    0.0166739   0.0467661
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0049259    0.0015392   0.0083127
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0272559    0.0175747   0.0369372
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0879390    0.0605837   0.1152943
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0083872    0.0062955   0.0104789
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0111458    0.0021618   0.0201298
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0280801    0.0233720   0.0327882
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0235432    0.0172178   0.0298687
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0488440    0.0444692   0.0532189
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0477236    0.0395774   0.0558699


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2911720    0.0811792   0.4531717
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1089083   -0.0224559   0.2233950
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1977373   -0.0342233   0.3776727
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.3815012    0.0126056   0.6125755
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1855501   -0.0227823   0.3514469
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2254915    0.1260495   0.3136186
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3482917    0.2126636   0.4605563
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1708366    0.0805776   0.2522349
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2712681    0.1809602   0.3516185
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3777479    0.2606278   0.4763157
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3679343    0.2252284   0.4843552
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4231512    0.2584611   0.5512649
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0986990    0.0358178   0.1574792
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1937581    0.1329529   0.2502990
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2918767    0.2035183   0.3704331
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.3412356    0.2948063   0.3846080
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0897743    0.0131798   0.1604236
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.4094947    0.3603677   0.4548485
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1380878    0.1044316   0.1704792
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.6562163    0.6250737   0.6847721
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3558632    0.3024356   0.4051987
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1917683   -0.1099638   0.4114776
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5617773    0.3268134   0.7147313
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5815704    0.2758198   0.7582324
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2060673   -0.0044663   0.3724736
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.5035997    0.2915371   0.6521860
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7416720    0.5209728   0.8606899
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.7807018    0.5147381   0.9008953
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2688305    0.0076893   0.4612485
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5414547    0.3296998   0.6863139
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.6808758    0.4166183   0.8254312
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7303258    0.6451830   0.7950375
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.7928156    0.7129906   0.8504392
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.3815845    0.2422107   0.4953244
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.8914296    0.8590068   0.9163965
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.6972856    0.5490575   0.7967900
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2841777    0.0674956   0.4505103
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0979283   -0.0456311   0.2217778
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1742049    0.0650483   0.2706172
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3066841    0.1574454   0.4294886
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1490870    0.0531546   0.2352997
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2396761    0.1598375   0.3119278
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3114352    0.1817831   0.4205431
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3162959    0.1604312   0.4432246
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3675490    0.1918405   0.5050553
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0886224    0.0275965   0.1458184
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1679832    0.1080675   0.2238741
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2711836    0.1835803   0.3493869
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2040564    0.1548208   0.2504238
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1021699    0.0180100   0.1791170
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3354693    0.2831571   0.3839639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1237586    0.0906472   0.1556644
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.5398884    0.4971230   0.5790169
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3209397    0.2658208   0.3719206
