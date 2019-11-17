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

agecat      studyid                    country                        exclfeed6    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       25     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        4     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      135     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       30     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0        1      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0       54      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        2      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        1      37
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        0      37
Birth       ki0047075b-MAL-ED          INDIA                          0                 0       31      37
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        5      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        2      23
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        0      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       20      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        1      23
Birth       ki0047075b-MAL-ED          PERU                           1                 0        2     208
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     208
Birth       ki0047075b-MAL-ED          PERU                           0                 0      201     208
Birth       ki0047075b-MAL-ED          PERU                           0                 1        5     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        0      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       81      90
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7428   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      953   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2121   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      242   10744
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1623    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1      176    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      378    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1       47    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       31     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        2     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      192     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        6     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      196     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 0        2     218
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     218
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      200     218
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       16     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0        5     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      216     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        4     225
6 months    ki0047075b-MAL-ED          PERU                           1                 0        5     271
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     271
6 months    ki0047075b-MAL-ED          PERU                           0                 0      266     271
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      226     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        7     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      231     232
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     6948    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      662    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2080    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      192    9882
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     3152    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      163    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0      882    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       78    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       27     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        4     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      158     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       16     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      155     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        3     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 0        2     209
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     209
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      183     209
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       24     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        5     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      209     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        5     219
24 months   ki0047075b-MAL-ED          PERU                           1                 0        3     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     201
24 months   ki0047075b-MAL-ED          PERU                           0                 0      194     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1        4     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      215     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      198     202
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     3039    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      860    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0      916    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      252    5067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2653    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      613    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      714    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      204    4184


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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/dcfd7d07-adfe-4dfc-ade5-1157c243d6fb/30f5f6f4-c948-4a5b-98ad-78cefad588bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dcfd7d07-adfe-4dfc-ade5-1157c243d6fb/30f5f6f4-c948-4a5b-98ad-78cefad588bd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dcfd7d07-adfe-4dfc-ade5-1157c243d6fb/30f5f6f4-c948-4a5b-98ad-78cefad588bd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dcfd7d07-adfe-4dfc-ade5-1157c243d6fb/30f5f6f4-c948-4a5b-98ad-78cefad588bd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2378733   0.1695166   0.3062300
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2114311   0.1704200   0.2524423
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.2404459   0.2169238   0.2639680
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.2526229   0.2287374   0.2765084
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2080025   0.1676689   0.2483360
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1628879   0.0999066   0.2258691
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1112906   0.1048937   0.1176876
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1108936   0.1041450   0.1176423
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0981637   0.0811415   0.1151859
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1091363   0.0723839   0.1458886
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0420002   0.0259863   0.0580140
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0679834   0.0544036   0.0815633
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0894964   0.0617119   0.1172809
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1012411   0.0518332   0.1506489
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0870620   0.0797773   0.0943467
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0843708   0.0721395   0.0966021
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0502011   0.0399996   0.0604026
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0764646   0.0584473   0.0944820
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0786070   0.0344852   0.1227287
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1174037   0.0873411   0.1474663
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0963388   0.0706017   0.1220759
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1104201   0.0911397   0.1297006
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1729738   0.1337030   0.2122445
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2723849   0.1921716   0.3525982
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2198060   0.2041768   0.2354352
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2167542   0.1879119   0.2455965
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1896067   0.1741035   0.2051100
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2190380   0.1840991   0.2539768


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.2494348   0.2261459   0.2727237
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1954023   0.1613549   0.2294497
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1112249   0.1049045   0.1175452
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1002698   0.0846581   0.1158815
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0597484   0.0491105   0.0703864
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0914077   0.0672348   0.1155805
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0864198   0.0802086   0.0926309
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0563743   0.0475411   0.0652074
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1056803   0.0901896   0.1211711
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1918977   0.1562203   0.2275751
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2194592   0.2057462   0.2331723
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1952677   0.1809764   0.2095589


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.8888393   0.6299608   1.254102
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.0506432   1.0065928   1.096621
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7831055   0.5078918   1.207451
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9964326   0.9660388   1.027783
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1117783   0.7641480   1.617554
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.6186462   1.0526569   2.488955
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1312303   0.6340422   2.018292
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9690882   0.8182095   1.147789
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5231677   1.1164644   2.078024
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.4935536   0.8056443   2.768842
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.1461651   0.8339820   1.575207
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.5747181   1.0856239   2.284159
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9861161   0.8481154   1.146572
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1552226   0.9678706   1.378840


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0179485   -0.0745730   0.0386760
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0089889    0.0018224   0.0161554
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0126002   -0.0315567   0.0063564
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000658   -0.0008139   0.0006824
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0021061   -0.0055673   0.0097795
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0177482    0.0032033   0.0322932
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0019113   -0.0128092   0.0166317
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0006423   -0.0039500   0.0026655
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0061732    0.0014372   0.0109092
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0284742   -0.0125100   0.0694585
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0093415   -0.0118452   0.0305282
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0189239   -0.0030615   0.0409092
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003468   -0.0078436   0.0071500
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0056610   -0.0022942   0.0136161


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0816119   -0.3717969   0.1471884
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0360370    0.0070913   0.0641389
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0644832   -0.1657346   0.0279740
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0005913   -0.0073393   0.0061114
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0210042   -0.0584793   0.0945192
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.2970496    0.0145868   0.4985461
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0209093   -0.1539794   0.1692931
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0074319   -0.0463995   0.0300846
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1095039    0.0186996   0.1919056
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2659125   -0.2262456   0.5605411
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0883943   -0.1357097   0.2682769
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0986145   -0.0223736   0.2052849
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0015801   -0.0363297   0.0320044
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0289908   -0.0124085   0.0686971
