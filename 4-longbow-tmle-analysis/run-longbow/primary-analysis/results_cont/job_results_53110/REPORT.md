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

**Outcome Variable:** whz

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

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               72     343
Birth       ki1000108-IRC              INDIA                          2+             271     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              385     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+             147     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              504     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+             203     707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            13759   22058
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            8299   22058
6 months    ki1000108-IRC              INDIA                          1               88     408
6 months    ki1000108-IRC              INDIA                          2+             320     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              438     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             165     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2019
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10834   16715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5881   16715
24 months   ki1000108-IRC              INDIA                          1               89     409
24 months   ki1000108-IRC              INDIA                          2+             320     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              424     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             155     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6
24 months   ki1148112-LCNI-5           MALAWI                         1              277     555
24 months   ki1148112-LCNI-5           MALAWI                         2+             278     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5393    8528
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3135    8528


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5936460e-8332-4041-ab05-b8ab6d97e4e0/97b037d7-e678-47e9-9053-1c674905c43e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5936460e-8332-4041-ab05-b8ab6d97e4e0/97b037d7-e678-47e9-9053-1c674905c43e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5936460e-8332-4041-ab05-b8ab6d97e4e0/97b037d7-e678-47e9-9053-1c674905c43e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.1054423   -1.5851287   -0.6257558
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.9839002   -1.1923843   -0.7754161
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.3244826   -1.4264482   -1.2225171
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.3074626   -1.4591545   -1.1557706
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2429544   -1.3435952   -1.1423136
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -1.2404946   -1.4007815   -1.0802077
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7468674   -0.7707941   -0.7229407
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.7480534   -0.7881408   -0.7079659
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5640954   -0.8675705   -0.2606204
6 months    ki1000108-IRC              INDIA                          2+                   NA                -0.6130431   -0.7651995   -0.4608868
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1363411   -0.2492313   -0.0234510
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.3194690   -0.4774383   -0.1614996
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0765647   -0.0206094    0.1737388
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.0942510   -0.2436471    0.0551452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0666589    0.0007499    0.1325679
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.1014770   -0.0207824    0.2237363
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.5401350    0.4355447    0.6447252
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                 0.3348804    0.2335421    0.4362187
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5643930   -0.5922649   -0.5365210
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.6541649   -0.6981899   -0.6101398
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7738237   -1.0026923   -0.5449550
24 months   ki1000108-IRC              INDIA                          2+                   NA                -0.7324883   -0.8327150   -0.6322617
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8947003   -1.0078269   -0.7815737
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.9840026   -1.1422243   -0.8257809
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.5635860   -0.6776464   -0.4495256
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.6883103   -0.8722132   -0.5044075
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0176789   -0.0987098    0.1340677
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.1095639   -0.2323202    0.0131924
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3038007   -1.3393273   -1.2682742
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.2721581   -1.3252800   -1.2190362


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7500100   -0.7678535   -0.7321665
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0801680    0.0273223    0.1330136
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4379655    0.3664533    0.5094777
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5927505   -0.6123059   -0.5731952
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0547297   -0.1370054    0.0275459
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2989071   -1.3223072   -1.2755070


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                  0.1215421   -0.4038746    0.6469588
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0170200   -0.1655442    0.1995843
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0024598   -0.1865923    0.1915120
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0011860   -0.0461812    0.0438093
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0489477   -0.3891129    0.2912175
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.1831279   -0.3774576    0.0112019
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1708157   -0.3486026    0.0069713
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0348181   -0.1041815    0.1738177
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.2052546   -0.3508799   -0.0596293
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0897719   -0.1413998   -0.0381440
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                  0.0413353   -0.2095234    0.2921940
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0893023   -0.2809307    0.1023262
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1247244   -0.3395505    0.0901018
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.1272429   -0.2949741    0.0404883
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.0316427   -0.0312954    0.0945807


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0948592   -0.3298239    0.5195423
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0260240   -0.0362417    0.0882896
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0011969   -0.0537056    0.0513117
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0031425   -0.0174621    0.0111770
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0348343   -0.3038107    0.2341421
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0627495   -0.1359264    0.0104274
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0468025   -0.1009806    0.0073756
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0135091   -0.0266612    0.0536794
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1021695   -0.1795421   -0.0247969
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0283576   -0.0477999   -0.0089152
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0280087   -0.1718932    0.2279105
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0018333   -0.0669821    0.0706487
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0467642   -0.1118635    0.0183351
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0724087   -0.1545081    0.0096907
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0048936   -0.0210994    0.0308866
