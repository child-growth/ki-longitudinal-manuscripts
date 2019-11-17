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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        birthwt                       wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      157     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1       20     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    0       22     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    1       16     215
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0       59      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        1      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    0        1      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    1        1      62
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0       36      45
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1        2      45
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                    0        4      45
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                    1        3      45
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0       24      26
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                    0        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                    1        2      26
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      213     228
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        5     228
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                    0       10     228
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                    1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      104     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1       11     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    0        4     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    1        1     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      113     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        1     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0       71      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1        5      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    0        4      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    1        6      86
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight         0      234     343
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight         1       62     343
Birth       ki1000108-IRC              INDIA                          Low birthweight                    0       17     343
Birth       ki1000108-IRC              INDIA                          Low birthweight                    1       30     343
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         0      127     177
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         1       11     177
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                    0       28     177
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                    1       11     177
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         0       32      38
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         1        2      38
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                    0        2      38
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                    1        2      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         0      861    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         1       33    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                    0      124    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                    1       85    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0      347     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1       74     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    0       60     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    1       94     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         0      351     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         1       50     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    0       64     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    1       67     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0      471     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1       83     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    0       64     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    1       89     707
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0     1015    1465
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1      258    1465
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                    0       87    1465
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                    1      105    1465
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         0      423     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         1       49     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    0       86     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    1       83     641
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       13      19
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        1      19
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                    0        2      19
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                    1        3      19
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                    0        0       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                    1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0    10943   13830
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1     2887   13830
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                    0        0   13830
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                    1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0    10392   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1     1222   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    0      464   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    1      839   12917
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      540     756
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1      162     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                    0       24     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                    1       30     756
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     4632    6193
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      546    6193
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                    0      465    6193
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                    1      550    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2371    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      317    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    0       77    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    1      134    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0    12126   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1      461   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    0     3915   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    1     1512   18014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0     1691    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1       67    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    0      466    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    1      172    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      182     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1        6     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    0       48     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    1        2     238
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0      198     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0      177     227
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1       16     227
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                    0       31     227
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                    1        3     227
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0      207     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1        3     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                    0       19     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                    1        0     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      254     270
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        0     270
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                    0       16     270
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                    1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      232     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1        6     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    0       14     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    1        1     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      177     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        9     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        0     186
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0      289     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1       36     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    0       33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    1       10     368
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight         0      294     402
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight         1       40     402
6 months    ki1000108-IRC              INDIA                          Low birthweight                    0       55     402
6 months    ki1000108-IRC              INDIA                          Low birthweight                    1       13     402
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight         0      215     374
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight         1       28     374
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                    0      112     374
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                    1       19     374
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         0       27      34
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         1        2      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    0        5      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    1        0      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         0      893    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         1      108    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                    0      267    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                    1       56    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0      349     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1       18     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    0      134     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    1       17     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         0      450     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         1       10     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    0      128     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    1       15     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0      534     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1       11     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    0      160     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    1       10     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0     1861    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1       82    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       63    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        4    2010
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0     1084    1334
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1       62    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                    0      176    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                    1       12    1334
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         0      375     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         1       22     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    0      137     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    1       29     563
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0        8      12
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        1      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    0        3      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    1        0      12
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                    0        0       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                    1        0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0    15628   15758
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1      130   15758
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0        0   15758
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    1        0   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0     7188    8473
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1      217    8473
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    0     1021    8473
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    1       47    8473
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      682     774
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1       22     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                    0       67     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                    1        3     774
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     4503    6252
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      497    6252
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                    0      947    6252
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                    1      305    6252
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2282    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      134    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    0      224    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    1       24    2664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0     7829   14105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1      509   14105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    0     5063   14105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    1      704   14105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0     2869    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1      136    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    0      959    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    1       81    4045
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      149     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1       16     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    0       41     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    1        4     210
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0      158     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    0        8     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0      169     218
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1       16     218
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                    0       24     218
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                    1        9     218
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0      200     221
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1        3     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                    0       18     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                    1        0     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      185     199
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        2     199
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                    0       10     199
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                    1        2     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      223     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1        1     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    0       13     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    1        0     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      150     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        4     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        8     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        0     162
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0      313     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    0       36     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    1        7     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight         0      315     403
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight         1       20     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                    0       57     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                    1       11     403
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight         0       86     168
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight         1       15     168
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                    0       52     168
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                    1       15     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0      262     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1       24     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    0       98     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    1       29     413
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         0      407     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         1       33     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    0      110     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    1       29     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0      361     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1       27     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    0      108     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    1       18     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0      819    1057
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1       86    1057
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                    0      126    1057
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                    1       26    1057
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         0      302     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         1       53     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    0       94     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    1       37     486
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0        8      11
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        0      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    0        3      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1        0      11
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                    0        0       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                    1        0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0     3928    3972
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1       44    3972
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0        0    3972
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    1        0    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0      278     431
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1       59     431
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    0       74     431
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    1       20     431
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      578     657
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1       17     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                    0       53     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                    1        9     657
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     3617    4821
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      294    4821
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                    0      766    4821
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                    1      144    4821
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2063    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      132    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    0      183    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    1       32    2410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0     3549    7282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1      676    7282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    0     2144    7282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    1      913    7282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0     2444    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1      500    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    0      744    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    1      309    3997


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
![](/tmp/3b4bc93a-24eb-40e7-8fac-adaa4da43938/ed3de4a6-f750-4a79-9243-c5faf2db46ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3b4bc93a-24eb-40e7-8fac-adaa4da43938/ed3de4a6-f750-4a79-9243-c5faf2db46ee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3b4bc93a-24eb-40e7-8fac-adaa4da43938/ed3de4a6-f750-4a79-9243-c5faf2db46ee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3b4bc93a-24eb-40e7-8fac-adaa4da43938/ed3de4a6-f750-4a79-9243-c5faf2db46ee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.1130020   0.0661974   0.1598066
Birth       ki0047075b-MAL-ED          BANGLADESH    Low birthweight              NA                0.4236431   0.2521374   0.5951487
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.2098644   0.1634157   0.2563131
Birth       ki1000108-IRC              INDIA         Low birthweight              NA                0.6445169   0.4995945   0.7894394
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0808870   0.0352981   0.1264760
Birth       ki1000109-EE               PAKISTAN      Low birthweight              NA                0.2841597   0.1456423   0.4226771
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0366286   0.0208178   0.0524394
Birth       ki1000304b-SAS-CompFeed    INDIA         Low birthweight              NA                0.4017980   0.3308255   0.4727704
Birth       ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1779295   0.1413798   0.2144791
Birth       ki1017093-NIH-Birth        BANGLADESH    Low birthweight              NA                0.5994447   0.5208911   0.6779982
Birth       ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.1276554   0.0947298   0.1605809
Birth       ki1017093b-PROVIDE         BANGLADESH    Low birthweight              NA                0.5142551   0.4246819   0.6038283
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.1507298   0.1209785   0.1804811
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              NA                0.5761182   0.4961872   0.6560492
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.2035967   0.1814433   0.2257501
Birth       ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.5433138   0.4716056   0.6150221
Birth       ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.1046365   0.0770283   0.1322448
Birth       ki1113344-GMS-Nepal        NEPAL         Low birthweight              NA                0.4834305   0.4064377   0.5604232
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1055742   0.0999795   0.1111688
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.6382924   0.6114585   0.6651263
Birth       ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2306855   0.1994909   0.2618800
Birth       ki1135781-COHORTS          GUATEMALA     Low birthweight              NA                0.5611051   0.4216201   0.7005901
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1057762   0.0973941   0.1141583
Birth       ki1135781-COHORTS          INDIA         Low birthweight              NA                0.5404418   0.5096069   0.5712768
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.1184127   0.1061995   0.1306258
Birth       ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.6274293   0.5621958   0.6926628
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0367378   0.0331238   0.0403518
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.2758956   0.2627460   0.2890452
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0380016   0.0254290   0.0505742
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.2756069   0.2331744   0.3180393
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1110861   0.0768892   0.1452831
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.2694951   0.1438870   0.3951032
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.1199634   0.0850251   0.1549018
6 months    ki1000108-IRC              INDIA         Low birthweight              NA                0.1835844   0.0889700   0.2781988
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1136050   0.0731573   0.1540526
6 months    ki1000109-EE               PAKISTAN      Low birthweight              NA                0.1385245   0.0780121   0.1990369
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.1077042   0.0770646   0.1383437
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birthweight              NA                0.1742688   0.1426657   0.2058719
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0494426   0.0272126   0.0716727
6 months    ki1017093-NIH-Birth        BANGLADESH    Low birthweight              NA                0.1174581   0.0676012   0.1673151
6 months    ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0218006   0.0084178   0.0351835
6 months    ki1017093b-PROVIDE         BANGLADESH    Low birthweight              NA                0.1053231   0.0548045   0.1558417
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0200767   0.0082655   0.0318879
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              NA                0.0606957   0.0250647   0.0963266
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0542478   0.0410969   0.0673987
6 months    ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.0612665   0.0272503   0.0952827
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0529339   0.0307990   0.0750687
6 months    ki1113344-GMS-Nepal        NEPAL         Low birthweight              NA                0.1852177   0.1263790   0.2440565
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0291847   0.0253436   0.0330257
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.0448638   0.0325463   0.0571814
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0991026   0.0908127   0.1073926
6 months    ki1135781-COHORTS          INDIA         Low birthweight              NA                0.2458531   0.2219465   0.2697596
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0553096   0.0461840   0.0644351
6 months    ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.0974681   0.0610976   0.1338386
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0600262   0.0544757   0.0655768
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.1240126   0.1138520   0.1341732
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0449557   0.0335644   0.0563469
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.0780105   0.0601596   0.0958614
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0864865   0.0458896   0.1270833
24 months   ki0047075b-MAL-ED          INDIA         Low birthweight              NA                0.2727273   0.1204264   0.4250282
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0486322   0.0253582   0.0719062
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.1627907   0.0522989   0.2732825
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0593596   0.0339763   0.0847429
24 months   ki1000108-IRC              INDIA         Low birthweight              NA                0.1579309   0.0682737   0.2475881
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1450818   0.0750848   0.2150788
24 months   ki1000109-EE               PAKISTAN      Low birthweight              NA                0.2099942   0.1084961   0.3114924
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0815835   0.0496464   0.1135206
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birthweight              NA                0.2422637   0.1672789   0.3172485
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0748126   0.0500170   0.0996081
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birthweight              NA                0.2123305   0.1435415   0.2811194
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0696153   0.0442698   0.0949609
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              NA                0.1487623   0.0872317   0.2102929
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0948267   0.0756912   0.1139622
24 months   ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.1738183   0.1115876   0.2360490
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.1478280   0.1109501   0.1847059
24 months   ki1113344-GMS-Nepal        NEPAL         Low birthweight              NA                0.2874868   0.2113027   0.3636709
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1757770   0.1350662   0.2164878
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.2150096   0.1323664   0.2976527
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0285714   0.0151749   0.0419679
24 months   ki1135781-COHORTS          GUATEMALA     Low birthweight              NA                0.1451613   0.0574106   0.2329120
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0747344   0.0664821   0.0829867
24 months   ki1135781-COHORTS          INDIA         Low birthweight              NA                0.1624260   0.1385140   0.1863381
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0598496   0.0499011   0.0697981
24 months   ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.1564980   0.1081415   0.2048546
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.1585807   0.1459210   0.1712405
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.3026306   0.2849999   0.3202614
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.1693692   0.1526643   0.1860740
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.2945507   0.2621504   0.3269510


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1674419   0.1174176   0.2174661
Birth       ki1000108-IRC              INDIA         NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1000109-EE               PAKISTAN      NA                   NA                0.1242938   0.0755526   0.1730349
Birth       ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.2477816   0.2256667   0.2698964
Birth       ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.2059282   0.1745993   0.2372572
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1595572   0.1532418   0.1658725
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.1769740   0.1674681   0.1864799
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1095259   0.1044047   0.1146471
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0997496   0.0843744   0.1151247
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA         NA                   NA                0.1318408   0.0987276   0.1649539
6 months    ki1000109-EE               PAKISTAN      NA                   NA                0.1256684   0.0920293   0.1593076
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1238671   0.0990601   0.1486741
6 months    ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0675676   0.0459314   0.0892038
6 months    ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0554723   0.0431843   0.0677602
6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0311578   0.0274581   0.0348575
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.1282790   0.1199892   0.1365687
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0593093   0.0503382   0.0682804
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0859979   0.0808738   0.0911219
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0536465   0.0439582   0.0633347
24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.1146789   0.0722843   0.1570735
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0769231   0.0508746   0.1029716
24 months   ki1000109-EE               PAKISTAN      NA                   NA                0.1785714   0.1204842   0.2366587
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1283293   0.0960341   0.1606245
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.1059603   0.0873965   0.1245240
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1851852   0.1506144   0.2197560
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1832947   0.1467250   0.2198644
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0395738   0.0246551   0.0544926
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0908525   0.0827390   0.0989661
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0680498   0.0579935   0.0781061
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.2182093   0.2074424   0.2289762
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.2024018   0.1878193   0.2169843


### Parameter: RR


agecat      studyid                    country       intervention_level           baseline_level                 estimate    ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH    Low birthweight              Normal or high birthweight     3.748987   2.0940645    6.711783
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA         Low birthweight              Normal or high birthweight     3.071111   2.2388357    4.212780
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     3.513044   1.6756407    7.365230
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA         Low birthweight              Normal or high birthweight    10.969507   6.7884728   17.725650
Birth       ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     3.369001   2.6415153    4.296840
Birth       ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH    Low birthweight              Normal or high birthweight     4.028464   2.9512492    5.498866
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              Normal or high birthweight     3.822192   3.0020165    4.866446
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     2.668579   2.2484185    3.167254
Birth       ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1113344-GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     4.620093   3.3943976    6.288379
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     6.045913   5.6504770    6.469023
Birth       ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     2.432339   1.8329596    3.227714
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight     5.109293   4.6337268    5.633668
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     5.298666   4.5772842    6.133737
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight     7.509863   6.7344627    8.374541
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight     7.252505   5.0540442   10.407276
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     2.426001   1.3868953    4.243638
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA         Low birthweight              Normal or high birthweight     1.530337   0.8458921    2.768593
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     1.219353   0.6954586    2.137900
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birthweight              Normal or high birthweight     1.618032   1.1875026    2.204650
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     2.375646   1.2814072    4.404293
6 months    ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH    Low birthweight              Normal or high birthweight     4.831196   2.2166711   10.529507
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              Normal or high birthweight     3.023188   1.3195151    6.926535
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     1.129382   0.6162610    2.069744
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     3.499041   2.0683497    5.919351
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     1.537240   1.1336957    2.084429
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight     2.480792   2.1823131    2.820095
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     1.762229   1.1718913    2.649947
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight     2.065973   1.8235058    2.340680
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight     1.735277   1.2330566    2.442050
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA         Low birthweight              Normal or high birthweight     3.153409   1.5203970    6.540390
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     3.347384   1.4589101    7.680376
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA         Low birthweight              Normal or high birthweight     2.660581   1.3067628    5.416966
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     1.447420   0.7289380    2.874076
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     2.969519   1.8044080    4.886947
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birthweight              Normal or high birthweight     2.838166   1.7851776    4.512260
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              Normal or high birthweight     2.136918   1.2309343    3.709719
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     1.833009   1.2154908    2.764253
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     1.944738   1.3478373    2.805982
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     1.223195   0.7807477    1.916376
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     5.080645   2.3641232   10.918617
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight     2.173377   1.8086356    2.611676
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     2.614854   1.8416270    3.712730
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight     1.908369   1.7315531    2.103241
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight     1.739105   1.4952267    2.022760


### Parameter: PAR


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0544399    0.0211813   0.0876984
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0583572    0.0329988   0.0837155
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0434068    0.0085275   0.0782860
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0703523    0.0468770   0.0938277
Birth       ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1142444    0.0865116   0.1419772
Birth       ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0922694    0.0655605   0.1189784
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0925517    0.0701786   0.1149248
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0441849    0.0328168   0.0555529
Birth       ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.1012917    0.0762613   0.1263222
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0539830    0.0501144   0.0578516
Birth       ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0232828    0.0118404   0.0347252
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0711978    0.0646138   0.0777817
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0371582    0.0303453   0.0439711
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0727882    0.0682564   0.0773199
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0617480    0.0490293   0.0744667
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0139139   -0.0020034   0.0298311
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0118774   -0.0052472   0.0290020
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0120635   -0.0132941   0.0374211
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0161629    0.0047167   0.0276092
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0181249    0.0018124   0.0344375
6 months    ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0196587    0.0069866   0.0323309
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0092939    0.0003634   0.0182244
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0012245   -0.0040767   0.0065257
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0376523    0.0189098   0.0563947
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0019731    0.0003439   0.0036024
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0291763    0.0239341   0.0344185
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0039997    0.0004303   0.0075692
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0259716    0.0213412   0.0306021
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0086908    0.0032605   0.0141212
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0281924    0.0027333   0.0536515
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0131957   -0.0003746   0.0267661
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0175635    0.0016871   0.0334399
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0334896   -0.0160572   0.0830365
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0467458    0.0214263   0.0720654
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0322686    0.0142767   0.0502605
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0179333    0.0014596   0.0344070
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0111335    0.0019322   0.0203349
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0373572    0.0132901   0.0614242
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0075177   -0.0127686   0.0278039
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0110024    0.0022289   0.0197759
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0161181    0.0113122   0.0209241
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0082002    0.0037607   0.0126396
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0596285    0.0505967   0.0686604
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0330326    0.0231843   0.0428810


### Parameter: PAF


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.3251270    0.1186737   0.4832179
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.2175707    0.1209411   0.3035784
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.3492271    0.0421339   0.5578658
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.6576155    0.5279890   0.7516432
Birth       ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.3910151    0.2963333   0.4729571
Birth       ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.4195500    0.3005607   0.5182966
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.3804304    0.2912623   0.4583801
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.1783218    0.1325051   0.2217188
Birth       ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.4918787    0.3779678   0.5849294
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.3383300    0.3166705   0.3593030
Birth       ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0916760    0.0460435   0.1351258
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.4023064    0.3692374   0.4336416
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2388506    0.1974690   0.2780983
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.6645747    0.6348630   0.6918687
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.6190299    0.5019358   0.7085953
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1113110   -0.0222986   0.2274584
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0900888   -0.0479033   0.2099096
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0959946   -0.1295155   0.2764811
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.1304859    0.0197826   0.2286867
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.2682492    0.0020052   0.4634650
6 months    ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.4741690    0.1565128   0.6721963
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.3164358   -0.0228904   0.5431964
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0220735   -0.0782003   0.1130217
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.4156517    0.2019670   0.5721193
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0633273    0.0100284   0.1137565
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.2274442    0.1876421   0.2652962
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0674385    0.0060422   0.1250425
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.3020033    0.2498121   0.3505636
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.1620017    0.0477952   0.2625104
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.2458378    0.0083077   0.4264748
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.2134267   -0.0199247   0.3933890
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.2283255    0.0081130   0.3996478
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1875419   -0.1387451   0.4203373
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.3642647    0.1553046   0.5215324
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.3013472    0.1270493   0.4408439
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.2048382    0.0021065   0.3663830
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.1050727    0.0154920   0.1865024
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.2017288    0.0652645   0.3182703
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0410141   -0.0760739   0.1453617
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2780220    0.0514908   0.4504510
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1774098    0.1247890   0.2268669
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.1205027    0.0548925   0.1815581
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.2732631    0.2310802   0.3131318
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.1632032    0.1129249   0.2106318
