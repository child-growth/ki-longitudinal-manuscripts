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

**Intervention Variable:** enstunt

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

agecat        studyid                    country                        enstunt    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      198     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        9     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       37     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        4     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      190     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       26     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     218
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      184     241
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       17     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       36     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      207     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        3     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       27     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     238
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      247     284
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        1     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       36     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      242     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       31     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     275
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      214     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       39     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      281     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       15     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        8     373
0-24 months   ki1000108-IRC              INDIA                          0                  0      317     410
0-24 months   ki1000108-IRC              INDIA                          0                  1       41     410
0-24 months   ki1000108-IRC              INDIA                          1                  0       45     410
0-24 months   ki1000108-IRC              INDIA                          1                  1        7     410
0-24 months   ki1000109-EE               PAKISTAN                       0                  0      195     377
0-24 months   ki1000109-EE               PAKISTAN                       0                  1       16     377
0-24 months   ki1000109-EE               PAKISTAN                       1                  0      149     377
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       17     377
0-24 months   ki1000109-ResPak           PAKISTAN                       0                  0      165     256
0-24 months   ki1000109-ResPak           PAKISTAN                       0                  1       22     256
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  0       57     256
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  1       12     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0      938    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1       57    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      314    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1       57    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      192     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       34     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0      118     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1       31     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  0      416     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  1       36     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0       71     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1       11     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      566     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       12     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       60     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        3     641
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      609     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1       18     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       95     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        8     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1964    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       55    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      144    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        3    2166
0-24 months   ki1101329-Keneba           GAMBIA                         0                  0     2080    2444
0-24 months   ki1101329-Keneba           GAMBIA                         0                  1      118    2444
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0      219    2444
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1       27    2444
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  0      196     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       56     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        3     256
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                  0     1185    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                  1      107    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0      284    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1       93    1669
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      434     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       66     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       83     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       14     597
0-24 months   ki1114097-CMIN             BANGLADESH                     0                  0      152     257
0-24 months   ki1114097-CMIN             BANGLADESH                     0                  1        9     257
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  0       85     257
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  1       11     257
0-24 months   ki1114097-CONTENT          PERU                           0                  0      197     215
0-24 months   ki1114097-CONTENT          PERU                           0                  1        0     215
0-24 months   ki1114097-CONTENT          PERU                           1                  0       18     215
0-24 months   ki1114097-CONTENT          PERU                           1                  1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        0                  0    16283   16581
0-24 months   ki1119695-PROBIT           BELARUS                        0                  1      159   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                  0      139   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                  1        0   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0     8451    9527
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1      148    9527
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      908    9527
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       20    9527
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                  0      826    1056
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                  1       22    1056
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                  0      194    1056
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                  1       14    1056
0-24 months   ki1135781-COHORTS          INDIA                          0                  0     4663    5705
0-24 months   ki1135781-COHORTS          INDIA                          0                  1      447    5705
0-24 months   ki1135781-COHORTS          INDIA                          1                  0      492    5705
0-24 months   ki1135781-COHORTS          INDIA                          1                  1      103    5705
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                  0     2524    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                  1      127    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                  0      143    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                  1       17    2811
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      454     719
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  1        2     719
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0      259     719
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        4     719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0    10928   15803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      551   15803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3977   15803
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      347   15803
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     3553    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      223    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1302    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      203    5281
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      201     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        6     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       40     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      191     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        1     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       26     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     218
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      184     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       17     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       37     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      205     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        5     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       26     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        2     238
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      248     284
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       36     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      242     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       30     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     274
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      214     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       39     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      247     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       37     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       61     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       13     358
0-6 months    ki1000108-IRC              INDIA                          0                  0      294     402
0-6 months    ki1000108-IRC              INDIA                          0                  1       57     402
0-6 months    ki1000108-IRC              INDIA                          1                  0       44     402
0-6 months    ki1000108-IRC              INDIA                          1                  1        7     402
0-6 months    ki1000109-EE               PAKISTAN                       0                  0      196     371
0-6 months    ki1000109-EE               PAKISTAN                       0                  1       13     371
0-6 months    ki1000109-EE               PAKISTAN                       1                  0      150     371
0-6 months    ki1000109-EE               PAKISTAN                       1                  1       12     371
0-6 months    ki1000109-ResPak           PAKISTAN                       0                  0      165     243
0-6 months    ki1000109-ResPak           PAKISTAN                       0                  1       17     243
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  0       53     243
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  1        8     243
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  0      140     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  1        9     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  0       18     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  1        2     169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      563     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       12     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0       61     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     638
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      218     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        4     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       27     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        1     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1868    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       50    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      141    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        2    2061
0-6 months    ki1101329-Keneba           GAMBIA                         0                  0     1806    2045
0-6 months    ki1101329-Keneba           GAMBIA                         0                  1       55    2045
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0      176    2045
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1        8    2045
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      421     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       54     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0       84     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        8     567
0-6 months    ki1114097-CMIN             BANGLADESH                     0                  0      143     234
0-6 months    ki1114097-CMIN             BANGLADESH                     0                  1        4     234
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  0       82     234
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  1        5     234
0-6 months    ki1114097-CONTENT          PERU                           0                  0      197     215
0-6 months    ki1114097-CONTENT          PERU                           0                  1        0     215
0-6 months    ki1114097-CONTENT          PERU                           1                  0       18     215
0-6 months    ki1114097-CONTENT          PERU                           1                  1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        0                  0    12364   13545
0-6 months    ki1119695-PROBIT           BELARUS                        0                  1     1146   13545
0-6 months    ki1119695-PROBIT           BELARUS                        1                  0       35   13545
0-6 months    ki1119695-PROBIT           BELARUS                        1                  1        0   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  0      590     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  1       12     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  0       28     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  1        2     632
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                  0      777     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                  1       50     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                  0       24     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                  1        2     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0       39      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1        2      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0        9      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1        0      50
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      198     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        9     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       37     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        4     248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      190     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       26     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     218
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      184     241
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       17     241
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       36     241
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4     241
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      207     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        3     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       27     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     238
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      247     284
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        1     284
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       36     284
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      242     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       31     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     275
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      214     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       39     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      281     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       69     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        8     373
6-24 months   ki1000108-IRC              INDIA                          0                  0      317     410
6-24 months   ki1000108-IRC              INDIA                          0                  1       41     410
6-24 months   ki1000108-IRC              INDIA                          1                  0       45     410
6-24 months   ki1000108-IRC              INDIA                          1                  1        7     410
6-24 months   ki1000109-EE               PAKISTAN                       0                  0      195     377
6-24 months   ki1000109-EE               PAKISTAN                       0                  1       16     377
6-24 months   ki1000109-EE               PAKISTAN                       1                  0      149     377
6-24 months   ki1000109-EE               PAKISTAN                       1                  1       17     377
6-24 months   ki1000109-ResPak           PAKISTAN                       0                  0      165     256
6-24 months   ki1000109-ResPak           PAKISTAN                       0                  1       22     256
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  0       57     256
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  1       12     256
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0      938    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1       57    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      314    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1       57    1366
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      192     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       34     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0      118     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1       31     375
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  0      416     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  1       36     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0       71     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1       11     534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      566     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       12     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       60     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        3     641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      609     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1       18     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       95     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        8     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1964    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       55    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      144    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        3    2166
6-24 months   ki1101329-Keneba           GAMBIA                         0                  0     2080    2444
6-24 months   ki1101329-Keneba           GAMBIA                         0                  1      118    2444
6-24 months   ki1101329-Keneba           GAMBIA                         1                  0      219    2444
6-24 months   ki1101329-Keneba           GAMBIA                         1                  1       27    2444
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  0      196     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  1        1     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       56     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        3     256
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                  0     1185    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                  1      107    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0      284    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1       93    1669
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      434     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       66     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       83     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       14     597
6-24 months   ki1114097-CMIN             BANGLADESH                     0                  0      152     257
6-24 months   ki1114097-CMIN             BANGLADESH                     0                  1        9     257
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  0       85     257
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  1       11     257
6-24 months   ki1114097-CONTENT          PERU                           0                  0      197     215
6-24 months   ki1114097-CONTENT          PERU                           0                  1        0     215
6-24 months   ki1114097-CONTENT          PERU                           1                  0       18     215
6-24 months   ki1114097-CONTENT          PERU                           1                  1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        0                  0    16283   16581
6-24 months   ki1119695-PROBIT           BELARUS                        0                  1      159   16581
6-24 months   ki1119695-PROBIT           BELARUS                        1                  0      139   16581
6-24 months   ki1119695-PROBIT           BELARUS                        1                  1        0   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0     8451    9527
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1      148    9527
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      908    9527
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       20    9527
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                  0      826    1056
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                  1       22    1056
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                  0      194    1056
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                  1       14    1056
6-24 months   ki1135781-COHORTS          INDIA                          0                  0     4663    5705
6-24 months   ki1135781-COHORTS          INDIA                          0                  1      447    5705
6-24 months   ki1135781-COHORTS          INDIA                          1                  0      492    5705
6-24 months   ki1135781-COHORTS          INDIA                          1                  1      103    5705
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                  0     2524    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                  1      127    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                  0      143    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                  1       17    2811
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      454     719
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  1        2     719
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0      259     719
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        4     719
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0    10928   15803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      551   15803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3977   15803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      347   15803
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     3553    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      223    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1302    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      203    5281


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/45a71d0b-2a8e-4c31-8438-3a864f7d5586/8fe9a9eb-31a7-407e-bb04-8d72a42f8b9a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/45a71d0b-2a8e-4c31-8438-3a864f7d5586/8fe9a9eb-31a7-407e-bb04-8d72a42f8b9a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/45a71d0b-2a8e-4c31-8438-3a864f7d5586/8fe9a9eb-31a7-407e-bb04-8d72a42f8b9a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/45a71d0b-2a8e-4c31-8438-3a864f7d5586/8fe9a9eb-31a7-407e-bb04-8d72a42f8b9a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                0.0506757   0.0256554   0.0756960
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.1038961   0.0356521   0.1721401
0-24 months   ki1000108-IRC              INDIA          0                    NA                0.1145251   0.0814977   0.1475526
0-24 months   ki1000108-IRC              INDIA          1                    NA                0.1346154   0.0417340   0.2274968
0-24 months   ki1000109-EE               PAKISTAN       0                    NA                0.0738930   0.0379329   0.1098531
0-24 months   ki1000109-EE               PAKISTAN       1                    NA                0.0991992   0.0525401   0.1458583
0-24 months   ki1000109-ResPak           PAKISTAN       0                    NA                0.1154658   0.0696561   0.1612754
0-24 months   ki1000109-ResPak           PAKISTAN       1                    NA                0.1817722   0.0884502   0.2750942
0-24 months   ki1000304b-SAS-CompFeed    INDIA          0                    NA                0.0574179   0.0352700   0.0795657
0-24 months   ki1000304b-SAS-CompFeed    INDIA          1                    NA                0.1519030   0.1020087   0.2017974
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0                    NA                0.1498058   0.1032705   0.1963411
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          1                    NA                0.2077728   0.1420532   0.2734924
0-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    NA                0.0796363   0.0546439   0.1046287
0-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    NA                0.1352207   0.0592180   0.2112234
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    NA                0.0287081   0.0156287   0.0417876
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                0.0776699   0.0259454   0.1293945
0-24 months   ki1101329-Keneba           GAMBIA         0                    NA                0.0536127   0.0441833   0.0630421
0-24 months   ki1101329-Keneba           GAMBIA         1                    NA                0.1120681   0.0721568   0.1519794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0                    NA                0.0844653   0.0609681   0.1079624
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   1                    NA                0.2357546   0.1425269   0.3289823
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    NA                0.1319152   0.1021895   0.1616409
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    NA                0.1436967   0.0744319   0.2129614
0-24 months   ki1114097-CMIN             BANGLADESH     0                    NA                0.0559006   0.0203458   0.0914555
0-24 months   ki1114097-CMIN             BANGLADESH     1                    NA                0.1145833   0.0507432   0.1784234
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                0.0172164   0.0144675   0.0199653
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                0.0219446   0.0125934   0.0312959
0-24 months   ki1135781-COHORTS          GUATEMALA      0                    NA                0.0258224   0.0151598   0.0364850
0-24 months   ki1135781-COHORTS          GUATEMALA      1                    NA                0.0652213   0.0317128   0.0987298
0-24 months   ki1135781-COHORTS          INDIA          0                    NA                0.0875654   0.0798195   0.0953113
0-24 months   ki1135781-COHORTS          INDIA          1                    NA                0.1703979   0.1400789   0.2007169
0-24 months   ki1135781-COHORTS          PHILIPPINES    0                    NA                0.0479194   0.0397855   0.0560532
0-24 months   ki1135781-COHORTS          PHILIPPINES    1                    NA                0.1069894   0.0577931   0.1561857
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    NA                0.0482862   0.0437412   0.0528313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.0796724   0.0708536   0.0884913
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    NA                0.0591163   0.0505144   0.0677182
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.1348646   0.1152892   0.1544400
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                0.1309363   0.0915109   0.1703618
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.1740647   0.0854355   0.2626939
0-6 months    ki1000108-IRC              INDIA          0                    NA                0.1623932   0.1237619   0.2010245
0-6 months    ki1000108-IRC              INDIA          1                    NA                0.1372549   0.0426946   0.2318152
0-6 months    ki1000109-EE               PAKISTAN       0                    NA                0.0629686   0.0302710   0.0956661
0-6 months    ki1000109-EE               PAKISTAN       1                    NA                0.0764717   0.0361993   0.1167440
0-6 months    ki1000109-ResPak           PAKISTAN       0                    NA                0.0934066   0.0510420   0.1357712
0-6 months    ki1000109-ResPak           PAKISTAN       1                    NA                0.1311475   0.0462624   0.2160327
0-6 months    ki1101329-Keneba           GAMBIA         0                    NA                0.0295540   0.0218578   0.0372502
0-6 months    ki1101329-Keneba           GAMBIA         1                    NA                0.0434783   0.0140050   0.0729516
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    NA                0.1136842   0.0851130   0.1422554
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                0.0869565   0.0293284   0.1445846
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                0.0506757   0.0256554   0.0756960
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.1038961   0.0356521   0.1721401
6-24 months   ki1000108-IRC              INDIA          0                    NA                0.1145251   0.0814977   0.1475526
6-24 months   ki1000108-IRC              INDIA          1                    NA                0.1346154   0.0417340   0.2274968
6-24 months   ki1000109-EE               PAKISTAN       0                    NA                0.0749818   0.0391417   0.1108220
6-24 months   ki1000109-EE               PAKISTAN       1                    NA                0.1023801   0.0558905   0.1488697
6-24 months   ki1000109-ResPak           PAKISTAN       0                    NA                0.1151626   0.0693498   0.1609753
6-24 months   ki1000109-ResPak           PAKISTAN       1                    NA                0.1827081   0.0881125   0.2773038
6-24 months   ki1000304b-SAS-CompFeed    INDIA          0                    NA                0.0574179   0.0352700   0.0795657
6-24 months   ki1000304b-SAS-CompFeed    INDIA          1                    NA                0.1519030   0.1020087   0.2017974
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0                    NA                0.1495964   0.1030752   0.1961176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          1                    NA                0.2042179   0.1379050   0.2705308
6-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    NA                0.0795612   0.0545847   0.1045377
6-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    NA                0.1328861   0.0568897   0.2088825
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    NA                0.0287081   0.0156287   0.0417876
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                0.0776699   0.0259454   0.1293945
6-24 months   ki1101329-Keneba           GAMBIA         0                    NA                0.0535368   0.0441085   0.0629650
6-24 months   ki1101329-Keneba           GAMBIA         1                    NA                0.1141507   0.0733898   0.1549117
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0                    NA                0.0844386   0.0609875   0.1078896
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   1                    NA                0.2358699   0.1453388   0.3264010
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    NA                0.1317304   0.1020426   0.1614181
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    NA                0.1458133   0.0762818   0.2153448
6-24 months   ki1114097-CMIN             BANGLADESH     0                    NA                0.0559006   0.0203458   0.0914555
6-24 months   ki1114097-CMIN             BANGLADESH     1                    NA                0.1145833   0.0507432   0.1784234
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                0.0172200   0.0144710   0.0199689
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    NA                0.0224942   0.0131735   0.0318149
6-24 months   ki1135781-COHORTS          GUATEMALA      0                    NA                0.0257806   0.0151206   0.0364406
6-24 months   ki1135781-COHORTS          GUATEMALA      1                    NA                0.0666578   0.0328274   0.1004883
6-24 months   ki1135781-COHORTS          INDIA          0                    NA                0.0876102   0.0798630   0.0953575
6-24 months   ki1135781-COHORTS          INDIA          1                    NA                0.1734585   0.1431681   0.2037489
6-24 months   ki1135781-COHORTS          PHILIPPINES    0                    NA                0.0479037   0.0397708   0.0560365
6-24 months   ki1135781-COHORTS          PHILIPPINES    1                    NA                0.1072351   0.0578621   0.1566082
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    NA                0.0481793   0.0436510   0.0527075
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.0799678   0.0711693   0.0887664
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    NA                0.0590900   0.0505069   0.0676732
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.1349855   0.1153625   0.1546086


