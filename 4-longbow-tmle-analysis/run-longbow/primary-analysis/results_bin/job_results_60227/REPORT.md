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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        nchldlt5    ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  ---------  --------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                       0      977    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                       1       96    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                      0     1879    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                      1      236    3188
0-24 months   IRC              INDIA                          1                       0       64     410
0-24 months   IRC              INDIA                          1                       1       25     410
0-24 months   IRC              INDIA                          2+                      0      244     410
0-24 months   IRC              INDIA                          2+                      1       77     410
0-24 months   JiVitA-3         BANGLADESH                     1                       0    13936   27200
0-24 months   JiVitA-3         BANGLADESH                     1                       1     3474   27200
0-24 months   JiVitA-3         BANGLADESH                     2+                      0     8244   27200
0-24 months   JiVitA-3         BANGLADESH                     2+                      1     1546   27200
0-24 months   LCNI-5           MALAWI                         1                       0      327     812
0-24 months   LCNI-5           MALAWI                         1                       1       64     812
0-24 months   LCNI-5           MALAWI                         2+                      0      315     812
0-24 months   LCNI-5           MALAWI                         2+                      1      106     812
0-24 months   NIH-Crypto       BANGLADESH                     1                       0      475     758
0-24 months   NIH-Crypto       BANGLADESH                     1                       1       66     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                      0      184     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                      1       33     758
0-24 months   PROVIDE          BANGLADESH                     1                       0      442     700
0-24 months   PROVIDE          BANGLADESH                     1                       1       70     700
0-24 months   PROVIDE          BANGLADESH                     2+                      0      163     700
0-24 months   PROVIDE          BANGLADESH                     2+                      1       25     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0     1479    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1      158    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      0      669    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      1       79    2385
0-6 months    IRC              INDIA                          1                       0       68     410
0-6 months    IRC              INDIA                          1                       1       21     410
0-6 months    IRC              INDIA                          2+                      0      280     410
0-6 months    IRC              INDIA                          2+                      1       41     410
0-6 months    JiVitA-3         BANGLADESH                     1                       0    14467   27134
0-6 months    JiVitA-3         BANGLADESH                     1                       1     2892   27134
0-6 months    JiVitA-3         BANGLADESH                     2+                      0     8665   27134
0-6 months    JiVitA-3         BANGLADESH                     2+                      1     1110   27134
0-6 months    LCNI-5           MALAWI                         1                       0      111     267
0-6 months    LCNI-5           MALAWI                         1                       1       11     267
0-6 months    LCNI-5           MALAWI                         2+                      0      137     267
0-6 months    LCNI-5           MALAWI                         2+                      1        8     267
0-6 months    NIH-Crypto       BANGLADESH                     1                       0      506     758
0-6 months    NIH-Crypto       BANGLADESH                     1                       1       35     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                      0      205     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                      1       12     758
0-6 months    PROVIDE          BANGLADESH                     1                       0      488     700
0-6 months    PROVIDE          BANGLADESH                     1                       1       24     700
0-6 months    PROVIDE          BANGLADESH                     2+                      0      181     700
0-6 months    PROVIDE          BANGLADESH                     2+                      1        7     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0     1564    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       73    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      0      718    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      1       30    2385


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF



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




# Results Detail

