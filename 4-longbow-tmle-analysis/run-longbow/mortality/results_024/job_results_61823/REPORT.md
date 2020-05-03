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

studyid           country                        ever_sunderweight024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0     6333    7165  dead             
Burkina Faso Zn   BURKINA FASO                   0                          1       31    7165  dead             
Burkina Faso Zn   BURKINA FASO                   1                          0      793    7165  dead             
Burkina Faso Zn   BURKINA FASO                   1                          1        8    7165  dead             
EE                PAKISTAN                       0                          0      175     380  dead             
EE                PAKISTAN                       0                          1        1     380  dead             
EE                PAKISTAN                       1                          0      201     380  dead             
EE                PAKISTAN                       1                          1        3     380  dead             
GMS-Nepal         NEPAL                          0                          0      464     697  dead             
GMS-Nepal         NEPAL                          0                          1        3     697  dead             
GMS-Nepal         NEPAL                          1                          0      226     697  dead             
GMS-Nepal         NEPAL                          1                          1        4     697  dead             
iLiNS-DOSE        MALAWI                         0                          0     1576    1931  dead             
iLiNS-DOSE        MALAWI                         0                          1       99    1931  dead             
iLiNS-DOSE        MALAWI                         1                          0      227    1931  dead             
iLiNS-DOSE        MALAWI                         1                          1       29    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                          0     1024    1205  dead             
iLiNS-DYAD-M      MALAWI                         0                          1       24    1205  dead             
iLiNS-DYAD-M      MALAWI                         1                          0      141    1205  dead             
iLiNS-DYAD-M      MALAWI                         1                          1       16    1205  dead             
JiVitA-3          BANGLADESH                     0                          0    21585   27260  dead             
JiVitA-3          BANGLADESH                     0                          1      413   27260  dead             
JiVitA-3          BANGLADESH                     1                          0     4849   27260  dead             
JiVitA-3          BANGLADESH                     1                          1      413   27260  dead             
JiVitA-4          BANGLADESH                     0                          0     4478    5443  dead             
JiVitA-4          BANGLADESH                     0                          1       28    5443  dead             
JiVitA-4          BANGLADESH                     1                          0      916    5443  dead             
JiVitA-4          BANGLADESH                     1                          1       21    5443  dead             
Keneba            GAMBIA                         0                          0     2374    2929  dead             
Keneba            GAMBIA                         0                          1       41    2929  dead             
Keneba            GAMBIA                         1                          0      491    2929  dead             
Keneba            GAMBIA                         1                          1       23    2929  dead             
MAL-ED            BANGLADESH                     0                          0      223     265  dead             
MAL-ED            BANGLADESH                     0                          1        2     265  dead             
MAL-ED            BANGLADESH                     1                          0       39     265  dead             
MAL-ED            BANGLADESH                     1                          1        1     265  dead             
MAL-ED            INDIA                          0                          0      197     251  dead             
MAL-ED            INDIA                          0                          1        1     251  dead             
MAL-ED            INDIA                          1                          0       52     251  dead             
MAL-ED            INDIA                          1                          1        1     251  dead             
MAL-ED            PERU                           0                          0      285     303  dead             
MAL-ED            PERU                           0                          1        2     303  dead             
MAL-ED            PERU                           1                          0       16     303  dead             
MAL-ED            PERU                           1                          1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                          0      287     314  dead             
MAL-ED            SOUTH AFRICA                   0                          1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                          0       26     314  dead             
MAL-ED            SOUTH AFRICA                   1                          1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      225     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0       34     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        1     262  dead             
PROVIDE           BANGLADESH                     0                          0      602     700  dead             
PROVIDE           BANGLADESH                     0                          1        4     700  dead             
PROVIDE           BANGLADESH                     1                          0       94     700  dead             
PROVIDE           BANGLADESH                     1                          1        0     700  dead             
SAS-CompFeed      INDIA                          0                          0     1100    1533  dead             
SAS-CompFeed      INDIA                          0                          1       23    1533  dead             
SAS-CompFeed      INDIA                          1                          0      383    1533  dead             
SAS-CompFeed      INDIA                          1                          1       27    1533  dead             
SAS-FoodSuppl     INDIA                          0                          0      230     418  dead             
SAS-FoodSuppl     INDIA                          0                          1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                          0      182     418  dead             
SAS-FoodSuppl     INDIA                          1                          1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2242    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      153    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead             
VITAMIN-A         INDIA                          0                          0     2612    3906  dead             
VITAMIN-A         INDIA                          0                          1       27    3906  dead             
VITAMIN-A         INDIA                          1                          0     1216    3906  dead             
VITAMIN-A         INDIA                          1                          1       51    3906  dead             
ZVITAMBO          ZIMBABWE                       0                          0    12049   14086  dead             
ZVITAMBO          ZIMBABWE                       0                          1      721   14086  dead             
ZVITAMBO          ZIMBABWE                       1                          0      929   14086  dead             
ZVITAMBO          ZIMBABWE                       1                          1      387   14086  dead             


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e7602fd2-32be-45e1-a25f-9249cbd5ff3a/7f059fb1-e399-400b-a67e-88c7a0f1efaa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e7602fd2-32be-45e1-a25f-9249cbd5ff3a/7f059fb1-e399-400b-a67e-88c7a0f1efaa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e7602fd2-32be-45e1-a25f-9249cbd5ff3a/7f059fb1-e399-400b-a67e-88c7a0f1efaa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e7602fd2-32be-45e1-a25f-9249cbd5ff3a/7f059fb1-e399-400b-a67e-88c7a0f1efaa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048712   0.0031605   0.0065818
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0099875   0.0031008   0.0168742
iLiNS-DOSE        MALAWI         0                    NA                0.0591906   0.0478983   0.0704828
iLiNS-DOSE        MALAWI         1                    NA                0.1098946   0.0715390   0.1482501
iLiNS-DYAD-M      MALAWI         0                    NA                0.0228527   0.0137997   0.0319058
iLiNS-DYAD-M      MALAWI         1                    NA                0.0986294   0.0505039   0.1467549
JiVitA-3          BANGLADESH     0                    NA                0.0191979   0.0173821   0.0210138
JiVitA-3          BANGLADESH     1                    NA                0.0736520   0.0654667   0.0818374
JiVitA-4          BANGLADESH     0                    NA                0.0062441   0.0038614   0.0086268
JiVitA-4          BANGLADESH     1                    NA                0.0218760   0.0124218   0.0313303
Keneba            GAMBIA         0                    NA                0.0170436   0.0118535   0.0222337
Keneba            GAMBIA         1                    NA                0.0454675   0.0269657   0.0639693
SAS-CompFeed      INDIA          0                    NA                0.0210041   0.0085491   0.0334590
SAS-CompFeed      INDIA          1                    NA                0.0660474   0.0424436   0.0896513
VITAMIN-A         INDIA          0                    NA                0.0100601   0.0062483   0.0138719
VITAMIN-A         INDIA          1                    NA                0.0405997   0.0296813   0.0515182
ZVITAMBO          ZIMBABWE       0                    NA                0.0570202   0.0529966   0.0610438
ZVITAMBO          ZIMBABWE       1                    NA                0.2836056   0.2586468   0.3085645


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054431   0.0037394   0.0071469
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0331950   0.0230759   0.0433141
JiVitA-3          BANGLADESH     NA                   NA                0.0303008   0.0281489   0.0324527
JiVitA-4          BANGLADESH     NA                   NA                0.0090024   0.0064532   0.0115515
Keneba            GAMBIA         NA                   NA                0.0218505   0.0165551   0.0271458
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO          ZIMBABWE       NA                   NA                0.0786597   0.0742138   0.0831055


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.050340   0.9457226   4.445167
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.856623   1.2471947   2.763843
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 4.315869   2.3025117   8.089743
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.836455   3.3234436   4.428655
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 3.503478   1.9602729   6.261555
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.667720   1.6043759   4.435824
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 3.144507   1.7017082   5.810586
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 4.035708   2.5360968   6.422049
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 4.973773   4.4448266   5.565666


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005720   -0.0002222   0.0013661
iLiNS-DOSE        MALAWI         0                    NA                0.0070963    0.0016738   0.0125189
iLiNS-DYAD-M      MALAWI         0                    NA                0.0103423    0.0038969   0.0167877
JiVitA-3          BANGLADESH     0                    NA                0.0111029    0.0094886   0.0127171
JiVitA-4          BANGLADESH     0                    NA                0.0027583    0.0010630   0.0044536
Keneba            GAMBIA         0                    NA                0.0048069    0.0014971   0.0081166
SAS-CompFeed      INDIA          0                    NA                0.0116117    0.0050610   0.0181624
VITAMIN-A         INDIA          0                    NA                0.0099092    0.0061657   0.0136526
ZVITAMBO          ZIMBABWE       0                    NA                0.0216394    0.0190592   0.0242197


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1050823   -0.0490188   0.2365458
iLiNS-DOSE        MALAWI         0                    NA                0.1070550    0.0233466   0.1835889
iLiNS-DYAD-M      MALAWI         0                    NA                0.3115615    0.1176193   0.4628763
JiVitA-3          BANGLADESH     0                    NA                0.3664214    0.3207701   0.4090044
JiVitA-4          BANGLADESH     0                    NA                0.3063962    0.1132996   0.4574421
Keneba            GAMBIA         0                    NA                0.2199901    0.0639636   0.3500088
SAS-CompFeed      INDIA          0                    NA                0.3560153    0.1007414   0.5388242
VITAMIN-A         INDIA          0                    NA                0.4962201    0.3160903   0.6289068
ZVITAMBO          ZIMBABWE       0                    NA                0.2751022    0.2451264   0.3038877
