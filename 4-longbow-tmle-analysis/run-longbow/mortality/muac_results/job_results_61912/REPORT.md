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

**Outcome Variable:** dead0plus

## Predictor Variables

**Intervention Variable:** ever_smwasted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
* hfoodsec
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_impfloor
* delta_hfoodsec
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_smwasted06    dead0plus   n_cell       n  outcome_variable 
---------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
EE               PAKISTAN                       0                          0      252     374  dead0plus        
EE               PAKISTAN                       0                          1        2     374  dead0plus        
EE               PAKISTAN                       1                          0      118     374  dead0plus        
EE               PAKISTAN                       1                          1        2     374  dead0plus        
iLiNS-DOSE       MALAWI                         0                          0     1124    1198  dead0plus        
iLiNS-DOSE       MALAWI                         0                          1       72    1198  dead0plus        
iLiNS-DOSE       MALAWI                         1                          0        1    1198  dead0plus        
iLiNS-DOSE       MALAWI                         1                          1        1    1198  dead0plus        
iLiNS-DYAD-M     MALAWI                         0                          0       45      49  dead0plus        
iLiNS-DYAD-M     MALAWI                         0                          1        2      49  dead0plus        
iLiNS-DYAD-M     MALAWI                         1                          0        1      49  dead0plus        
iLiNS-DYAD-M     MALAWI                         1                          1        1      49  dead0plus        
JiVitA-3         BANGLADESH                     0                          0    18949   19576  dead0plus        
JiVitA-3         BANGLADESH                     0                          1      211   19576  dead0plus        
JiVitA-3         BANGLADESH                     1                          0      364   19576  dead0plus        
JiVitA-3         BANGLADESH                     1                          1       52   19576  dead0plus        
JiVitA-4         BANGLADESH                     0                          0     4567    4672  dead0plus        
JiVitA-4         BANGLADESH                     0                          1       38    4672  dead0plus        
JiVitA-4         BANGLADESH                     1                          0       63    4672  dead0plus        
JiVitA-4         BANGLADESH                     1                          1        4    4672  dead0plus        
Keneba           GAMBIA                         0                          0     2050    2181  dead0plus        
Keneba           GAMBIA                         0                          1       60    2181  dead0plus        
Keneba           GAMBIA                         1                          0       56    2181  dead0plus        
Keneba           GAMBIA                         1                          1       15    2181  dead0plus        
SAS-FoodSuppl    INDIA                          0                          0      396     418  dead0plus        
SAS-FoodSuppl    INDIA                          0                          1        3     418  dead0plus        
SAS-FoodSuppl    INDIA                          1                          0       16     418  dead0plus        
SAS-FoodSuppl    INDIA                          1                          1        3     418  dead0plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                          0     2213    2234  dead0plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                          1        1    2234  dead0plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                          0       20    2234  dead0plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                          1        0    2234  dead0plus        


The following strata were considered:

* studyid: EE, country: PAKISTAN
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-4, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6d044b74-2116-471c-8229-ed553e443ceb/8d570c16-0019-4ea0-9b29-8efcd061ff43/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6d044b74-2116-471c-8229-ed553e443ceb/8d570c16-0019-4ea0-9b29-8efcd061ff43/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6d044b74-2116-471c-8229-ed553e443ceb/8d570c16-0019-4ea0-9b29-8efcd061ff43/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6d044b74-2116-471c-8229-ed553e443ceb/8d570c16-0019-4ea0-9b29-8efcd061ff43/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0110180   0.0094609   0.0125751
JiVitA-3   BANGLADESH   1                    NA                0.1256663   0.0976620   0.1536706
Keneba     GAMBIA       0                    NA                0.0283770   0.0212618   0.0354921
Keneba     GAMBIA       1                    NA                0.2542052   0.1645986   0.3438117


### Parameter: E(Y)


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   NA                   NA                0.0134348   0.0117440   0.0151256
Keneba     GAMBIA       NA                   NA                0.0343879   0.0267386   0.0420372


### Parameter: RR


studyid    country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
---------  -----------  -------------------  ---------------  ---------  ---------  ---------
JiVitA-3   BANGLADESH   0                    0                  1.00000   1.000000    1.00000
JiVitA-3   BANGLADESH   1                    0                 11.40555   8.728551   14.90357
Keneba     GAMBIA       0                    0                  1.00000   1.000000    1.00000
Keneba     GAMBIA       1                    0                  8.95815   5.808588   13.81548


### Parameter: PAR


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0024168   0.0016376   0.0031961
Keneba     GAMBIA       0                    NA                0.0060109   0.0026087   0.0094131


### Parameter: PAF


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.1798924   0.1248431   0.2314790
Keneba     GAMBIA       0                    NA                0.1747977   0.0777208   0.2616565
