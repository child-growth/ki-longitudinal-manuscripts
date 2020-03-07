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

agecat        studyid         country                        predfeed36    ever_co   n_cell       n
------------  --------------  -----------------------------  -----------  --------  -------  ------
0-24 months   EE              PAKISTAN                       1                   0        3       9
0-24 months   EE              PAKISTAN                       1                   1        1       9
0-24 months   EE              PAKISTAN                       0                   0        5       9
0-24 months   EE              PAKISTAN                       0                   1        0       9
0-24 months   GMS-Nepal       NEPAL                          1                   0      286     528
0-24 months   GMS-Nepal       NEPAL                          1                   1      137     528
0-24 months   GMS-Nepal       NEPAL                          0                   0       64     528
0-24 months   GMS-Nepal       NEPAL                          0                   1       41     528
0-24 months   JiVitA-3        BANGLADESH                     1                   0     9017   12748
0-24 months   JiVitA-3        BANGLADESH                     1                   1      925   12748
0-24 months   JiVitA-3        BANGLADESH                     0                   0     2527   12748
0-24 months   JiVitA-3        BANGLADESH                     0                   1      279   12748
0-24 months   JiVitA-4        BANGLADESH                     1                   0     3023    4589
0-24 months   JiVitA-4        BANGLADESH                     1                   1      533    4589
0-24 months   JiVitA-4        BANGLADESH                     0                   0      821    4589
0-24 months   JiVitA-4        BANGLADESH                     0                   1      212    4589
0-24 months   LCNI-5          MALAWI                         1                   0       44     272
0-24 months   LCNI-5          MALAWI                         1                   1        3     272
0-24 months   LCNI-5          MALAWI                         0                   0      212     272
0-24 months   LCNI-5          MALAWI                         0                   1       13     272
0-24 months   MAL-ED          BANGLADESH                     1                   0       71     251
0-24 months   MAL-ED          BANGLADESH                     1                   1       14     251
0-24 months   MAL-ED          BANGLADESH                     0                   0      141     251
0-24 months   MAL-ED          BANGLADESH                     0                   1       25     251
0-24 months   MAL-ED          BRAZIL                         1                   0       28     224
0-24 months   MAL-ED          BRAZIL                         1                   1        1     224
0-24 months   MAL-ED          BRAZIL                         0                   0      193     224
0-24 months   MAL-ED          BRAZIL                         0                   1        2     224
0-24 months   MAL-ED          INDIA                          1                   0       17     239
0-24 months   MAL-ED          INDIA                          1                   1        1     239
0-24 months   MAL-ED          INDIA                          0                   0      168     239
0-24 months   MAL-ED          INDIA                          0                   1       53     239
0-24 months   MAL-ED          NEPAL                          1                   0        8     236
0-24 months   MAL-ED          NEPAL                          1                   1        1     236
0-24 months   MAL-ED          NEPAL                          0                   0      206     236
0-24 months   MAL-ED          NEPAL                          0                   1       21     236
0-24 months   MAL-ED          PERU                           1                   0       80     286
0-24 months   MAL-ED          PERU                           1                   1        1     286
0-24 months   MAL-ED          PERU                           0                   0      195     286
0-24 months   MAL-ED          PERU                           0                   1       10     286
0-24 months   MAL-ED          SOUTH AFRICA                   1                   0        6     276
0-24 months   MAL-ED          SOUTH AFRICA                   1                   1        0     276
0-24 months   MAL-ED          SOUTH AFRICA                   0                   0      248     276
0-24 months   MAL-ED          SOUTH AFRICA                   0                   1       22     276
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6     250
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      221     250
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       23     250
0-24 months   SAS-FoodSuppl   INDIA                          1                   0        0     184
0-24 months   SAS-FoodSuppl   INDIA                          1                   1        0     184
0-24 months   SAS-FoodSuppl   INDIA                          0                   0      111     184
0-24 months   SAS-FoodSuppl   INDIA                          0                   1       73     184
0-6 months    EE              PAKISTAN                       1                   0        3       9
0-6 months    EE              PAKISTAN                       1                   1        1       9
0-6 months    EE              PAKISTAN                       0                   0        5       9
0-6 months    EE              PAKISTAN                       0                   1        0       9
0-6 months    GMS-Nepal       NEPAL                          1                   0      405     528
0-6 months    GMS-Nepal       NEPAL                          1                   1       18     528
0-6 months    GMS-Nepal       NEPAL                          0                   0       94     528
0-6 months    GMS-Nepal       NEPAL                          0                   1       11     528
0-6 months    JiVitA-3        BANGLADESH                     1                   0     9520   12721
0-6 months    JiVitA-3        BANGLADESH                     1                   1      401   12721
0-6 months    JiVitA-3        BANGLADESH                     0                   0     2688   12721
0-6 months    JiVitA-3        BANGLADESH                     0                   1      112   12721
0-6 months    JiVitA-4        BANGLADESH                     1                   0     3460    4540
0-6 months    JiVitA-4        BANGLADESH                     1                   1       78    4540
0-6 months    JiVitA-4        BANGLADESH                     0                   0      958    4540
0-6 months    JiVitA-4        BANGLADESH                     0                   1       44    4540
0-6 months    LCNI-5          MALAWI                         1                   0       47     272
0-6 months    LCNI-5          MALAWI                         1                   1        0     272
0-6 months    LCNI-5          MALAWI                         0                   0      225     272
0-6 months    LCNI-5          MALAWI                         0                   1        0     272
0-6 months    MAL-ED          BANGLADESH                     1                   0       83     251
0-6 months    MAL-ED          BANGLADESH                     1                   1        2     251
0-6 months    MAL-ED          BANGLADESH                     0                   0      159     251
0-6 months    MAL-ED          BANGLADESH                     0                   1        7     251
0-6 months    MAL-ED          BRAZIL                         1                   0       28     224
0-6 months    MAL-ED          BRAZIL                         1                   1        1     224
0-6 months    MAL-ED          BRAZIL                         0                   0      195     224
0-6 months    MAL-ED          BRAZIL                         0                   1        0     224
0-6 months    MAL-ED          INDIA                          1                   0       18     239
0-6 months    MAL-ED          INDIA                          1                   1        0     239
0-6 months    MAL-ED          INDIA                          0                   0      202     239
0-6 months    MAL-ED          INDIA                          0                   1       19     239
0-6 months    MAL-ED          NEPAL                          1                   0        8     236
0-6 months    MAL-ED          NEPAL                          1                   1        1     236
0-6 months    MAL-ED          NEPAL                          0                   0      220     236
0-6 months    MAL-ED          NEPAL                          0                   1        7     236
0-6 months    MAL-ED          PERU                           1                   0       81     286
0-6 months    MAL-ED          PERU                           1                   1        0     286
0-6 months    MAL-ED          PERU                           0                   0      204     286
0-6 months    MAL-ED          PERU                           0                   1        1     286
0-6 months    MAL-ED          SOUTH AFRICA                   1                   0        6     276
0-6 months    MAL-ED          SOUTH AFRICA                   1                   1        0     276
0-6 months    MAL-ED          SOUTH AFRICA                   0                   0      266     276
0-6 months    MAL-ED          SOUTH AFRICA                   0                   1        4     276
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6     250
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      240     250
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        4     250
0-6 months    SAS-FoodSuppl   INDIA                          1                   0        0     183
0-6 months    SAS-FoodSuppl   INDIA                          1                   1        0     183
0-6 months    SAS-FoodSuppl   INDIA                          0                   0      157     183
0-6 months    SAS-FoodSuppl   INDIA                          0                   1       26     183
6-24 months   EE              PAKISTAN                       1                   0        3       9
6-24 months   EE              PAKISTAN                       1                   1        1       9
6-24 months   EE              PAKISTAN                       0                   0        5       9
6-24 months   EE              PAKISTAN                       0                   1        0       9
6-24 months   GMS-Nepal       NEPAL                          1                   0      289     526
6-24 months   GMS-Nepal       NEPAL                          1                   1      133     526
6-24 months   GMS-Nepal       NEPAL                          0                   0       67     526
6-24 months   GMS-Nepal       NEPAL                          0                   1       37     526
6-24 months   JiVitA-3        BANGLADESH                     1                   0     6207    8812
6-24 months   JiVitA-3        BANGLADESH                     1                   1      596    8812
6-24 months   JiVitA-3        BANGLADESH                     0                   0     1825    8812
6-24 months   JiVitA-3        BANGLADESH                     0                   1      184    8812
6-24 months   JiVitA-4        BANGLADESH                     1                   0     3064    4577
6-24 months   JiVitA-4        BANGLADESH                     1                   1      484    4577
6-24 months   JiVitA-4        BANGLADESH                     0                   0      836    4577
6-24 months   JiVitA-4        BANGLADESH                     0                   1      193    4577
6-24 months   LCNI-5          MALAWI                         1                   0       42     258
6-24 months   LCNI-5          MALAWI                         1                   1        3     258
6-24 months   LCNI-5          MALAWI                         0                   0      200     258
6-24 months   LCNI-5          MALAWI                         0                   1       13     258
6-24 months   MAL-ED          BANGLADESH                     1                   0       67     239
6-24 months   MAL-ED          BANGLADESH                     1                   1       14     239
6-24 months   MAL-ED          BANGLADESH                     0                   0      137     239
6-24 months   MAL-ED          BANGLADESH                     0                   1       21     239
6-24 months   MAL-ED          BRAZIL                         1                   0       25     207
6-24 months   MAL-ED          BRAZIL                         1                   1        0     207
6-24 months   MAL-ED          BRAZIL                         0                   0      180     207
6-24 months   MAL-ED          BRAZIL                         0                   1        2     207
6-24 months   MAL-ED          INDIA                          1                   0       16     232
6-24 months   MAL-ED          INDIA                          1                   1        1     232
6-24 months   MAL-ED          INDIA                          0                   0      169     232
6-24 months   MAL-ED          INDIA                          0                   1       46     232
6-24 months   MAL-ED          NEPAL                          1                   0        8     234
6-24 months   MAL-ED          NEPAL                          1                   1        0     234
6-24 months   MAL-ED          NEPAL                          0                   0      210     234
6-24 months   MAL-ED          NEPAL                          0                   1       16     234
6-24 months   MAL-ED          PERU                           1                   0       70     270
6-24 months   MAL-ED          PERU                           1                   1        1     270
6-24 months   MAL-ED          PERU                           0                   0      189     270
6-24 months   MAL-ED          PERU                           0                   1       10     270
6-24 months   MAL-ED          SOUTH AFRICA                   1                   0        4     256
6-24 months   MAL-ED          SOUTH AFRICA                   1                   1        0     256
6-24 months   MAL-ED          SOUTH AFRICA                   0                   0      232     256
6-24 months   MAL-ED          SOUTH AFRICA                   0                   1       20     256
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        5     243
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     243
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      217     243
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     243
6-24 months   SAS-FoodSuppl   INDIA                          1                   0        0     176
6-24 months   SAS-FoodSuppl   INDIA                          1                   1        0     176
6-24 months   SAS-FoodSuppl   INDIA                          0                   0      111     176
6-24 months   SAS-FoodSuppl   INDIA                          0                   1       65     176


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/171a0ab7-8006-48be-953f-3bda3a2f17b8/e13c4e2e-0e4a-4aa7-8eb8-73a298b4b276/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/171a0ab7-8006-48be-953f-3bda3a2f17b8/e13c4e2e-0e4a-4aa7-8eb8-73a298b4b276/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/171a0ab7-8006-48be-953f-3bda3a2f17b8/e13c4e2e-0e4a-4aa7-8eb8-73a298b4b276/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/171a0ab7-8006-48be-953f-3bda3a2f17b8/e13c4e2e-0e4a-4aa7-8eb8-73a298b4b276/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.3238380   0.2792051   0.3684710
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.3878849   0.2937690   0.4820007
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0936280   0.0875159   0.0997401
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0974728   0.0867119   0.1082336
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.1550146   0.1415570   0.1684721
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1846328   0.1594350   0.2098306
0-24 months   MAL-ED      BANGLADESH   1                    NA                0.1681087   0.0866166   0.2496008
0-24 months   MAL-ED      BANGLADESH   0                    NA                0.1471789   0.0935430   0.2008149
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0424289   0.0231684   0.0616894
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1040871   0.0450889   0.1630853
0-6 months    JiVitA-3    BANGLADESH   1                    NA                0.0403115   0.0360791   0.0445439
0-6 months    JiVitA-3    BANGLADESH   0                    NA                0.0402919   0.0331525   0.0474313
0-6 months    JiVitA-4    BANGLADESH   1                    NA                0.0217050   0.0157647   0.0276453
0-6 months    JiVitA-4    BANGLADESH   0                    NA                0.0447995   0.0314720   0.0581270
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.3148919   0.2704939   0.3592899
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.3673288   0.2737643   0.4608934
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0873059   0.0802291   0.0943828
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0925977   0.0794407   0.1057548
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.1410249   0.1284202   0.1536295
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1690108   0.1445569   0.1934647
6-24 months   MAL-ED      BANGLADESH   1                    NA                0.1673213   0.0832131   0.2514296
6-24 months   MAL-ED      BANGLADESH   0                    NA                0.1319366   0.0786763   0.1851969


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.3371212   0.2967611   0.3774814
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0944462   0.0888980   0.0999944
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1623447   0.1503363   0.1743531
0-24 months   MAL-ED      BANGLADESH   NA                   NA                0.1553785   0.1104725   0.2002845
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.0549242   0.0354725   0.0743760
0-6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0403270   0.0366289   0.0440252
0-6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0268722   0.0213332   0.0324113
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.3231939   0.2831873   0.3632006
6-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0885157   0.0819350   0.0950963
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1479135   0.1367519   0.1590750
6-24 months   MAL-ED      BANGLADESH   NA                   NA                0.1464435   0.1015265   0.1913605


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.1977743   0.9066858   1.582316
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.0410642   0.9215103   1.176129
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.1910676   1.0170055   1.394921
0-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      BANGLADESH   0                    1                 0.8754984   0.4767234   1.607845
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 2.4532115   1.1856651   5.075840
0-6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3    BANGLADESH   0                    1                 0.9995137   0.8158891   1.224465
0-6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4    BANGLADESH   0                    1                 2.0640167   1.3894470   3.066087
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.1665235   0.8719925   1.560538
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.0606121   0.9094748   1.236866
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.1984468   1.0110044   1.420641
6-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED      BANGLADESH   0                    1                 0.7885222   0.4137577   1.502733


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0132832   -0.0072706   0.0338370
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0008182   -0.0017696   0.0034060
0-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0073302    0.0007908   0.0138695
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0127302   -0.0787763   0.0533159
0-6 months    GMS-Nepal   NEPAL        1                    NA                 0.0124953    0.0000270   0.0249637
0-6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0000155   -0.0017853   0.0018164
0-6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0051672    0.0020993   0.0082352
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0083020   -0.0119450   0.0285490
6-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0012097   -0.0019979   0.0044173
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0068886    0.0004079   0.0133693
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0208778   -0.0873143   0.0455586


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0394018   -0.0235578   0.0984888
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0086630   -0.0191214   0.0356899
0-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0451519    0.0039951   0.0846081
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0819305   -0.6020207   0.2693143
0-6 months    GMS-Nepal   NEPAL        1                    NA                 0.2275011   -0.0189151   0.4143236
0-6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0003851   -0.0452860   0.0440607
0-6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1922893    0.0681980   0.2998549
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0256874   -0.0390210   0.0863658
6-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0136667   -0.0231718   0.0491788
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0465718    0.0017837   0.0893504
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.1425658   -0.6956244   0.2301028
