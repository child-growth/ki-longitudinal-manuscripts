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

agecat      studyid                    country                        exclfeed6    swasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       29     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      157     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        8     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        1      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       56      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0      57
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        1      37
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0      37
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       36      37
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        2      23
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       20      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1      23
Birth       ki0047075b-MAL-ED          PERU                           1                  0        2     208
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     208
Birth       ki0047075b-MAL-ED          PERU                           0                  0      206     208
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       90      90
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8209   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      172   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2325   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       38   10744
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1780    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       19    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      415    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       10    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       33     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      196     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        2     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      197     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0        2     218
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      211     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        5     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        5     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      220     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     225
6 months    ki0047075b-MAL-ED          PERU                           1                  0        5     271
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
6 months    ki0047075b-MAL-ED          PERU                           0                  0      266     271
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      230     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      232     232
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7497    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      113    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2247    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1       25    9882
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3296    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       19    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      949    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       11    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       31     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      174     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      157     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        2     209
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      205     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        5     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      214     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     219
24 months   ki0047075b-MAL-ED          PERU                           1                  0        3     201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     201
24 months   ki0047075b-MAL-ED          PERU                           0                  0      196     201
24 months   ki0047075b-MAL-ED          PERU                           0                  1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      216     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      202     202
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3742    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      157    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1130    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       38    5067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3186    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       80    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      892    4184
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
![](/tmp/273c13d5-c33e-4a1c-b0cf-60c2d22a3da1/670627c4-6a3e-401e-a5ad-b7c217b941d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/273c13d5-c33e-4a1c-b0cf-60c2d22a3da1/670627c4-6a3e-401e-a5ad-b7c217b941d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/273c13d5-c33e-4a1c-b0cf-60c2d22a3da1/670627c4-6a3e-401e-a5ad-b7c217b941d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/273c13d5-c33e-4a1c-b0cf-60c2d22a3da1/670627c4-6a3e-401e-a5ad-b7c217b941d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0898841   0.0642357   0.1155324
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0638461   0.0478893   0.0798029
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0205215   0.0172732   0.0237697
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0161190   0.0094983   0.0227397
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0106514   0.0057189   0.0155838
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0230435   0.0040288   0.0420582
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0153584   0.0053992   0.0253176
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0173979   0.0103480   0.0244478
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0148364   0.0119302   0.0177425
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0110430   0.0059597   0.0161264
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0057537   0.0020501   0.0094573
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0116630   0.0055757   0.0177502
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0097276   0.0012399   0.0182153
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0220000   0.0129056   0.0310944
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0169014   0.0034782   0.0303247
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0789474   0.0293943   0.1285004
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0402758   0.0321117   0.0484399
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0326125   0.0225964   0.0426285
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0251344   0.0186599   0.0316090
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0276664   0.0167725   0.0385604


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
Birth       ki1101329-Keneba      GAMBIA       0                    1                 0.7103163   0.4912741    1.027022
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7854689   0.5046015    1.222670
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.1634317   0.8380292    5.585052
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.1327954   0.5273112    2.433526
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7443234   0.4497082    1.231948
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0270413   0.8810524    4.663623
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 2.2616000   0.8611947    5.939231
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 4.6710523   1.6973880   12.854297
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8097286   0.5591506    1.172601
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1007376   0.6847362    1.769475


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0175404   -0.0373049   0.0022240
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0009757   -0.0025928   0.0006414
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0023882   -0.0018225   0.0065989
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0014131   -0.0070414   0.0098676
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0008716   -0.0022293   0.0004861
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0012638   -0.0003231   0.0028508
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0081059   -0.0001158   0.0163277
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0150815    0.0023717   0.0277913
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0017915   -0.0047952   0.0012122
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0002002   -0.0026854   0.0030857


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.2424600   -0.5453102   0.0010375
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0499178   -0.1367423   0.0302751
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1831508   -0.1619515   0.4257569
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0842577   -0.5865784   0.4714513
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0624119   -0.1643679   0.0306164
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1800985   -0.1120980   0.3955223
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.4545324   -0.1981385   0.7516690
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.4715493    0.0254393   0.7134502
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0465513   -0.1251685   0.0265728
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0079007   -0.1129894   0.1156600
