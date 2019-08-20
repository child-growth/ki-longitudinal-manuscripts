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

agecat        studyid                    country                        enstunt    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      198     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        9     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       37     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        4     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      194     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       21     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     217
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      183     241
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       17     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       37     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      208     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        3     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       26     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     238
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      247     284
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        1     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       36     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      243     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       28     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      214     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       39     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      283     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       15     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       67     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        8     373
0-24 months   ki1000108-IRC              INDIA                          0                  0      320     410
0-24 months   ki1000108-IRC              INDIA                          0                  1       42     410
0-24 months   ki1000108-IRC              INDIA                          1                  0       42     410
0-24 months   ki1000108-IRC              INDIA                          1                  1        6     410
0-24 months   ki1000109-EE               PAKISTAN                       0                  0      227     377
0-24 months   ki1000109-EE               PAKISTAN                       0                  1       20     377
0-24 months   ki1000109-EE               PAKISTAN                       1                  0      122     377
0-24 months   ki1000109-EE               PAKISTAN                       1                  1        8     377
0-24 months   ki1000109-ResPak           PAKISTAN                       0                  0      165     251
0-24 months   ki1000109-ResPak           PAKISTAN                       0                  1       22     251
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  0       52     251
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  1       12     251
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      566     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       12     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       59     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        3     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      609     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1       18     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       95     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        8     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1964    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       55    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      144    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        3    2166
0-24 months   ki1101329-Keneba           GAMBIA                         0                  0     2089    2441
0-24 months   ki1101329-Keneba           GAMBIA                         0                  1      105    2441
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0      220    2441
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1       27    2441
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  0      196     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       56     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        3     256
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                  0     1185    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                  1      107    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0      284    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1       93    1669
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      457     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       69     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       50     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       16     592
0-24 months   ki1114097-CMIN             BANGLADESH                     0                  0      152     257
0-24 months   ki1114097-CMIN             BANGLADESH                     0                  1        9     257
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  0       85     257
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  1       11     257
0-24 months   ki1114097-CMIN             BRAZIL                         0                  0      114     119
0-24 months   ki1114097-CMIN             BRAZIL                         0                  1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                  0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                  1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                  0      966    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                  1       21    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  0      151    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  1       15    1153
0-24 months   ki1114097-CMIN             PERU                           0                  0      736     830
0-24 months   ki1114097-CMIN             PERU                           0                  1        3     830
0-24 months   ki1114097-CMIN             PERU                           1                  0       89     830
0-24 months   ki1114097-CMIN             PERU                           1                  1        2     830
0-24 months   ki1114097-CONTENT          PERU                           0                  0      197     215
0-24 months   ki1114097-CONTENT          PERU                           0                  1        0     215
0-24 months   ki1114097-CONTENT          PERU                           1                  0       18     215
0-24 months   ki1114097-CONTENT          PERU                           1                  1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        0                  0    16283   16581
0-24 months   ki1119695-PROBIT           BELARUS                        0                  1      159   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                  0      139   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                  1        0   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0     8270    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1      147    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      896    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       20    9333
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0    10888   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      548   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3893   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      350   15679
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     3553    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      223    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1302    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      203    5281
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      201     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        6     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       40     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      195     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       21     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      183     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       17     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       38     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      206     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        5     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       26     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     237
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      248     284
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       36     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      242     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       27     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      214     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       39     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      249     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       37     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       59     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       13     358
0-6 months    ki1000108-IRC              INDIA                          0                  0      297     402
0-6 months    ki1000108-IRC              INDIA                          0                  1       58     402
0-6 months    ki1000108-IRC              INDIA                          1                  0       41     402
0-6 months    ki1000108-IRC              INDIA                          1                  1        6     402
0-6 months    ki1000109-EE               PAKISTAN                       0                  0      225     366
0-6 months    ki1000109-EE               PAKISTAN                       0                  1       18     366
0-6 months    ki1000109-EE               PAKISTAN                       1                  0      114     366
0-6 months    ki1000109-EE               PAKISTAN                       1                  1        9     366
0-6 months    ki1000109-ResPak           PAKISTAN                       0                  0      165     240
0-6 months    ki1000109-ResPak           PAKISTAN                       0                  1       17     240
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  0       50     240
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  1        8     240
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  0      140     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  1        9     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  0       18     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  1        2     169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      563     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       12     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0       60     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      218     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        4     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       27     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        1     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1868    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       50    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      141    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        2    2061
0-6 months    ki1101329-Keneba           GAMBIA                         0                  0     1808    2037
0-6 months    ki1101329-Keneba           GAMBIA                         0                  1       42    2037
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0      178    2037
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1        9    2037
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      428     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       57     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0       49     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        8     542
0-6 months    ki1114097-CMIN             BANGLADESH                     0                  0      143     234
0-6 months    ki1114097-CMIN             BANGLADESH                     0                  1        4     234
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  0       82     234
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  1        5     234
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                  0        9      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                  1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                  0        2      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                  1        0      11
0-6 months    ki1114097-CMIN             PERU                           0                  0      523     558
0-6 months    ki1114097-CMIN             PERU                           0                  1       12     558
0-6 months    ki1114097-CMIN             PERU                           1                  0       23     558
0-6 months    ki1114097-CMIN             PERU                           1                  1        0     558
0-6 months    ki1114097-CONTENT          PERU                           0                  0      197     215
0-6 months    ki1114097-CONTENT          PERU                           0                  1        0     215
0-6 months    ki1114097-CONTENT          PERU                           1                  0       18     215
0-6 months    ki1114097-CONTENT          PERU                           1                  1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        0                  0    12364   13545
0-6 months    ki1119695-PROBIT           BELARUS                        0                  1     1146   13545
0-6 months    ki1119695-PROBIT           BELARUS                        1                  0       35   13545
0-6 months    ki1119695-PROBIT           BELARUS                        1                  1        0   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  0      569     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  1       12     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  0       27     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  1        2     610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                  0      777     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                  1       50     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                  0       24     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                  1        2     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0       36      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1        2      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0        8      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1        0      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      198     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        9     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       37     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        4     248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      194     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       21     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      183     241
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       17     241
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       37     241
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4     241
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      208     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        3     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       26     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     238
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      247     284
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        1     284
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       36     284
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      243     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       28     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      214     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       39     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      283     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       67     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        8     373
6-24 months   ki1000108-IRC              INDIA                          0                  0      320     410
6-24 months   ki1000108-IRC              INDIA                          0                  1       42     410
6-24 months   ki1000108-IRC              INDIA                          1                  0       42     410
6-24 months   ki1000108-IRC              INDIA                          1                  1        6     410
6-24 months   ki1000109-EE               PAKISTAN                       0                  0      227     377
6-24 months   ki1000109-EE               PAKISTAN                       0                  1       20     377
6-24 months   ki1000109-EE               PAKISTAN                       1                  0      122     377
6-24 months   ki1000109-EE               PAKISTAN                       1                  1        8     377
6-24 months   ki1000109-ResPak           PAKISTAN                       0                  0      165     251
6-24 months   ki1000109-ResPak           PAKISTAN                       0                  1       22     251
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  0       52     251
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  1       12     251
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      566     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       12     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       59     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        3     640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      609     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1       18     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       95     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        8     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1964    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       55    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      144    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        3    2166
6-24 months   ki1101329-Keneba           GAMBIA                         0                  0     2089    2441
6-24 months   ki1101329-Keneba           GAMBIA                         0                  1      105    2441
6-24 months   ki1101329-Keneba           GAMBIA                         1                  0      220    2441
6-24 months   ki1101329-Keneba           GAMBIA                         1                  1       27    2441
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  0      196     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                  1        1     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       56     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        3     256
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                  0     1185    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                  1      107    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0      284    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1       93    1669
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      457     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       69     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       50     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       16     592
6-24 months   ki1114097-CMIN             BANGLADESH                     0                  0      152     257
6-24 months   ki1114097-CMIN             BANGLADESH                     0                  1        9     257
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  0       85     257
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  1       11     257
6-24 months   ki1114097-CMIN             BRAZIL                         0                  0      114     119
6-24 months   ki1114097-CMIN             BRAZIL                         0                  1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         1                  0        5     119
6-24 months   ki1114097-CMIN             BRAZIL                         1                  1        0     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                  0      966    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                  1       21    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  0      151    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  1       15    1153
6-24 months   ki1114097-CMIN             PERU                           0                  0      736     830
6-24 months   ki1114097-CMIN             PERU                           0                  1        3     830
6-24 months   ki1114097-CMIN             PERU                           1                  0       89     830
6-24 months   ki1114097-CMIN             PERU                           1                  1        2     830
6-24 months   ki1114097-CONTENT          PERU                           0                  0      197     215
6-24 months   ki1114097-CONTENT          PERU                           0                  1        0     215
6-24 months   ki1114097-CONTENT          PERU                           1                  0       18     215
6-24 months   ki1114097-CONTENT          PERU                           1                  1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        0                  0    16283   16581
6-24 months   ki1119695-PROBIT           BELARUS                        0                  1      159   16581
6-24 months   ki1119695-PROBIT           BELARUS                        1                  0      139   16581
6-24 months   ki1119695-PROBIT           BELARUS                        1                  1        0   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0     8270    9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1      147    9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      896    9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       20    9333
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0    10888   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      548   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3893   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      350   15679
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
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/34d127b9-024f-4123-b5ee-e0be648996b8/def06530-20ff-4b2e-a5fc-b79d45cb3b7a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/34d127b9-024f-4123-b5ee-e0be648996b8/def06530-20ff-4b2e-a5fc-b79d45cb3b7a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/34d127b9-024f-4123-b5ee-e0be648996b8/def06530-20ff-4b2e-a5fc-b79d45cb3b7a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/34d127b9-024f-4123-b5ee-e0be648996b8/def06530-20ff-4b2e-a5fc-b79d45cb3b7a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.0503356   0.0254788   0.0751924
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.1066667   0.0367112   0.1766221
0-24 months   ki1000108-IRC              INDIA           0                    NA                0.1160221   0.0829916   0.1490526
0-24 months   ki1000108-IRC              INDIA           1                    NA                0.1250000   0.0313265   0.2186735
0-24 months   ki1000109-EE               PAKISTAN        0                    NA                0.0809717   0.0469067   0.1150366
0-24 months   ki1000109-EE               PAKISTAN        1                    NA                0.0615385   0.0201733   0.1029036
0-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                0.1157714   0.0699254   0.1616174
0-24 months   ki1000109-ResPak           PAKISTAN        1                    NA                0.1963713   0.0977859   0.2949568
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.0576446   0.0353400   0.0799492
0-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.1519132   0.1026431   0.2011833
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.1503546   0.1039903   0.1967190
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.2146074   0.1486422   0.2805726
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0796484   0.0546204   0.1046765
0-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.1292487   0.0524106   0.2060868
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0287081   0.0156287   0.0417876
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.0776699   0.0259454   0.1293945
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.0477217   0.0387892   0.0566542
0-24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.1111349   0.0716415   0.1506283
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                0.0848500   0.0614513   0.1082488
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    NA                0.2353709   0.1439615   0.3267802
0-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                0.1304842   0.1015815   0.1593868
0-24 months   ki1113344-GMS-Nepal        NEPAL           1                    NA                0.2333769   0.1334022   0.3333515
0-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                0.0559006   0.0203458   0.0914555
0-24 months   ki1114097-CMIN             BANGLADESH      1                    NA                0.1145833   0.0507432   0.1784234
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0212962   0.0122784   0.0303141
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.0901720   0.0458732   0.1344709
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0174688   0.0146700   0.0202676
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0224002   0.0129721   0.0318282
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.0258176   0.0151850   0.0364502
0-24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.0683026   0.0351503   0.1014548
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                0.0875554   0.0798069   0.0953039
0-24 months   ki1135781-COHORTS          INDIA           1                    NA                0.1719458   0.1413742   0.2025173
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0479549   0.0398081   0.0561017
0-24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.1082571   0.0568287   0.1596856
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.0479701   0.0435209   0.0524193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.0822446   0.0732904   0.0911988
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0590820   0.0505019   0.0676621
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.1346845   0.1149054   0.1544636
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.1290712   0.0900267   0.1681156
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.1923789   0.0984647   0.2862930
0-6 months    ki1000108-IRC              INDIA           0                    NA                0.1633803   0.1248734   0.2018872
0-6 months    ki1000108-IRC              INDIA           1                    NA                0.1276596   0.0321362   0.2231830
0-6 months    ki1000109-EE               PAKISTAN        0                    NA                0.0740741   0.0411009   0.1070472
0-6 months    ki1000109-EE               PAKISTAN        1                    NA                0.0731707   0.0270859   0.1192556
0-6 months    ki1000109-ResPak           PAKISTAN        0                    NA                0.0934066   0.0510409   0.1357723
0-6 months    ki1000109-ResPak           PAKISTAN        1                    NA                0.1379310   0.0490022   0.2268599
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                0.0227027   0.0159135   0.0294919
0-6 months    ki1101329-Keneba           GAMBIA          1                    NA                0.0481283   0.0174435   0.0788132
0-6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                0.1175258   0.0888381   0.1462135
0-6 months    ki1113344-GMS-Nepal        NEPAL           1                    NA                0.1403509   0.0500941   0.2306077
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.0503356   0.0254788   0.0751924
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.1066667   0.0367112   0.1766221
6-24 months   ki1000108-IRC              INDIA           0                    NA                0.1160221   0.0829916   0.1490526
6-24 months   ki1000108-IRC              INDIA           1                    NA                0.1250000   0.0313265   0.2186735
6-24 months   ki1000109-EE               PAKISTAN        0                    NA                0.0809717   0.0469067   0.1150366
6-24 months   ki1000109-EE               PAKISTAN        1                    NA                0.0615385   0.0201733   0.1029036
6-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                0.1151192   0.0693603   0.1608782
6-24 months   ki1000109-ResPak           PAKISTAN        1                    NA                0.2105790   0.1098847   0.3112732
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.0576446   0.0353400   0.0799492
6-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.1519132   0.1026431   0.2011833
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.1497780   0.1032531   0.1963029
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.2116464   0.1460098   0.2772830
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0793827   0.0544144   0.1043509
6-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.1343478   0.0556824   0.2130133
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0287081   0.0156287   0.0417876
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.0776699   0.0259454   0.1293945
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.0477050   0.0387727   0.0566374
6-24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.1122838   0.0726544   0.1519132
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                0.0845090   0.0610694   0.1079486
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    NA                0.2349713   0.1453278   0.3246147
6-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                0.1310994   0.1020377   0.1601610
6-24 months   ki1113344-GMS-Nepal        NEPAL           1                    NA                0.2283762   0.1317382   0.3250142
6-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                0.0559006   0.0203458   0.0914555
6-24 months   ki1114097-CMIN             BANGLADESH      1                    NA                0.1145833   0.0507432   0.1784234
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0212812   0.0122670   0.0302954
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.0901275   0.0458225   0.1344326
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0174910   0.0146864   0.0202956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0220121   0.0121250   0.0318991
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.0259553   0.0152763   0.0366343
6-24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.0648917   0.0316308   0.0981526
6-24 months   ki1135781-COHORTS          INDIA           0                    NA                0.0875756   0.0798246   0.0953265
6-24 months   ki1135781-COHORTS          INDIA           1                    NA                0.1718351   0.1413435   0.2023268
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0479635   0.0398170   0.0561099
6-24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.1091994   0.0582003   0.1601984
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.0479808   0.0435323   0.0524294
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.0822656   0.0733196   0.0912115
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0589168   0.0503628   0.0674707
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.1353193   0.1154109   0.1552278


