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

studyid           country                        ever_underweight024    dead624   n_cell       n
----------------  -----------------------------  --------------------  --------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                            0     4727    7163
Burkina Faso Zn   BURKINA FASO                   0                            1       18    7163
Burkina Faso Zn   BURKINA FASO                   1                            0     2397    7163
Burkina Faso Zn   BURKINA FASO                   1                            1       21    7163
EE                PAKISTAN                       0                            0       52     375
EE                PAKISTAN                       0                            1        0     375
EE                PAKISTAN                       1                            0      319     375
EE                PAKISTAN                       1                            1        4     375
GMS-Nepal         NEPAL                          0                            0      151     592
GMS-Nepal         NEPAL                          0                            1        1     592
GMS-Nepal         NEPAL                          1                            0      439     592
GMS-Nepal         NEPAL                          1                            1        1     592
iLiNS-DOSE        MALAWI                         0                            0     1115    1874
iLiNS-DOSE        MALAWI                         0                            1       63    1874
iLiNS-DOSE        MALAWI                         1                            0      632    1874
iLiNS-DOSE        MALAWI                         1                            1       64    1874
iLiNS-DYAD-M      MALAWI                         0                            0      755    1161
iLiNS-DYAD-M      MALAWI                         0                            1       12    1161
iLiNS-DYAD-M      MALAWI                         1                            0      382    1161
iLiNS-DYAD-M      MALAWI                         1                            1       12    1161
JiVitA-3          BANGLADESH                     0                            0     9924   21046
JiVitA-3          BANGLADESH                     0                            1       99   21046
JiVitA-3          BANGLADESH                     1                            0    10851   21046
JiVitA-3          BANGLADESH                     1                            1      172   21046
JiVitA-4          BANGLADESH                     0                            0     2562    5433
JiVitA-4          BANGLADESH                     0                            1       13    5433
JiVitA-4          BANGLADESH                     1                            0     2822    5433
JiVitA-4          BANGLADESH                     1                            1       36    5433
Keneba            GAMBIA                         0                            0     1486    2761
Keneba            GAMBIA                         0                            1       20    2761
Keneba            GAMBIA                         1                            0     1231    2761
Keneba            GAMBIA                         1                            1       24    2761
MAL-ED            BANGLADESH                     0                            0      109     240
MAL-ED            BANGLADESH                     0                            1        0     240
MAL-ED            BANGLADESH                     1                            0      131     240
MAL-ED            BANGLADESH                     1                            1        0     240
MAL-ED            INDIA                          0                            0       87     235
MAL-ED            INDIA                          0                            1        0     235
MAL-ED            INDIA                          1                            0      148     235
MAL-ED            INDIA                          1                            1        0     235
MAL-ED            PERU                           0                            0      204     273
MAL-ED            PERU                           0                            1        1     273
MAL-ED            PERU                           1                            0       68     273
MAL-ED            PERU                           1                            1        0     273
MAL-ED            SOUTH AFRICA                   0                            0      176     261
MAL-ED            SOUTH AFRICA                   0                            1        0     261
MAL-ED            SOUTH AFRICA                   1                            0       85     261
MAL-ED            SOUTH AFRICA                   1                            1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                            0      135     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                            1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                            0      110     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                            1        0     245
PROVIDE           BANGLADESH                     0                            0      294     617
PROVIDE           BANGLADESH                     0                            1        1     617
PROVIDE           BANGLADESH                     1                            0      321     617
PROVIDE           BANGLADESH                     1                            1        1     617
SAS-CompFeed      INDIA                          0                            0      539    1389
SAS-CompFeed      INDIA                          0                            1        0    1389
SAS-CompFeed      INDIA                          1                            0      838    1389
SAS-CompFeed      INDIA                          1                            1       12    1389
SAS-FoodSuppl     INDIA                          0                            0       67     402
SAS-FoodSuppl     INDIA                          0                            1        1     402
SAS-FoodSuppl     INDIA                          1                            0      331     402
SAS-FoodSuppl     INDIA                          1                            1        3     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0     1589    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0      507    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    2096
VITAMIN-A         INDIA                          0                            0     1242    3615
VITAMIN-A         INDIA                          0                            1        4    3615
VITAMIN-A         INDIA                          1                            0     2341    3615
VITAMIN-A         INDIA                          1                            1       28    3615
ZVITAMBO          ZIMBABWE                       0                            0     8569   11708
ZVITAMBO          ZIMBABWE                       0                            1      132   11708
ZVITAMBO          ZIMBABWE                       1                            0     2733   11708
ZVITAMBO          ZIMBABWE                       1                            1      274   11708


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
![](/tmp/014f5e6a-e605-425f-8451-cd75330c0489/700ca6a4-ed88-4fcd-9cae-24b839d84534/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/014f5e6a-e605-425f-8451-cd75330c0489/700ca6a4-ed88-4fcd-9cae-24b839d84534/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/014f5e6a-e605-425f-8451-cd75330c0489/700ca6a4-ed88-4fcd-9cae-24b839d84534/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/014f5e6a-e605-425f-8451-cd75330c0489/700ca6a4-ed88-4fcd-9cae-24b839d84534/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0038295   0.0020633   0.0055957
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0084191   0.0047969   0.0120413
iLiNS-DOSE        MALAWI         0                    NA                0.0543003   0.0411843   0.0674163
iLiNS-DOSE        MALAWI         1                    NA                0.0917449   0.0700341   0.1134556
iLiNS-DYAD-M      MALAWI         0                    NA                0.0159384   0.0070269   0.0248499
iLiNS-DYAD-M      MALAWI         1                    NA                0.0298457   0.0129462   0.0467453
JiVitA-3          BANGLADESH     0                    NA                0.0102070   0.0081189   0.0122952
JiVitA-3          BANGLADESH     1                    NA                0.0146163   0.0123141   0.0169184
JiVitA-4          BANGLADESH     0                    NA                0.0051133   0.0021912   0.0080353
JiVitA-4          BANGLADESH     1                    NA                0.0125823   0.0085671   0.0165975
Keneba            GAMBIA         0                    NA                0.0132921   0.0075100   0.0190743
Keneba            GAMBIA         1                    NA                0.0188238   0.0113582   0.0262894
ZVITAMBO          ZIMBABWE       0                    NA                0.0153310   0.0127505   0.0179114
ZVITAMBO          ZIMBABWE       1                    NA                0.0859738   0.0756463   0.0963014


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
Burkina Faso Zn   BURKINA FASO   1                    0                 2.198469   1.1700763   4.130728
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.689584   1.2052611   2.368528
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.872567   0.8451581   4.148938
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.431978   1.1124618   1.843263
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.460728   1.2853456   4.710936
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.416165   0.7859786   2.551625
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.607860   4.5609468   6.895080


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0016151    0.0002254   0.0030049
iLiNS-DOSE        MALAWI         0                    NA                0.0134692    0.0039021   0.0230363
iLiNS-DYAD-M      MALAWI         0                    NA                0.0047334   -0.0018254   0.0112923
JiVitA-3          BANGLADESH     0                    NA                0.0026695    0.0009061   0.0044329
JiVitA-4          BANGLADESH     0                    NA                0.0039057    0.0012989   0.0065125
Keneba            GAMBIA         0                    NA                0.0026441   -0.0016964   0.0069847
ZVITAMBO          ZIMBABWE       0                    NA                0.0193462    0.0165522   0.0221401


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2966459    0.0135624   0.4984914
iLiNS-DOSE        MALAWI         0                    NA                0.1987504    0.0486882   0.3251415
iLiNS-DYAD-M      MALAWI         0                    NA                0.2289796   -0.1438117   0.4802706
JiVitA-3          BANGLADESH     0                    NA                0.2073153    0.0613877   0.3305552
JiVitA-4          BANGLADESH     0                    NA                0.4330548    0.0863038   0.6482126
Keneba            GAMBIA         0                    NA                0.1659198   -0.1501458   0.3951290
ZVITAMBO          ZIMBABWE       0                    NA                0.5578945    0.4926256   0.6147672
