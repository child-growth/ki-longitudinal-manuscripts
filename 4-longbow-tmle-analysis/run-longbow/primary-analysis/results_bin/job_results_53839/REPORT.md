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

**Intervention Variable:** predfeed6

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

agecat        studyid                    country                        predfeed6    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       69     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       16     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      127     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      178     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       11     219
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      161     219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       47     219
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       10     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        2     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      195     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       18     225
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       90     271
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        2     271
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      170     271
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        9     271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      214     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       20     237
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      211     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       23     235
0-24 months   ki1000109-EE               PAKISTAN                       1                  0       20      48
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       23      48
0-24 months   ki1000109-EE               PAKISTAN                       0                  0        5      48
0-24 months   ki1000109-EE               PAKISTAN                       0                  1        0      48
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       73     184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      279     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      141     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       93     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       52     565
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    11280   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1121   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3166   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      335   15902
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3154    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      549    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      834    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      216    4753
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       83     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        2     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      141     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       29     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      180     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       11     219
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     219
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      192     219
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       16     219
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       12     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      207     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        6     225
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       92     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      178     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      231     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     237
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      230     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     235
0-6 months    ki1000109-EE               PAKISTAN                       1                  0       35      48
0-6 months    ki1000109-EE               PAKISTAN                       1                  1        8      48
0-6 months    ki1000109-EE               PAKISTAN                       0                  0        5      48
0-6 months    ki1000109-EE               PAKISTAN                       0                  1        0      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       26     183
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      399     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       21     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      133     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       12     565
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    11859   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      519   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3351   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      144   15873
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3607    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       78    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      973    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       45    4703
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       68     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       16     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      128     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       17     229
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       30     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      175     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       11     217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      164     217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       42     217
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       10     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        2     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      198     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       14     224
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       89     269
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        2     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      169     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        9     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      214     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       18     235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      209     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     231
6-24 months   ki1000109-EE               PAKISTAN                       1                  0       23      47
6-24 months   ki1000109-EE               PAKISTAN                       1                  1       19      47
6-24 months   ki1000109-EE               PAKISTAN                       0                  0        5      47
6-24 months   ki1000109-EE               PAKISTAN                       0                  1        0      47
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       65     176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      278     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      137     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       94     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       48     557
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7189   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      689   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2104   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      210   10192
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3195    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      500    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      850    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      196    4741


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
![](/tmp/3a38bdcf-03cc-4b6b-873f-c0a0257cd8f6/a66a3661-4b67-4433-b9f7-4d6770cd732c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3a38bdcf-03cc-4b6b-873f-c0a0257cd8f6/a66a3661-4b67-4433-b9f7-4d6770cd732c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3a38bdcf-03cc-4b6b-873f-c0a0257cd8f6/a66a3661-4b67-4433-b9f7-4d6770cd732c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3a38bdcf-03cc-4b6b-873f-c0a0257cd8f6/a66a3661-4b67-4433-b9f7-4d6770cd732c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1803967   0.0980747   0.2627188
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1438131   0.0869331   0.2006930
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3401589   0.2954377   0.3848802
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3499081   0.2714824   0.4283339
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0908410   0.0854169   0.0962652
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0939375   0.0841902   0.1036847
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1530474   0.1400046   0.1660903
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1849143   0.1603755   0.2094531
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0498109   0.0289209   0.0707009
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0837439   0.0387197   0.1287681
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0418398   0.0380807   0.0455989
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0415540   0.0353733   0.0477347
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0208982   0.0151102   0.0266861
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0430976   0.0299488   0.0562464
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1901754   0.1058154   0.2745354
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1176830   0.0647894   0.1705767
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3304385   0.2853227   0.3755543
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3148254   0.2360985   0.3935523
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0873262   0.0806895   0.0939629
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0910250   0.0787534   0.1032966
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1405212   0.1281203   0.1529221
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1677432   0.1442649   0.1912214


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1587983   0.1117681   0.2058285
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3415929   0.3024539   0.3807320
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0915608   0.0867079   0.0964137
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1609510   0.1491579   0.1727440
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0584071   0.0390530   0.0777612
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0417690   0.0384207   0.0451174
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0261535   0.0207066   0.0316005
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1441048   0.0985189   0.1896907
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3321364   0.2929882   0.3712847
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0882064   0.0821266   0.0942862
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1468045   0.1358635   0.1577455


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7972043   0.4351644   1.460447
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0286607   0.7948939   1.331175
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0340864   0.9203627   1.161862
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2082157   1.0361896   1.408801
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.6812359   0.8497031   3.326520
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9931679   0.8410036   1.172864
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0622685   1.3798377   3.082211
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6188131   0.3289305   1.164166
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9527503   0.7168597   1.266263
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0423561   0.8989956   1.208578
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1937214   1.0109413   1.409549


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0215985   -0.0851590   0.0419621
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0014340   -0.0215546   0.0244226
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0007198   -0.0016713   0.0031108
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0079035    0.0016969   0.0141102
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0085962   -0.0042249   0.0214172
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000708   -0.0015926   0.0014510
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0052554    0.0022711   0.0082397
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0460706   -0.1092668   0.0171256
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0016979   -0.0212963   0.0246921
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0008802   -0.0021502   0.0039106
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0062833    0.0000204   0.0125462


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1360119   -0.6136984   0.2002699
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0041980   -0.0654112   0.0692591
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0078611   -0.0186064   0.0336409
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0491052    0.0097670   0.0868808
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1471767   -0.0970942   0.3370601
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0016946   -0.0387917   0.0340777
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.2009429    0.0769749   0.3082612
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3197020   -0.8305418   0.0485804
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0051121   -0.0665783   0.0719837
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0099792   -0.0249459   0.0437143
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0428002   -0.0008257   0.0845244