### Parameter: E(Y)


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000109-EE               PAKISTAN       NA                   NA                0.0875332   0.0589672   0.1160991
0-24 months   ki1000109-ResPak           PAKISTAN       NA                   NA                0.1328125   0.0911588   0.1744662
0-24 months   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1101329-Keneba           GAMBIA         NA                   NA                0.0593290   0.0499611   0.0686968
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.1340034   0.1066544   0.1613523
0-24 months   ki1114097-CMIN             BANGLADESH     NA                   NA                0.0778210   0.0450051   0.1106369
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0176341   0.0149910   0.0202771
0-24 months   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.0340909   0.0231410   0.0450408
0-24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.0964067   0.0887472   0.1040661
0-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.0568247   0.0527145   0.0609348
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0806665   0.0720540   0.0892791
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1000109-EE               PAKISTAN       NA                   NA                0.0673854   0.0418419   0.0929290
0-6 months    ki1000109-ResPak           PAKISTAN       NA                   NA                0.1028807   0.0646041   0.1411572
0-6 months    ki1101329-Keneba           GAMBIA         NA                   NA                0.0308068   0.0233159   0.0382978
0-6 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.1093474   0.0836377   0.1350572
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000109-EE               PAKISTAN       NA                   NA                0.0875332   0.0589672   0.1160991
6-24 months   ki1000109-ResPak           PAKISTAN       NA                   NA                0.1328125   0.0911588   0.1744662
6-24 months   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1101329-Keneba           GAMBIA         NA                   NA                0.0593290   0.0499611   0.0686968
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.1340034   0.1066544   0.1613523
6-24 months   ki1114097-CMIN             BANGLADESH     NA                   NA                0.0778210   0.0450051   0.1106369
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0176341   0.0149910   0.0202771
6-24 months   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.0340909   0.0231410   0.0450408
6-24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.0964067   0.0887472   0.1040661
6-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.0568247   0.0527145   0.0609348
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0806665   0.0720540   0.0892791


