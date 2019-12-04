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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        nchldlt5    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                      0       35     410
0-24 months   ki1000108-IRC              INDIA                          1                      1       54     410
0-24 months   ki1000108-IRC              INDIA                          2+                     0      112     410
0-24 months   ki1000108-IRC              INDIA                          2+                     1      209     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      295     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      217     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0      100     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1       88     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      298     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      243     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0       98     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1      119     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1077    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      560    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      481    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      267    2385
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      711    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1      362    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0     1339    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      776    3188
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      145     812
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1      246     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0      150     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1      271     812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     8536   27200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     8874   27200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     5189   27200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1     4601   27200
0-6 months    ki1000108-IRC              INDIA                          1                      0       49     410
0-6 months    ki1000108-IRC              INDIA                          1                      1       40     410
0-6 months    ki1000108-IRC              INDIA                          2+                     0      187     410
0-6 months    ki1000108-IRC              INDIA                          2+                     1      134     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      383     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1      129     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     0      149     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     1       39     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      386     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      155     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0      143     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1       74     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1311    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      326    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      609    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      139    2385
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0       81     267
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1       41     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     0       91     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     1       54     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     9780   27134
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     7579   27134
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     6146   27134
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     1     3629   27134
6-24 months   ki1000108-IRC              INDIA                          1                      0       35     236
6-24 months   ki1000108-IRC              INDIA                          1                      1       14     236
6-24 months   ki1000108-IRC              INDIA                          2+                     0      112     236
6-24 months   ki1000108-IRC              INDIA                          2+                     1       75     236
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      238     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       88     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0       81     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1       49     456
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      280     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       88     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0       93     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1       45     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      858    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      234    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      376    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      128    1596
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      711    3188
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1      362    3188
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0     1339    3188
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      776    3188
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      138     705
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1      205     705
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0      145     705
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1      217     705
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     5238   10487
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1295   10487
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     2982   10487
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      972   10487


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c4ef6443-ea4c-40fe-b352-056bdb2f22d4/c032b36b-4b6e-4231-a7fd-ba915ba735f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c4ef6443-ea4c-40fe-b352-056bdb2f22d4/c032b36b-4b6e-4231-a7fd-ba915ba735f8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c4ef6443-ea4c-40fe-b352-056bdb2f22d4/c032b36b-4b6e-4231-a7fd-ba915ba735f8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c4ef6443-ea4c-40fe-b352-056bdb2f22d4/c032b36b-4b6e-4231-a7fd-ba915ba735f8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.6177500   0.5159452   0.7195547
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6476968   0.5954656   0.6999281
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4154123   0.3661858   0.4646389
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.5213233   0.4521268   0.5905199
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4394668   0.3978077   0.4811260
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.5756565   0.5092281   0.6420850
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3414159   0.3171406   0.3656911
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.3626982   0.3207059   0.4046906
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3277740   0.1744898   0.4810582
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.3714168   0.3364487   0.4063849
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6424178   0.5945862   0.6902493
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.6366775   0.5909218   0.6824332
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4978945   0.4875336   0.5082555
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.4848776   0.4686002   0.5011549
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.4489118   0.3433934   0.5544302
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.4180100   0.3640291   0.4719909
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2531423   0.2156976   0.2905870
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.2088961   0.1507486   0.2670437
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2820824   0.2440107   0.3201541
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.3549963   0.2879686   0.4220239
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1959025   0.1756674   0.2161377
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1810260   0.1475297   0.2145222
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3504428   0.2633199   0.4375656
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.3587704   0.2819427   0.4355981
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4223283   0.4122848   0.4323717
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.4017057   0.3853226   0.4180889
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2984705   0.1668461   0.4300948
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.4016299   0.3311732   0.4720866
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2698314   0.2216175   0.3180454
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.3747064   0.2907222   0.4586906
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2402967   0.1966228   0.2839706
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.3250334   0.2464641   0.4036028
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2168523   0.1908199   0.2428847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2715918   0.2274788   0.3157049
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3264073   0.1825481   0.4702665
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.3741337   0.3384670   0.4098003
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6075674   0.5553540   0.6597808
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.6005504   0.5499743   0.6511266
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2064263   0.1935921   0.2192605
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2158704   0.1960443   0.2356964


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3467505   0.3276457   0.3658553
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3569636   0.3068991   0.4070281
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6366995   0.6035988   0.6698003
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4954044   0.4875673   0.5032416
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1949686   0.1790654   0.2108717
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4130611   0.4056124   0.4205098
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268170   0.2062654   0.2473687
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3569636   0.3068991   0.4070281
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5985816   0.5623721   0.6347910
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2161724   0.2067972   0.2255476


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0484773   0.8735567   1.2584240
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.2549539   1.0552309   1.4924783
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.3098976   1.1311972   1.5168281
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0623356   0.9278937   1.2162567
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1331489   0.7078983   1.8138572
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.9910646   0.8949743   1.0974719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9738560   0.9384435   1.0106048
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.9311628   0.7123917   1.2171172
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8252123   0.6027434   1.1297930
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.2584841   0.9989885   1.5853858
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9240613   0.7481920   1.1412703
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.0237631   0.7422691   1.4120094
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9511694   0.9086998   0.9956239
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.3456269   0.8372274   2.1627479
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3886686   1.0450480   1.8452746
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.3526336   1.0023314   1.8253622
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2524277   1.0236470   1.5323399
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1462172   0.7391580   1.7774465
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.9884507   0.8780459   1.1127378
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0457500   0.9403157   1.1630063


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0237135   -0.0657287    0.1131556
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0203020   -0.0111429    0.0517468
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0381057    0.0157304    0.0604811
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0053347   -0.0095916    0.0202609
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0291896   -0.0821788    0.1405580
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0057182   -0.0400020    0.0285655
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0024901   -0.0088393    0.0038590
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0245216   -0.1181280    0.0690849
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0131423   -0.0316686    0.0053840
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0200284   -0.0013287    0.0413855
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0009340   -0.0131299    0.0112619
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0053625   -0.0588534    0.0695783
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0092672   -0.0155400   -0.0029943
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0786482   -0.0410204    0.1983168
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0306072    0.0028585    0.0583559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0225491   -0.0019064    0.0470046
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0099647   -0.0063783    0.0263077
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0305563   -0.0706841    0.1317967
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0089859   -0.0470099    0.0290382
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0097461    0.0005960    0.0188961


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0369677   -0.1131720    0.1668573
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0465947   -0.0286432    0.1163294
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0797904    0.0314516    0.1257167
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0153847   -0.0286273    0.0575136
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0817719   -0.3023508    0.3525993
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0089811   -0.0642882    0.0434520
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0050264   -0.0179203    0.0077041
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0577807   -0.3030784    0.1413409
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0547597   -0.1348370    0.0196671
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0662948   -0.0071116    0.1343508
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0047904   -0.0693246    0.0558491
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0150714   -0.1830846    0.1800380
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0224354   -0.0377139   -0.0073818
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.2085502   -0.1816947    0.4699199
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1018750    0.0048632    0.1894295
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0857884   -0.0118703    0.1740218
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0439329   -0.0309488    0.1133756
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0856006   -0.2599412    0.3363768
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0150119   -0.0805831    0.0465803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0450847    0.0018400    0.0864558
