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
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       18     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       91     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       24     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        3     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      134     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       14     175
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       10     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        5     190
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      149     190
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       26     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       21     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        2     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      131     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       16     170
Birth       ki0047075b-MAL-ED          PERU                           1                  0       95     256
Birth       ki0047075b-MAL-ED          PERU                           1                  1       11     256
Birth       ki0047075b-MAL-ED          PERU                           0                  0      132     256
Birth       ki0047075b-MAL-ED          PERU                           0                  1       18     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        2     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      188     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       20     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      102     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       16     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       7
Birth       ki1000108-IRC              INDIA                          1                  0        0      14
Birth       ki1000108-IRC              INDIA                          1                  1        0      14
Birth       ki1000108-IRC              INDIA                          0                  0       13      14
Birth       ki1000108-IRC              INDIA                          0                  1        1      14
Birth       ki1000109-EE               PAKISTAN                       1                  0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       2
Birth       ki1000109-EE               PAKISTAN                       0                  0        0       2
Birth       ki1000109-EE               PAKISTAN                       0                  1        1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0       42      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        6      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0      50
Birth       ki1101329-Keneba           GAMBIA                         1                  0      459    1401
Birth       ki1101329-Keneba           GAMBIA                         1                  1       25    1401
Birth       ki1101329-Keneba           GAMBIA                         0                  0      864    1401
Birth       ki1101329-Keneba           GAMBIA                         0                  1       53    1401
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10565   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     4531   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2475   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1511   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      439     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      180     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0       91     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       57     767
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      104     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       19     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       88     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       24     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       34     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      169     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        5     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       13     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        5     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      174     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       40     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       26     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        3     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      197     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        9     235
6 months    ki0047075b-MAL-ED          PERU                           1                  0       97     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1       16     269
6 months    ki0047075b-MAL-ED          PERU                           0                  0      114     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1       42     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      192     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       47     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      185     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       57     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        7      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6 months    ki1000108-IRC              INDIA                          1                  0        0      14
6 months    ki1000108-IRC              INDIA                          1                  1        0      14
6 months    ki1000108-IRC              INDIA                          0                  0       11      14
6 months    ki1000108-IRC              INDIA                          0                  1        3      14
6 months    ki1000109-EE               PAKISTAN                       1                  0       92     372
6 months    ki1000109-EE               PAKISTAN                       1                  1      126     372
6 months    ki1000109-EE               PAKISTAN                       0                  0       87     372
6 months    ki1000109-EE               PAKISTAN                       0                  1       67     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      260     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1      119     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       13     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       81     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      118     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       18     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      371     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       76     583
6 months    ki1101329-Keneba           GAMBIA                         1                  0      502    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  1       84    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1124    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  1      198    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      327     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       77     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      104     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       38     546
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1       80     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10155   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3068   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2343   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1116   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2540    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      792    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      635    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      292    4259
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       59     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       44     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      134     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        7     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       10     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      123     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       84     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       22     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        6     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      156     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       43     227
24 months   ki0047075b-MAL-ED          PERU                           1                  0       57     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1       27     198
24 months   ki0047075b-MAL-ED          PERU                           0                  0       70     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1       44     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      145     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       79     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       59     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      151     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       12      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
24 months   ki1000108-IRC              INDIA                          1                  0        0      14
24 months   ki1000108-IRC              INDIA                          1                  1        0      14
24 months   ki1000108-IRC              INDIA                          0                  0        5      14
24 months   ki1000108-IRC              INDIA                          0                  1        9      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       93     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       51     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      294     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      139     577
24 months   ki1101329-Keneba           GAMBIA                         1                  0      367    1513
24 months   ki1101329-Keneba           GAMBIA                         1                  1      148    1513
24 months   ki1101329-Keneba           GAMBIA                         0                  0      640    1513
24 months   ki1101329-Keneba           GAMBIA                         0                  1      358    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      202     480
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      158     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       61     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       59     480
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       17     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  1       75     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3426    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3251    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      924    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      941    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2012    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1277    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      496    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      389    4174


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/41e567b8-b5df-44eb-b702-f8866d9005f9/1bf7fc1b-14e9-47ff-8765-5ce533c74e96/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/41e567b8-b5df-44eb-b702-f8866d9005f9/1bf7fc1b-14e9-47ff-8765-5ce533c74e96/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/41e567b8-b5df-44eb-b702-f8866d9005f9/1bf7fc1b-14e9-47ff-8765-5ce533c74e96/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/41e567b8-b5df-44eb-b702-f8866d9005f9/1bf7fc1b-14e9-47ff-8765-5ce533c74e96/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1469206   0.0832200   0.2106212
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1939707   0.1207179   0.2672235
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                0.3333333   0.0941438   0.5725228
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                0.1485714   0.0957370   0.2014058
Birth       ki0047075b-MAL-ED         PERU         1                    NA                0.1114151   0.0472394   0.1755909
Birth       ki0047075b-MAL-ED         PERU         0                    NA                0.1140247   0.0628368   0.1652127
Birth       ki1101329-Keneba          GAMBIA       1                    NA                0.0475388   0.0284176   0.0666600
Birth       ki1101329-Keneba          GAMBIA       0                    NA                0.0602226   0.0451428   0.0753025
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.3164963   0.3088853   0.3241074
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3170384   0.3094312   0.3246456
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3105876   0.2732769   0.3478983
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3016965   0.2598098   0.3435831
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1495056   0.0856237   0.2133874
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2197934   0.1425126   0.2970741
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.2777778   0.0704135   0.4851421
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.1869159   0.1345715   0.2392603
6 months    ki0047075b-MAL-ED         PERU         1                    NA                0.1452576   0.0801614   0.2103538
6 months    ki0047075b-MAL-ED         PERU         0                    NA                0.2624530   0.1924649   0.3324411
6 months    ki1000109-EE              PAKISTAN     1                    NA                0.5776069   0.5139756   0.6412381
6 months    ki1000109-EE              PAKISTAN     0                    NA                0.4358239   0.3622543   0.5093935
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1194304   0.0615821   0.1772788
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1702094   0.1353836   0.2050351
6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1465835   0.1190748   0.1740922
6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1484501   0.1295836   0.1673166
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1910609   0.1526046   0.2295173
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2674546   0.1936807   0.3412286
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.3815317   0.2420183   0.5210452
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3557822   0.2930578   0.4185065
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2419271   0.2331759   0.2506783
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2827963   0.2680192   0.2975733
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2426915   0.2266238   0.2587592
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2986302   0.2656062   0.3316542
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4755835   0.3854552   0.5657118
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4608763   0.3659592   0.5557935
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.5882353   0.3537610   0.8227096
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.4057971   0.3387537   0.4728406
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.2142857   0.0619658   0.3666056
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.2160804   0.1587713   0.2733895
24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.3646397   0.2604148   0.4688645
24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.3658133   0.2776038   0.4540229
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3443778   0.2692361   0.4195195
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3258183   0.2825676   0.3690689
24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2920991   0.2538006   0.3303975
24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.3555390   0.3262891   0.3847889
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4394905   0.3881752   0.4908059
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4908454   0.3991161   0.5825747
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.5226848   0.3484733   0.6968963
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.4810611   0.4024102   0.5597121
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4925732   0.4782912   0.5068553
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4825016   0.4582433   0.5067599
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3914285   0.3718223   0.4110347
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4225608   0.3842821   0.4608395


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1688312   0.1204189   0.2172434
Birth       ki0047075b-MAL-ED         INDIA        NA                   NA                0.1631579   0.1104782   0.2158376
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                0.1132813   0.0743812   0.1521813
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                0.0556745   0.0436637   0.0676854
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3166335   0.3090239   0.3242430
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3089961   0.2722361   0.3457561
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1829787   0.1334386   0.2325189
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.1939655   0.1429760   0.2449551
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                0.2156134   0.1663773   0.2648495
6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.1477987   0.1318701   0.1637274
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2106227   0.1763897   0.2448557
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2508093   0.2426385   0.2589801
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2545198   0.2394884   0.2695513
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4641148   0.3963405   0.5318891
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.4196429   0.3548715   0.4844143
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2158590   0.1622206   0.2694975
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.3585859   0.2916158   0.4255559
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.3344349   0.3106543   0.3582155
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4520833   0.4075129   0.4966538
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4907516   0.4775997   0.5039035
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3991375   0.3806098   0.4176653


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.3202422   0.7431590   2.3454462
Birth       ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA        0                    1                 0.4457143   0.2001014   0.9928030
Birth       ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 1.0234221   0.4919821   2.1289247
Birth       ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                 1.2668102   0.7940588   2.0210192
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0017126   1.0008284   1.0025976
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.9713732   0.8906313   1.0594349
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.4701350   0.8499310   2.5429089
6 months    ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA        0                    1                 0.6728972   0.3031666   1.4935372
6 months    ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 1.8068108   1.0733929   3.0413518
6 months    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                 0.7545338   0.6227521   0.9142021
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.0057497   0.4866253   2.0786680
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.4251758   0.8437739   2.4071925
6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 1.0127344   0.8122323   1.2627310
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.3998394   0.9948619   1.9696706
6 months    ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                 0.9325101   0.6207935   1.4007478
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.1689319   1.1045689   1.2370453
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.2304933   1.0889268   1.3904642
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9690755   0.7415603   1.2663938
24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA        0                    1                 0.6898551   0.4480893   1.0620652
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 1.0083752   0.4721996   2.1533703
24 months   ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                 1.0032187   0.6945806   1.4490008
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9461071   0.7378696   1.2131121
24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.2171864   1.0462850   1.4160030
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1168509   0.8959334   1.3922419
24 months   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                 0.9203656   0.6352383   1.3334725
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9795531   0.9289509   1.0329118
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0795350   0.9805121   1.1885584


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0219106   -0.0245416    0.0683628
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                -0.1701754   -0.3959039    0.0555530
Birth       ki0047075b-MAL-ED         PERU         1                    NA                 0.0018661   -0.0494678    0.0532000
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0081357   -0.0075842    0.0238557
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0001371    0.0000693    0.0002050
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0015915   -0.0067074    0.0035243
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0334732   -0.0139267    0.0808730
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0838123   -0.2811128    0.1134882
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.0703558    0.0145110    0.1262005
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.0587897   -0.0979376   -0.0196418
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0000862   -0.0108674    0.0110398
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0418046   -0.0100930    0.0937022
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0012153   -0.0213425    0.0237730
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0195618   -0.0022092    0.0413328
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0249141   -0.1522652    0.1024370
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0088822    0.0055822    0.0121822
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0118284    0.0042734    0.0193833
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0114687   -0.0693321    0.0463947
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.1685924   -0.3940445    0.0568596
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0015733   -0.1410968    0.1442434
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0060538   -0.0862822    0.0741746
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0150884   -0.0785928    0.0484161
24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0423358    0.0111525    0.0735191
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0125928   -0.0135032    0.0386889
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0359123   -0.1932235    0.1213989
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0018216   -0.0073673    0.0037240
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0077090   -0.0007311    0.0161491


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.1297781   -0.1922413    0.3648215
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                -1.0430108   -3.0048977   -0.0421971
Birth       ki0047075b-MAL-ED         PERU         1                    NA                 0.0164732   -0.5591285    0.3795733
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.1461302   -0.1879658    0.3862671
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0004331    0.0002183    0.0006479
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0051506   -0.0218314    0.0112579
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.1829347   -0.1193982    0.4036119
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.4320988   -1.9096862    0.2951450
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.3263052    0.0207925    0.5364979
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.1133148   -0.1924591   -0.0394234
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0002744   -0.0352245    0.0345560
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2592772   -0.1436715    0.5202554
6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0082226   -0.1567669    0.1496796
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0928759   -0.0159468    0.1900422
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0698622   -0.4940448    0.2338884
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0354140    0.0221383    0.0485094
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0464733    0.0165028    0.0755304
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0247108   -0.1572519    0.0926502
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.4017522   -1.0618527    0.0470176
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0072886   -0.9318486    0.4898793
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0168825   -0.2671895    0.1839816
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0458210   -0.2575043    0.1302284
24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.1265891    0.0281852    0.2150288
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0278551   -0.0316435    0.0839221
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0737764   -0.4507706    0.2052529
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0037119   -0.0150764    0.0075253
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0193142   -0.0019923    0.0401676