### Parameter: E(Y)


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA           NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000109-EE               PAKISTAN        NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000109-ResPak           PAKISTAN        NA                   NA                0.1354582   0.0930379   0.1778785
0-24 months   ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1101329-Keneba           GAMBIA          NA                   NA                0.0540762   0.0451022   0.0630502
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1114097-CMIN             BANGLADESH      NA                   NA                0.0778210   0.0450051   0.1106369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0312229   0.0211797   0.0412661
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.0178935   0.0152039   0.0205831
0-24 months   ki1135781-COHORTS          GUATEMALA       NA                   NA                0.0340909   0.0231410   0.0450408
0-24 months   ki1135781-COHORTS          INDIA           NA                   NA                0.0964067   0.0887472   0.1040661
0-24 months   ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.0572741   0.0531873   0.0613609
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0806665   0.0720540   0.0892791
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA           NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1000109-EE               PAKISTAN        NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1000109-ResPak           PAKISTAN        NA                   NA                0.1041667   0.0654385   0.1428949
0-6 months    ki1101329-Keneba           GAMBIA          NA                   NA                0.0250368   0.0182504   0.0318233
0-6 months    ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.1199262   0.0925504   0.1473020
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA           NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000109-EE               PAKISTAN        NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1000109-ResPak           PAKISTAN        NA                   NA                0.1354582   0.0930379   0.1778785
6-24 months   ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1101329-Keneba           GAMBIA          NA                   NA                0.0540762   0.0451022   0.0630502
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1114097-CMIN             BANGLADESH      NA                   NA                0.0778210   0.0450051   0.1106369
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0312229   0.0211797   0.0412661
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.0178935   0.0152039   0.0205831
6-24 months   ki1135781-COHORTS          GUATEMALA       NA                   NA                0.0340909   0.0231410   0.0450408
6-24 months   ki1135781-COHORTS          INDIA           NA                   NA                0.0964067   0.0887472   0.1040661
6-24 months   ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.0572741   0.0531873   0.0613609
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0806665   0.0720540   0.0892791


