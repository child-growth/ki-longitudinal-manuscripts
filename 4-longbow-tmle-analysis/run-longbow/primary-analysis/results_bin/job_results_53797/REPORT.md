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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        predfeed6    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       81    233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4    233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      139    233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        9    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       29    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      179    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1    210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       11    219
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0    219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      190    219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       18    219
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       12    225
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0    225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      210    225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3    225
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       91    271
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1    271
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      179    271
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        0    271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3    237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      232    237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    237
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
0-24 months   ki1000109-EE               PAKISTAN                       1                    0       42     48
0-24 months   ki1000109-EE               PAKISTAN                       1                    1        1     48
0-24 months   ki1000109-EE               PAKISTAN                       0                    0        5     48
0-24 months   ki1000109-EE               PAKISTAN                       0                    1        0     48
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      136    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       30    166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      366    564
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       54    564
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      121    564
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       23    564
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42    240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0    240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195    240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3    240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6861   9436
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      410   9436
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2040   9436
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      125   9436
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3378   4657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      262   4657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      912   4657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      105   4657
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       82    233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        3    233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      144    233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        4    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       29    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        1    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      180    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0    210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       11    218
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0    218
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      192    218
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       15    218
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       12    225
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0    225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      208    225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        5    225
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       92    271
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0    271
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      179    271
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3    236
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    236
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      231    236
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    236
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
0-6 months    ki1000109-EE               PAKISTAN                       1                    0       39     47
0-6 months    ki1000109-EE               PAKISTAN                       1                    1        3     47
0-6 months    ki1000109-EE               PAKISTAN                       0                    0        5     47
0-6 months    ki1000109-EE               PAKISTAN                       0                    1        0     47
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      375    553
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       39    553
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      118    553
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       21    553
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0       18     26
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1        2     26
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0        6     26
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0     26
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       81    233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4    233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      139    233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        9    233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       29    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      179    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1    210
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       11    219
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0    219
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      190    219
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       18    219
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       12    225
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0    225
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      210    225
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3    225
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       91    271
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1    271
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      179    271
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        0    271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3    237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      232    237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    237
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
6-24 months   ki1000109-EE               PAKISTAN                       1                    0       42     48
6-24 months   ki1000109-EE               PAKISTAN                       1                    1        1     48
6-24 months   ki1000109-EE               PAKISTAN                       0                    0        5     48
6-24 months   ki1000109-EE               PAKISTAN                       0                    1        0     48
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      136    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       30    166
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      366    564
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       54    564
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      121    564
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       23    564
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42    240
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0    240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195    240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3    240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6861   9436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      410   9436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2040   9436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      125   9436
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3378   4657
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      262   4657
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      912   4657
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      105   4657


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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
![](/tmp/7c73ef5d-ff6c-41bd-83c9-e3f1d306b1dd/bfb5ae7f-8632-4d31-8539-42561e2d6de2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c73ef5d-ff6c-41bd-83c9-e3f1d306b1dd/bfb5ae7f-8632-4d31-8539-42561e2d6de2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c73ef5d-ff6c-41bd-83c9-e3f1d306b1dd/bfb5ae7f-8632-4d31-8539-42561e2d6de2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c73ef5d-ff6c-41bd-83c9-e3f1d306b1dd/bfb5ae7f-8632-4d31-8539-42561e2d6de2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1290279   0.0967835   0.1612722
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1585476   0.0976137   0.2194815
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0560256   0.0498220   0.0622292
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0587862   0.0489728   0.0685996
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0751243   0.0648172   0.0854314
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0880405   0.0692718   0.1068092
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0941343   0.0658750   0.1223936
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1501032   0.0898091   0.2103973
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1292260   0.0969307   0.1615213
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1572505   0.0959934   0.2185076
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0561623   0.0499581   0.0623665
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0588630   0.0490674   0.0686587
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0747472   0.0645419   0.0849525
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0868613   0.0686010   0.1051216


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1365248   0.1081636   0.1648860
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0566978   0.0514863   0.0619092
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0788061   0.0697217   0.0878905
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1084991   0.0825542   0.1344440
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1365248   0.1081636   0.1648860
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0566978   0.0514863   0.0619092
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0788061   0.0697217   0.0878905


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.228786   0.7766088   1.944241
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.049274   0.8562338   1.285836
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.171930   0.9138017   1.502975
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.594565   0.9652515   2.634170
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.216864   0.7655358   1.934277
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.048088   0.8556752   1.283767
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.162068   0.9094880   1.484794


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0074969   -0.0100154   0.0250093
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0006722   -0.0020362   0.0033805
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0036818   -0.0011864   0.0085499
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0143648   -0.0024444   0.0311741
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0072988   -0.0102348   0.0248325
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0005354   -0.0021562   0.0032271
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0040589   -0.0007085   0.0088263


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0549127   -0.0821140   0.1745878
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0118552   -0.0372614   0.0586460
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0467192   -0.0173508   0.1067543
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1323956   -0.0342537   0.2721928
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0534616   -0.0837571   0.1733065
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0094437   -0.0393274   0.0559262
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0515053   -0.0111902   0.1103136
