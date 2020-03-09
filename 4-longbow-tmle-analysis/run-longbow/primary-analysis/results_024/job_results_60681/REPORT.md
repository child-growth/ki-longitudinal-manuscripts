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

**Intervention Variable:** ever_sunderweight024

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

studyid           country                        ever_sunderweight024    dead0plus   n_cell       n
----------------  -----------------------------  ---------------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                               0     6327    7165
Burkina Faso Zn   BURKINA FASO                   0                               1       37    7165
Burkina Faso Zn   BURKINA FASO                   1                               0      790    7165
Burkina Faso Zn   BURKINA FASO                   1                               1       11    7165
EE                PAKISTAN                       0                               0      175     380
EE                PAKISTAN                       0                               1        1     380
EE                PAKISTAN                       1                               0      201     380
EE                PAKISTAN                       1                               1        3     380
GMS-Nepal         NEPAL                          0                               0      464     697
GMS-Nepal         NEPAL                          0                               1        3     697
GMS-Nepal         NEPAL                          1                               0      226     697
GMS-Nepal         NEPAL                          1                               1        4     697
iLiNS-DOSE        MALAWI                         0                               0     1576    1931
iLiNS-DOSE        MALAWI                         0                               1       99    1931
iLiNS-DOSE        MALAWI                         1                               0      227    1931
iLiNS-DOSE        MALAWI                         1                               1       29    1931
iLiNS-DYAD-M      MALAWI                         0                               0     1020    1205
iLiNS-DYAD-M      MALAWI                         0                               1       28    1205
iLiNS-DYAD-M      MALAWI                         1                               0      141    1205
iLiNS-DYAD-M      MALAWI                         1                               1       16    1205
JiVitA-3          BANGLADESH                     0                               0    21565   27260
JiVitA-3          BANGLADESH                     0                               1      433   27260
JiVitA-3          BANGLADESH                     1                               0     4828   27260
JiVitA-3          BANGLADESH                     1                               1      434   27260
JiVitA-4          BANGLADESH                     0                               0     4477    5443
JiVitA-4          BANGLADESH                     0                               1       29    5443
JiVitA-4          BANGLADESH                     1                               0      916    5443
JiVitA-4          BANGLADESH                     1                               1       21    5443
Keneba            GAMBIA                         0                               0     2353    2929
Keneba            GAMBIA                         0                               1       62    2929
Keneba            GAMBIA                         1                               0      477    2929
Keneba            GAMBIA                         1                               1       37    2929
MAL-ED            BANGLADESH                     0                               0      223     265
MAL-ED            BANGLADESH                     0                               1        2     265
MAL-ED            BANGLADESH                     1                               0       39     265
MAL-ED            BANGLADESH                     1                               1        1     265
MAL-ED            INDIA                          0                               0      197     251
MAL-ED            INDIA                          0                               1        1     251
MAL-ED            INDIA                          1                               0       52     251
MAL-ED            INDIA                          1                               1        1     251
MAL-ED            PERU                           0                               0      285     303
MAL-ED            PERU                           0                               1        2     303
MAL-ED            PERU                           1                               0       16     303
MAL-ED            PERU                           1                               1        0     303
MAL-ED            SOUTH AFRICA                   0                               0      287     314
MAL-ED            SOUTH AFRICA                   0                               1        0     314
MAL-ED            SOUTH AFRICA                   1                               0       26     314
MAL-ED            SOUTH AFRICA                   1                               1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               0      225     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               0       34     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               1        1     262
PROVIDE           BANGLADESH                     0                               0      601     700
PROVIDE           BANGLADESH                     0                               1        5     700
PROVIDE           BANGLADESH                     1                               0       94     700
PROVIDE           BANGLADESH                     1                               1        0     700
SAS-CompFeed      INDIA                          0                               0     1100    1533
SAS-CompFeed      INDIA                          0                               1       23    1533
SAS-CompFeed      INDIA                          1                               0      383    1533
SAS-CompFeed      INDIA                          1                               1       27    1533
SAS-FoodSuppl     INDIA                          0                               0      230     418
SAS-FoodSuppl     INDIA                          0                               1        2     418
SAS-FoodSuppl     INDIA                          1                               0      182     418
SAS-FoodSuppl     INDIA                          1                               1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               0     2242    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               0      153    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               1        0    2396
VITAMIN-A         INDIA                          0                               0     2612    3906
VITAMIN-A         INDIA                          0                               1       27    3906
VITAMIN-A         INDIA                          1                               0     1216    3906
VITAMIN-A         INDIA                          1                               1       51    3906
ZVITAMBO          ZIMBABWE                       0                               0    12041   14086
ZVITAMBO          ZIMBABWE                       0                               1      729   14086
ZVITAMBO          ZIMBABWE                       1                               0      927   14086
ZVITAMBO          ZIMBABWE                       1                               1      389   14086


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
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c83b2220-fcdd-4584-a2bc-4763c0f61098/53497a63-dc38-4c1f-954b-e5ebbcf8b84c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c83b2220-fcdd-4584-a2bc-4763c0f61098/53497a63-dc38-4c1f-954b-e5ebbcf8b84c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c83b2220-fcdd-4584-a2bc-4763c0f61098/53497a63-dc38-4c1f-954b-e5ebbcf8b84c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c83b2220-fcdd-4584-a2bc-4763c0f61098/53497a63-dc38-4c1f-954b-e5ebbcf8b84c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0058404   0.0039651   0.0077157
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0131024   0.0052919   0.0209129
iLiNS-DOSE        MALAWI         0                    NA                0.0591847   0.0478955   0.0704739
iLiNS-DOSE        MALAWI         1                    NA                0.1116032   0.0728177   0.1503887
iLiNS-DYAD-M      MALAWI         0                    NA                0.0267873   0.0170028   0.0365719
iLiNS-DYAD-M      MALAWI         1                    NA                0.0995665   0.0505024   0.1486306
JiVitA-3          BANGLADESH     0                    NA                0.0200772   0.0182225   0.0219319
JiVitA-3          BANGLADESH     1                    NA                0.0787792   0.0700958   0.0874626
JiVitA-4          BANGLADESH     0                    NA                0.0064522   0.0040105   0.0088940
JiVitA-4          BANGLADESH     1                    NA                0.0217694   0.0123342   0.0312046
Keneba            GAMBIA         0                    NA                0.0260688   0.0196411   0.0324966
Keneba            GAMBIA         1                    NA                0.0693527   0.0471966   0.0915088
SAS-CompFeed      INDIA          0                    NA                0.0210041   0.0085491   0.0334590
SAS-CompFeed      INDIA          1                    NA                0.0660474   0.0424436   0.0896513
VITAMIN-A         INDIA          0                    NA                0.0100870   0.0062688   0.0139052
VITAMIN-A         INDIA          1                    NA                0.0406263   0.0297050   0.0515475
ZVITAMBO          ZIMBABWE       0                    NA                0.0578249   0.0537745   0.0618752
ZVITAMBO          ZIMBABWE       1                    NA                0.2832026   0.2581978   0.3082075


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066992   0.0048103   0.0085882
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0365145   0.0259198   0.0471093
JiVitA-3          BANGLADESH     NA                   NA                0.0318048   0.0296069   0.0340028
JiVitA-4          BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731
Keneba            GAMBIA         NA                   NA                0.0337999   0.0272543   0.0403456
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO          ZIMBABWE       NA                   NA                0.0793696   0.0749054   0.0838337


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate   ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ---------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.243403   1.139954   4.414964
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.885677   1.268584   2.802949
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 3.716924   2.012758   6.863975
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.923813   3.408549   4.516969
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 3.373923   1.891136   6.019323
Keneba            GAMBIA         0                    0                 1.000000   1.000000   1.000000
Keneba            GAMBIA         1                    0                 2.660367   1.776493   3.984003
SAS-CompFeed      INDIA          0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed      INDIA          1                    0                 3.144507   1.701708   5.810586
VITAMIN-A         INDIA          0                    0                 1.000000   1.000000   1.000000
VITAMIN-A         INDIA          1                    0                 4.027577   2.531481   6.407860
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 4.897592   4.377137   5.479932


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0008588   -0.0000696   0.0017872
iLiNS-DOSE        MALAWI         0                    NA                0.0071022    0.0016888   0.0125156
iLiNS-DYAD-M      MALAWI         0                    NA                0.0097272    0.0032708   0.0161835
JiVitA-3          BANGLADESH     0                    NA                0.0117276    0.0100816   0.0133736
JiVitA-4          BANGLADESH     0                    NA                0.0027339    0.0010350   0.0044327
Keneba            GAMBIA         0                    NA                0.0077311    0.0035454   0.0119168
SAS-CompFeed      INDIA          0                    NA                0.0116117    0.0050610   0.0181624
VITAMIN-A         INDIA          0                    NA                0.0098823    0.0061365   0.0136280
ZVITAMBO          ZIMBABWE       0                    NA                0.0215447    0.0189610   0.0241284


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1281963   -0.0164177   0.2522350
iLiNS-DOSE        MALAWI         0                    NA                0.1071435    0.0235840   0.1835522
iLiNS-DYAD-M      MALAWI         0                    NA                0.2663921    0.0875598   0.4101745
JiVitA-3          BANGLADESH     0                    NA                0.3687374    0.3244372   0.4101326
JiVitA-4          BANGLADESH     0                    NA                0.2976081    0.1068820   0.4476044
Keneba            GAMBIA         0                    NA                0.2287307    0.1034132   0.3365323
SAS-CompFeed      INDIA          0                    NA                0.3560153    0.1007414   0.5388242
VITAMIN-A         INDIA          0                    NA                0.4948729    0.3144658   0.6278035
ZVITAMBO          ZIMBABWE       0                    NA                0.2714480    0.2416427   0.3000820