### Parameter: RR


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 2.1191111   0.9324275   4.816065
0-24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA           1                    0                 1.0773810   0.4833037   2.401698
0-24 months   ki1000109-EE               PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN        1                    0                 0.7600000   0.3438949   1.679583
0-24 months   ki1000109-ResPak           PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak           PAKISTAN        1                    0                 1.6961985   0.8981363   3.203399
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    0                 2.6353422   1.7773674   3.907481
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.4273415   0.9237562   2.205456
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.6227403   0.8276084   3.181802
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 2.7055016   1.2073171   6.062814
0-24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA          1                    0                 2.3288125   1.5587630   3.479277
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    0                 2.7739636   1.6903044   4.552360
0-24 months   ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL           1                    0                 1.7885454   1.1051518   2.894530
0-24 months   ki1114097-CMIN             BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             BANGLADESH      1                    0                 2.0497685   0.8800068   4.774453
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    0                 4.2341785   2.2124196   8.103466
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.2822947   0.8173599   2.011696
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 2.6455824   1.3980547   5.006318
0-24 months   ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA           1                    0                 1.9638509   1.6100467   2.395403
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 2.2574783   1.3629307   3.739154
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 1.7144982   1.4891156   1.973993
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 2.2796207   1.8675853   2.782561
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 1.4904866   0.8378867   2.651374
0-6 months    ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA           1                    0                 0.7813646   0.3565714   1.712226
0-6 months    ki1000109-EE               PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN        1                    0                 0.9878049   0.4567946   2.136099
0-6 months    ki1000109-ResPak           PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak           PAKISTAN        1                    0                 1.4766734   0.6713277   3.248137
0-6 months    ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA          1                    0                 2.1199389   1.0483043   4.287058
0-6 months    ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL           1                    0                 1.1942136   0.6002794   2.375804
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 2.1191111   0.9324275   4.816065
6-24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA           1                    0                 1.0773810   0.4833037   2.401698
6-24 months   ki1000109-EE               PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN        1                    0                 0.7600000   0.3438949   1.679583
6-24 months   ki1000109-ResPak           PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak           PAKISTAN        1                    0                 1.8292247   0.9852380   3.396198
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    0                 2.6353422   1.7773674   3.907481
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.4130671   0.9113210   2.191060
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.6924068   0.8703947   3.290738
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 2.7055016   1.2073171   6.062814
6-24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA          1                    0                 2.3537099   1.5788298   3.508896
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    0                 2.7804295   1.7011200   4.544529
6-24 months   ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL           1                    0                 1.7420085   1.0807494   2.807860
6-24 months   ki1114097-CMIN             BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             BANGLADESH      1                    0                 2.0497685   0.8800068   4.774453
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    0                 4.2350729   2.2131908   8.104065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.2584821   0.7811118   2.027593
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 2.5001356   1.2943940   4.829038
6-24 months   ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA           1                    0                 1.9621358   1.6091397   2.392569
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 2.2767194   1.3849892   3.742593
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 1.7145499   1.4891926   1.974010
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 2.2967882   1.8813055   2.804030


