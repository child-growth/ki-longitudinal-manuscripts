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

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
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

studyid           country                        ever_stunted06    dead   n_cell       n
----------------  -----------------------------  ---------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                    0      297     338
Burkina Faso Zn   BURKINA FASO                   0                    1        2     338
Burkina Faso Zn   BURKINA FASO                   1                    0       39     338
Burkina Faso Zn   BURKINA FASO                   1                    1        0     338
EE                PAKISTAN                       0                    0       93     379
EE                PAKISTAN                       0                    1        0     379
EE                PAKISTAN                       1                    0      282     379
EE                PAKISTAN                       1                    1        4     379
GMS-Nepal         NEPAL                          0                    0      473     698
GMS-Nepal         NEPAL                          0                    1        3     698
GMS-Nepal         NEPAL                          1                    0      217     698
GMS-Nepal         NEPAL                          1                    1        5     698
iLiNS-DOSE        MALAWI                         0                    0     1194    1813
iLiNS-DOSE        MALAWI                         0                    1       73    1813
iLiNS-DOSE        MALAWI                         1                    0      505    1813
iLiNS-DOSE        MALAWI                         1                    1       41    1813
iLiNS-DYAD-M      MALAWI                         0                    0      835    1191
iLiNS-DYAD-M      MALAWI                         0                    1       23    1191
iLiNS-DYAD-M      MALAWI                         1                    0      317    1191
iLiNS-DYAD-M      MALAWI                         1                    1       16    1191
JiVitA-3          BANGLADESH                     0                    0    15085   27197
JiVitA-3          BANGLADESH                     0                    1      262   27197
JiVitA-3          BANGLADESH                     1                    0    11311   27197
JiVitA-3          BANGLADESH                     1                    1      539   27197
JiVitA-4          BANGLADESH                     0                    0     3217    5270
JiVitA-4          BANGLADESH                     0                    1       20    5270
JiVitA-4          BANGLADESH                     1                    0     2006    5270
JiVitA-4          BANGLADESH                     1                    1       27    5270
Keneba            GAMBIA                         0                    0     1669    2479
Keneba            GAMBIA                         0                    1       25    2479
Keneba            GAMBIA                         1                    0      751    2479
Keneba            GAMBIA                         1                    1       34    2479
MAL-ED            BANGLADESH                     0                    0      167     265
MAL-ED            BANGLADESH                     0                    1        0     265
MAL-ED            BANGLADESH                     1                    0       95     265
MAL-ED            BANGLADESH                     1                    1        3     265
MAL-ED            INDIA                          0                    0      158     251
MAL-ED            INDIA                          0                    1        1     251
MAL-ED            INDIA                          1                    0       91     251
MAL-ED            INDIA                          1                    1        1     251
MAL-ED            PERU                           0                    0      171     303
MAL-ED            PERU                           0                    1        1     303
MAL-ED            PERU                           1                    0      130     303
MAL-ED            PERU                           1                    1        1     303
MAL-ED            SOUTH AFRICA                   0                    0      194     314
MAL-ED            SOUTH AFRICA                   0                    1        0     314
MAL-ED            SOUTH AFRICA                   1                    0      119     314
MAL-ED            SOUTH AFRICA                   1                    1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      148     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        1     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0      111     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        2     262
PROVIDE           BANGLADESH                     0                    0      527     700
PROVIDE           BANGLADESH                     0                    1        4     700
PROVIDE           BANGLADESH                     1                    0      169     700
PROVIDE           BANGLADESH                     1                    1        0     700
SAS-CompFeed      INDIA                          0                    0      853    1532
SAS-CompFeed      INDIA                          0                    1       14    1532
SAS-CompFeed      INDIA                          1                    0      629    1532
SAS-CompFeed      INDIA                          1                    1       36    1532
SAS-FoodSuppl     INDIA                          0                    0      226     418
SAS-FoodSuppl     INDIA                          0                    1        2     418
SAS-FoodSuppl     INDIA                          1                    0      186     418
SAS-FoodSuppl     INDIA                          1                    1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1905    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      490    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
VITAMIN-A         INDIA                          0                    0     2265    3898
VITAMIN-A         INDIA                          0                    1       29    3898
VITAMIN-A         INDIA                          1                    0     1556    3898
VITAMIN-A         INDIA                          1                    1       48    3898
ZVITAMBO          ZIMBABWE                       0                    0     9428   14060
ZVITAMBO          ZIMBABWE                       0                    1      623   14060
ZVITAMBO          ZIMBABWE                       1                    0     3527   14060
ZVITAMBO          ZIMBABWE                       1                    1      482   14060


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

