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

studyid           country                        ever_sunderweight024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                               0     6327    7165  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                               1       37    7165  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                               0      790    7165  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                               1       11    7165  dead0plus        
EE                PAKISTAN                       0                               0      175     380  dead0plus        
EE                PAKISTAN                       0                               1        1     380  dead0plus        
EE                PAKISTAN                       1                               0      201     380  dead0plus        
EE                PAKISTAN                       1                               1        3     380  dead0plus        
GMS-Nepal         NEPAL                          0                               0      464     697  dead0plus        
GMS-Nepal         NEPAL                          0                               1        3     697  dead0plus        
GMS-Nepal         NEPAL                          1                               0      226     697  dead0plus        
GMS-Nepal         NEPAL                          1                               1        4     697  dead0plus        
iLiNS-DOSE        MALAWI                         0                               0     1576    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                               1       99    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                               0      227    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                               1       29    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                               0     1020    1205  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                               1       28    1205  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                               0      141    1205  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                               1       16    1205  dead0plus        
JiVitA-3          BANGLADESH                     0                               0    21565   27260  dead0plus        
JiVitA-3          BANGLADESH                     0                               1      433   27260  dead0plus        
JiVitA-3          BANGLADESH                     1                               0     4828   27260  dead0plus        
JiVitA-3          BANGLADESH                     1                               1      434   27260  dead0plus        
JiVitA-4          BANGLADESH                     0                               0     4477    5443  dead0plus        
JiVitA-4          BANGLADESH                     0                               1       29    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                               0      916    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                               1       21    5443  dead0plus        
Keneba            GAMBIA                         0                               0     2353    2929  dead0plus        
Keneba            GAMBIA                         0                               1       62    2929  dead0plus        
Keneba            GAMBIA                         1                               0      477    2929  dead0plus        
Keneba            GAMBIA                         1                               1       37    2929  dead0plus        
MAL-ED            BANGLADESH                     0                               0      223     265  dead0plus        
MAL-ED            BANGLADESH                     0                               1        2     265  dead0plus        
MAL-ED            BANGLADESH                     1                               0       39     265  dead0plus        
MAL-ED            BANGLADESH                     1                               1        1     265  dead0plus        
MAL-ED            INDIA                          0                               0      197     251  dead0plus        
MAL-ED            INDIA                          0                               1        1     251  dead0plus        
MAL-ED            INDIA                          1                               0       52     251  dead0plus        
MAL-ED            INDIA                          1                               1        1     251  dead0plus        
MAL-ED            PERU                           0                               0      285     303  dead0plus        
MAL-ED            PERU                           0                               1        2     303  dead0plus        
MAL-ED            PERU                           1                               0       16     303  dead0plus        
MAL-ED            PERU                           1                               1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                               0      287     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                               1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                               0       26     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                               1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               0      225     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               0       34     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                               0      601     700  dead0plus        
PROVIDE           BANGLADESH                     0                               1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                               0       94     700  dead0plus        
PROVIDE           BANGLADESH                     1                               1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                               0     1100    1533  dead0plus        
SAS-CompFeed      INDIA                          0                               1       23    1533  dead0plus        
SAS-CompFeed      INDIA                          1                               0      383    1533  dead0plus        
SAS-CompFeed      INDIA                          1                               1       27    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                               0      230     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                               1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                               0      182     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                               1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               0     2242    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               0      153    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                               0     2612    3906  dead0plus        
VITAMIN-A         INDIA                          0                               1       27    3906  dead0plus        
VITAMIN-A         INDIA                          1                               0     1216    3906  dead0plus        
VITAMIN-A         INDIA                          1                               1       51    3906  dead0plus        
ZVITAMBO          ZIMBABWE                       0                               0    12041   14086  dead0plus        
ZVITAMBO          ZIMBABWE                       0                               1      729   14086  dead0plus        
ZVITAMBO          ZIMBABWE                       1                               0      927   14086  dead0plus        
ZVITAMBO          ZIMBABWE                       1                               1      389   14086  dead0plus        


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
![](/tmp/c6a4431b-8de2-48b2-8e75-6aae1c3bb69f/285e1c1f-d554-411c-ac94-74ecf86c72e0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c6a4431b-8de2-48b2-8e75-6aae1c3bb69f/285e1c1f-d554-411c-ac94-74ecf86c72e0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c6a4431b-8de2-48b2-8e75-6aae1c3bb69f/285e1c1f-d554-411c-ac94-74ecf86c72e0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c6a4431b-8de2-48b2-8e75-6aae1c3bb69f/285e1c1f-d554-411c-ac94-74ecf86c72e0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0058471   0.0039706   0.0077235
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0130229   0.0052333   0.0208124
iLiNS-DOSE        MALAWI         0                    NA                0.0591845   0.0478926   0.0704763
iLiNS-DOSE        MALAWI         1                    NA                0.1112284   0.0726399   0.1498168
iLiNS-DYAD-M      MALAWI         0                    NA                0.0267480   0.0169693   0.0365267
iLiNS-DYAD-M      MALAWI         1                    NA                0.0991979   0.0499601   0.1484357
JiVitA-3          BANGLADESH     0                    NA                0.0200947   0.0182249   0.0219644
JiVitA-3          BANGLADESH     1                    NA                0.0787458   0.0699948   0.0874968
JiVitA-4          BANGLADESH     0                    NA                0.0064434   0.0040028   0.0088839
JiVitA-4          BANGLADESH     1                    NA                0.0214486   0.0120773   0.0308200
Keneba            GAMBIA         0                    NA                0.0256910   0.0193446   0.0320373
Keneba            GAMBIA         1                    NA                0.0711661   0.0486634   0.0936688
SAS-CompFeed      INDIA          0                    NA                0.0210041   0.0085491   0.0334590
SAS-CompFeed      INDIA          1                    NA                0.0660474   0.0424436   0.0896513
VITAMIN-A         INDIA          0                    NA                0.0101240   0.0062877   0.0139603
VITAMIN-A         INDIA          1                    NA                0.0409518   0.0297940   0.0521095
ZVITAMBO          ZIMBABWE       0                    NA                0.0578676   0.0538155   0.0619198
ZVITAMBO          ZIMBABWE       1                    NA                0.2821572   0.2574513   0.3068630


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
Burkina Faso Zn   BURKINA FASO   1                    0                 2.227246   1.129782   4.390780
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.879350   1.264782   2.792542
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 3.708610   2.001819   6.870647
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.918744   3.403418   4.512098
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 3.328790   1.861510   5.952610
Keneba            GAMBIA         0                    0                 1.000000   1.000000   1.000000
Keneba            GAMBIA         1                    0                 2.770082   1.854088   4.138615
SAS-CompFeed      INDIA          0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed      INDIA          1                    0                 3.144507   1.701708   5.810586
VITAMIN-A         INDIA          0                    0                 1.000000   1.000000   1.000000
VITAMIN-A         INDIA          1                    0                 4.045003   2.536561   6.450486
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 4.875907   4.360200   5.452610


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0008522   -0.0000765   0.0017808
iLiNS-DOSE        MALAWI         0                    NA                0.0071024    0.0016802   0.0125246
iLiNS-DYAD-M      MALAWI         0                    NA                0.0097665    0.0033075   0.0162256
JiVitA-3          BANGLADESH     0                    NA                0.0117102    0.0100500   0.0133704
JiVitA-4          BANGLADESH     0                    NA                0.0027427    0.0010448   0.0044407
Keneba            GAMBIA         0                    NA                0.0081090    0.0039523   0.0122657
SAS-CompFeed      INDIA          0                    NA                0.0116117    0.0050610   0.0181624
VITAMIN-A         INDIA          0                    NA                0.0098452    0.0060864   0.0136041
ZVITAMBO          ZIMBABWE       0                    NA                0.0215020    0.0189145   0.0240894


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1272030   -0.0174886   0.2513189
iLiNS-DOSE        MALAWI         0                    NA                0.1071466    0.0234444   0.1836745
iLiNS-DYAD-M      MALAWI         0                    NA                0.2674698    0.0886178   0.4112235
JiVitA-3          BANGLADESH     0                    NA                0.3681890    0.3232700   0.4101263
JiVitA-4          BANGLADESH     0                    NA                0.2985743    0.1079749   0.4484482
Keneba            GAMBIA         0                    NA                0.2399107    0.1163152   0.3462196
SAS-CompFeed      INDIA          0                    NA                0.3560153    0.1007414   0.5388242
VITAMIN-A         INDIA          0                    NA                0.4930191    0.3114229   0.6267236
ZVITAMBO          ZIMBABWE       0                    NA                0.2709093    0.2410542   0.2995900