### Parameter: RR


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 2.0502164   0.9014289   4.663027
0-24 months   ki1000108-IRC              INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA          1                    0                 1.1754221   0.5564423   2.482948
0-24 months   ki1000109-EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN       1                    0                 1.3424711   0.6810079   2.646414
0-24 months   ki1000109-ResPak           PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak           PAKISTAN       1                    0                 1.5742520   0.8261789   2.999677
0-24 months   ki1000304b-SAS-CompFeed    INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA          1                    0                 2.6455711   1.7756768   3.941622
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          1                    0                 1.3869478   0.8892151   2.163283
0-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    0                 1.6979772   0.8915023   3.234009
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0                 2.7055016   1.2073171   6.062814
0-24 months   ki1101329-Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA         1                    0                 2.0903268   1.4051899   3.109520
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   1                    0                 2.7911426   1.6840977   4.625906
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0                 1.0893104   0.6393506   1.855941
0-24 months   ki1114097-CMIN             BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             BANGLADESH     1                    0                 2.0497685   0.8800068   4.774453
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    0                 1.2746322   0.8086406   2.009159
0-24 months   ki1135781-COHORTS          GUATEMALA      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA      1                    0                 2.5257684   1.3060435   4.884605
0-24 months   ki1135781-COHORTS          INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA          1                    0                 1.9459505   1.5955614   2.373286
0-24 months   ki1135781-COHORTS          PHILIPPINES    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES    1                    0                 2.2326954   1.3675490   3.645155
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    0                 1.6500029   1.4311622   1.902307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    0                 2.2813427   1.8708126   2.781959
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 1.3293842   0.7349085   2.404738
0-6 months    ki1000108-IRC              INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA          1                    0                 0.8452012   0.4077771   1.751852
0-6 months    ki1000109-EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN       1                    0                 1.2144418   0.5777220   2.552904
0-6 months    ki1000109-ResPak           PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak           PAKISTAN       1                    0                 1.4040501   0.6370034   3.094735
0-6 months    ki1101329-Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA         1                    0                 1.4711462   0.7116691   3.041120
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    0                 0.7648955   0.3765168   1.553888
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 2.0502164   0.9014289   4.663027
6-24 months   ki1000108-IRC              INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA          1                    0                 1.1754221   0.5564423   2.482948
6-24 months   ki1000109-EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN       1                    0                 1.3653989   0.7052249   2.643574
6-24 months   ki1000109-ResPak           PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak           PAKISTAN       1                    0                 1.5865238   0.8281790   3.039268
6-24 months   ki1000304b-SAS-CompFeed    INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA          1                    0                 2.6455711   1.7756768   3.941622
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          1                    0                 1.3651258   0.8699364   2.142189
6-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH     1                    0                 1.6702372   0.8696478   3.207842
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0                 2.7055016   1.2073171   6.062814
6-24 months   ki1101329-Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA         1                    0                 2.1321936   1.4319933   3.174770
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   1                    0                 2.7933911   1.7019585   4.584738
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0                 1.1069072   0.6528941   1.876634
6-24 months   ki1114097-CMIN             BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             BANGLADESH     1                    0                 2.0497685   0.8800068   4.774453
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       1                    0                 1.3062840   0.8378449   2.036627
6-24 months   ki1135781-COHORTS          GUATEMALA      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA      1                    0                 2.5855824   1.3432850   4.976782
6-24 months   ki1135781-COHORTS          INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA          1                    0                 1.9798884   1.6282029   2.407537
6-24 months   ki1135781-COHORTS          PHILIPPINES    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES    1                    0                 2.2385582   1.3702944   3.656983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    0                 1.6597976   1.4403374   1.912696
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    0                 2.2844046   1.8732965   2.785733


