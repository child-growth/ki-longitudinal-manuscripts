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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed6    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       31     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      169     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        5     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        1      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        1      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       56      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        2      60
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        1      39
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0      39
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       36      39
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        2      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        2      24
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       21      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        1      24
Birth       ki0047075b-MAL-ED          PERU                           1                   0        2     213
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0     213
Birth       ki0047075b-MAL-ED          PERU                           0                   0      207     213
Birth       ki0047075b-MAL-ED          PERU                           0                   1        4     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       90      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      105     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        8     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       7
Birth       ki1000108-IRC              INDIA                          1                   0        0      14
Birth       ki1000108-IRC              INDIA                          1                   1        0      14
Birth       ki1000108-IRC              INDIA                          0                   0       14      14
Birth       ki1000108-IRC              INDIA                          0                   1        0      14
Birth       ki1000109-EE               PAKISTAN                       1                   0       30      42
Birth       ki1000109-EE               PAKISTAN                       1                   1        8      42
Birth       ki1000109-EE               PAKISTAN                       0                   0        4      42
Birth       ki1000109-EE               PAKISTAN                       0                   1        0      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   0      323     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   1       23     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   0       15     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   1        3     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   0      158     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   1        1     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   0      377     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   1        3     539
Birth       ki1101329-Keneba           GAMBIA                         1                   0      475    1403
Birth       ki1101329-Keneba           GAMBIA                         1                   1       10    1403
Birth       ki1101329-Keneba           GAMBIA                         0                   0      899    1403
Birth       ki1101329-Keneba           GAMBIA                         0                   1       19    1403
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      404     563
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1       15     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0      138     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1        6     563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9303   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1149   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2637   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      334   13423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1944    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1      154    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      466    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       68    2632
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       32     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        1     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      192     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        6     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      197     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        1     218
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        1     218
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      208     218
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        8     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        5     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      219     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        1     225
6 months    ki0047075b-MAL-ED          PERU                           1                   0        5     271
6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     271
6 months    ki0047075b-MAL-ED          PERU                           0                   0      256     271
6 months    ki0047075b-MAL-ED          PERU                           0                   1       10     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      229     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        4     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      218     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14     232
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       17      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      19
6 months    ki1000108-IRC              INDIA                          1                   0        0      14
6 months    ki1000108-IRC              INDIA                          1                   1        0      14
6 months    ki1000108-IRC              INDIA                          0                   0       13      14
6 months    ki1000108-IRC              INDIA                          0                   1        1      14
6 months    ki1000109-EE               PAKISTAN                       1                   0       31      48
6 months    ki1000109-EE               PAKISTAN                       1                   1       12      48
6 months    ki1000109-EE               PAKISTAN                       0                   0        5      48
6 months    ki1000109-EE               PAKISTAN                       0                   1        0      48
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      342     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       37     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0       16     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1        3     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       28     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      139     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        2     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      451     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       12     604
6 months    ki1101329-Keneba           GAMBIA                         1                   0      564    1908
6 months    ki1101329-Keneba           GAMBIA                         1                   1       22    1908
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1280    1908
6 months    ki1101329-Keneba           GAMBIA                         0                   1       42    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      394     547
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       12     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      132     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        9     547
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        3     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     7168    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      460    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2124    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      149    9901
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3173    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      143    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      865    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       91    4272
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       26     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        5     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      153     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       21     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      157     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        1     209
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        1     209
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      181     209
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       26     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        5     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      207     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        7     219
24 months   ki0047075b-MAL-ED          PERU                           1                   0        3     201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     201
24 months   ki0047075b-MAL-ED          PERU                           0                   0      183     201
24 months   ki0047075b-MAL-ED          PERU                           0                   1       15     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      192     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       24     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      134     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       68     202
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       14      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        5      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      19
24 months   ki1000108-IRC              INDIA                          1                   0        0      14
24 months   ki1000108-IRC              INDIA                          1                   1        0      14
24 months   ki1000108-IRC              INDIA                          0                   0       13      14
24 months   ki1000108-IRC              INDIA                          0                   1        1      14
24 months   ki1000109-EE               PAKISTAN                       1                   0       12      23
24 months   ki1000109-EE               PAKISTAN                       1                   1        8      23
24 months   ki1000109-EE               PAKISTAN                       0                   0        3      23
24 months   ki1000109-EE               PAKISTAN                       0                   1        0      23
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      125     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      401     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       40     578
24 months   ki1101329-Keneba           GAMBIA                         1                   0      478    1513
24 months   ki1101329-Keneba           GAMBIA                         1                   1       37    1513
24 months   ki1101329-Keneba           GAMBIA                         0                   0      907    1513
24 months   ki1101329-Keneba           GAMBIA                         0                   1       91    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      320     470
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       36     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       98     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       16     470
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       20     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     3319    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      597    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1001    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      171    5088
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2999    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      281    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      800    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      119    4199


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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/2795caf3-61fb-439d-bd2b-a1cbb166ab0e/31db9949-01fe-4fd7-bdfc-f91d7a7da02c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2795caf3-61fb-439d-bd2b-a1cbb166ab0e/31db9949-01fe-4fd7-bdfc-f91d7a7da02c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2795caf3-61fb-439d-bd2b-a1cbb166ab0e/31db9949-01fe-4fd7-bdfc-f91d7a7da02c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2795caf3-61fb-439d-bd2b-a1cbb166ab0e/31db9949-01fe-4fd7-bdfc-f91d7a7da02c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0206186   0.0079672   0.0332699
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0206972   0.0114843   0.0299101
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0357995   0.0179942   0.0536048
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0416667   0.0089999   0.0743334
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1099311   0.1032640   0.1165982
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1124201   0.1010127   0.1238275
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0734032   0.0598878   0.0869187
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1273408   0.0970060   0.1576756
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0375427   0.0221481   0.0529372
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0317700   0.0223132   0.0412268
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0295567   0.0130676   0.0460457
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0638298   0.0234443   0.1042152
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0603041   0.0545655   0.0660428
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0655521   0.0544280   0.0766763
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0431242   0.0358930   0.0503555
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0951883   0.0766795   0.1136970
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1612903   0.0315010   0.2910797
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1206897   0.0721673   0.1692120
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0875912   0.0402119   0.1349706
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0907029   0.0638762   0.1175297
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0718447   0.0495349   0.0941545
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0911824   0.0733167   0.1090481
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1011236   0.0697718   0.1324754
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1403509   0.0765207   0.2041811
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1524515   0.1397026   0.1652004
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1459044   0.1182377   0.1735712
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0856707   0.0742718   0.0970696
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1294886   0.1075557   0.1514215


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0206700   0.0132225   0.0281175
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0373002   0.0216334   0.0529670
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1104820   0.1047181   0.1162459
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0843465   0.0720577   0.0966353
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0335430   0.0254620   0.0416240
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0383912   0.0222749   0.0545076
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0615089   0.0563485   0.0666694
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0547753   0.0477475   0.0618030
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1268293   0.0811633   0.1724952
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0846001   0.0705732   0.0986271
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1106383   0.0822491   0.1390275
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1509434   0.1390224   0.1628644
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0952608   0.0849096   0.1056119


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.0038126   0.4703681   2.142237
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1638889   0.4599272   2.945330
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0226410   0.9084573   1.151176
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7348120   1.2817938   2.347938
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.8462385   0.5098404   1.404596
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.1595745   0.9290246   5.020063
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0870254   0.8966421   1.317833
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.2073030   1.7102459   2.848822
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7482759   0.3043666   1.839613
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.0355253   0.5590115   1.918230
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2691599   0.8791319   1.832224
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3879142   0.8004256   2.406602
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9570549   0.7804411   1.173636
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5114681   1.2262566   1.863016


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0000514   -0.0101888   0.0102917
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0015007   -0.0080175   0.0110188
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0005509   -0.0023775   0.0034793
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0109433    0.0042057   0.0176808
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0039997   -0.0165185   0.0085191
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0088346   -0.0024799   0.0201491
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0012048   -0.0016384   0.0040480
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0116510    0.0072467   0.0160554
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0344611   -0.1520875   0.0831654
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0023742   -0.0391677   0.0439160
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0127555   -0.0061031   0.0316141
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0095147   -0.0078013   0.0268307
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0015081   -0.0084058   0.0053897
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0095900    0.0043222   0.0148579


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0024884   -0.6391187   0.3929486
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0402318   -0.2514084   0.2639055
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0049863   -0.0218982   0.0311635
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1297418    0.0453525   0.2066711
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.1192406   -0.5607925   0.1973952
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2301196   -0.1068011   0.4644785
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0195873   -0.0276696   0.0646712
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.2127061    0.1310180   0.2867150
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2717122   -1.6302666   0.3851377
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0263897   -0.5643707   0.3940585
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1507737   -0.1025949   0.3459199
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0859983   -0.0832793   0.2288239
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0099911   -0.0568816   0.0348191
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1006715    0.0430181   0.1548516