## Results Plots
![](/tmp/db37e6f0-ba2a-471c-a338-a6190f959e11/f119d0de-e701-4729-bb56-10dd167f71b5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/db37e6f0-ba2a-471c-a338-a6190f959e11/f119d0de-e701-4729-bb56-10dd167f71b5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/db37e6f0-ba2a-471c-a338-a6190f959e11/f119d0de-e701-4729-bb56-10dd167f71b5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/db37e6f0-ba2a-471c-a338-a6190f959e11/f119d0de-e701-4729-bb56-10dd167f71b5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0856001   0.0551487   0.1160514
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1122270   0.0906688   0.1337852
0-24 months   IRC              INDIA                          1                    NA                0.2782320   0.1854440   0.3710200
0-24 months   IRC              INDIA                          2+                   NA                0.2395981   0.1927247   0.2864715
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1911882   0.1836843   0.1986921
0-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.1721837   0.1578765   0.1864909
0-24 months   LCNI-5           MALAWI                         1                    NA                0.1688962   0.1307952   0.2069973
0-24 months   LCNI-5           MALAWI                         2+                   NA                0.2477915   0.2061095   0.2894734
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1175506   0.0901347   0.1449666
0-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1727270   0.1219552   0.2234988
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1372862   0.1076216   0.1669508
0-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1490729   0.1003002   0.1978456
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1002154   0.0842248   0.1162060
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1047534   0.0790214   0.1304854
0-6 months    IRC              INDIA                          1                    NA                0.2295558   0.1384006   0.3207110
0-6 months    IRC              INDIA                          2+                   NA                0.1248911   0.0887811   0.1610011
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.1579075   0.1506249   0.1651901
0-6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.1339795   0.1205349   0.1474240
0-6 months    LCNI-5           MALAWI                         1                    NA                0.0901639   0.0392448   0.1410831
0-6 months    LCNI-5           MALAWI                         2+                   NA                0.0551724   0.0179404   0.0924044
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.0644478   0.0437125   0.0851831
0-6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.0554131   0.0249297   0.0858965
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0468750   0.0285532   0.0651968
0-6 months    PROVIDE          BANGLADESH                     2+                   NA                0.0372340   0.0101502   0.0643179
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0438121   0.0338347   0.0537895
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0451024   0.0299939   0.0602109


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1041405   0.0842158   0.1240653
0-24 months   IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1845588   0.1789526   0.1901651
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.2093596   0.1813586   0.2373606
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0993711   0.0873623   0.1113798
0-6 months    IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1474902   0.1424375   0.1525429
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.0711610   0.0402653   0.1020568
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0431866   0.0350267   0.0513464


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.3110623   0.9015531   1.9065812
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          2+                   1                 0.8611449   0.5859863   1.2655084
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.9005979   0.8230306   0.9854757
0-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         2+                   1                 1.4671224   1.1107458   1.9378406
0-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.4693838   1.0128259   2.1317471
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.0858551   0.7327473   1.6091240
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0452824   0.7800848   1.4006366
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          2+                   1                 0.5440555   0.3344774   0.8849518
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2+                   1                 0.8484683   0.7599163   0.9473391
0-6 months    LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    LCNI-5           MALAWI                         2+                   1                 0.6119122   0.2538214   1.4751968
0-6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     2+                   1                 0.8598136   0.4551901   1.6241116
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2+                   1                 0.7943262   0.3478373   1.8139348
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0294515   0.6867778   1.5431052


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0185405   -0.0041115    0.0411925
0-24 months   IRC              INDIA                          1                    NA                -0.0294515   -0.1108932    0.0519901
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0066294   -0.0113928   -0.0018660
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.0404634    0.0106603    0.0702664
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0130562   -0.0025862    0.0286986
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0015719   -0.0168503    0.0137064
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0008443   -0.0110469    0.0093582
0-6 months    IRC              INDIA                          1                    NA                -0.0783363   -0.1569452    0.0002727
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0104172   -0.0150899   -0.0057445
0-6 months    LCNI-5           MALAWI                         1                    NA                -0.0190029   -0.0533233    0.0153176
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0024425   -0.0129399    0.0080549
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0025893   -0.0113770    0.0061984
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0006255   -0.0060636    0.0048126


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1780332   -0.0752721    0.3716665
0-24 months   IRC              INDIA                          1                    NA                -0.1183835   -0.4986425    0.1653902
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0359202   -0.0620320   -0.0104504
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.1932720    0.0388662    0.3228726
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0999658   -0.0278091    0.2118560
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0115826   -0.1306804    0.0949704
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0084967   -0.1165477    0.0890980
0-6 months    IRC              INDIA                          1                    NA                -0.5180302   -1.1287211   -0.0825353
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0706299   -0.1025799   -0.0396057
0-6 months    LCNI-5           MALAWI                         1                    NA                -0.2670406   -0.8374155    0.1262772
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0393920   -0.2227954    0.1165033
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0584677   -0.2756059    0.1217084
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0144840   -0.1484687    0.1038695
