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

**Outcome Variable:** dead624

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

studyid           country                        ever_underweight024    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                            0     4727    7163  dead624          
Burkina Faso Zn   BURKINA FASO                   0                            1       18    7163  dead624          
Burkina Faso Zn   BURKINA FASO                   1                            0     2397    7163  dead624          
Burkina Faso Zn   BURKINA FASO                   1                            1       21    7163  dead624          
EE                PAKISTAN                       0                            0       52     375  dead624          
EE                PAKISTAN                       0                            1        0     375  dead624          
EE                PAKISTAN                       1                            0      319     375  dead624          
EE                PAKISTAN                       1                            1        4     375  dead624          
GMS-Nepal         NEPAL                          0                            0      151     592  dead624          
GMS-Nepal         NEPAL                          0                            1        1     592  dead624          
GMS-Nepal         NEPAL                          1                            0      439     592  dead624          
GMS-Nepal         NEPAL                          1                            1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                            0     1115    1874  dead624          
iLiNS-DOSE        MALAWI                         0                            1       63    1874  dead624          
iLiNS-DOSE        MALAWI                         1                            0      632    1874  dead624          
iLiNS-DOSE        MALAWI                         1                            1       64    1874  dead624          
iLiNS-DYAD-M      MALAWI                         0                            0      755    1161  dead624          
iLiNS-DYAD-M      MALAWI                         0                            1       12    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                            0      382    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                            1       12    1161  dead624          
JiVitA-3          BANGLADESH                     0                            0     9924   21046  dead624          
JiVitA-3          BANGLADESH                     0                            1       99   21046  dead624          
JiVitA-3          BANGLADESH                     1                            0    10851   21046  dead624          
JiVitA-3          BANGLADESH                     1                            1      172   21046  dead624          
JiVitA-4          BANGLADESH                     0                            0     2562    5433  dead624          
JiVitA-4          BANGLADESH                     0                            1       13    5433  dead624          
JiVitA-4          BANGLADESH                     1                            0     2822    5433  dead624          
JiVitA-4          BANGLADESH                     1                            1       36    5433  dead624          
Keneba            GAMBIA                         0                            0     1486    2761  dead624          
Keneba            GAMBIA                         0                            1       20    2761  dead624          
Keneba            GAMBIA                         1                            0     1231    2761  dead624          
Keneba            GAMBIA                         1                            1       24    2761  dead624          
MAL-ED            BANGLADESH                     0                            0      109     240  dead624          
MAL-ED            BANGLADESH                     0                            1        0     240  dead624          
MAL-ED            BANGLADESH                     1                            0      131     240  dead624          
MAL-ED            BANGLADESH                     1                            1        0     240  dead624          
MAL-ED            INDIA                          0                            0       87     235  dead624          
MAL-ED            INDIA                          0                            1        0     235  dead624          
MAL-ED            INDIA                          1                            0      148     235  dead624          
MAL-ED            INDIA                          1                            1        0     235  dead624          
MAL-ED            PERU                           0                            0      204     273  dead624          
MAL-ED            PERU                           0                            1        1     273  dead624          
MAL-ED            PERU                           1                            0       68     273  dead624          
MAL-ED            PERU                           1                            1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                            0      176     261  dead624          
MAL-ED            SOUTH AFRICA                   0                            1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                            0       85     261  dead624          
MAL-ED            SOUTH AFRICA                   1                            1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                            0      135     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                            1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                            0      110     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                            1        0     245  dead624          
PROVIDE           BANGLADESH                     0                            0      294     617  dead624          
PROVIDE           BANGLADESH                     0                            1        1     617  dead624          
PROVIDE           BANGLADESH                     1                            0      321     617  dead624          
PROVIDE           BANGLADESH                     1                            1        1     617  dead624          
SAS-CompFeed      INDIA                          0                            0      539    1389  dead624          
SAS-CompFeed      INDIA                          0                            1        0    1389  dead624          
SAS-CompFeed      INDIA                          1                            0      838    1389  dead624          
SAS-CompFeed      INDIA                          1                            1       12    1389  dead624          
SAS-FoodSuppl     INDIA                          0                            0       67     402  dead624          
SAS-FoodSuppl     INDIA                          0                            1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                            0      331     402  dead624          
SAS-FoodSuppl     INDIA                          1                            1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0     1589    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0      507    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    2096  dead624          
VITAMIN-A         INDIA                          0                            0     1242    3615  dead624          
VITAMIN-A         INDIA                          0                            1        4    3615  dead624          
VITAMIN-A         INDIA                          1                            0     2341    3615  dead624          
VITAMIN-A         INDIA                          1                            1       28    3615  dead624          
ZVITAMBO          ZIMBABWE                       0                            0     8569   11708  dead624          
ZVITAMBO          ZIMBABWE                       0                            1      132   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                            0     2733   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                            1      274   11708  dead624          


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
![](/tmp/55daf26f-7ff5-4d61-847d-284157b6567d/94b36387-16ac-463c-81cd-0ef8f230d638/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/55daf26f-7ff5-4d61-847d-284157b6567d/94b36387-16ac-463c-81cd-0ef8f230d638/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/55daf26f-7ff5-4d61-847d-284157b6567d/94b36387-16ac-463c-81cd-0ef8f230d638/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/55daf26f-7ff5-4d61-847d-284157b6567d/94b36387-16ac-463c-81cd-0ef8f230d638/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0038340   0.0020667   0.0056013
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0084224   0.0047974   0.0120473
iLiNS-DOSE        MALAWI         0                    NA                0.0534530   0.0405668   0.0663392
iLiNS-DOSE        MALAWI         1                    NA                0.0907258   0.0690662   0.1123854
iLiNS-DYAD-M      MALAWI         0                    NA                0.0156639   0.0068673   0.0244606
iLiNS-DYAD-M      MALAWI         1                    NA                0.0297133   0.0126803   0.0467462
JiVitA-3          BANGLADESH     0                    NA                0.0101092   0.0081169   0.0121015
JiVitA-3          BANGLADESH     1                    NA                0.0147794   0.0124671   0.0170917
JiVitA-4          BANGLADESH     0                    NA                0.0051114   0.0021908   0.0080320
JiVitA-4          BANGLADESH     1                    NA                0.0125273   0.0085166   0.0165379
Keneba            GAMBIA         0                    NA                0.0132370   0.0074757   0.0189983
Keneba            GAMBIA         1                    NA                0.0188264   0.0113520   0.0263008
ZVITAMBO          ZIMBABWE       0                    NA                0.0153194   0.0127341   0.0179046
ZVITAMBO          ZIMBABWE       1                    NA                0.0864756   0.0761575   0.0967937


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054446   0.0037404   0.0071489
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
JiVitA-3          BANGLADESH     NA                   NA                0.0128766   0.0113280   0.0144251
JiVitA-4          BANGLADESH     NA                   NA                0.0090190   0.0064698   0.0115681
Keneba            GAMBIA         NA                   NA                0.0159363   0.0112643   0.0206082
ZVITAMBO          ZIMBABWE       NA                   NA                0.0346771   0.0313629   0.0379914


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.196756   1.1692376   4.127251
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.697301   1.2090101   2.382800
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.896925   0.8502105   4.232274
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.461981   1.1380744   1.878074
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.450847   1.2797015   4.693790
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.422258   0.7889555   2.563920
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.644848   4.5920332   6.939042


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0016106    0.0002204   0.0030009
iLiNS-DOSE        MALAWI         0                    NA                0.0143165    0.0048823   0.0237506
iLiNS-DYAD-M      MALAWI         0                    NA                0.0050079   -0.0014945   0.0115103
JiVitA-3          BANGLADESH     0                    NA                0.0027674    0.0010720   0.0044628
JiVitA-4          BANGLADESH     0                    NA                0.0039076    0.0013020   0.0065131
Keneba            GAMBIA         0                    NA                0.0026993   -0.0016291   0.0070277
ZVITAMBO          ZIMBABWE       0                    NA                0.0193578    0.0165638   0.0221518


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2958214    0.0125829   0.4978136
iLiNS-DOSE        MALAWI         0                    NA                0.2112527    0.0640226   0.3353233
iLiNS-DYAD-M      MALAWI         0                    NA                0.2422576   -0.1259168   0.4900390
JiVitA-3          BANGLADESH     0                    NA                0.2149165    0.0762108   0.3327958
JiVitA-4          BANGLADESH     0                    NA                0.4332607    0.0867357   0.6483017
Keneba            GAMBIA         0                    NA                0.1693804   -0.1456090   0.3977623
ZVITAMBO          ZIMBABWE       0                    NA                0.5582282    0.4928456   0.6151816
