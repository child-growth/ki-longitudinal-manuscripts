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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        birthwt                       pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------------------------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      185     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        8     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      0       45     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      1        4     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      205     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        2     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      0       10     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      1        0     217
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      181     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       14     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      0       33     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      1        5     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      207     231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        3     231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      0       21     231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      1        0     231
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      262     281
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        1     281
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      0       18     281
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      1        0     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      254     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      0       17     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      1        0     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      123     129
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     129
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0        6     129
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        0     129
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      312     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       18     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      0       38     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      1        5     373
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            0      307     408
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            1       32     408
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                      0       53     408
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                      1       16     408
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      227     377
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       17     377
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      0      122     377
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      1       11     377
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       14      18
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        2      18
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      0        2      18
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      1        0      18
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            0      986    1356
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            1       48    1356
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      0      258    1356
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      1       64    1356
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            0      111     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            1        6     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      0       49     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      1       13     179
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      482     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1        6     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      0      143     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      1        9     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            0      548     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            1       11     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      0      156     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      1       15     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     2016    2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       52    2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0       70    2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        5    2143
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1705    1972
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1       82    1972
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      0      169    1972
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      1       16    1972
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      0        1       1
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      1        0       1
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            0      107     115
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            1        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      0        8     115
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      1        0     115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      1        0       2
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            0       13      15
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            1        1      15
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                      0        1      15
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                      1        0      15
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2       2
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      0        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      1        0       2
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            0    16422   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            1      159   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      0        0   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      1        0   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0     8040    9308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1      107    9308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      0     1101    9308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      1       60    9308
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            0      706     795
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            1       17     795
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      0       69     795
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      1        3     795
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            0     3998    5268
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            1      281    5268
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                      0      763    5268
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                      1      226    5268
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            0     2409    2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            1      106    2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      0      219    2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      1       34    2768
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            0     9934   15664
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            1      339   15664
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      0     4834   15664
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      1      557   15664
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            0     3108    4435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            1      171    4435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      0      976    4435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      1      180    4435
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      187     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        6     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      0       48     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      1        1     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      206     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      0       10     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      183     232
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       12     232
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                      0       32     232
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                      1        5     232
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      205     230
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        4     230
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                      0       20     230
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                      1        1     230
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      263     281
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        0     281
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                      0       18     281
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                      1        0     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      253     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      0       16     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      1        0     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      123     129
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     129
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0        6     129
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        0     129
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      276     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       40     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      0       32     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      1       10     358
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight            0      287     401
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight            1       47     401
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                      0       50     401
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                      1       17     401
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      224     366
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       15     366
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                      0      115     366
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                      1       12     366
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       14      17
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        1      17
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                      0        2      17
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                      1        0      17
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            0       48      68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            1        2      68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      0       16      68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      1        2      68
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      479     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1        7     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      0      144     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      1        7     637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            0      200     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            1        3     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      0       45     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      1        2     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     1924    2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       44    2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0       65    2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        7    2040
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1550    1742
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1       32    1742
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                      0      150    1742
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                      1       10    1742
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                      0        1       1
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                      1        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            0        1       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            1        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      0        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      1        0       1
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight            0       13      15
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight            1        1      15
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                      0        1      15
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                      1        0      15
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2       2
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birth weight                      0        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birth weight                      1        0       2
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight            0    12399   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight            1     1146   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                      0        0   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                      1        0   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0      538     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1       10     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      0       58     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      1        4     610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            0      754     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            1       37     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      0       47     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      1       15     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            0       35      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      0        9      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      1        1      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      185     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        8     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      0       45     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                      1        4     242
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      205     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        2     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      0       10     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                      1        0     217
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      181     233
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       14     233
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      0       33     233
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                      1        5     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      207     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        3     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      0       21     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                      1        0     231
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      262     281
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        1     281
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      0       18     281
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                      1        0     281
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      254     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      0       17     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                      1        0     273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      123     129
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     129
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0        6     129
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        0     129
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      312     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       18     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      0       38     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                      1        5     373
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            0      307     408
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            1       32     408
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                      0       53     408
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                      1       16     408
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      227     377
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       17     377
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      0      122     377
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                      1       11     377
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       14      18
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        2      18
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      0        2      18
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                      1        0      18
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            0      986    1356
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            1       48    1356
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      0      258    1356
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                      1       64    1356
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            0      111     179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            1        6     179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      0       49     179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                      1       13     179
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      482     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1        6     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      0      143     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                      1        9     640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            0      548     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            1       11     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      0      156     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                      1       15     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     2016    2143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       52    2143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      0       70    2143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                      1        5    2143
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1705    1972
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1       82    1972
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      0      169    1972
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                      1       16    1972
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      0        1       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                      1        0       1
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            0      107     115
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight            1        0     115
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      0        8     115
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                      1        0     115
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight            1        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                      1        0       2
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            0       13      15
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight            1        1      15
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                      0        1      15
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                      1        0      15
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2       2
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      0        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birth weight                      1        0       2
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            0    16422   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            1      159   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      0        0   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                      1        0   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0     8040    9308
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1      107    9308
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      0     1101    9308
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                      1       60    9308
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            0      706     795
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            1       17     795
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      0       69     795
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                      1        3     795
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            0     3998    5268
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            1      281    5268
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                      0      763    5268
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                      1      226    5268
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            0     2409    2768
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            1      106    2768
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      0      219    2768
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                      1       34    2768
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            0     9934   15664
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            1      339   15664
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      0     4834   15664
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                      1      557   15664
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            0     3108    4435
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            1      171    4435
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      0      976    4435
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                      1      180    4435


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
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/bb70f558-da9d-4e24-8b20-a1322438121b/353fbb48-0547-41ca-a5f5-51519dc277f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bb70f558-da9d-4e24-8b20-a1322438121b/353fbb48-0547-41ca-a5f5-51519dc277f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bb70f558-da9d-4e24-8b20-a1322438121b/353fbb48-0547-41ca-a5f5-51519dc277f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bb70f558-da9d-4e24-8b20-a1322438121b/353fbb48-0547-41ca-a5f5-51519dc277f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0717949   0.0354843   0.1081055
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.1315789   0.0238708   0.2392871
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0545455   0.0300112   0.0790798
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.1162791   0.0203379   0.2122203
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0949576   0.0637307   0.1261844
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.2454750   0.1447613   0.3461887
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0693474   0.0372907   0.1014040
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.0817663   0.0346194   0.1289132
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0460416   0.0306269   0.0614562
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2038099   0.1482359   0.2593839
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0512821   0.0112025   0.0913616
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.2096774   0.1080650   0.3112898
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0122951   0.0025102   0.0220800
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0592105   0.0216604   0.0967607
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0196009   0.0080548   0.0311470
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.0819319   0.0391610   0.1247027
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0251451   0.0183956   0.0318946
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0666667   0.0102001   0.1231333
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0458307   0.0361252   0.0555363
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.0893278   0.0477456   0.1309099
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0130185   0.0105509   0.0154860
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0536059   0.0408582   0.0663537
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0654712   0.0580471   0.0728952
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2301397   0.2039092   0.2563703
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0418664   0.0340261   0.0497066
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1377823   0.0965064   0.1790583
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0330203   0.0290363   0.0370043
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.1036586   0.0948783   0.1124389
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0517874   0.0428667   0.0607082
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1581228   0.1344007   0.1818450
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0615385   0.0277358   0.0953411
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.1351351   0.0247416   0.2455286
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1267038   0.0899948   0.1634127
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.2156683   0.0876114   0.3437253
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1409608   0.1035476   0.1783739
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.2502357   0.1434062   0.3570652
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0614480   0.0306574   0.0922386
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.0906681   0.0389281   0.1424082
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0144033   0.0038022   0.0250044
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0463576   0.0127951   0.0799201
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0223577   0.0158242   0.0288912
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0972222   0.0287741   0.1656703
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0202004   0.0132555   0.0271454
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.0663645   0.0261307   0.1065983
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0466868   0.0319651   0.0614086
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.2418710   0.1335583   0.3501836
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0717949   0.0354843   0.1081055
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.1315789   0.0238708   0.2392871
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0545455   0.0300112   0.0790798
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.1162791   0.0203379   0.2122203
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0949552   0.0637744   0.1261360
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.2527098   0.1543397   0.3510798
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0693659   0.0372035   0.1015282
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.0799518   0.0324113   0.1274922
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0460416   0.0306269   0.0614562
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2038099   0.1482359   0.2593839
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0512821   0.0112025   0.0913616
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.2096774   0.1080650   0.3112898
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0122951   0.0025102   0.0220800
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0592105   0.0216604   0.0967607
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0195692   0.0080475   0.0310909
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.0819510   0.0390862   0.1248158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0251451   0.0183956   0.0318946
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0666667   0.0102001   0.1231333
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0457696   0.0360655   0.0554737
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.0862160   0.0454149   0.1270171
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0130189   0.0105503   0.0154874
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0545341   0.0417280   0.0673403
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0654049   0.0579823   0.0728274
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2319102   0.2056486   0.2581719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0418260   0.0339833   0.0496687
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1438251   0.1013830   0.1862673
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0328680   0.0288937   0.0368423
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.1035379   0.0947939   0.1122819
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0518434   0.0429004   0.0607864
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1574514   0.1337560   0.1811468


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0815451   0.0463297   0.1167604
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1176471   0.0863457   0.1489484
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0825959   0.0584656   0.1067261
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1061453   0.0608949   0.1513956
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0265982   0.0197841   0.0334124
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0496957   0.0401018   0.0592897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0179416   0.0152448   0.0206383
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0962415   0.0882767   0.1042062
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0505780   0.0424131   0.0587430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572012   0.0531104   0.0612920
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0791432   0.0700117   0.0882747
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0732759   0.0396713   0.1068804
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1596010   0.1237106   0.1954914
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0219780   0.0105837   0.0333723
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0250000   0.0182234   0.0317766
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0241102   0.0169050   0.0313155
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0815451   0.0463297   0.1167604
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1176471   0.0863457   0.1489484
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0825959   0.0584656   0.1067261
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1061453   0.0608949   0.1513956
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0265982   0.0197841   0.0334124
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0496957   0.0401018   0.0592897
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0179416   0.0152448   0.0206383
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0962415   0.0882767   0.1042062
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0505780   0.0424131   0.0587430
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572012   0.0531104   0.0612920
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0791432   0.0700117   0.0882747


