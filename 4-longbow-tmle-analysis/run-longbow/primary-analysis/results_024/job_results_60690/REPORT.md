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

studyid           country                        ever_underweight024    dead6plus   n_cell       n
----------------  -----------------------------  --------------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                              0     4723    7163
Burkina Faso Zn   BURKINA FASO                   0                              1       22    7163
Burkina Faso Zn   BURKINA FASO                   1                              0     2392    7163
Burkina Faso Zn   BURKINA FASO                   1                              1       26    7163
EE                PAKISTAN                       0                              0       52     375
EE                PAKISTAN                       0                              1        0     375
EE                PAKISTAN                       1                              0      319     375
EE                PAKISTAN                       1                              1        4     375
GMS-Nepal         NEPAL                          0                              0      151     592
GMS-Nepal         NEPAL                          0                              1        1     592
GMS-Nepal         NEPAL                          1                              0      439     592
GMS-Nepal         NEPAL                          1                              1        1     592
iLiNS-DOSE        MALAWI                         0                              0     1115    1874
iLiNS-DOSE        MALAWI                         0                              1       63    1874
iLiNS-DOSE        MALAWI                         1                              0      632    1874
iLiNS-DOSE        MALAWI                         1                              1       64    1874
iLiNS-DYAD-M      MALAWI                         0                              0      753    1161
iLiNS-DYAD-M      MALAWI                         0                              1       14    1161
iLiNS-DYAD-M      MALAWI                         1                              0      380    1161
iLiNS-DYAD-M      MALAWI                         1                              1       14    1161
JiVitA-3          BANGLADESH                     0                              0     9914   21046
JiVitA-3          BANGLADESH                     0                              1      109   21046
JiVitA-3          BANGLADESH                     1                              0    10820   21046
JiVitA-3          BANGLADESH                     1                              1      203   21046
JiVitA-4          BANGLADESH                     0                              0     2562    5433
JiVitA-4          BANGLADESH                     0                              1       13    5433
JiVitA-4          BANGLADESH                     1                              0     2821    5433
JiVitA-4          BANGLADESH                     1                              1       37    5433
Keneba            GAMBIA                         0                              0     1472    2761
Keneba            GAMBIA                         0                              1       34    2761
Keneba            GAMBIA                         1                              0     1210    2761
Keneba            GAMBIA                         1                              1       45    2761
MAL-ED            BANGLADESH                     0                              0      109     240
MAL-ED            BANGLADESH                     0                              1        0     240
MAL-ED            BANGLADESH                     1                              0      131     240
MAL-ED            BANGLADESH                     1                              1        0     240
MAL-ED            INDIA                          0                              0       87     235
MAL-ED            INDIA                          0                              1        0     235
MAL-ED            INDIA                          1                              0      148     235
MAL-ED            INDIA                          1                              1        0     235
MAL-ED            PERU                           0                              0      204     273
MAL-ED            PERU                           0                              1        1     273
MAL-ED            PERU                           1                              0       68     273
MAL-ED            PERU                           1                              1        0     273
MAL-ED            SOUTH AFRICA                   0                              0      176     261
MAL-ED            SOUTH AFRICA                   0                              1        0     261
MAL-ED            SOUTH AFRICA                   1                              0       85     261
MAL-ED            SOUTH AFRICA                   1                              1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              0      135     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              0      110     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              1        0     245
PROVIDE           BANGLADESH                     0                              0      294     617
PROVIDE           BANGLADESH                     0                              1        1     617
PROVIDE           BANGLADESH                     1                              0      320     617
PROVIDE           BANGLADESH                     1                              1        2     617
SAS-CompFeed      INDIA                          0                              0      539    1389
SAS-CompFeed      INDIA                          0                              1        0    1389
SAS-CompFeed      INDIA                          1                              0      838    1389
SAS-CompFeed      INDIA                          1                              1       12    1389
SAS-FoodSuppl     INDIA                          0                              0       67     402
SAS-FoodSuppl     INDIA                          0                              1        1     402
SAS-FoodSuppl     INDIA                          1                              0      331     402
SAS-FoodSuppl     INDIA                          1                              1        3     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     1589    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0      507    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2096
VITAMIN-A         INDIA                          0                              0     1242    3615
VITAMIN-A         INDIA                          0                              1        4    3615
VITAMIN-A         INDIA                          1                              0     2341    3615
VITAMIN-A         INDIA                          1                              1       28    3615
ZVITAMBO          ZIMBABWE                       0                              0     8562   11708
ZVITAMBO          ZIMBABWE                       0                              1      139   11708
ZVITAMBO          ZIMBABWE                       1                              0     2730   11708
ZVITAMBO          ZIMBABWE                       1                              1      277   11708


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
![](/tmp/77756a2e-b9e4-4413-97c7-db9a739b6b65/5be51dc2-33cf-44e6-8890-70d1c7c6b4d3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/77756a2e-b9e4-4413-97c7-db9a739b6b65/5be51dc2-33cf-44e6-8890-70d1c7c6b4d3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/77756a2e-b9e4-4413-97c7-db9a739b6b65/5be51dc2-33cf-44e6-8890-70d1c7c6b4d3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/77756a2e-b9e4-4413-97c7-db9a739b6b65/5be51dc2-33cf-44e6-8890-70d1c7c6b4d3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0047003   0.0027422   0.0066584
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0105401   0.0064538   0.0146264
iLiNS-DOSE        MALAWI         0                    NA                0.0547195   0.0415841   0.0678550
iLiNS-DOSE        MALAWI         1                    NA                0.0892880   0.0676956   0.1108803
iLiNS-DYAD-M      MALAWI         0                    NA                0.0186062   0.0091254   0.0280871
iLiNS-DYAD-M      MALAWI         1                    NA                0.0364121   0.0182170   0.0546071
JiVitA-3          BANGLADESH     0                    NA                0.0113634   0.0091291   0.0135976
JiVitA-3          BANGLADESH     1                    NA                0.0171969   0.0147140   0.0196798
JiVitA-4          BANGLADESH     0                    NA                0.0051074   0.0021996   0.0080152
JiVitA-4          BANGLADESH     1                    NA                0.0129070   0.0088062   0.0170077
Keneba            GAMBIA         0                    NA                0.0229850   0.0152634   0.0307066
Keneba            GAMBIA         1                    NA                0.0340454   0.0239776   0.0441132
ZVITAMBO          ZIMBABWE       0                    NA                0.0162195   0.0135559   0.0188830
ZVITAMBO          ZIMBABWE       1                    NA                0.0888793   0.0784264   0.0993321


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
Burkina Faso Zn   BURKINA FASO   1                    0                 2.242430   1.2693141   3.961581
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.631738   1.1603491   2.294628
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.956984   0.9586285   3.995069
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.513361   1.1883233   1.927306
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.527107   1.3227172   4.828144
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.481198   0.9466840   2.317507
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.479790   4.4779688   6.705741


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0020008    0.0004544   0.0035472
iLiNS-DOSE        MALAWI         0                    NA                0.0130499    0.0034894   0.0226105
iLiNS-DYAD-M      MALAWI         0                    NA                0.0055109   -0.0014914   0.0125132
JiVitA-3          BANGLADESH     0                    NA                0.0034613    0.0015531   0.0053695
JiVitA-4          BANGLADESH     0                    NA                0.0040956    0.0014574   0.0067339
Keneba            GAMBIA         0                    NA                0.0056278   -0.0003625   0.0116181
ZVITAMBO          ZIMBABWE       0                    NA                0.0193118    0.0164954   0.0221282


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2985775    0.0470828   0.4836975
iLiNS-DOSE        MALAWI         0                    NA                0.1925638    0.0426146   0.3190275
iLiNS-DYAD-M      MALAWI         0                    NA                0.2285068   -0.1047431   0.4612306
JiVitA-3          BANGLADESH     0                    NA                0.2334830    0.0968690   0.3494317
JiVitA-4          BANGLADESH     0                    NA                0.4450293    0.1044695   0.6560781
Keneba            GAMBIA         0                    NA                0.1966879   -0.0369796   0.3777019
ZVITAMBO          ZIMBABWE       0                    NA                0.5435156    0.4783311   0.6005551
