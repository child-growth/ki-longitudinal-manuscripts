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

studyid                     country                        ever_underweight024    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                              0      109     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                              1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                              0      131     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                              1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                              0       87     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                              1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                              0      148     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                              1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                              0      204     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                              1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                              0       68     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                              1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              0      176     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              0       85     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      135     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0      110     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                              0       52     375  dead6plus        
ki1000109-EE                PAKISTAN                       0                              1        0     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                              0      319     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                              1        4     375  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                              0     1242    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                              1        4    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                              0     2341    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                              1       28    3615  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                              0      539    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                              1        0    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                              0      838    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                              1       12    1389  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                              0       67     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                              1        1     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                              0      331     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                              1        3     402  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                              0      294     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                              1        1     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                              0      320     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                              1        2     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     1589    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0      507    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                              0     1472    2761  dead6plus        
ki1101329-Keneba            GAMBIA                         0                              1       34    2761  dead6plus        
ki1101329-Keneba            GAMBIA                         1                              0     1210    2761  dead6plus        
ki1101329-Keneba            GAMBIA                         1                              1       45    2761  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              0     4723    7163  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              1       22    7163  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              0     2392    7163  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              1       26    7163  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                              0      151     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                              1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                              0      439     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                              1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                              0     8562   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                              1      139   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                              0     2730   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                              1      277   11708  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                              0     1115    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                              1       63    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                              0      632    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                              1       64    1874  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              0      751    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              1       14    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              0      382    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              1       14    1161  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                              0     9914   21046  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                              1      109   21046  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                              0    10820   21046  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                              1      203   21046  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                              0     2562    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                              1       13    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                              0     2821    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                              1       37    5433  dead6plus        


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/59b4895f-70e0-4e45-a09f-0abea2b2ef6d/c89b9fd9-ffce-440e-98c3-a5d65911cb5c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/59b4895f-70e0-4e45-a09f-0abea2b2ef6d/c89b9fd9-ffce-440e-98c3-a5d65911cb5c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/59b4895f-70e0-4e45-a09f-0abea2b2ef6d/c89b9fd9-ffce-440e-98c3-a5d65911cb5c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/59b4895f-70e0-4e45-a09f-0abea2b2ef6d/c89b9fd9-ffce-440e-98c3-a5d65911cb5c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.0233085   0.0155282   0.0310889
ki1101329-Keneba            GAMBIA         1                    NA                0.0328395   0.0231515   0.0425276
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0046908   0.0027329   0.0066487
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0105273   0.0064495   0.0146051
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0162347   0.0135582   0.0189111
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0882908   0.0778168   0.0987648
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0543816   0.0412777   0.0674855
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0919373   0.0700125   0.1138621
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0184944   0.0090258   0.0279630
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0367764   0.0186152   0.0549377
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0111224   0.0089803   0.0132646
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0176087   0.0150973   0.0201202
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0050620   0.0021579   0.0079662
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0127604   0.0086919   0.0168290


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         NA                   NA                0.0286128   0.0223931   0.0348325
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067011   0.0048116   0.0085906
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0355313   0.0321779   0.0388846
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0148247   0.0131816   0.0164677
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.408906   0.9022175   2.200152
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.244233   1.2699938   3.965832
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 5.438417   4.4393778   6.662281
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.690596   1.2042783   2.373302
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.988521   0.9748919   4.056055
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.583177   1.2474111   2.009320
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.520822   1.3134149   4.838186


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.0053043   -0.0007383   0.0113469
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0020103    0.0004638   0.0035567
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0192966    0.0164734   0.0221199
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0133879    0.0038003   0.0229755
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0056228   -0.0013858   0.0126313
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0037023    0.0018519   0.0055526
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0041410    0.0015039   0.0067781


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.1853811   -0.0504631   0.3682748
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2999908    0.0484172   0.4850549
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.5430881    0.4775015   0.6004420
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.1975506    0.0472732   0.3241241
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.2331441   -0.1005237   0.4656471
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.2497363    0.1186256   0.3613434
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.4499611    0.1089366   0.6604700