### Parameter: PAR


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0113266   -0.0037763   0.0264296
0-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0010511   -0.0105808   0.0126829
0-24 months   ki1000109-EE               PAKISTAN        0                    NA                -0.0067011   -0.0252027   0.0118005
0-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                 0.0196867   -0.0073382   0.0467117
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0258108    0.0147890   0.0368325
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0229787   -0.0089250   0.0548824
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0083666   -0.0037906   0.0205237
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0069083   -0.0007205   0.0145371
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0063545    0.0022530   0.0104560
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.0349822    0.0135651   0.0563994
0-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0130969    0.0008588   0.0253351
0-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.0219204   -0.0055961   0.0494369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0099267    0.0033512   0.0165021
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0004247   -0.0005443   0.0013936
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0082733    0.0011706   0.0153761
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0088513    0.0055068   0.0121958
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0032724    0.0004573   0.0060875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0093040    0.0066008   0.0120071
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0215846    0.0155469   0.0276222
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0105936   -0.0094035   0.0305908
0-6 months    ki1000108-IRC              INDIA           0                    NA                -0.0041763   -0.0162700   0.0079174
0-6 months    ki1000109-EE               PAKISTAN        0                    NA                -0.0003036   -0.0193471   0.0187400
0-6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.0107601   -0.0131676   0.0346877
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0023341   -0.0005685   0.0052367
0-6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0024004   -0.0075769   0.0123778
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0113266   -0.0037763   0.0264296
6-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0010511   -0.0105808   0.0126829
6-24 months   ki1000109-EE               PAKISTAN        0                    NA                -0.0067011   -0.0252027   0.0118005
6-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                 0.0203389   -0.0065584   0.0472363
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0258108    0.0147890   0.0368325
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0235553   -0.0084058   0.0555164
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0086323   -0.0035001   0.0207647
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0069083   -0.0007205   0.0145371
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0063712    0.0022678   0.0104745
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.0353233    0.0138661   0.0567804
6-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0124817    0.0000433   0.0249201
6-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.0219204   -0.0055961   0.0494369
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0099417    0.0033729   0.0165105
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0004025   -0.0005694   0.0013745
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0081356    0.0010166   0.0152547
6-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0088311    0.0054859   0.0121763
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0032639    0.0004497   0.0060780
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0092932    0.0065900   0.0119964
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0217498    0.0157125   0.0277871


