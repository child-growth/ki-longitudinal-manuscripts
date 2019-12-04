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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/453cfdbf-3d8e-447a-b2ac-6062ae17e31c/07476098-14c3-47a2-a2b1-66fce87fd998/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/453cfdbf-3d8e-447a-b2ac-6062ae17e31c/07476098-14c3-47a2-a2b1-66fce87fd998/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/453cfdbf-3d8e-447a-b2ac-6062ae17e31c/07476098-14c3-47a2-a2b1-66fce87fd998/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/453cfdbf-3d8e-447a-b2ac-6062ae17e31c/07476098-14c3-47a2-a2b1-66fce87fd998/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1666667   0.0803733   0.2529600
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1804511   0.1149345   0.2459677
Birth       ki0047075b-MAL-ED         PERU         1                    NA                0.0958904   0.0281876   0.1635932
Birth       ki0047075b-MAL-ED         PERU         0                    NA                0.1357143   0.0788490   0.1925796
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2572254   0.2236819   0.2907690
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3333333   0.0564891   0.6101775
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0691824   0.0297019   0.1086629
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0973684   0.0675336   0.1272033
Birth       ki1101329-Keneba          GAMBIA       1                    NA                0.0536082   0.0335551   0.0736614
Birth       ki1101329-Keneba          GAMBIA       0                    NA                0.0577342   0.0426409   0.0728275
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1622912   0.1269549   0.1976275
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1805556   0.1176748   0.2434364
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.3300210   0.3197885   0.3402535
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3347988   0.3161701   0.3534275
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2967190   0.2734700   0.3199679
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3308129   0.2833827   0.3782430
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1309524   0.0586539   0.2032508
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2040816   0.1387885   0.2693748
6 months    ki0047075b-MAL-ED         PERU         1                    NA                0.1630435   0.0874194   0.2386676
6 months    ki0047075b-MAL-ED         PERU         0                    NA                0.2513966   0.1877274   0.3150659
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1276596   0.0725321   0.1827870
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1684665   0.1343461   0.2025869
6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1433447   0.1149651   0.1717244
6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1497731   0.1305319   0.1690142
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1970443   0.1583177   0.2357710
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2695035   0.1961996   0.3428075
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.3617021   0.2240807   0.4993236
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3555556   0.2928937   0.4182174
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2455521   0.2342580   0.2568462
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2574214   0.2379909   0.2768518
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2361779   0.2200064   0.2523494
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3040254   0.2702681   0.3377827
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5000000   0.3873132   0.6126868
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4496124   0.3635589   0.5356659
24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.3823529   0.2665608   0.4981451
24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.3609023   0.2790777   0.4427268
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3576642   0.2773333   0.4379951
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3197279   0.2761630   0.3632928
24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2912621   0.2520091   0.3305151
24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.3607214   0.3309186   0.3905243
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4410112   0.3893801   0.4926424
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5000000   0.4081185   0.5918815
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.5000000   0.3314881   0.6685119
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.4838710   0.4049889   0.5627530
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4890474   0.4701487   0.5079461
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.5025818   0.4684915   0.5366720
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3958080   0.3762452   0.4153709
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4388093   0.3999390   0.4776795


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
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4553191   0.4102488   0.5003895
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4921384   0.4750959   0.5091808
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4050965   0.3867240   0.4234689


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0827068   0.5752737   2.037733
Birth       ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 1.4153061   0.6227136   3.216714
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2958801   0.6113712   2.746785
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.4074163   0.7364045   2.689854
Birth       ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                 1.0769650   0.6823439   1.699808
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1125408   0.7378028   1.677612
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0144771   0.9533959   1.079472
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1149029   0.9496071   1.308971
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.5584416   0.8233178   2.949943
6 months    ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 1.5418994   0.9089616   2.615571
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.0057497   0.4866253   2.078668
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.3196544   0.8190592   2.126205
6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 1.0448455   0.8251901   1.322970
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.3677305   0.9778296   1.913101
6 months    ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                 0.9830065   0.6463228   1.495076
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0483372   0.9619535   1.142478
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2872730   1.1326988   1.462941
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.8992248   0.6690477   1.208591
24 months   ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                 0.9438982   0.6465898   1.377912
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.8939331   0.6874113   1.162501
24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.2384770   1.0573908   1.450576
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1337580   0.9117855   1.409769
24 months   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                 0.9677419   0.6655301   1.407186
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0276750   0.9529276   1.108286
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1086417   1.0073028   1.220176


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0089431   -0.0613558   0.0792420
Birth       ki0047075b-MAL-ED         PERU         1                    NA                 0.0261753   -0.0319940   0.0843446
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0037636   -0.0100156   0.0175428
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0198714   -0.0150333   0.0547762
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0026997   -0.0137230   0.0191223
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0046715   -0.0137890   0.0231320
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0010525   -0.0035107   0.0056157
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0068525   -0.0035148   0.0172197
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0465368   -0.0156229   0.1086965
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.0583587   -0.0071286   0.1238461
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0000862   -0.0108674   0.0110398
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0312808   -0.0184360   0.0809976
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0044540   -0.0193031   0.0282112
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0186778   -0.0028573   0.0402129
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0050845   -0.1301713   0.1200023
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0027057   -0.0022805   0.0076919
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0149925    0.0068668   0.0231182
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0317073   -0.1209918   0.0575772
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0141937   -0.1080224   0.0796350
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0289445   -0.0986804   0.0407913
24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0458165    0.0132650   0.0783680
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0143079   -0.0113581   0.0399739
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0132275   -0.1658197   0.1393646
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0030910   -0.0055418   0.0117238
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0092884    0.0004619   0.0181150


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0509259   -0.4467871   0.3774194
Birth       ki0047075b-MAL-ED         PERU         1                    NA                 0.2144362   -0.4318688   0.5690175
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0144204   -0.0378960   0.0640998
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2231394   -0.2801119   0.5285472
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0479447   -0.2931027   0.2990430
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0279795   -0.0890382   0.1324236
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0031791   -0.0106996   0.0168671
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0225728   -0.0121644   0.0561178
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.2621951   -0.1776585   0.5377641
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.2635870   -0.0952985   0.5048800
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0002744   -0.0352245   0.0345560
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1968085   -0.1834950   0.4549056
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0301358   -0.1446658   0.1782435
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0865826   -0.0183705   0.1807193
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0142575   -0.4333092   0.2822775
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0108987   -0.0094067   0.0307956
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0596907    0.0269928   0.0912897
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0677083   -0.2767215   0.1070871
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0385533   -0.3274320   0.1874590
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0880522   -0.3223096   0.1047046
24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1359223    0.0338147   0.2272391
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0314239   -0.0266742   0.0862343
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0271739   -0.3937793   0.2430034
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0062807   -0.0114119   0.0236638
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0229289    0.0009776   0.0443980
