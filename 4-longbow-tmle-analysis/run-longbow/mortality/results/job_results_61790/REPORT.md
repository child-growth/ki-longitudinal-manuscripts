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
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_stunted06    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0      295     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                         1        2     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         0       39     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         1        0     336  dead6plus        
EE                PAKISTAN                       0                         0       91     374  dead6plus        
EE                PAKISTAN                       0                         1        0     374  dead6plus        
EE                PAKISTAN                       1                         0      279     374  dead6plus        
EE                PAKISTAN                       1                         1        4     374  dead6plus        
GMS-Nepal         NEPAL                          0                         0      398     592  dead6plus        
GMS-Nepal         NEPAL                          0                         1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                         0      192     592  dead6plus        
GMS-Nepal         NEPAL                          1                         1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                         0     1156    1756  dead6plus        
iLiNS-DOSE        MALAWI                         0                         1       73    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                         0      487    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                         1       40    1756  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         0      810    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         1       15    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         0      310    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         1       13    1148  dead6plus        
JiVitA-3          BANGLADESH                     0                         0    11895   21009  dead6plus        
JiVitA-3          BANGLADESH                     0                         1      121   21009  dead6plus        
JiVitA-3          BANGLADESH                     1                         0     8804   21009  dead6plus        
JiVitA-3          BANGLADESH                     1                         1      189   21009  dead6plus        
JiVitA-4          BANGLADESH                     0                         0     3210    5260  dead6plus        
JiVitA-4          BANGLADESH                     0                         1       20    5260  dead6plus        
JiVitA-4          BANGLADESH                     1                         0     2002    5260  dead6plus        
JiVitA-4          BANGLADESH                     1                         1       28    5260  dead6plus        
Keneba            GAMBIA                         0                         0     1535    2312  dead6plus        
Keneba            GAMBIA                         0                         1       35    2312  dead6plus        
Keneba            GAMBIA                         1                         0      709    2312  dead6plus        
Keneba            GAMBIA                         1                         1       33    2312  dead6plus        
MAL-ED            BANGLADESH                     0                         0      155     240  dead6plus        
MAL-ED            BANGLADESH                     0                         1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                         0       85     240  dead6plus        
MAL-ED            BANGLADESH                     1                         1        0     240  dead6plus        
MAL-ED            INDIA                          0                         0      149     235  dead6plus        
MAL-ED            INDIA                          0                         1        0     235  dead6plus        
MAL-ED            INDIA                          1                         0       86     235  dead6plus        
MAL-ED            INDIA                          1                         1        0     235  dead6plus        
MAL-ED            PERU                           0                         0      149     273  dead6plus        
MAL-ED            PERU                           0                         1        0     273  dead6plus        
MAL-ED            PERU                           1                         0      123     273  dead6plus        
MAL-ED            PERU                           1                         1        1     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         0      155     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         0      106     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      140     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      105     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                         0      455     617  dead6plus        
PROVIDE           BANGLADESH                     0                         1        2     617  dead6plus        
PROVIDE           BANGLADESH                     1                         0      159     617  dead6plus        
PROVIDE           BANGLADESH                     1                         1        1     617  dead6plus        
SAS-CompFeed      INDIA                          0                         0      796    1388  dead6plus        
SAS-CompFeed      INDIA                          0                         1        2    1388  dead6plus        
SAS-CompFeed      INDIA                          1                         0      580    1388  dead6plus        
SAS-CompFeed      INDIA                          1                         1       10    1388  dead6plus        
SAS-FoodSuppl     INDIA                          0                         0      214     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                         1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         0      184     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1651    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      445    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                         0     2094    3605  dead6plus        
VITAMIN-A         INDIA                          0                         1       11    3605  dead6plus        
VITAMIN-A         INDIA                          1                         0     1480    3605  dead6plus        
VITAMIN-A         INDIA                          1                         1       20    3605  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         0     8019   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         1      199   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         0     3260   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         1      216   11694  dead6plus        


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
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9e49bb97-61bb-4fbd-b6f8-7d000da586fc/a633dea9-a6a3-47ae-b9a2-11c550c34ebf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9e49bb97-61bb-4fbd-b6f8-7d000da586fc/a633dea9-a6a3-47ae-b9a2-11c550c34ebf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9e49bb97-61bb-4fbd-b6f8-7d000da586fc/a633dea9-a6a3-47ae-b9a2-11c550c34ebf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9e49bb97-61bb-4fbd-b6f8-7d000da586fc/a633dea9-a6a3-47ae-b9a2-11c550c34ebf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0592174   0.0460070   0.0724278
iLiNS-DOSE     MALAWI       1                    NA                0.0720825   0.0500728   0.0940922
iLiNS-DYAD-M   MALAWI       0                    NA                0.0180108   0.0089111   0.0271104
iLiNS-DYAD-M   MALAWI       1                    NA                0.0396051   0.0178873   0.0613228
JiVitA-3       BANGLADESH   0                    NA                0.0103366   0.0083786   0.0122947
JiVitA-3       BANGLADESH   1                    NA                0.0200641   0.0167565   0.0233717
JiVitA-4       BANGLADESH   0                    NA                0.0062075   0.0030099   0.0094051
JiVitA-4       BANGLADESH   1                    NA                0.0136751   0.0087271   0.0186231
Keneba         GAMBIA       0                    NA                0.0224276   0.0149969   0.0298582
Keneba         GAMBIA       1                    NA                0.0415416   0.0273263   0.0557569
VITAMIN-A      INDIA        0                    NA                0.0052469   0.0021490   0.0083448
VITAMIN-A      INDIA        1                    NA                0.0132731   0.0074694   0.0190768
ZVITAMBO       ZIMBABWE     0                    NA                0.0243736   0.0210218   0.0277253
ZVITAMBO       ZIMBABWE     1                    NA                0.0587689   0.0508673   0.0666706


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0243902   0.0154631   0.0333174
JiVitA-3       BANGLADESH   NA                   NA                0.0147556   0.0131087   0.0164025
JiVitA-4       BANGLADESH   NA                   NA                0.0091255   0.0063790   0.0118719
Keneba         GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ZVITAMBO       ZIMBABWE     NA                   NA                0.0354883   0.0321349   0.0388417


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.217252   0.8338484   1.776946
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.198968   1.0438445   4.632358
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.941067   1.5087059   2.497334
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.202985   1.1747972   4.131047
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.852257   1.1501288   2.983020
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.529700   1.2134660   5.273638
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.411174   1.9896523   2.921997


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0051334   -0.0028135   0.0130803
iLiNS-DYAD-M   MALAWI       0                    NA                0.0063795   -0.0002024   0.0129614
JiVitA-3       BANGLADESH   0                    NA                0.0044189    0.0027693   0.0060686
JiVitA-4       BANGLADESH   0                    NA                0.0029180    0.0006156   0.0052203
Keneba         GAMBIA       0                    NA                0.0069842    0.0015062   0.0124622
VITAMIN-A      INDIA        0                    NA                0.0033523    0.0006065   0.0060981
ZVITAMBO       ZIMBABWE     0                    NA                0.0111147    0.0084872   0.0137422


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0797723   -0.0515037   0.1946590
iLiNS-DYAD-M   MALAWI       0                    NA                0.2615587   -0.0410167   0.4761894
JiVitA-3       BANGLADESH   0                    NA                0.2994757    0.1840509   0.3985724
JiVitA-4       BANGLADESH   0                    NA                0.3197596    0.0165932   0.5294653
Keneba         GAMBIA       0                    NA                0.2374628    0.0370001   0.3961961
VITAMIN-A      INDIA        0                    NA                0.3898367    0.0200284   0.6200918
ZVITAMBO       ZIMBABWE     0                    NA                0.3131937    0.2416010   0.3780281