### Parameter: PAF


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.1836884   -0.0887240   0.3879397
0-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0089779   -0.0955050   0.1034958
0-24 months   ki1000109-EE               PAKISTAN        0                    NA                -0.0902256   -0.3679311   0.1311026
0-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                 0.1453344   -0.0751822   0.3206237
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.3092763    0.1632448   0.4298221
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.1325693   -0.0703212   0.2969999
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0950584   -0.0518279   0.2214323
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.1939639   -0.0356867   0.3726924
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.1175100    0.0406790   0.1881877
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.2919266    0.1170739   0.4321518
0-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0912162    0.0030249   0.1716061
0-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.2816770   -0.1460941   0.5497857
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.3179292    0.1050187   0.4801896
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0237346   -0.0318249   0.0763025
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.2426841    0.0219572   0.4135968
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0918117    0.0571098   0.1252365
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0638804    0.0081700   0.1164616
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.1624468    0.1147344   0.2075877
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.2675776    0.1941524   0.3343126
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0758503   -0.0778986   0.2076689
0-6 months    ki1000108-IRC              INDIA           0                    NA                -0.0262324   -0.1049273   0.0468577
0-6 months    ki1000109-EE               PAKISTAN        0                    NA                -0.0041152   -0.2984759   0.2235148
0-6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.1032967   -0.1552155   0.3039595
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0932273   -0.0274299   0.1997151
0-6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0200159   -0.0667132   0.0996934
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.1836884   -0.0887240   0.3879397
6-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0089779   -0.0955050   0.1034958
6-24 months   ki1000109-EE               PAKISTAN        0                    NA                -0.0902256   -0.3679311   0.1311026
6-24 months   ki1000109-ResPak           PAKISTAN        0                    NA                 0.1501491   -0.0693693   0.3246051
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.3092763    0.1632448   0.4298221
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.1358960   -0.0676851   0.3006592
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0980775   -0.0484050   0.2240936
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.1939639   -0.0356867   0.3726924
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.1178182    0.0409521   0.1885236
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.2947726    0.1194880   0.4351631
6-24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0869315   -0.0028672   0.1686894
6-24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.2816770   -0.1460941   0.5497857
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.3184097    0.1057677   0.4804869
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0224963   -0.0332585   0.0752425
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.2386454    0.0168988   0.4103751
6-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0916026    0.0568886   0.1250388
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0637132    0.0080232   0.1162767
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.1622587    0.1145503   0.2073965
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.2696257    0.1963333   0.3362340
