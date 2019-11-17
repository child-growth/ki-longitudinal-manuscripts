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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        predexfd6    swasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       68     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      118     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        8     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        5      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       52      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0      57
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        4      37
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0      37
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       33      37
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        3      23
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       19      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1      23
Birth       ki0047075b-MAL-ED          PERU                           1                  0       72     208
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     208
Birth       ki0047075b-MAL-ED          PERU                           0                  0      136     208
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       89      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0      90
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      105     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     105
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       7
Birth       ki1000108-IRC              INDIA                          1                  0        0      12
Birth       ki1000108-IRC              INDIA                          1                  1        0      12
Birth       ki1000108-IRC              INDIA                          0                  0       12      12
Birth       ki1000108-IRC              INDIA                          0                  1        0      12
Birth       ki1000109-EE               PAKISTAN                       1                  0       24      28
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      28
Birth       ki1000109-EE               PAKISTAN                       0                  0        3      28
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      28
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0      303     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        7     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0       15     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0      153     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0      366     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1       11     532
Birth       ki1101329-Keneba           GAMBIA                         1                  0      411    1327
Birth       ki1101329-Keneba           GAMBIA                         1                  1       39    1327
Birth       ki1101329-Keneba           GAMBIA                         0                  0      820    1327
Birth       ki1101329-Keneba           GAMBIA                         0                  1       57    1327
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      371     522
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       19     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0      129     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1        3     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8220   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      172   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2314   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       38   10744
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1783    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       19    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      412    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       10    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       83     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      146     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       11     218
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      202     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        5     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       12     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      213     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     225
6 months    ki0047075b-MAL-ED          PERU                           1                  0       92     271
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
6 months    ki0047075b-MAL-ED          PERU                           0                  0      179     271
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      227     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      231     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     232
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6 months    ki1000108-IRC              INDIA                          1                  0        0      14
6 months    ki1000108-IRC              INDIA                          1                  1        0      14
6 months    ki1000108-IRC              INDIA                          0                  0       14      14
6 months    ki1000108-IRC              INDIA                          0                  1        0      14
6 months    ki1000109-EE               PAKISTAN                       1                  0       42      48
6 months    ki1000109-EE               PAKISTAN                       1                  1        1      48
6 months    ki1000109-EE               PAKISTAN                       0                  0        5      48
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      48
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      360     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       16     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       18     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        1     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      156     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       12     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      141     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        0     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      457     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        5     603
6 months    ki1101329-Keneba           GAMBIA                         1                  0      577    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  1        9    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1299    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  1       23    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      399     547
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        7     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      141     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0     547
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7512    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      113    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2232    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1       25    9882
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3308    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       19    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      937    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       11    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       76     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      129     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       24     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      144     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       11     209
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      196     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       12     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      207     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     219
24 months   ki0047075b-MAL-ED          PERU                           1                  0       67     201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     201
24 months   ki0047075b-MAL-ED          PERU                           0                  0      132     201
24 months   ki0047075b-MAL-ED          PERU                           0                  1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      213     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      201     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     202
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
24 months   ki1000108-IRC              INDIA                          1                  0        0      14
24 months   ki1000108-IRC              INDIA                          1                  1        0      14
24 months   ki1000108-IRC              INDIA                          0                  0       14      14
24 months   ki1000108-IRC              INDIA                          0                  1        0      14
24 months   ki1000109-EE               PAKISTAN                       1                  0       20      23
24 months   ki1000109-EE               PAKISTAN                       1                  1        0      23
24 months   ki1000109-EE               PAKISTAN                       0                  0        3      23
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      23
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      135     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      435     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        7     579
24 months   ki1101329-Keneba           GAMBIA                         1                  0      509    1514
24 months   ki1101329-Keneba           GAMBIA                         1                  1        5    1514
24 months   ki1101329-Keneba           GAMBIA                         0                  0      978    1514
24 months   ki1101329-Keneba           GAMBIA                         0                  1       22    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      349     469
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        6     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      105     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1        9     469
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       34     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      150     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        0     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3752    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      157    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1120    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       38    5067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3198    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       80    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      880    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       26    4184


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
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
![](/tmp/3f0b8bce-f627-410d-be86-c12ff6e4521b/618e2152-cc3a-4298-8a91-93d1168383bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f0b8bce-f627-410d-be86-c12ff6e4521b/618e2152-cc3a-4298-8a91-93d1168383bc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f0b8bce-f627-410d-be86-c12ff6e4521b/618e2152-cc3a-4298-8a91-93d1168383bc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f0b8bce-f627-410d-be86-c12ff6e4521b/618e2152-cc3a-4298-8a91-93d1168383bc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0894312   0.0642235   0.1146389
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0639859   0.0479239   0.0800479
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0204886   0.0172408   0.0237364
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0160914   0.0094763   0.0227065
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0105878   0.0056684   0.0155072
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0234414   0.0036614   0.0432213
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0153584   0.0053992   0.0253176
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0173979   0.0103480   0.0244478
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0148294   0.0119092   0.0177496
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0110187   0.0058999   0.0161374
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0057398   0.0020494   0.0094301
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0118470   0.0056734   0.0180206
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0097276   0.0012399   0.0182153
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0220000   0.0129056   0.0310944
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0169014   0.0034782   0.0303247
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0789474   0.0293943   0.1285004
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0401911   0.0320281   0.0483541
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0327580   0.0226160   0.0428999
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0248828   0.0184932   0.0312724
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0277206   0.0166248   0.0388164


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0723436   0.0584002   0.0862871
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0195458   0.0166489   0.0224427
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0130396   0.0073461   0.0187330
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0167715   0.0110080   0.0225350
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0139648   0.0114567   0.0164729
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0070175   0.0038738   0.0101612
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0178336   0.0111649   0.0245022
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0319829   0.0160416   0.0479243
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0384843   0.0318086   0.0451600
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0253346   0.0198022   0.0308670


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 0.7154763   0.4959504    1.032172
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7853822   0.5043808    1.222936
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.2139945   0.8429153    5.815260
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.1327954   0.5273112    2.433526
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7430297   0.4470473    1.234977
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0640185   0.8979176    4.744503
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 2.2616000   0.8611947    5.939231
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 4.6710523   1.6973880   12.854297
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8150552   0.5613623    1.183398
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1140473   0.6890949    1.801060


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0170876   -0.0364428   0.0022676
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0009428   -0.0025583   0.0006727
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0024517   -0.0017579   0.0066614
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0014131   -0.0070414   0.0098676
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0008646   -0.0022354   0.0005061
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0012778   -0.0003027   0.0028583
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0081059   -0.0001158   0.0163277
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0150815    0.0023717   0.0277913
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0017068   -0.0047080   0.0012944
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0004518   -0.0023933   0.0032969


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.2362003   -0.5327558   0.0029780
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0482357   -0.1349434   0.0318476
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1880235   -0.1560264   0.4296793
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0842577   -0.5865784   0.4714513
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0619136   -0.1648072   0.0318908
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1820850   -0.1088525   0.3966872
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.4545324   -0.1981385   0.7516690
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.4715493    0.0254393   0.7134502
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0443502   -0.1229973   0.0287889
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0178338   -0.1015088   0.1242462
