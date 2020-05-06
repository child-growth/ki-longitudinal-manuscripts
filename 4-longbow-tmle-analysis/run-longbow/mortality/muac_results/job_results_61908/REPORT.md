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

**Outcome Variable:** dead

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

studyid          country                        ever_smwasted06    dead   n_cell       n  outcome_variable 
---------------  -----------------------------  ----------------  -----  -------  ------  -----------------
EE               PAKISTAN                       0                     0      252     374  dead             
EE               PAKISTAN                       0                     1        2     374  dead             
EE               PAKISTAN                       1                     0      118     374  dead             
EE               PAKISTAN                       1                     1        2     374  dead             
iLiNS-DOSE       MALAWI                         0                     0     1124    1198  dead             
iLiNS-DOSE       MALAWI                         0                     1       72    1198  dead             
iLiNS-DOSE       MALAWI                         1                     0        1    1198  dead             
iLiNS-DOSE       MALAWI                         1                     1        1    1198  dead             
iLiNS-DYAD-M     MALAWI                         0                     0       45      49  dead             
iLiNS-DYAD-M     MALAWI                         0                     1        2      49  dead             
iLiNS-DYAD-M     MALAWI                         1                     0        1      49  dead             
iLiNS-DYAD-M     MALAWI                         1                     1        1      49  dead             
JiVitA-3         BANGLADESH                     0                     0    18973   19576  dead             
JiVitA-3         BANGLADESH                     0                     1      187   19576  dead             
JiVitA-3         BANGLADESH                     1                     0      368   19576  dead             
JiVitA-3         BANGLADESH                     1                     1       48   19576  dead             
JiVitA-4         BANGLADESH                     0                     0     4568    4672  dead             
JiVitA-4         BANGLADESH                     0                     1       37    4672  dead             
JiVitA-4         BANGLADESH                     1                     0       63    4672  dead             
JiVitA-4         BANGLADESH                     1                     1        4    4672  dead             
Keneba           GAMBIA                         0                     0     2075    2181  dead             
Keneba           GAMBIA                         0                     1       35    2181  dead             
Keneba           GAMBIA                         1                     0       60    2181  dead             
Keneba           GAMBIA                         1                     1       11    2181  dead             
SAS-FoodSuppl    INDIA                          0                     0      396     418  dead             
SAS-FoodSuppl    INDIA                          0                     1        3     418  dead             
SAS-FoodSuppl    INDIA                          1                     0       16     418  dead             
SAS-FoodSuppl    INDIA                          1                     1        3     418  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2213    2234  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        1    2234  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       20    2234  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        0    2234  dead             


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
![](/tmp/1ed38982-8eb9-4b5e-9a41-ac492ec45302/4275bbb5-c1a6-497f-b024-bad30498d7dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1ed38982-8eb9-4b5e-9a41-ac492ec45302/4275bbb5-c1a6-497f-b024-bad30498d7dc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1ed38982-8eb9-4b5e-9a41-ac492ec45302/4275bbb5-c1a6-497f-b024-bad30498d7dc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1ed38982-8eb9-4b5e-9a41-ac492ec45302/4275bbb5-c1a6-497f-b024-bad30498d7dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0097656   0.0083208   0.0112104
JiVitA-3   BANGLADESH   1                    NA                0.1269167   0.0987630   0.1550704
Keneba     GAMBIA       0                    NA                0.0165665   0.0111160   0.0220170
Keneba     GAMBIA       1                    NA                0.1494563   0.0618028   0.2371098


### Parameter: E(Y)


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   NA                   NA                0.0120045   0.0104161   0.0135929
Keneba     GAMBIA       NA                   NA                0.0210912   0.0150595   0.0271230


### Parameter: RR


studyid    country      intervention_level   baseline_level     estimate   ci_lower   ci_upper
---------  -----------  -------------------  ---------------  ----------  ---------  ---------
JiVitA-3   BANGLADESH   0                    0                  1.000000   1.000000    1.00000
JiVitA-3   BANGLADESH   1                    0                 12.996356   9.933107   17.00427
Keneba     GAMBIA       0                    0                  1.000000   1.000000    1.00000
Keneba     GAMBIA       1                    0                  9.021583   4.602961   17.68187


### Parameter: PAR


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0022389   0.0014731   0.0030048
Keneba     GAMBIA       0                    NA                0.0045247   0.0015858   0.0074636


### Parameter: PAF


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.1865081   0.1264647   0.2424244
Keneba     GAMBIA       0                    NA                0.2145304   0.0782315   0.3306752