### Parameter: PAR


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                 0.0109865   -0.0041772   0.0261502
0-24 months   ki1000108-IRC              INDIA          0                    NA                 0.0025480   -0.0099714   0.0150675
0-24 months   ki1000109-EE               PAKISTAN       0                    NA                 0.0136402   -0.0123876   0.0396679
0-24 months   ki1000109-ResPak           PAKISTAN       0                    NA                 0.0173467   -0.0095463   0.0442398
0-24 months   ki1000304b-SAS-CompFeed    INDIA          0                    NA                 0.0260375    0.0151523   0.0369226
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0                    NA                 0.0235276   -0.0085622   0.0556173
0-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    NA                 0.0083786   -0.0037402   0.0204975
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    NA                 0.0069083   -0.0007205   0.0145371
0-24 months   ki1101329-Keneba           GAMBIA         0                    NA                 0.0057163    0.0016175   0.0098151
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0                    NA                 0.0353670    0.0140304   0.0567035
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    NA                 0.0020881   -0.0103497   0.0145259
0-24 months   ki1114097-CMIN             BANGLADESH     0                    NA                 0.0219204   -0.0055961   0.0494369
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                 0.0004177   -0.0005312   0.0013665
0-24 months   ki1135781-COHORTS          GUATEMALA      0                    NA                 0.0082685    0.0011653   0.0153718
0-24 months   ki1135781-COHORTS          INDIA          0                    NA                 0.0088413    0.0055161   0.0121665
0-24 months   ki1135781-COHORTS          PHILIPPINES    0                    NA                 0.0033079    0.0005015   0.0061144
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    NA                 0.0085384    0.0058126   0.0112643
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    NA                 0.0215502    0.0154962   0.0276043
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                 0.0087285   -0.0112950   0.0287519
0-6 months    ki1000108-IRC              INDIA          0                    NA                -0.0031892   -0.0161740   0.0097956
0-6 months    ki1000109-EE               PAKISTAN       0                    NA                 0.0044169   -0.0184368   0.0272706
0-6 months    ki1000109-ResPak           PAKISTAN       0                    NA                 0.0094741   -0.0144300   0.0333782
0-6 months    ki1101329-Keneba           GAMBIA         0                    NA                 0.0012528   -0.0014934   0.0039991
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    NA                -0.0043368   -0.0148050   0.0061315
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                 0.0109865   -0.0041772   0.0261502
6-24 months   ki1000108-IRC              INDIA          0                    NA                 0.0025480   -0.0099714   0.0150675
6-24 months   ki1000109-EE               PAKISTAN       0                    NA                 0.0125513   -0.0133199   0.0384226
6-24 months   ki1000109-ResPak           PAKISTAN       0                    NA                 0.0176499   -0.0093446   0.0446444
6-24 months   ki1000304b-SAS-CompFeed    INDIA          0                    NA                 0.0260375    0.0151523   0.0369226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0                    NA                 0.0237369   -0.0084179   0.0558918
6-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    NA                 0.0084538   -0.0036516   0.0205592
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    NA                 0.0069083   -0.0007205   0.0145371
6-24 months   ki1101329-Keneba           GAMBIA         0                    NA                 0.0057922    0.0016846   0.0098998
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0                    NA                 0.0353937    0.0140787   0.0567087
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    NA                 0.0022730   -0.0101510   0.0146969
6-24 months   ki1114097-CMIN             BANGLADESH     0                    NA                 0.0219204   -0.0055961   0.0494369
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                 0.0004141   -0.0005356   0.0013638
6-24 months   ki1135781-COHORTS          GUATEMALA      0                    NA                 0.0083103    0.0012124   0.0154082
6-24 months   ki1135781-COHORTS          INDIA          0                    NA                 0.0087964    0.0054679   0.0121249
6-24 months   ki1135781-COHORTS          PHILIPPINES    0                    NA                 0.0033237    0.0005154   0.0061319
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    NA                 0.0086454    0.0059338   0.0113570
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    NA                 0.0215765    0.0155224   0.0276307


