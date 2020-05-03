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

**Intervention Variable:** ever_underweight024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_underweight024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                              0     4723    7163  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                              1       22    7163  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                              0     2392    7163  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                              1       26    7163  dead6plus        
EE                PAKISTAN                       0                              0       52     375  dead6plus        
EE                PAKISTAN                       0                              1        0     375  dead6plus        
EE                PAKISTAN                       1                              0      319     375  dead6plus        
EE                PAKISTAN                       1                              1        4     375  dead6plus        
GMS-Nepal         NEPAL                          0                              0      151     592  dead6plus        
GMS-Nepal         NEPAL                          0                              1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                              0      439     592  dead6plus        
GMS-Nepal         NEPAL                          1                              1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                              0     1115    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                              1       63    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                              0      632    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                              1       64    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                              0      753    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                              1       14    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                              0      380    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                              1       14    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                              0     9914   21046  dead6plus        
JiVitA-3          BANGLADESH                     0                              1      109   21046  dead6plus        
JiVitA-3          BANGLADESH                     1                              0    10820   21046  dead6plus        
JiVitA-3          BANGLADESH                     1                              1      203   21046  dead6plus        
JiVitA-4          BANGLADESH                     0                              0     2562    5433  dead6plus        
JiVitA-4          BANGLADESH                     0                              1       13    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                              0     2821    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                              1       37    5433  dead6plus        
Keneba            GAMBIA                         0                              0     1472    2761  dead6plus        
Keneba            GAMBIA                         0                              1       34    2761  dead6plus        
Keneba            GAMBIA                         1                              0     1210    2761  dead6plus        
Keneba            GAMBIA                         1                              1       45    2761  dead6plus        
MAL-ED            BANGLADESH                     0                              0      109     240  dead6plus        
MAL-ED            BANGLADESH                     0                              1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                              0      131     240  dead6plus        
MAL-ED            BANGLADESH                     1                              1        0     240  dead6plus        
MAL-ED            INDIA                          0                              0       87     235  dead6plus        
MAL-ED            INDIA                          0                              1        0     235  dead6plus        
MAL-ED            INDIA                          1                              0      148     235  dead6plus        
MAL-ED            INDIA                          1                              1        0     235  dead6plus        
MAL-ED            PERU                           0                              0      204     273  dead6plus        
MAL-ED            PERU                           0                              1        1     273  dead6plus        
MAL-ED            PERU                           1                              0       68     273  dead6plus        
MAL-ED            PERU                           1                              1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                              0      176     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                              1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                              0       85     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                              1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              0      135     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              0      110     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                              0      294     617  dead6plus        
PROVIDE           BANGLADESH                     0                              1        1     617  dead6plus        
PROVIDE           BANGLADESH                     1                              0      320     617  dead6plus        
PROVIDE           BANGLADESH                     1                              1        2     617  dead6plus        
SAS-CompFeed      INDIA                          0                              0      539    1389  dead6plus        
SAS-CompFeed      INDIA                          0                              1        0    1389  dead6plus        
SAS-CompFeed      INDIA                          1                              0      838    1389  dead6plus        
SAS-CompFeed      INDIA                          1                              1       12    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                              0       67     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                              1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                              0      331     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                              1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     1589    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0      507    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                              0     1242    3615  dead6plus        
VITAMIN-A         INDIA                          0                              1        4    3615  dead6plus        
VITAMIN-A         INDIA                          1                              0     2341    3615  dead6plus        
VITAMIN-A         INDIA                          1                              1       28    3615  dead6plus        
ZVITAMBO          ZIMBABWE                       0                              0     8562   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       0                              1      139   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                              0     2730   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                              1      277   11708  dead6plus        


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/05891dc9-d2d5-4755-8ded-af8a6cccacae/e72eb822-efad-4d59-9738-15a69f040827/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/05891dc9-d2d5-4755-8ded-af8a6cccacae/e72eb822-efad-4d59-9738-15a69f040827/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/05891dc9-d2d5-4755-8ded-af8a6cccacae/e72eb822-efad-4d59-9738-15a69f040827/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/05891dc9-d2d5-4755-8ded-af8a6cccacae/e72eb822-efad-4d59-9738-15a69f040827/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0047084   0.0027480   0.0066688
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0105184   0.0064387   0.0145981
iLiNS-DOSE        MALAWI         0                    NA                0.0545678   0.0414399   0.0676957
iLiNS-DOSE        MALAWI         1                    NA                0.0881820   0.0669450   0.1094190
iLiNS-DYAD-M      MALAWI         0                    NA                0.0186085   0.0089456   0.0282713
iLiNS-DYAD-M      MALAWI         1                    NA                0.0347996   0.0165576   0.0530417
JiVitA-3          BANGLADESH     0                    NA                0.0110144   0.0088989   0.0131298
JiVitA-3          BANGLADESH     1                    NA                0.0171710   0.0147172   0.0196248
JiVitA-4          BANGLADESH     0                    NA                0.0051080   0.0021998   0.0080162
JiVitA-4          BANGLADESH     1                    NA                0.0128729   0.0087789   0.0169669
Keneba            GAMBIA         0                    NA                0.0236093   0.0156813   0.0315373
Keneba            GAMBIA         1                    NA                0.0338755   0.0237273   0.0440236
ZVITAMBO          ZIMBABWE       0                    NA                0.0161466   0.0134983   0.0187948
ZVITAMBO          ZIMBABWE       1                    NA                0.0871955   0.0769389   0.0974522


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067011   0.0048116   0.0085906
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
JiVitA-3          BANGLADESH     NA                   NA                0.0148247   0.0131816   0.0164677
JiVitA-4          BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900
Keneba            GAMBIA         NA                   NA                0.0286128   0.0223931   0.0348325
ZVITAMBO          ZIMBABWE       NA                   NA                0.0355313   0.0321779   0.0388846


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.233950   1.2645554   3.946472
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.616008   1.1495496   2.271745
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.870094   0.8942157   3.910973
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.558961   1.2274404   1.980021
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.520141   1.3189738   4.815191
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.434834   0.9146759   2.250795
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.400257   4.4135178   6.607603


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0019927    0.0004453   0.0035401
iLiNS-DOSE        MALAWI         0                    NA                0.0132017    0.0036194   0.0227840
iLiNS-DYAD-M      MALAWI         0                    NA                0.0055087   -0.0015885   0.0126059
JiVitA-3          BANGLADESH     0                    NA                0.0038103    0.0019790   0.0056415
JiVitA-4          BANGLADESH     0                    NA                0.0040950    0.0014570   0.0067330
Keneba            GAMBIA         0                    NA                0.0050035   -0.0011591   0.0111661
ZVITAMBO          ZIMBABWE       0                    NA                0.0193847    0.0165736   0.0221959


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2973656    0.0455941   0.4827200
iLiNS-DOSE        MALAWI         0                    NA                0.1948027    0.0445350   0.3214375
iLiNS-DYAD-M      MALAWI         0                    NA                0.2284129   -0.1129026   0.4650505
JiVitA-3          BANGLADESH     0                    NA                0.2570230    0.1276480   0.3672109
JiVitA-4          BANGLADESH     0                    NA                0.4449650    0.1044031   0.6560239
Keneba            GAMBIA         0                    NA                0.1748691   -0.0666724   0.3617150
ZVITAMBO          ZIMBABWE       0                    NA                0.5455677    0.4807908   0.6022630
