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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        nchldlt5    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                 0       72     388
Birth       ki1000108-IRC              INDIA                          1                 1       12     388
Birth       ki1000108-IRC              INDIA                          2+                0      271     388
Birth       ki1000108-IRC              INDIA                          2+                1       33     388
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0      354     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1       37     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                0      137     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                1       11     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      449     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       73     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      182     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       28     732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     9011   22431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     4975   22431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                0     6039   22431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                1     2406   22431
6 months    ki1000108-IRC              INDIA                          1                 0       67     407
6 months    ki1000108-IRC              INDIA                          1                 1       22     407
6 months    ki1000108-IRC              INDIA                          2+                0      240     407
6 months    ki1000108-IRC              INDIA                          2+                1       78     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      368     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       70     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0      140     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1       26     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      400     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      107     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      165     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       43     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1267    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      124    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      558    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1       71    2020
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      263     811
6 months    ki1148112-LCNI-5           MALAWI                         1                 1      127     811
6 months    ki1148112-LCNI-5           MALAWI                         2+                0      253     811
6 months    ki1148112-LCNI-5           MALAWI                         2+                1      168     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8093   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2794   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0     4484   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1     1429   16800
24 months   ki1000108-IRC              INDIA                          1                 0       58     409
24 months   ki1000108-IRC              INDIA                          1                 1       31     409
24 months   ki1000108-IRC              INDIA                          2+                0      179     409
24 months   ki1000108-IRC              INDIA                          2+                1      141     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      299     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      125     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0       89     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1       65     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      276     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       81     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      106     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       51     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0       6
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      161     571
24 months   ki1148112-LCNI-5           MALAWI                         1                 1      122     571
24 months   ki1148112-LCNI-5           MALAWI                         2+                0      158     571
24 months   ki1148112-LCNI-5           MALAWI                         2+                1      130     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2889    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2565    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0     1499    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1     1669    8622


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
![](/tmp/0d2bb393-d65e-4b9d-845a-62e1b6225bad/02bce344-96f1-4881-a881-2723d9137ea7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d2bb393-d65e-4b9d-845a-62e1b6225bad/02bce344-96f1-4881-a881-2723d9137ea7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0d2bb393-d65e-4b9d-845a-62e1b6225bad/02bce344-96f1-4881-a881-2723d9137ea7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d2bb393-d65e-4b9d-845a-62e1b6225bad/02bce344-96f1-4881-a881-2723d9137ea7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1368091   0.0662926   0.2073256
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.1089748   0.0739710   0.1439786
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0961585   0.0660224   0.1262946
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0786661   0.0314761   0.1258560
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1378463   0.1079108   0.1677818
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1252454   0.0787589   0.1717318
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3407449   0.3298995   0.3515904
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.3161998   0.2995241   0.3328756
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2451205   0.1536001   0.3366408
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.2463661   0.1988448   0.2938874
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1600013   0.1256118   0.1943909
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1575050   0.1021189   0.2128912
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2100753   0.1741077   0.2460429
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.2073812   0.1504220   0.2643405
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0917361   0.0753346   0.1081375
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1141714   0.0853502   0.1429926
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3294898   0.2818595   0.3771202
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.3910783   0.3438491   0.4383075
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2525403   0.2415197   0.2635608
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2617665   0.2421878   0.2813452
24 months   ki1000108-IRC              INDIA                          1                    NA                0.3536007   0.2525058   0.4546956
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.4378986   0.3833345   0.4924628
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3014463   0.2582028   0.3446897
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.4109547   0.3316341   0.4902754
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2315146   0.1875106   0.2755187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.3443467   0.2683216   0.4203718
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4353565   0.3776420   0.4930711
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.4498293   0.3925606   0.5070979
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4699379   0.4516594   0.4882163
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.5191190   0.4891713   0.5490668


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3290535   0.3216788   0.3364283
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3637485   0.3306185   0.3968784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513690   0.2432434   0.2594947
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4413310   0.4005676   0.4820944
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4910694   0.4779621   0.5041766


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.7965463   0.4334121   1.4639326
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8180876   0.4155680   1.6104883
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.9085874   0.5906802   1.3975940
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9279663   0.8742644   0.9849669
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 1.0050817   0.6601375   1.5302710
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.9843981   0.6518141   1.4866808
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.9871759   0.7153944   1.3622083
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2445639   0.9137000   1.6952383
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.1869206   0.9837090   1.4321111
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0365336   0.9534762   1.1268262
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 1.2383987   0.9064985   1.6918190
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3632769   1.0757024   1.7277305
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.4873645   1.1164115   1.9815749
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.0332435   0.8613718   1.2394091
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1046546   1.0335007   1.1807074


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0208297   -0.0821183    0.0404588
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0071047   -0.0222990    0.0080896
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0001319   -0.0161743    0.0164380
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0116914   -0.0185811   -0.0048017
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0005798   -0.0805017    0.0816612
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0010609   -0.0189991    0.0168772
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0002851   -0.0201351    0.0195649
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0047986   -0.0057946    0.0153917
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0342586   -0.0014116    0.0699288
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0011712   -0.0082704    0.0059279
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0669372   -0.0237018    0.1575762
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0272735    0.0034465    0.0511004
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0252947   -0.0009057    0.0514951
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0059745   -0.0348206    0.0467696
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0211315    0.0090133    0.0332497


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.1795985   -0.8459441    0.2462108
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0797797   -0.2628200    0.0767297
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0009557   -0.1244988    0.1124139
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0355304   -0.0565706   -0.0149092
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0023597   -0.3887759    0.2833357
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0066751   -0.1261012    0.1000855
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0013588   -0.1005903    0.0889258
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0497085   -0.0665879    0.1533245
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0941821   -0.0093940    0.1871301
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0046594   -0.0332956    0.0231831
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1591705   -0.0867078    0.3494164
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0829687    0.0078008    0.1524420
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0984960   -0.0092077    0.1947055
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0135374   -0.0833798    0.1017846
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0430316    0.0179490    0.0674736
