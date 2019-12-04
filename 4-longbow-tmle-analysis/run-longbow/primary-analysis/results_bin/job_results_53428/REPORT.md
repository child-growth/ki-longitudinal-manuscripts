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

agecat      studyid                    country                        exclfeed6    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       26     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        5     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      143     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       31     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        0      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        2      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       51      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        7      60
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        0      39
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        1      39
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       31      39
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        7      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        2      24
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       21      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1      24
Birth       ki0047075b-MAL-ED          PERU                           1                  0        2     213
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     213
Birth       ki0047075b-MAL-ED          PERU                           0                  0      185     213
Birth       ki0047075b-MAL-ED          PERU                           0                  1       26     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       83      91
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7003   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3449   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1976   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      995   13423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1476    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      622    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      357    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1      177    2632
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       27     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        6     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      163     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       35     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      191     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        6     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0        1     218
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      176     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       40     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        5     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      208     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1       12     225
6 months    ki0047075b-MAL-ED          PERU                           1                  0        3     271
6 months    ki0047075b-MAL-ED          PERU                           1                  1        2     271
6 months    ki0047075b-MAL-ED          PERU                           0                  0      208     271
6 months    ki0047075b-MAL-ED          PERU                           0                  1       58     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      190     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       43     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      174     232
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     5758    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1870    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1685    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      588    9901
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2534    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      782    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      665    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      291    4272
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       16     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       15     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       93     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       81     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      151     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        7     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        0     209
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      120     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       87     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        5     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      165     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       49     219
24 months   ki0047075b-MAL-ED          PERU                           1                  0        0     201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        3     201
24 months   ki0047075b-MAL-ED          PERU                           0                  0      127     201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       71     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      144     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       72     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       54     202
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2002    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1914    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      582    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      590    5088
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1984    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1296    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      514    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      405    4199


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/e5a0e9b1-34ea-4290-be30-28bd1dac402e/6bbf2d43-837a-47e5-ac84-bcb3d15fdbe5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e5a0e9b1-34ea-4290-be30-28bd1dac402e/6bbf2d43-837a-47e5-ac84-bcb3d15fdbe5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e5a0e9b1-34ea-4290-be30-28bd1dac402e/6bbf2d43-837a-47e5-ac84-bcb3d15fdbe5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e5a0e9b1-34ea-4290-be30-28bd1dac402e/6bbf2d43-837a-47e5-ac84-bcb3d15fdbe5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1612903   0.0315010   0.2910797
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1781609   0.1211662   0.2351557
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2572254   0.2236819   0.2907690
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3333333   0.0564891   0.6101775
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0662390   0.0266129   0.1058651
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0989470   0.0689046   0.1289894
Birth       ki1101329-Keneba          GAMBIA       1                    NA                0.0523232   0.0325826   0.0720639
Birth       ki1101329-Keneba          GAMBIA       0                    NA                0.0579527   0.0428458   0.0730595
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1628580   0.1274533   0.1982627
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1823215   0.1197977   0.2448454
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.3306967   0.3214440   0.3399495
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3325658   0.3227836   0.3423480
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3040265   0.2825062   0.3255467
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2999581   0.2755352   0.3243810
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1818182   0.0499388   0.3136975
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1767677   0.1235176   0.2300177
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1243583   0.0690259   0.1796907
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1688841   0.1347439   0.2030244
6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1403727   0.1129333   0.1678121
6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1505556   0.1315678   0.1695434
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.2003566   0.1623256   0.2383875
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2587871   0.1890929   0.3284812
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.3660720   0.2233857   0.5087583
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3546188   0.2918577   0.4173799
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2453924   0.2344384   0.2563464
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2580292   0.2402554   0.2758031
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2411808   0.2251909   0.2571707
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2877774   0.2558324   0.3197224
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5068567   0.3276390   0.6860744
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4753858   0.4015484   0.5492232
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3533267   0.2761307   0.4305228
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3218769   0.2783500   0.3654038
24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2966881   0.2582549   0.3351213
24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.3581182   0.3287757   0.3874608
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4440590   0.3927987   0.4953193
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4874778   0.3995103   0.5754453
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.4888933   0.3120990   0.6656876
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.4830878   0.4038551   0.5623205
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4874312   0.4687202   0.5061421
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.5074507   0.4757504   0.5391510
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3990562   0.3794147   0.4186976
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4236727   0.3860765   0.4612689


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1756098   0.1233973   0.2278222
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2609890   0.2179233   0.3040547
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                0.0563079   0.0442416   0.0683742
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1669627   0.1361293   0.1977961
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3310735   0.3218922   0.3402548
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3035714   0.2824097   0.3247332
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1774892   0.1281103   0.2268680
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.1477987   0.1318701   0.1637274
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2157221   0.1812209   0.2502233
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2482578   0.2382387   0.2582768
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2511704   0.2362353   0.2661055
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4682927   0.3998183   0.5367670
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
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.1045977   0.4646502   2.625924
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2958801   0.6113712   2.746785
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.4937881   0.7655826   2.914646
Birth       ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                 1.1075893   0.7004955   1.751266
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1195123   0.7458156   1.680453
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0056519   0.9923005   1.019183
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.9866184   0.9351284   1.040944
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9722222   0.4432703   2.132369
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.0057497   0.4866253   2.078668
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.3580452   0.8325288   2.215283
6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 1.0725419   0.8536326   1.347589
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.2916325   0.9401356   1.774547
6 months    ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                 0.9687132   0.6310130   1.487141
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0514963   0.9755667   1.133336
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1932018   1.0558408   1.348433
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9379097   0.6394716   1.375627
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9109895   0.7069028   1.173997
24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.2070529   1.0387075   1.402682
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0977770   0.8901044   1.353902
24 months   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                 0.9881253   0.6642697   1.469872
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0410716   0.9719874   1.115066
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0616870   0.9661824   1.166632


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0143194   -0.1059999   0.1346388
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0037636   -0.0100156   0.0175428
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0228148   -0.0121740   0.0578036
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0039847   -0.0122014   0.0201707
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0041047   -0.0144457   0.0226550
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0003768   -0.0006034   0.0013570
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0004550   -0.0036358   0.0027257
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0043290   -0.1262357   0.1175777
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0000862   -0.0108674   0.0110398
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0345821   -0.0155352   0.0846995
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0074260   -0.0152293   0.0300814
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0153656   -0.0043912   0.0351224
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0094544   -0.1396902   0.1207815
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0028653   -0.0015098   0.0072404
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0099896    0.0024167   0.0175624
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0385640   -0.2038039   0.1266758
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0246070   -0.0915633   0.0423492
24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0403906    0.0090997   0.0716814
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0112601   -0.0128295   0.0353497
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0021208   -0.1630664   0.1588249
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0047072   -0.0032709   0.0126853
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0060403   -0.0024835   0.0145641


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0815412   -0.9360258   0.5642793
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0144204   -0.0378960   0.0640998
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2561913   -0.2555068   0.5593402
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0707658   -0.2657133   0.3177947
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0245845   -0.0930153   0.1295315
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0011381   -0.0018278   0.0040953
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0014990   -0.0120282   0.0089208
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0243902   -1.0028399   0.4760563
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0002744   -0.0352245   0.0345560
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2175793   -0.1683683   0.4760366
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0502443   -0.1160924   0.1917910
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0712285   -0.0245660   0.1580664
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0265112   -0.4650877   0.2807767
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0115417   -0.0062484   0.0290172
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0397721    0.0093151   0.0692928
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0823503   -0.4997099   0.2188609
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0748571   -0.2993355   0.1108394
24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1198253    0.0219346   0.2079186
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0247302   -0.0297170   0.0762984
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0043568   -0.3959081   0.2773646
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0095648   -0.0067781   0.0256425
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0149107   -0.0063142   0.0356880
