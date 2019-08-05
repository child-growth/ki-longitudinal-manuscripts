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
* enstunt
* month
* brthmon
* vagbrth
* impfloor
* earlybf
* hfoodsec
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* predexfd6
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_impfloor
* delta_earlybf
* delta_hfoodsec
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20
* delta_predexfd6

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_stunted06    dead   n_cell       n
--------------------------  -----------------------------  ---------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      159     239
ki0047075b-MAL-ED           BANGLADESH                     0                    1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                    0       80     239
ki0047075b-MAL-ED           BANGLADESH                     1                    1        0     239
ki0047075b-MAL-ED           INDIA                          0                    0      155     235
ki0047075b-MAL-ED           INDIA                          0                    1        0     235
ki0047075b-MAL-ED           INDIA                          1                    0       80     235
ki0047075b-MAL-ED           INDIA                          1                    1        0     235
ki0047075b-MAL-ED           PERU                           0                    0      149     270
ki0047075b-MAL-ED           PERU                           0                    1        0     270
ki0047075b-MAL-ED           PERU                           1                    0      120     270
ki0047075b-MAL-ED           PERU                           1                    1        1     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      159     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0      100     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      145     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0      100     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     245
ki1000304-VITAMIN-A         INDIA                          0                    0     1945    2714
ki1000304-VITAMIN-A         INDIA                          0                    1        9    2714
ki1000304-VITAMIN-A         INDIA                          1                    0      756    2714
ki1000304-VITAMIN-A         INDIA                          1                    1        4    2714
ki1000304b-SAS-CompFeed     INDIA                          0                    0      808    1386
ki1000304b-SAS-CompFeed     INDIA                          0                    1        2    1386
ki1000304b-SAS-CompFeed     INDIA                          1                    0      566    1386
ki1000304b-SAS-CompFeed     INDIA                          1                    1       10    1386
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      240     399
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        1     399
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0      155     399
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        3     399
ki1017093b-PROVIDE          BANGLADESH                     0                    0      457     613
ki1017093b-PROVIDE          BANGLADESH                     0                    1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                    0      156     613
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1601    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      415    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2017
ki1101329-Keneba            GAMBIA                         0                    0     1534    2256
ki1101329-Keneba            GAMBIA                         0                    1       11    2256
ki1101329-Keneba            GAMBIA                         1                    0      691    2256
ki1101329-Keneba            GAMBIA                         1                    1       20    2256
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0       39      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0        4      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1        0      43
ki1113344-GMS-Nepal         NEPAL                          0                    0      425     590
ki1113344-GMS-Nepal         NEPAL                          0                    1        1     590
ki1113344-GMS-Nepal         NEPAL                          1                    0      163     590
ki1113344-GMS-Nepal         NEPAL                          1                    1        1     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0     7574   10664
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      167   10664
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0     2791   10664
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      132   10664
ki1148112-iLiNS-DOSE        MALAWI                         0                    0      704     993
ki1148112-iLiNS-DOSE        MALAWI                         0                    1        3     993
ki1148112-iLiNS-DOSE        MALAWI                         1                    0      283     993
ki1148112-iLiNS-DOSE        MALAWI                         1                    1        3     993
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0      921    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       14    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0      172    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        2    1109
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    10382   17201
kiGH5241-JiVitA-3           BANGLADESH                     0                    1       67   17201
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     6665   17201
kiGH5241-JiVitA-3           BANGLADESH                     1                    1       87   17201
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     3315    5116
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       22    5116
kiGH5241-JiVitA-4           BANGLADESH                     1                    0     1760    5116
kiGH5241-JiVitA-4           BANGLADESH                     1                    1       19    5116


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7543b111-17d3-4e5d-b882-f4c92f056e4c/703de99b-f078-4beb-9503-5967839c4074/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7543b111-17d3-4e5d-b882-f4c92f056e4c/703de99b-f078-4beb-9503-5967839c4074/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7543b111-17d3-4e5d-b882-f4c92f056e4c/703de99b-f078-4beb-9503-5967839c4074/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7543b111-17d3-4e5d-b882-f4c92f056e4c/703de99b-f078-4beb-9503-5967839c4074/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0071271   0.0029192   0.0113349
ki1101329-Keneba     GAMBIA       1                    NA                0.0280854   0.0159026   0.0402682
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0207145   0.0173041   0.0241249
ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0455709   0.0304721   0.0606697
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0060695   0.0047757   0.0073632
kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0174729   0.0110357   0.0239101
kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0061794   0.0036326   0.0087262
kiGH5241-JiVitA-4    BANGLADESH   1                    NA                0.0112930   0.0000707   0.0225153


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba     GAMBIA       NA                   NA                0.0137411   0.0089363   0.0185460
ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0280383   0.0249049   0.0311716
kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0089530   0.0075108   0.0103952
kiGH5241-JiVitA-4    BANGLADESH   NA                   NA                0.0080141   0.0053295   0.0106986


### Parameter: RR


studyid              country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1101329-Keneba     GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba     GAMBIA       1                    0                 3.940670   1.8942419   8.197939
ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 2.199956   1.5197473   3.184614
kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3    BANGLADESH   1                    0                 2.878823   1.8871901   4.391513
kiGH5241-JiVitA-4    BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4    BANGLADESH   1                    0                 1.827520   0.6239504   5.352714


### Parameter: PAR


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.0066141   0.0025339   0.0106943
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0073238   0.0046611   0.0099865
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0028835   0.0017099   0.0040571
kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0018347   0.0000081   0.0036613


### Parameter: PAF


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba     GAMBIA       0                    NA                0.4813344    0.1671386   0.6770003
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.2612075    0.1653860   0.3460278
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.3220729    0.1994264   0.4259301
kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.2289293   -0.0101577   0.4114285