### Parameter: RR


agecat        studyid                    country                        intervention_level           baseline_level                estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ---------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    1.832707   0.7001753    4.797105
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    2.131783   0.8329568    5.455864
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    2.585102   1.5259609    4.379372
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.179083   0.5628070    2.470186
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    4.426651   3.3980360    5.766636
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    4.088710   1.6300733   10.255703
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    4.815790   1.7406916   13.323341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    4.180008   1.9001770    9.195177
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.651282   1.0903832    6.446630
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.949079   1.1692916    3.248899
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    4.117682   3.0380317    5.581018
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    3.515131   2.9938117    4.127228
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    3.291002   2.3129494    4.682633
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    3.139237   2.7200998    3.622959
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    3.053306   2.4291646    3.837812
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    2.195946   0.8205345    5.876875
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    1.702146   0.8801406    3.291862
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.775215   1.0735907    2.935373
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.475526   0.6891839    3.159064
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    3.218543   1.1462663    9.037184
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    4.348485   2.0290167    9.319451
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    3.285299   1.6362939    6.596120
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    5.180710   2.9951459    8.961084
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    1.832707   0.7001753    4.797105
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    2.131783   0.8329568    5.455864
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    2.661358   1.5953201    4.439752
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.152610   0.5418646    2.451736
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    4.426651   3.3980360    5.766636
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    4.088710   1.6300733   10.255703
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    4.815790   1.7406916   13.323341
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    4.187760   1.9051623    9.205166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.651282   1.0903832    6.446630
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.883695   1.1219500    3.162626
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    4.188846   3.0976829    5.664373
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    3.545764   3.0211287    4.161505
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    3.438654   2.4256124    4.874785
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    3.150111   2.7294815    3.635561
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    3.037056   2.4153177    3.818840


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0097502   -0.0090039   0.0285043
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0071167   -0.0044739   0.0187074
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0226895    0.0042739   0.0411051
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0049232   -0.0151567   0.0250031
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0365543    0.0232327   0.0498760
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0548632    0.0154422   0.0942842
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0111424    0.0017973   0.0204875
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0160156    0.0054819   0.0265492
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0038650   -0.0000620   0.0077920
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0049231    0.0032846   0.0065616
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0307703    0.0253913   0.0361493
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0087117    0.0046952   0.0127282
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0241809    0.0209162   0.0274456
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0273558    0.0205384   0.0341731
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0117374   -0.0070003   0.0304751
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0129610   -0.0032530   0.0291751
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0186402   -0.0003659   0.0376463
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0123225   -0.0085584   0.0332034
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0075747   -0.0008352   0.0159847
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0026423    0.0001425   0.0051420
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0039098    0.0003530   0.0074666
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0142745    0.0057258   0.0228231
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0097502   -0.0090039   0.0285043
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0071167   -0.0044739   0.0187074
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0226919    0.0042236   0.0411601
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0049047   -0.0152631   0.0250725
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0365543    0.0232327   0.0498760
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0548632    0.0154422   0.0942842
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0111424    0.0017973   0.0204875
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0160473    0.0055186   0.0265759
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0039261   -0.0000071   0.0078594
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0049227    0.0032844   0.0065609
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0308366    0.0254578   0.0362154
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0087520    0.0047359   0.0127681
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0243332    0.0210715   0.0275949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0272998    0.0204702   0.0341293


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1195682   -0.1368486   0.3181500
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1154150   -0.0878688   0.2807123
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1928606    0.0286405   0.3293173
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0662874   -0.2463506   0.3005024
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4425683    0.3400317   0.5291742
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5168691    0.0857738   0.7446852
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4754098    0.0305299   0.7161389
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4496674    0.1408606   0.6474775
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0777733   -0.0033960   0.1523764
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2743957    0.1874487   0.3520390
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3197196    0.2674300   0.3682770
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1722419    0.0936057   0.2440558
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4227344    0.3685417   0.4722761
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3456489    0.2617191   0.4200374
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1601810   -0.1261692   0.3737212
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0928009   -0.0289761   0.2001659
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1167927   -0.0084939   0.2265148
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1670382   -0.1633910   0.4036180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3446502   -0.1005996   0.6097733
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1056911    0.0043545   0.1967136
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1621629    0.0099791   0.2909533
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2341562    0.0954058   0.3516245
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1195682   -0.1368486   0.3181500
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1154150   -0.0878688   0.2807123
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1928808    0.0283654   0.3295408
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0660382   -0.2482663   0.3012031
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4425683    0.3400317   0.5291742
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5168691    0.0857738   0.7446852
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4754098    0.0305299   0.7161389
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4505577    0.1424058   0.6479841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0790038   -0.0022964   0.1537094
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2743726    0.1874091   0.3520293
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3204086    0.2681237   0.3689584
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1730404    0.0943857   0.2448637
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4253966    0.3713123   0.4748281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3449414    0.2607426   0.4195502
