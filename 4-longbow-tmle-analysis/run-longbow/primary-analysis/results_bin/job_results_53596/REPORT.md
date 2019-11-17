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

agecat      studyid                    country                        predexfd6    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       58     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       10     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      102     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       24     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0        5      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0       50      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        2      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        4      37
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        0      37
Birth       ki0047075b-MAL-ED          INDIA                          0                 0       28      37
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        5      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        3      23
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        0      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       19      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        1      23
Birth       ki0047075b-MAL-ED          PERU                           1                 0       71     208
Birth       ki0047075b-MAL-ED          PERU                           1                 1        1     208
Birth       ki0047075b-MAL-ED          PERU                           0                 0      132     208
Birth       ki0047075b-MAL-ED          PERU                           0                 1        4     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        1      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       80      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        9      90
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      104     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     105
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0       7
Birth       ki1000108-IRC              INDIA                          1                 0        0      12
Birth       ki1000108-IRC              INDIA                          1                 1        0      12
Birth       ki1000108-IRC              INDIA                          0                 0        8      12
Birth       ki1000108-IRC              INDIA                          0                 1        4      12
Birth       ki1000109-EE               PAKISTAN                       1                 0       20      28
Birth       ki1000109-EE               PAKISTAN                       1                 1        4      28
Birth       ki1000109-EE               PAKISTAN                       0                 0        3      28
Birth       ki1000109-EE               PAKISTAN                       0                 1        1      28
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0      283     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1       27     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 0       14     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 1        1     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0      116     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1       39     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 0      299     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 1       78     532
Birth       ki1101329-Keneba           GAMBIA                         1                 0      351    1327
Birth       ki1101329-Keneba           GAMBIA                         1                 1       99    1327
Birth       ki1101329-Keneba           GAMBIA                         0                 0      645    1327
Birth       ki1101329-Keneba           GAMBIA                         0                 1      232    1327
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 0      309     522
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 1       81     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 0      111     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 1       21     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7437   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      955   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2112   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      240   10744
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1626    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1      176    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      375    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1       47    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       80     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      143     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       29     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       11     218
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     218
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      191     218
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       16     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       12     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      209     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        4     225
6 months    ki0047075b-MAL-ED          PERU                           1                 0       92     271
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     271
6 months    ki0047075b-MAL-ED          PERU                           0                 0      179     271
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      223     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        7     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      230     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     232
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       17      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        2      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      19
6 months    ki1000108-IRC              INDIA                          1                 0        0      14
6 months    ki1000108-IRC              INDIA                          1                 1        0      14
6 months    ki1000108-IRC              INDIA                          0                 0       11      14
6 months    ki1000108-IRC              INDIA                          0                 1        3      14
6 months    ki1000109-EE               PAKISTAN                       1                 0       39      48
6 months    ki1000109-EE               PAKISTAN                       1                 1        4      48
6 months    ki1000109-EE               PAKISTAN                       0                 0        5      48
6 months    ki1000109-EE               PAKISTAN                       0                 1        0      48
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 0      330     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 1       46     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 0       17     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 1        2     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0      127     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       41     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      138     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        3     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      440     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     603
6 months    ki1101329-Keneba           GAMBIA                         1                 0      562    1908
6 months    ki1101329-Keneba           GAMBIA                         1                 1       24    1908
6 months    ki1101329-Keneba           GAMBIA                         0                 0     1232    1908
6 months    ki1101329-Keneba           GAMBIA                         0                 1       90    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      370     547
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       36     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      127     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       14     547
6 months    ki1148112-LCNI-5           MALAWI                         1                 0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                 1        4     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     6962    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      663    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2066    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      191    9882
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     3164    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      163    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0      870    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       78    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       69     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        7     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      116     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       13     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       24     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      142     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       11     209
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     209
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      174     209
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       24     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       12     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      202     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        5     219
24 months   ki0047075b-MAL-ED          PERU                           1                 0       66     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1        2     201
24 months   ki0047075b-MAL-ED          PERU                           0                 0      131     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      212     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      197     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     202
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       18      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      19
24 months   ki1000108-IRC              INDIA                          1                 0        0      14
24 months   ki1000108-IRC              INDIA                          1                 1        0      14
24 months   ki1000108-IRC              INDIA                          0                 0       14      14
24 months   ki1000108-IRC              INDIA                          0                 1        0      14
24 months   ki1000109-EE               PAKISTAN                       1                 0       17      23
24 months   ki1000109-EE               PAKISTAN                       1                 1        3      23
24 months   ki1000109-EE               PAKISTAN                       0                 0        3      23
24 months   ki1000109-EE               PAKISTAN                       0                 1        0      23
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      127     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       10     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      390     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       52     579
24 months   ki1101329-Keneba           GAMBIA                         1                 0      463    1514
24 months   ki1101329-Keneba           GAMBIA                         1                 1       51    1514
24 months   ki1101329-Keneba           GAMBIA                         0                 0      891    1514
24 months   ki1101329-Keneba           GAMBIA                         0                 1      109    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      294     469
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       61     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0       85     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       29     469
24 months   ki1148112-LCNI-5           MALAWI                         1                 0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        1     184
24 months   ki1148112-LCNI-5           MALAWI                         0                 0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                 1        3     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     3046    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      863    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0      909    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      249    5067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2663    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      615    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      704    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      202    4184


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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/176899b7-4363-4f99-b431-3f42619ed4de/6d147bd3-7021-4a7d-bc50-24fcdaccbf1e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/176899b7-4363-4f99-b431-3f42619ed4de/6d147bd3-7021-4a7d-bc50-24fcdaccbf1e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/176899b7-4363-4f99-b431-3f42619ed4de/6d147bd3-7021-4a7d-bc50-24fcdaccbf1e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/176899b7-4363-4f99-b431-3f42619ed4de/6d147bd3-7021-4a7d-bc50-24fcdaccbf1e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1391429   0.0557074   0.2225783
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1969461   0.1257806   0.2681117
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2393283   0.1707237   0.3079329
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2122550   0.1710779   0.2534321
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.2402694   0.2165107   0.2640281
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.2526444   0.2287391   0.2765496
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2078694   0.1675447   0.2481941
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1609706   0.0984052   0.2235361
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1112530   0.1048729   0.1176330
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1113830   0.1046110   0.1181549
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0979727   0.0809975   0.1149480
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1101550   0.0729957   0.1473142
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0412843   0.0252111   0.0573574
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0676051   0.0540198   0.0811904
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0883851   0.0606815   0.1160886
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0983817   0.0483944   0.1483690
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0869971   0.0797288   0.0942655
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0844679   0.0721789   0.0967568
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0501667   0.0398340   0.0604993
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0774965   0.0593211   0.0956719
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0921053   0.0269330   0.1572776
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1007752   0.0487006   0.1528498
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0752775   0.0316859   0.1188691
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1177588   0.0876879   0.1478297
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0946841   0.0690069   0.1203614
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1110902   0.0917270   0.1304534
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1702755   0.1309616   0.2095894
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2425364   0.1617584   0.3233144
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2199442   0.2043554   0.2355329
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2170615   0.1884165   0.2457066
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1898314   0.1743536   0.2053092
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2115920   0.1766263   0.2465576


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1752577   0.1216204   0.2288951
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.2494348   0.2261459   0.2727237
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1954023   0.1613549   0.2294497
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1112249   0.1049045   0.1175452
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1002698   0.0846581   0.1158815
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0597484   0.0491105   0.0703864
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0914077   0.0672348   0.1155805
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0864198   0.0802086   0.0926309
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0563743   0.0475411   0.0652074
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0975610   0.0568436   0.1382784
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1056803   0.0901896   0.1211711
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1918977   0.1562203   0.2275751
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2194592   0.2057462   0.2331723
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1952677   0.1809764   0.2095589


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.4154239   0.7022387   2.852911
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.8868779   0.6287030   1.251071
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.0515046   1.0042335   1.101001
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7743833   0.5013140   1.196195
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0011685   0.9717304   1.031499
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1243428   0.7724051   1.636637
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.6375519   1.0568295   2.537378
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1131037   0.6118850   2.024890
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9709271   0.8194203   1.150447
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5447800   1.1314699   2.109067
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0941307   0.4555621   2.627791
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.5643295   0.8308602   2.945293
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.1732715   0.8512867   1.617042
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4243765   0.9504442   2.134632
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9868938   0.8497782   1.146134
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1146310   0.9302139   1.335609


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0361149   -0.0348003   0.1070301
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0194035   -0.0762056   0.0373986
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0091654    0.0014234   0.0169074
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0124671   -0.0313988   0.0064646
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000281   -0.0007765   0.0007204
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0022970   -0.0053756   0.0099696
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0184642    0.0038721   0.0330563
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0030226   -0.0117032   0.0177485
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0005774   -0.0038739   0.0027192
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0062076    0.0013979   0.0110173
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0054557   -0.0470421   0.0579535
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0318037   -0.0086400   0.0722473
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0109962   -0.0101556   0.0321480
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0216222   -0.0003229   0.0435673
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0004849   -0.0079265   0.0069566
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0054363   -0.0025130   0.0133856


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.2060672   -0.3168154   0.5213230
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0882278   -0.3791531   0.1413284
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0367447    0.0053774   0.0671228
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0638024   -0.1649110   0.0285304
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0002525   -0.0070042   0.0064539
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0229085   -0.0565445   0.0963867
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.3090319    0.0244141   0.5106152
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0330675   -0.1420225   0.1813135
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0066809   -0.0455208   0.0307161
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1101141    0.0174477   0.1940410
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0559211   -0.6686320   0.4658588
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2970052   -0.1923112   0.5855095
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1040514   -0.1201263   0.2833630
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1126756   -0.0083797   0.2191982
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0022095   -0.0366988   0.0311324
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0278402   -0.0135260   0.0675182