* studyid: Burkina Faso Zn, country: BURKINA FASO
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
![](/tmp/73ece3b1-ab09-4f68-983f-6a32c64c7e1b/3db29a86-def9-4495-ba5b-cd59f9b3923b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73ece3b1-ab09-4f68-983f-6a32c64c7e1b/3db29a86-def9-4495-ba5b-cd59f9b3923b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73ece3b1-ab09-4f68-983f-6a32c64c7e1b/3db29a86-def9-4495-ba5b-cd59f9b3923b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73ece3b1-ab09-4f68-983f-6a32c64c7e1b/3db29a86-def9-4495-ba5b-cd59f9b3923b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0572678   0.0444485   0.0700871
iLiNS-DOSE     MALAWI       1                    NA                0.0733723   0.0513330   0.0954117
iLiNS-DYAD-M   MALAWI       0                    NA                0.0269854   0.0161864   0.0377845
iLiNS-DYAD-M   MALAWI       1                    NA                0.0497955   0.0268646   0.0727265
JiVitA-3       BANGLADESH   0                    NA                0.0178811   0.0155953   0.0201669
JiVitA-3       BANGLADESH   1                    NA                0.0441642   0.0399967   0.0483317
JiVitA-4       BANGLADESH   0                    NA                0.0062370   0.0030228   0.0094511
JiVitA-4       BANGLADESH   1                    NA                0.0130846   0.0082683   0.0179009
Keneba         GAMBIA       0                    NA                0.0159106   0.0096178   0.0222034
Keneba         GAMBIA       1                    NA                0.0424006   0.0280691   0.0567320
SAS-CompFeed   INDIA        0                    NA                0.0166901   0.0102506   0.0231296
SAS-CompFeed   INDIA        1                    NA                0.0516072   0.0257083   0.0775060
VITAMIN-A      INDIA        0                    NA                0.0124777   0.0079032   0.0170522
VITAMIN-A      INDIA        1                    NA                0.0297148   0.0213548   0.0380747
ZVITAMBO       ZIMBABWE     0                    NA                0.0620307   0.0572876   0.0667738
ZVITAMBO       ZIMBABWE     1                    NA                0.1167264   0.1065770   0.1268758


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0327456   0.0226340   0.0428572
JiVitA-3       BANGLADESH   NA                   NA                0.0294518   0.0273600   0.0315436
JiVitA-4       BANGLADESH   NA                   NA                0.0089184   0.0062077   0.0116291
Keneba         GAMBIA       NA                   NA                0.0237999   0.0177985   0.0298013
SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
VITAMIN-A      INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ZVITAMBO       ZIMBABWE     NA                   NA                0.0785917   0.0741435   0.0830400


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.281215   0.8809166   1.863414
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.845274   1.0021113   3.397861
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.469882   2.1059924   2.896646
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.097902   1.1152302   3.946444
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 2.664932   1.5833253   4.485409
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.092085   1.6502249   5.793749
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.381435   1.5003012   3.780061
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.881752   1.6772034   2.111247


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0056114   -0.0021610   0.0133838
iLiNS-DYAD-M   MALAWI       0                    NA                0.0057601   -0.0013587   0.0128790
JiVitA-3       BANGLADESH   0                    NA                0.0115707    0.0094850   0.0136564
JiVitA-4       BANGLADESH   0                    NA                0.0026814    0.0004185   0.0049444
Keneba         GAMBIA       0                    NA                0.0078894    0.0026622   0.0131165
SAS-CompFeed   INDIA        0                    NA                0.0159470    0.0040213   0.0278727
VITAMIN-A      INDIA        0                    NA                0.0072760    0.0033531   0.0111990
ZVITAMBO       ZIMBABWE     0                    NA                0.0165611    0.0133127   0.0198095


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0892414   -0.0421148   0.2040405
iLiNS-DYAD-M   MALAWI       0                    NA                0.1759060   -0.0637595   0.3615747
JiVitA-3       BANGLADESH   0                    NA                0.3928690    0.3244083   0.4543924
JiVitA-4       BANGLADESH   0                    NA                0.3006619   -0.0059780   0.5138326
Keneba         GAMBIA       0                    NA                0.3314868    0.0938883   0.5067827
SAS-CompFeed   INDIA        0                    NA                0.4886157    0.1984826   0.6737264
VITAMIN-A      INDIA        0                    NA                0.3683381    0.1568189   0.5267959
ZVITAMBO       ZIMBABWE     0                    NA                0.2107227    0.1699147   0.2495245
