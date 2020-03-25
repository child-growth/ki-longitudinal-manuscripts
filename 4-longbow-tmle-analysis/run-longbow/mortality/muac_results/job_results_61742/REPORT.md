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

**Outcome Variable:** dead6plus

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

studyid          country                        ever_smwasted06    dead6plus   n_cell       n  outcome_variable 
---------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
EE               PAKISTAN                       0                          0      250     371  dead6plus        
EE               PAKISTAN                       0                          1        2     371  dead6plus        
EE               PAKISTAN                       1                          0      117     371  dead6plus        
EE               PAKISTAN                       1                          1        2     371  dead6plus        
iLiNS-DOSE       MALAWI                         0                          0     1068    1142  dead6plus        
iLiNS-DOSE       MALAWI                         0                          1       72    1142  dead6plus        
iLiNS-DOSE       MALAWI                         1                          0        1    1142  dead6plus        
iLiNS-DOSE       MALAWI                         1                          1        1    1142  dead6plus        
iLiNS-DYAD-M     MALAWI                         0                          0       43      47  dead6plus        
iLiNS-DYAD-M     MALAWI                         0                          1        2      47  dead6plus        
iLiNS-DYAD-M     MALAWI                         1                          0        1      47  dead6plus        
iLiNS-DYAD-M     MALAWI                         1                          1        1      47  dead6plus        
JiVitA-3         BANGLADESH                     0                          0    15195   15653  dead6plus        
JiVitA-3         BANGLADESH                     0                          1      182   15653  dead6plus        
JiVitA-3         BANGLADESH                     1                          0      245   15653  dead6plus        
JiVitA-3         BANGLADESH                     1                          1       31   15653  dead6plus        
JiVitA-4         BANGLADESH                     0                          0     4558    4663  dead6plus        
JiVitA-4         BANGLADESH                     0                          1       38    4663  dead6plus        
JiVitA-4         BANGLADESH                     1                          0       63    4663  dead6plus        
JiVitA-4         BANGLADESH                     1                          1        4    4663  dead6plus        
Keneba           GAMBIA                         0                          0     2001    2123  dead6plus        
Keneba           GAMBIA                         0                          1       55    2123  dead6plus        
Keneba           GAMBIA                         1                          0       55    2123  dead6plus        
Keneba           GAMBIA                         1                          1       12    2123  dead6plus        
SAS-FoodSuppl    INDIA                          0                          0      383     402  dead6plus        
SAS-FoodSuppl    INDIA                          0                          1        1     402  dead6plus        
SAS-FoodSuppl    INDIA                          1                          0       15     402  dead6plus        
SAS-FoodSuppl    INDIA                          1                          1        3     402  dead6plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                          0     2031    2050  dead6plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                          1        0    2050  dead6plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                          0       19    2050  dead6plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                          1        0    2050  dead6plus        


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
![](/tmp/6cb479cd-f4f8-42c4-8791-521c97ef41b9/09916706-3958-4426-a017-e2dc2ce17479/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6cb479cd-f4f8-42c4-8791-521c97ef41b9/09916706-3958-4426-a017-e2dc2ce17479/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6cb479cd-f4f8-42c4-8791-521c97ef41b9/09916706-3958-4426-a017-e2dc2ce17479/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6cb479cd-f4f8-42c4-8791-521c97ef41b9/09916706-3958-4426-a017-e2dc2ce17479/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0119612   0.0101144   0.0138079
JiVitA-3   BANGLADESH   1                    NA                0.1005769   0.0762144   0.1249394
Keneba     GAMBIA       0                    NA                0.0267699   0.0197702   0.0337697
Keneba     GAMBIA       1                    NA                0.2030222   0.1158958   0.2901486


### Parameter: E(Y)


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   NA                   NA                0.0136076   0.0116882   0.0155270
Keneba     GAMBIA       NA                   NA                0.0315591   0.0241208   0.0389974


### Parameter: RR


studyid    country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
---------  -----------  -------------------  ---------------  ---------  ---------  ---------
JiVitA-3   BANGLADESH   0                    0                 1.000000   1.000000    1.00000
JiVitA-3   BANGLADESH   1                    0                 8.408602   6.281561   11.25589
Keneba     GAMBIA       0                    0                 1.000000   1.000000    1.00000
Keneba     GAMBIA       1                    0                 7.583966   4.585912   12.54201


### Parameter: PAR


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0016464   0.0009394   0.0023535
Keneba     GAMBIA       0                    NA                0.0047892   0.0016614   0.0079170


### Parameter: PAF


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.1209929   0.0696969   0.1694605
Keneba     GAMBIA       0                    NA                0.1517530   0.0534781   0.2398243
