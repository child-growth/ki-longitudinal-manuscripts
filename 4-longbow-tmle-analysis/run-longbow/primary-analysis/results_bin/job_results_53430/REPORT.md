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

**Intervention Variable:** predexfd6

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predexfd6    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       60     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       12     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      109     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       24     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        4      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        2      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       47      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        7      60
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        2      39
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        2      39
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       29      39
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        6      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        3      24
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       20      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1      24
Birth       ki0047075b-MAL-ED          PERU                           1                  0       66     213
Birth       ki0047075b-MAL-ED          PERU                           1                  1        7     213
Birth       ki0047075b-MAL-ED          PERU                           0                  0      121     213
Birth       ki0047075b-MAL-ED          PERU                           0                  1       19     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       82      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        8      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       92     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       7
Birth       ki1000108-IRC              INDIA                          1                  0        0      14
Birth       ki1000108-IRC              INDIA                          1                  1        0      14
Birth       ki1000108-IRC              INDIA                          0                  0       13      14
Birth       ki1000108-IRC              INDIA                          0                  1        1      14
Birth       ki1000109-EE               PAKISTAN                       1                  0       22      42
Birth       ki1000109-EE               PAKISTAN                       1                  1       16      42
Birth       ki1000109-EE               PAKISTAN                       0                  0        3      42
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0      257     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1       89     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0       12     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0      148     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1       11     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0      343     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1       37     539
Birth       ki1101329-Keneba           GAMBIA                         1                  0      459    1403
Birth       ki1101329-Keneba           GAMBIA                         1                  1       26    1403
Birth       ki1101329-Keneba           GAMBIA                         0                  0      865    1403
Birth       ki1101329-Keneba           GAMBIA                         0                  1       53    1403
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      351     563
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       68     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0      118     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       26     563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7012   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3454   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1967   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      990   13423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1479    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      624    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      354    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1      175    2632
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       73     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       11     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      117     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       30     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       29     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        5     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0        7     218
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        4     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      170     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       37     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       11     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      202     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1       11     225
6 months    ki0047075b-MAL-ED          PERU                           1                  0       77     271
6 months    ki0047075b-MAL-ED          PERU                           1                  1       15     271
6 months    ki0047075b-MAL-ED          PERU                           0                  0      134     271
6 months    ki0047075b-MAL-ED          PERU                           0                  1       45     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      188     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       42     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      173     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       58     232
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        7      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6 months    ki1000108-IRC              INDIA                          1                  0        0      14
6 months    ki1000108-IRC              INDIA                          1                  1        0      14
6 months    ki1000108-IRC              INDIA                          0                  0       11      14
6 months    ki1000108-IRC              INDIA                          0                  1        3      14
6 months    ki1000109-EE               PAKISTAN                       1                  0       20      48
6 months    ki1000109-EE               PAKISTAN                       1                  1       23      48
6 months    ki1000109-EE               PAKISTAN                       0                  0        4      48
6 months    ki1000109-EE               PAKISTAN                       0                  1        1      48
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      260     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1      119     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       13     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       81     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      123     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       18     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      385     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       78     604
6 months    ki1101329-Keneba           GAMBIA                         1                  0      502    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  1       84    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1124    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  1      198    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      326     547
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       80     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      103     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       38     547
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1       80     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     5767    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1877    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1676    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      581    9901
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2542    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      786    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      657    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      287    4272
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       38     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       38     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       71     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       58     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      137     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        7     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        3     209
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        8     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      117     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       81     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        9     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        3     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      161     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       46     219
24 months   ki0047075b-MAL-ED          PERU                           1                  0       42     201
24 months   ki0047075b-MAL-ED          PERU                           1                  1       26     201
24 months   ki0047075b-MAL-ED          PERU                           0                  0       85     201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       48     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      141     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       72     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       53     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      148     202
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       12      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
24 months   ki1000108-IRC              INDIA                          1                  0        0      14
24 months   ki1000108-IRC              INDIA                          1                  1        0      14
24 months   ki1000108-IRC              INDIA                          0                  0        5      14
24 months   ki1000108-IRC              INDIA                          0                  1        9      14
24 months   ki1000109-EE               PAKISTAN                       1                  0        5      23
24 months   ki1000109-EE               PAKISTAN                       1                  1       15      23
24 months   ki1000109-EE               PAKISTAN                       0                  0        2      23
24 months   ki1000109-EE               PAKISTAN                       0                  1        1      23
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       88     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       49     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      300     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      141     578
24 months   ki1101329-Keneba           GAMBIA                         1                  0      365    1513
24 months   ki1101329-Keneba           GAMBIA                         1                  1      150    1513
24 months   ki1101329-Keneba           GAMBIA                         0                  0      638    1513
24 months   ki1101329-Keneba           GAMBIA                         0                  1      360    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      199     470
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      157     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       57     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       57     470
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       17     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  1       75     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2006    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1920    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      578    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      584    5088
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1989    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1303    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      509    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      398    4199


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/e96c37c0-bb71-4be5-bd09-2de448dae3f5/bfbf6d21-f29c-46cc-8bc0-31a5c5fd199b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e96c37c0-bb71-4be5-bd09-2de448dae3f5/bfbf6d21-f29c-46cc-8bc0-31a5c5fd199b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e96c37c0-bb71-4be5-bd09-2de448dae3f5/bfbf6d21-f29c-46cc-8bc0-31a5c5fd199b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e96c37c0-bb71-4be5-bd09-2de448dae3f5/bfbf6d21-f29c-46cc-8bc0-31a5c5fd199b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1616162   0.0756488   0.2475836
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1833492   0.1160870   0.2506114
Birth       ki0047075b-MAL-ED         PERU         1                    NA                0.0958904   0.0281876   0.1635932
Birth       ki0047075b-MAL-ED         PERU         0                    NA                0.1357143   0.0788490   0.1925796
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2572254   0.2236819   0.2907690
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3333333   0.0564891   0.6101775
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0691188   0.0291812   0.1090564
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0971947   0.0673476   0.1270418
Birth       ki1101329-Keneba          GAMBIA       1                    NA                0.0522656   0.0324781   0.0720531
Birth       ki1101329-Keneba          GAMBIA       0                    NA                0.0580413   0.0429332   0.0731495
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1629834   0.1275497   0.1984170
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1803990   0.1175536   0.2432445
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.3306197   0.3213682   0.3398713
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3328037   0.3230703   0.3425372
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3039222   0.2824410   0.3254034
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3012615   0.2760454   0.3264776
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1188449   0.0482724   0.1894173
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2052581   0.1394218   0.2710943
6 months    ki0047075b-MAL-ED         PERU         1                    NA                0.1586268   0.0821016   0.2351521
6 months    ki0047075b-MAL-ED         PERU         0                    NA                0.2468486   0.1831520   0.3105452
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1287444   0.0735573   0.1839314
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1699267   0.1358403   0.2040132
6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1393135   0.1119243   0.1667026
6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1508302   0.1317767   0.1698838
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.2006642   0.1625571   0.2387712
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2533923   0.1837188   0.3230658
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.3612939   0.2225331   0.5000547
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3558210   0.2930913   0.4185506
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2457185   0.2347865   0.2566506
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2565399   0.2386526   0.2744271
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2416739   0.2257403   0.2576075
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2899349   0.2574744   0.3223955
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4738863   0.3632517   0.5845210
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4670009   0.3839272   0.5500746
24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.4132582   0.2952204   0.5312959
24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.3431189   0.2621091   0.4241287
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3510842   0.2728506   0.4293178
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3205823   0.2770155   0.3641491
24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2886334   0.2502025   0.3270643
24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.3579953   0.3286857   0.3873049
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4445412   0.3932984   0.4957841
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5034321   0.4150346   0.5918296
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.5218959   0.3472867   0.6965051
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.4828667   0.4036529   0.5620806
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4867603   0.4680854   0.5054353
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.5107930   0.4787646   0.5428213
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3987271   0.3792097   0.4182444
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4247208   0.3866143   0.4628272


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1756098   0.1233973   0.2278222
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                0.1220657   0.0779993   0.1661322
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2609890   0.2179233   0.3040547
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                0.0563079   0.0442416   0.0683742
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1669627   0.1361293   0.1977961
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3310735   0.3218922   0.3402548
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3035714   0.2824097   0.3247332
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1774892   0.1281103   0.2268680
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                0.2214022   0.1718784   0.2709260
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.1477987   0.1318701   0.1637274
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2157221   0.1812209   0.2502233
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2482578   0.2382387   0.2582768
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2511704   0.2362353   0.2661055
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4682927   0.3998183   0.5367670
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.3370787   0.3132517   0.3609056
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4553192   0.4102488   0.5003895
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4921384   0.4750959   0.5091808
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4050965   0.3867240   0.4234689


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.1344734   0.5937428   2.167655
Birth       ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 1.4153061   0.6227136   3.216714
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2958801   0.6113712   2.746785
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.4061986   0.7311456   2.704515
Birth       ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                 1.1105078   0.7016994   1.757487
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1068555   0.7339723   1.669176
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0066057   0.9935584   1.019824
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.9912453   0.9363894   1.049315
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.7271091   0.8804835   3.387804
6 months    ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 1.5561588   0.9025864   2.682990
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.0057497   0.4866253   2.078668
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.3198771   0.8226518   2.117634
6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 1.0826681   0.8605289   1.362151
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.2627679   0.9141991   1.744240
6 months    ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                 0.9848519   0.6452228   1.503253
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0440396   0.9680490   1.125995
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1996950   1.0603875   1.357304
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9854703   0.7409774   1.310636
24 months   ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                 0.8302774   0.5771921   1.194335
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9131209   0.7051609   1.182411
24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.2403113   1.0635501   1.446450
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1324756   0.9211399   1.392298
24 months   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                 0.9252165   0.6371285   1.343568
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0493727   0.9796037   1.124111
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0651917   0.9684651   1.171579


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0139936   -0.0566090   0.0845962
Birth       ki0047075b-MAL-ED         PERU         1                    NA                 0.0261753   -0.0319940   0.0843446
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0037636   -0.0100156   0.0175428
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0199350   -0.0153250   0.0551951
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0040423   -0.0121817   0.0202663
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0039793   -0.0145656   0.0225243
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0004538   -0.0005012   0.0014088
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0003508   -0.0036649   0.0029633
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0586443   -0.0029318   0.1202204
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.0627754   -0.0033223   0.1288730
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0000862   -0.0108674   0.0110398
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0301960   -0.0195315   0.0799236
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0084853   -0.0142009   0.0311715
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0150579   -0.0047844   0.0349002
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0046762   -0.1309186   0.1215662
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0025392   -0.0018348   0.0069132
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0094965    0.0019747   0.0170183
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0055937   -0.0906622   0.0794749
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0450989   -0.1397674   0.0495696
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0223645   -0.0901738   0.0454448
24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0484452    0.0169387   0.0799518
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0107779   -0.0134948   0.0350506
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0351234   -0.1941156   0.1238688
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0053781   -0.0025751   0.0133312
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0063694   -0.0020811   0.0148199


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0796857   -0.4239757   0.4052017
Birth       ki0047075b-MAL-ED         PERU         1                    NA                 0.2144362   -0.4318688   0.5690175
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0144204   -0.0378960   0.0640998
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2238536   -0.2868660   0.5318835
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0717896   -0.2657046   0.3192925
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0238337   -0.0937339   0.1287637
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0013707   -0.0015191   0.0042521
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0011555   -0.0121310   0.0097009
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.3304106   -0.1128380   0.5971112
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.2835354   -0.0828466   0.5259518
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0002744   -0.0352245   0.0345560
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1899833   -0.1898287   0.4485534
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0574111   -0.1092506   0.1990324
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0698025   -0.0264395   0.1570205
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0131127   -0.4368335   0.2856532
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0102281   -0.0075532   0.0276956
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0378091    0.0075705   0.0671264
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0119448   -0.2108810   0.1543081
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.1224985   -0.4115735   0.1073771
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0680352   -0.2956724   0.1196084
24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1437208    0.0449731   0.2322582
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0236711   -0.0311806   0.0756051
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0721557   -0.4541612   0.2094977
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0109279   -0.0053626   0.0269545
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0157231   -0.0053066   0.0363130
