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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** pers_wast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    stunted   n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  --------  -------  -----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      180    229  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       40    229  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0        7    229  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        2    229  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       56     65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        9     65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        0     65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     65  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       33     45  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       10     45  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        2     45  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0     45  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       24     27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        2     27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        1     27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0     27  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                  0      207    233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                  1       26    233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                  0        0    233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0    233  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      102    113  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        9    113  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    113  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    113  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      101    123  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       22    123  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    123  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    123  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       68     92  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       12     92  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7     92  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        5     92  stunted          
Birth       ki1000108-IRC              INDIA                          0                  0      279    387  stunted          
Birth       ki1000108-IRC              INDIA                          0                  1       40    387  stunted          
Birth       ki1000108-IRC              INDIA                          1                  0       63    387  stunted          
Birth       ki1000108-IRC              INDIA                          1                  1        5    387  stunted          
Birth       ki1000109-EE               PAKISTAN                       0                  0      130    240  stunted          
Birth       ki1000109-EE               PAKISTAN                       0                  1       94    240  stunted          
Birth       ki1000109-EE               PAKISTAN                       1                  0       10    240  stunted          
Birth       ki1000109-EE               PAKISTAN                       1                  1        6    240  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       0                  0       21     34  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       0                  1        9     34  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       1                  0        2     34  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       1                  1        2     34  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0      470    539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1       46    539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0       21    539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1        2    539  stunted          
Birth       ki1101329-Keneba           GAMBIA                         0                  0     1303   1419  stunted          
Birth       ki1101329-Keneba           GAMBIA                         0                  1       71   1419  stunted          
Birth       ki1101329-Keneba           GAMBIA                         1                  0       43   1419  stunted          
Birth       ki1101329-Keneba           GAMBIA                         1                  1        2   1419  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0      435    585  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       86    585  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0       55    585  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1        9    585  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     0                  0       14     18  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     0                  1        2     18  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     1                  0        1     18  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     1                  1        1     18  stunted          
Birth       ki1114097-CONTENT          PERU                           0                  0        2      2  stunted          
Birth       ki1114097-CONTENT          PERU                           0                  1        0      2  stunted          
Birth       ki1114097-CONTENT          PERU                           1                  0        0      2  stunted          
Birth       ki1114097-CONTENT          PERU                           1                  1        0      2  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      191    241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       43    241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0        6    241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    241  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      202    209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        6    209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0        1    209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      177    236  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       41    236  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       14    236  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        4    236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      219    236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1       11    236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        5    236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1    236  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                  0      213    273  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                  1       60    273  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                  0        0    273  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    273  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      202    254  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       50    254  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    254  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    254  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      188    247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       59    247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    247  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      219    365  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       94    365  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       35    365  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       17    365  stunted          
6 months    ki1000108-IRC              INDIA                          0                  0      246    406  stunted          
6 months    ki1000108-IRC              INDIA                          0                  1       91    406  stunted          
6 months    ki1000108-IRC              INDIA                          1                  0       60    406  stunted          
6 months    ki1000108-IRC              INDIA                          1                  1        9    406  stunted          
6 months    ki1000109-EE               PAKISTAN                       0                  0      181    373  stunted          
6 months    ki1000109-EE               PAKISTAN                       0                  1      166    373  stunted          
6 months    ki1000109-EE               PAKISTAN                       1                  0        9    373  stunted          
6 months    ki1000109-EE               PAKISTAN                       1                  1       17    373  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       0                  0      125    227  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       0                  1       77    227  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       1                  0       22    227  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       1                  1        3    227  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      499    604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       91    604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0        9    604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        5    604  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1776   2019  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1      192   2019  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       47   2019  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        4   2019  stunted          
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1583   1897  stunted          
6 months    ki1101329-Keneba           GAMBIA                         0                  1      253   1897  stunted          
6 months    ki1101329-Keneba           GAMBIA                         1                  0       38   1897  stunted          
6 months    ki1101329-Keneba           GAMBIA                         1                  1       23   1897  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  0      189    276  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  1       78    276  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  0        2    276  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        7    276  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      392    559  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1      107    559  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0       46    559  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       14    559  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     0                  0      146    243  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     0                  1       86    243  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     1                  0        4    243  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     1                  1        7    243  stunted          
6 months    ki1114097-CONTENT          PERU                           0                  0      196    215  stunted          
6 months    ki1114097-CONTENT          PERU                           0                  1       19    215  stunted          
6 months    ki1114097-CONTENT          PERU                           1                  0        0    215  stunted          
6 months    ki1114097-CONTENT          PERU                           1                  1        0    215  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      106    212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1      100    212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0        5    212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    212  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      161    169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        7    169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0        1    169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    169  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      116    227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       93    227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       14    227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4    227  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      174    228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       48    228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        4    228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        2    228  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                  0      127    201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                  1       74    201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                  0        0    201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    201  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      152    238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       84    238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    238  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       59    214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      155    214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    214  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       92    366  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1      219    366  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12    366  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       43    366  stunted          
24 months   ki1000108-IRC              INDIA                          0                  0      190    408  stunted          
24 months   ki1000108-IRC              INDIA                          0                  1      149    408  stunted          
24 months   ki1000108-IRC              INDIA                          1                  0       46    408  stunted          
24 months   ki1000108-IRC              INDIA                          1                  1       23    408  stunted          
24 months   ki1000109-EE               PAKISTAN                       0                  0       49    167  stunted          
24 months   ki1000109-EE               PAKISTAN                       0                  1      107    167  stunted          
24 months   ki1000109-EE               PAKISTAN                       1                  0        0    167  stunted          
24 months   ki1000109-EE               PAKISTAN                       1                  1       11    167  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      378    578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      187    578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       10    578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        3    578  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        5      6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1      6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        0      6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6  stunted          
24 months   ki1101329-Keneba           GAMBIA                         0                  0      931   1442  stunted          
24 months   ki1101329-Keneba           GAMBIA                         0                  1      464   1442  stunted          
24 months   ki1101329-Keneba           GAMBIA                         1                  0       23   1442  stunted          
24 months   ki1101329-Keneba           GAMBIA                         1                  1       24   1442  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      238    479  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      192    479  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       25    479  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       24    479  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     0                  0       75    242  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     0                  1      158    242  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     1                  0        2    242  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     1                  1        7    242  stunted          
24 months   ki1114097-CONTENT          PERU                           0                  0      143    164  stunted          
24 months   ki1114097-CONTENT          PERU                           0                  1       21    164  stunted          
24 months   ki1114097-CONTENT          PERU                           1                  0        0    164  stunted          
24 months   ki1114097-CONTENT          PERU                           1                  1        0    164  stunted          


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/cb30c3a9-4a74-45d4-8bd5-36248eefa7e8/6dd78647-f30b-4a56-a981-2bda2e69794d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cb30c3a9-4a74-45d4-8bd5-36248eefa7e8/6dd78647-f30b-4a56-a981-2bda2e69794d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cb30c3a9-4a74-45d4-8bd5-36248eefa7e8/6dd78647-f30b-4a56-a981-2bda2e69794d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cb30c3a9-4a74-45d4-8bd5-36248eefa7e8/6dd78647-f30b-4a56-a981-2bda2e69794d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1500000   0.0713260   0.2286740
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.4166667   0.1361986   0.6971348
Birth       ki1000108-IRC              INDIA        0                    NA                0.1253918   0.0890040   0.1617797
Birth       ki1000108-IRC              INDIA        1                    NA                0.0735294   0.0114136   0.1356452
Birth       ki1000109-EE               PAKISTAN     0                    NA                0.4196429   0.3548811   0.4844046
Birth       ki1000109-EE               PAKISTAN     1                    NA                0.3750000   0.1372884   0.6127116
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1650672   0.1331623   0.1969720
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1406250   0.0553833   0.2258667
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3003195   0.2494669   0.3511721
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3269231   0.1992506   0.4545956
6 months    ki1000108-IRC              INDIA        0                    NA                0.2700297   0.2225698   0.3174896
6 months    ki1000108-IRC              INDIA        1                    NA                0.1304348   0.0508726   0.2099970
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.4783862   0.4257566   0.5310158
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.6538462   0.4707342   0.8369581
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1542373   0.1250152   0.1834594
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3571429   0.1242409   0.5900448
6 months    ki1101329-Keneba           GAMBIA       0                    NA                0.1377996   0.1220287   0.1535704
6 months    ki1101329-Keneba           GAMBIA       1                    NA                0.3770492   0.2553960   0.4987024
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2144289   0.1783859   0.2504719
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2333333   0.1262177   0.3404490
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7041801   0.6533855   0.7549747
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7818182   0.6725175   0.8911189
24 months   ki1000108-IRC              INDIA        0                    NA                0.4395280   0.3866285   0.4924275
24 months   ki1000108-IRC              INDIA        1                    NA                0.3333333   0.2219680   0.4446987
24 months   ki1101329-Keneba           GAMBIA       0                    NA                0.3326165   0.3078838   0.3573492
24 months   ki1101329-Keneba           GAMBIA       1                    NA                0.5106383   0.3676760   0.6536006
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.4465116   0.3994748   0.4935485
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.4897959   0.3496813   0.6299105


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1847826   0.1050392   0.2645260
Birth       ki1000108-IRC              INDIA        NA                   NA                0.1162791   0.0843002   0.1482579
Birth       ki1000109-EE               PAKISTAN     NA                   NA                0.4166667   0.3541635   0.4791698
Birth       ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1623932   0.1324811   0.1923052
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3041096   0.2568508   0.3513684
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2463054   0.2043435   0.2882673
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.4906166   0.4398159   0.5414174
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1101329-Keneba           GAMBIA       NA                   NA                0.1454929   0.1296218   0.1613640
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.2164580   0.1822877   0.2506283
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7158470   0.6695782   0.7621158
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4215686   0.3735941   0.4695432
24 months   ki1101329-Keneba           GAMBIA       NA                   NA                0.3384189   0.3139882   0.3628495
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.4509395   0.4063324   0.4955465


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 2.7777778   1.1833052   6.5207600
Birth       ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA        1                    0                 0.5863971   0.2400313   1.4325693
Birth       ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000109-EE               PAKISTAN     1                    0                 0.8936170   0.4653847   1.7158953
Birth       ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL        1                    0                 0.8519259   0.4509093   1.6095869
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.0885843   0.7112161   1.6661825
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.4830387   0.2560322   0.9113165
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.3667748   1.0116334   1.8465911
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.3155416   1.1741604   4.5664398
6 months    ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA       1                    0                 2.7362146   1.9429997   3.8532535
6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0881620   0.6673888   1.7742229
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.1102532   0.9486387   1.2994011
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        1                    0                 0.7583893   0.5317021   1.0817228
24 months   ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA       1                    0                 1.5352164   1.1491210   2.0510369
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0969388   0.8087030   1.4879068


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0347826   -0.0074558    0.0770210
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0091128   -0.0219144    0.0036888
Birth       ki1000109-EE               PAKISTAN     0                    NA                -0.0029762   -0.0194618    0.0135094
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0026740   -0.0126506    0.0073026
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0037901   -0.0158119    0.0233921
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0237243   -0.0402762   -0.0071723
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0122305   -0.0018048    0.0262657
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0047031   -0.0016510    0.0110572
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0076933    0.0033150    0.0120716
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0020291   -0.0101112    0.0141695
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0116669   -0.0066673    0.0300012
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0179594   -0.0391657    0.0032469
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0058024    0.0007998    0.0108050
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0044278   -0.0107371    0.0195928


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.1882353   -0.0635084    0.3803886
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0783699   -0.1925958    0.0249155
Birth       ki1000109-EE               PAKISTAN     0                    NA                -0.0071429   -0.0475024    0.0316616
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0164663   -0.0797475    0.0431062
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0124629   -0.0541398    0.0748576
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0963205   -0.1650175   -0.0316743
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0249287   -0.0042076    0.0532197
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0295904   -0.0110256    0.0685747
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0528776    0.0226907    0.0821322
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0093741   -0.0483210    0.0638940
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0162981   -0.0097380    0.0416628
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0426014   -0.0942651    0.0066232
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0171455    0.0022512    0.0318175
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0098191   -0.0243973    0.0428927
