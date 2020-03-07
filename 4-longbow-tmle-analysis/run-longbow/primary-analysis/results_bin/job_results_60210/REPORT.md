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

agecat        studyid          country                        nchldlt5    ever_stunted   n_cell       n
------------  ---------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      0      711    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      1      362    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     0     1339    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     1      776    3188
0-24 months   IRC              INDIA                          1                      0       35     410
0-24 months   IRC              INDIA                          1                      1       54     410
0-24 months   IRC              INDIA                          2+                     0      112     410
0-24 months   IRC              INDIA                          2+                     1      209     410
0-24 months   JiVitA-3         BANGLADESH                     1                      0     8536   27200
0-24 months   JiVitA-3         BANGLADESH                     1                      1     8874   27200
0-24 months   JiVitA-3         BANGLADESH                     2+                     0     5189   27200
0-24 months   JiVitA-3         BANGLADESH                     2+                     1     4601   27200
0-24 months   LCNI-5           MALAWI                         1                      0      145     812
0-24 months   LCNI-5           MALAWI                         1                      1      246     812
0-24 months   LCNI-5           MALAWI                         2+                     0      150     812
0-24 months   LCNI-5           MALAWI                         2+                     1      271     812
0-24 months   NIH-Crypto       BANGLADESH                     1                      0      298     758
0-24 months   NIH-Crypto       BANGLADESH                     1                      1      243     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                     0       98     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                     1      119     758
0-24 months   PROVIDE          BANGLADESH                     1                      0      295     700
0-24 months   PROVIDE          BANGLADESH                     1                      1      217     700
0-24 months   PROVIDE          BANGLADESH                     2+                     0      100     700
0-24 months   PROVIDE          BANGLADESH                     2+                     1       88     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1077    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      560    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      481    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      267    2385
0-6 months    IRC              INDIA                          1                      0       49     410
0-6 months    IRC              INDIA                          1                      1       40     410
0-6 months    IRC              INDIA                          2+                     0      187     410
0-6 months    IRC              INDIA                          2+                     1      134     410
0-6 months    JiVitA-3         BANGLADESH                     1                      0     9780   27134
0-6 months    JiVitA-3         BANGLADESH                     1                      1     7579   27134
0-6 months    JiVitA-3         BANGLADESH                     2+                     0     6146   27134
0-6 months    JiVitA-3         BANGLADESH                     2+                     1     3629   27134
0-6 months    LCNI-5           MALAWI                         1                      0       81     267
0-6 months    LCNI-5           MALAWI                         1                      1       41     267
0-6 months    LCNI-5           MALAWI                         2+                     0       91     267
0-6 months    LCNI-5           MALAWI                         2+                     1       54     267
0-6 months    NIH-Crypto       BANGLADESH                     1                      0      386     758
0-6 months    NIH-Crypto       BANGLADESH                     1                      1      155     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                     0      143     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                     1       74     758
0-6 months    PROVIDE          BANGLADESH                     1                      0      383     700
0-6 months    PROVIDE          BANGLADESH                     1                      1      129     700
0-6 months    PROVIDE          BANGLADESH                     2+                     0      149     700
0-6 months    PROVIDE          BANGLADESH                     2+                     1       39     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1311    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      326    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      609    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      139    2385
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                      0      711    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                      1      362    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     0     1339    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     1      776    3188
6-24 months   IRC              INDIA                          1                      0       35     236
6-24 months   IRC              INDIA                          1                      1       14     236
6-24 months   IRC              INDIA                          2+                     0      112     236
6-24 months   IRC              INDIA                          2+                     1       75     236
6-24 months   JiVitA-3         BANGLADESH                     1                      0     5238   10487
6-24 months   JiVitA-3         BANGLADESH                     1                      1     1295   10487
6-24 months   JiVitA-3         BANGLADESH                     2+                     0     2982   10487
6-24 months   JiVitA-3         BANGLADESH                     2+                     1      972   10487
6-24 months   LCNI-5           MALAWI                         1                      0      138     705
6-24 months   LCNI-5           MALAWI                         1                      1      205     705
6-24 months   LCNI-5           MALAWI                         2+                     0      145     705
6-24 months   LCNI-5           MALAWI                         2+                     1      217     705
6-24 months   NIH-Crypto       BANGLADESH                     1                      0      280     506
6-24 months   NIH-Crypto       BANGLADESH                     1                      1       88     506
6-24 months   NIH-Crypto       BANGLADESH                     2+                     0       93     506
6-24 months   NIH-Crypto       BANGLADESH                     2+                     1       45     506
6-24 months   PROVIDE          BANGLADESH                     1                      0      238     456
6-24 months   PROVIDE          BANGLADESH                     1                      1       88     456
6-24 months   PROVIDE          BANGLADESH                     2+                     0       81     456
6-24 months   PROVIDE          BANGLADESH                     2+                     1       49     456
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      858    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      234    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      376    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      128    1596


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
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/21a710ca-84e5-485a-95be-9dd1f090a077/56d9b02e-06b8-4fe9-9b30-596cdf28a0ad/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/21a710ca-84e5-485a-95be-9dd1f090a077/56d9b02e-06b8-4fe9-9b30-596cdf28a0ad/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/21a710ca-84e5-485a-95be-9dd1f090a077/56d9b02e-06b8-4fe9-9b30-596cdf28a0ad/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/21a710ca-84e5-485a-95be-9dd1f090a077/56d9b02e-06b8-4fe9-9b30-596cdf28a0ad/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3272611   0.1931131   0.4614091
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.3727760   0.3380103   0.4075417
0-24 months   IRC              INDIA                          1                    NA                0.6128762   0.5108051   0.7149472
0-24 months   IRC              INDIA                          2+                   NA                0.6504776   0.5983675   0.7025878
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.4995112   0.4892558   0.5097666
0-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.4793149   0.4630708   0.4955589
0-24 months   LCNI-5           MALAWI                         1                    NA                0.6418952   0.5939339   0.6898565
0-24 months   LCNI-5           MALAWI                         2+                   NA                0.6322864   0.5860394   0.6785333
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.4510598   0.4091972   0.4929223
0-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.5495233   0.4820848   0.6169619
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.4286956   0.3860124   0.4713789
0-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.4593433   0.3891192   0.5295674
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3416719   0.3174172   0.3659266
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.3642583   0.3226119   0.4059047
0-6 months    IRC              INDIA                          1                    NA                0.4597025   0.3522173   0.5671877
0-6 months    IRC              INDIA                          2+                   NA                0.4209722   0.3667908   0.4751535
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.4218871   0.4117092   0.4320650
0-6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.3982811   0.3817246   0.4148375
0-6 months    LCNI-5           MALAWI                         1                    NA                0.3482281   0.2630538   0.4334024
0-6 months    LCNI-5           MALAWI                         2+                   NA                0.3645318   0.2868712   0.4421925
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.2820186   0.2439159   0.3201214
0-6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.3556235   0.2902572   0.4209898
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.2507612   0.2132643   0.2882582
0-6 months    PROVIDE          BANGLADESH                     2+                   NA                0.1917908   0.1335532   0.2500283
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1979652   0.1772144   0.2187160
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1931377   0.1591432   0.2271322
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3292124   0.1684803   0.4899445
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.3736690   0.3381060   0.4092320
6-24 months   IRC              INDIA                          1                    NA                0.3195991   0.1755966   0.4636015
6-24 months   IRC              INDIA                          2+                   NA                0.3926395   0.3223666   0.4629124
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2051359   0.1923510   0.2179209
6-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.2104971   0.1920315   0.2289627
6-24 months   LCNI-5           MALAWI                         1                    NA                0.6019751   0.5485633   0.6553869
6-24 months   LCNI-5           MALAWI                         2+                   NA                0.6004060   0.5487065   0.6521055
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.2443392   0.2008099   0.2878686
6-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.3144697   0.2372740   0.3916654
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.2722487   0.2240786   0.3204189
6-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.3834000   0.2997135   0.4670866
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2172349   0.1913250   0.2431449
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2549615   0.2134218   0.2965012


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3569636   0.3068991   0.4070281
0-24 months   IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4954044   0.4875673   0.5032416
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6366995   0.6035988   0.6698003
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3467505   0.3276457   0.3658553
0-6 months    IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4130611   0.4056124   0.4205098
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1949686   0.1790654   0.2108717
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3569636   0.3068991   0.4070281
6-24 months   IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2161724   0.2067972   0.2255476
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.5985816   0.5623721   0.6347910
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268170   0.2062654   0.2473687


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1390783   0.7537453   1.7214029
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          2+                   1                 1.0613525   0.8833696   1.2751956
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.9595677   0.9245062   0.9959589
0-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         2+                   1                 0.9850305   0.8885110   1.0920350
0-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.2182939   1.0474095   1.4170580
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.0714905   0.8962120   1.2810494
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0661056   0.9323714   1.2190219
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          2+                   1                 0.9157491   0.7014152   1.1955778
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2+                   1                 0.9440465   0.9008400   0.9893252
0-6 months    LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    LCNI-5           MALAWI                         2+                   1                 1.0468192   0.7615754   1.4388995
0-6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     2+                   1                 1.2609929   1.0053567   1.5816308
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2+                   1                 0.7648342   0.5458568   1.0716570
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9756142   0.7956461   1.1962896
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1350394   0.6876434   1.8735211
6-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          2+                   1                 1.2285377   0.7576846   1.9919963
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2+                   1                 1.0261344   0.9248535   1.1385067
6-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         2+                   1                 0.9973934   0.8826924   1.1269992
6-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.2870210   0.9553357   1.7338649
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.4082713   1.0667430   1.8591432
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1736671   0.9592351   1.4360342


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0297025   -0.0621804    0.1215855
0-24 months   IRC              INDIA                          1                    NA                 0.0285872   -0.0615760    0.1187505
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0041068   -0.0103071    0.0020934
0-24 months   LCNI-5           MALAWI                         1                    NA                -0.0051957   -0.0396513    0.0292600
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0265128    0.0042158    0.0488098
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0070186   -0.0147916    0.0288288
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0050786   -0.0098519    0.0200091
0-6 months    IRC              INDIA                          1                    NA                -0.0353123   -0.1312442    0.0606197
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0088260   -0.0151672   -0.0024849
0-6 months    LCNI-5           MALAWI                         1                    NA                 0.0075772   -0.0548638    0.0700182
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0200922   -0.0012630    0.0414474
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0107612   -0.0293950    0.0078726
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0029967   -0.0157010    0.0097077
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0277512   -0.0911917    0.1466942
6-24 months   IRC              INDIA                          1                    NA                 0.0575196   -0.0738804    0.1889196
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0110365    0.0017447    0.0203282
6-24 months   LCNI-5           MALAWI                         1                    NA                -0.0033936   -0.0425527    0.0357656
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0185066   -0.0051907    0.0422039
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0281899    0.0004827    0.0558970
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0095821   -0.0065935    0.0257577


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0832088   -0.2259953    0.3144296
0-24 months   IRC              INDIA                          1                    NA                 0.0445657   -0.1069589    0.1753490
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0082899   -0.0208768    0.0041419
0-24 months   LCNI-5           MALAWI                         1                    NA                -0.0081603   -0.0637535    0.0445274
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0555157    0.0074916    0.1012162
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0161084   -0.0352580    0.0649260
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0146463   -0.0293751    0.0567852
0-6 months    IRC              INDIA                          1                    NA                -0.0832071   -0.3347397    0.1209240
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0213674   -0.0368072   -0.0061575
0-6 months    LCNI-5           MALAWI                         1                    NA                 0.0212958   -0.1709808    0.1820003
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0665060   -0.0069091    0.1345682
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0448384   -0.1253749    0.0299345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0153699   -0.0826260    0.0477080
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0777425   -0.3358329    0.3632745
6-24 months   IRC              INDIA                          1                    NA                 0.1525238   -0.2789517    0.4384340
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0510539    0.0071664    0.0930015
6-24 months   LCNI-5           MALAWI                         1                    NA                -0.0056694   -0.0732639    0.0576681
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0704086   -0.0240351    0.1561421
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0938291   -0.0029039    0.1812319
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0422460   -0.0318238    0.1109986
