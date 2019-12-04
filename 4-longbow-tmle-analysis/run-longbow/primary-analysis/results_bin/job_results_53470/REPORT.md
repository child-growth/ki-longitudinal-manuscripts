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




# Results Detail

## Results Plots
![](/tmp/5b10d514-dfdf-4de5-b25e-c3f45a409d1e/b8687557-7347-43b1-b78f-1a81d8b09878/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5b10d514-dfdf-4de5-b25e-c3f45a409d1e/b8687557-7347-43b1-b78f-1a81d8b09878/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5b10d514-dfdf-4de5-b25e-c3f45a409d1e/b8687557-7347-43b1-b78f-1a81d8b09878/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5b10d514-dfdf-4de5-b25e-c3f45a409d1e/b8687557-7347-43b1-b78f-1a81d8b09878/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0199772   0.0076503   0.0323041
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0208906   0.0115667   0.0302145
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0357995   0.0179942   0.0536048
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0416667   0.0089999   0.0743334
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1101982   0.1043875   0.1160089
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1113467   0.1051526   0.1175409
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0839224   0.0714247   0.0964200
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0856467   0.0718520   0.0994415
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0380648   0.0226693   0.0534603
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0315316   0.0220961   0.0409671
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0295567   0.0130676   0.0460457
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0638298   0.0234443   0.1042152
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0605522   0.0549243   0.0661801
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0650107   0.0547844   0.0752369
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0458094   0.0386529   0.0529659
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0794327   0.0619643   0.0969012
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1612903   0.0315010   0.2910797
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1206897   0.0721673   0.1692120
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0870333   0.0394315   0.1346351
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0906231   0.0637425   0.1175038
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0738220   0.0514825   0.0961615
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0905919   0.0727492   0.1084345
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1008023   0.0694726   0.1321320
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1408160   0.0767004   0.2049316
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1521115   0.1395603   0.1646627
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1471206   0.1204955   0.1737457
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0877472   0.0761912   0.0993032
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1187701   0.0973392   0.1402009


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
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.0457222   0.4883045   2.239453
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1638889   0.4599272   2.945330
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0104226   0.9830852   1.038520
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0205471   0.9241729   1.126971
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.8283674   0.5010473   1.369516
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.1595745   0.9290246   5.020063
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0736307   0.9023595   1.277410
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7339835   1.3343284   2.253343
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7482759   0.3043666   1.839613
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.0412463   0.5586693   1.940672
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2271671   0.8554886   1.760326
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3969527   0.8042319   2.426510
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9671892   0.7981363   1.172049
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3535481   1.0891735   1.682094


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0006928   -0.0093057   0.0106913
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0015007   -0.0080175   0.0110188
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0002838   -0.0003930   0.0009606
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0004241   -0.0013387   0.0021870
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0045218   -0.0170430   0.0079994
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0088346   -0.0024799   0.0201491
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0009568   -0.0015958   0.0035093
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0089659    0.0047416   0.0131902
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0344611   -0.1520875   0.0831654
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0029321   -0.0388744   0.0447386
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0107782   -0.0080952   0.0296516
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0098360   -0.0075361   0.0272082
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0011681   -0.0077186   0.0053823
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0075136    0.0021651   0.0128620


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0335173   -0.5940324   0.4140089
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0402318   -0.2514084   0.2639055
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0025690   -0.0035786   0.0086788
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0050284   -0.0161412   0.0257570
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.1348062   -0.5754426   0.1825883
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2301196   -0.1068011   0.4644785
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0155549   -0.0267770   0.0561414
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1636852    0.0860281   0.2347440
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2717122   -1.6302666   0.3851377
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0325913   -0.5638885   0.4015689
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1274014   -0.1253110   0.3233619
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0889027   -0.0809529   0.2320680
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0077389   -0.0522002   0.0348436
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0788737    0.0204704   0.1337948