### Parameter: PAF


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                 0.1781727   -0.0961308   0.3838326
0-24 months   ki1000108-IRC              INDIA          0                    NA                 0.0217644   -0.0911067   0.1229595
0-24 months   ki1000109-EE               PAKISTAN       0                    NA                 0.1558284   -0.1970486   0.4046810
0-24 months   ki1000109-ResPak           PAKISTAN       0                    NA                 0.1306107   -0.0943146   0.3093048
0-24 months   ki1000304b-SAS-CompFeed    INDIA          0                    NA                 0.3119930    0.1683947   0.4307953
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0                    NA                 0.1357359   -0.0686545   0.3010347
0-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    NA                 0.0951957   -0.0511353   0.2211556
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    NA                 0.1939639   -0.0356867   0.3726924
0-24 months   ki1101329-Keneba           GAMBIA         0                    NA                 0.0963486    0.0261048   0.1615260
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0                    NA                 0.2951373    0.1206505   0.4350012
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    NA                 0.0155825   -0.0817131   0.1041267
0-24 months   ki1114097-CMIN             BANGLADESH     0                    NA                 0.2816770   -0.1460941   0.5497857
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                 0.0236850   -0.0315084   0.0759251
0-24 months   ki1135781-COHORTS          GUATEMALA      0                    NA                 0.2425437    0.0213623   0.4137360
0-24 months   ki1135781-COHORTS          INDIA          0                    NA                 0.0917082    0.0572048   0.1249489
0-24 months   ki1135781-COHORTS          PHILIPPINES    0                    NA                 0.0645735    0.0090818   0.1169577
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    NA                 0.1502590    0.1014914   0.1963797
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    NA                 0.2671519    0.1934342   0.3341320
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                 0.0624959   -0.0916489   0.1948749
0-6 months    ki1000108-IRC              INDIA          0                    NA                -0.0200321   -0.1048596   0.0582827
0-6 months    ki1000109-EE               PAKISTAN       0                    NA                 0.0655465   -0.3413955   0.3490337
0-6 months    ki1000109-ResPak           PAKISTAN       0                    NA                 0.0920879   -0.1701059   0.2955301
0-6 months    ki1101329-Keneba           GAMBIA         0                    NA                 0.0406677   -0.0521823   0.1253241
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    NA                -0.0396604   -0.1395689   0.0514889
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                 0.1781727   -0.0961308   0.3838326
6-24 months   ki1000108-IRC              INDIA          0                    NA                 0.0217644   -0.0911067   0.1229595
6-24 months   ki1000109-EE               PAKISTAN       0                    NA                 0.1433895   -0.2058080   0.3914607
6-24 months   ki1000109-ResPak           PAKISTAN       0                    NA                 0.1328937   -0.0929935   0.3120971
6-24 months   ki1000304b-SAS-CompFeed    INDIA          0                    NA                 0.3119930    0.1683947   0.4307953
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0                    NA                 0.1369438   -0.0678717   0.3024761
6-24 months   ki1017093-NIH-Birth        BANGLADESH     0                    NA                 0.0960494   -0.0500917   0.2218521
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    NA                 0.1939639   -0.0356867   0.3726924
6-24 months   ki1101329-Keneba           GAMBIA         0                    NA                 0.0976286    0.0272353   0.1629280
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0                    NA                 0.2953603    0.1212365   0.4349821
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    NA                 0.0169622   -0.0802181   0.1053998
6-24 months   ki1114097-CMIN             BANGLADESH     0                    NA                 0.2816770   -0.1460941   0.5497857
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       0                    NA                 0.0234830   -0.0317592   0.0757674
6-24 months   ki1135781-COHORTS          GUATEMALA      0                    NA                 0.2437693    0.0227379   0.4148091
6-24 months   ki1135781-COHORTS          INDIA          0                    NA                 0.0912428    0.0567043   0.1245167
6-24 months   ki1135781-COHORTS          PHILIPPINES    0                    NA                 0.0648806    0.0093566   0.1172926
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     0                    NA                 0.1521415    0.1036698   0.1979920
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0                    NA                 0.2674778    0.1938600   0.3343727
