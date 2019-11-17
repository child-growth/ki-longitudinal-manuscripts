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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
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

agecat        studyid                    country                        predfeed36    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       71     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       14     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      141     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       25     251
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       28     224
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     224
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      193     224
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     224
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       17     239
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        1     239
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      168     239
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       53     239
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        8     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      206     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       21     236
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       80     286
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     286
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      195     286
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       10     286
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        6     276
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     276
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      248     276
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       22     276
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      221     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       23     250
0-24 months   ki1000109-EE               PAKISTAN                       1                   0        3       9
0-24 months   ki1000109-EE               PAKISTAN                       1                   1        1       9
0-24 months   ki1000109-EE               PAKISTAN                       0                   0        5       9
0-24 months   ki1000109-EE               PAKISTAN                       0                   1        0       9
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       73     184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      286     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      137     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       64     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       41     528
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9017   12748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      925   12748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2527   12748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      279   12748
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3023    4589
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      533    4589
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      821    4589
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      212    4589
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       83     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      159     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        7     251
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       28     224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        1     224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      195     224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     224
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0       18     239
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     239
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0      202     239
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       19     239
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        8     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      220     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        7     236
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       81     286
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     286
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      204     286
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        1     286
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        6     276
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     276
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      266     276
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        4     276
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      240     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        4     250
0-6 months    ki1000109-EE               PAKISTAN                       1                   0        3       9
0-6 months    ki1000109-EE               PAKISTAN                       1                   1        1       9
0-6 months    ki1000109-EE               PAKISTAN                       0                   0        5       9
0-6 months    ki1000109-EE               PAKISTAN                       0                   1        0       9
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       26     183
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      405     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       18     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       94     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       11     528
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9520   12721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      401   12721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2688   12721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      112   12721
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3460    4540
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       78    4540
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      958    4540
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       44    4540
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       67     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       14     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      137     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       21     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       25     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      180     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       16     232
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        1     232
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      169     232
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       46     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        8     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      210     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       16     234
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       70     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      189     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1       10     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        4     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      232     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       20     256
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        5     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      217     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     243
6-24 months   ki1000109-EE               PAKISTAN                       1                   0        3       9
6-24 months   ki1000109-EE               PAKISTAN                       1                   1        1       9
6-24 months   ki1000109-EE               PAKISTAN                       0                   0        5       9
6-24 months   ki1000109-EE               PAKISTAN                       0                   1        0       9
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       65     176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      289     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      133     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       67     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       37     526
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     6207    8812
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      596    8812
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1825    8812
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      184    8812
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3064    4577
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      484    4577
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      836    4577
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      193    4577


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/23714ab9-bdee-4c01-993e-af76a87eb84f/a5eae1e5-e7fb-40b1-8f6c-7b3ce16ba497/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/23714ab9-bdee-4c01-993e-af76a87eb84f/a5eae1e5-e7fb-40b1-8f6c-7b3ce16ba497/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/23714ab9-bdee-4c01-993e-af76a87eb84f/a5eae1e5-e7fb-40b1-8f6c-7b3ce16ba497/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/23714ab9-bdee-4c01-993e-af76a87eb84f/a5eae1e5-e7fb-40b1-8f6c-7b3ce16ba497/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1671537   0.0843859   0.2499215
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1492450   0.0947870   0.2037029
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3259811   0.2814350   0.3705272
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3660497   0.2721900   0.4599094
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0936026   0.0874773   0.0997280
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0972656   0.0865723   0.1079588
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1548055   0.1415935   0.1680174
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1862209   0.1614266   0.2110153
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0426160   0.0233458   0.0618862
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1085956   0.0499411   0.1672500
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0406511   0.0365389   0.0447633
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0394809   0.0329844   0.0459773
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0219583   0.0159558   0.0279608
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0418575   0.0291835   0.0545316
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1732987   0.0881985   0.2583988
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1330242   0.0797003   0.1863481
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3162383   0.2718146   0.3606620
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3594431   0.2672501   0.4516361
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0873259   0.0802775   0.0943744
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0921870   0.0789594   0.1054146
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1412437   0.1286648   0.1538226
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1693948   0.1456643   0.1931254


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1553785   0.1104725   0.2002845
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3371212   0.2967611   0.3774814
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0944462   0.0888980   0.0999944
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1623447   0.1503363   0.1743531
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0549242   0.0354725   0.0743760
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0403270   0.0366289   0.0440252
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0268722   0.0213332   0.0324113
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3231939   0.2831873   0.3632006
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0885157   0.0819350   0.0950963
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1479135   0.1367519   0.1590750


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8928605   0.4825019   1.652221
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1229169   0.8405981   1.500054
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0391327   0.9200333   1.173650
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2029351   1.0322889   1.401790
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.5482327   1.2591073   5.157217
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9712135   0.8115662   1.162266
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.9062282   1.2774023   2.844606
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7676010   0.4078303   1.444746
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1366211   0.8489546   1.521763
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0556656   0.9046149   1.231938
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1993089   1.0178030   1.413183


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0117752   -0.0789545   0.0554040
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0111401   -0.0092833   0.0315635
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0008436   -0.0017334   0.0034205
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0075393    0.0011623   0.0139162
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0123082   -0.0001723   0.0247888
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003241   -0.0018949   0.0012467
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0049139    0.0018255   0.0080024
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0268551   -0.0941469   0.0404366
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0069556   -0.0130955   0.0270068
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0011897   -0.0020207   0.0044001
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0066698    0.0003707   0.0129689


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0757842   -0.6070227   0.2798411
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0330448   -0.0294549   0.0917500
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0089316   -0.0187392   0.0358508
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0464398    0.0064239   0.0848441
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2240943   -0.0224635   0.4111969
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0080360   -0.0477066   0.0301325
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1828630    0.0576660   0.2914265
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1833822   -0.7403770   0.1953505
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0215216   -0.0425375   0.0816445
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0134407   -0.0234216   0.0489753
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0450925    0.0015526   0.0867338
