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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0      101     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1       87     700
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     8565   27209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     8849   27209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     5206   27209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1     4589   27209
0-6 months    ki1000108-IRC              INDIA                          1                      0       49     410
0-6 months    ki1000108-IRC              INDIA                          1                      1       40     410
0-6 months    ki1000108-IRC              INDIA                          2+                     0      187     410
0-6 months    ki1000108-IRC              INDIA                          2+                     1      134     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      384     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1      128     700
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     9822   27143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     7541   27143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     6169   27143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     1     3611   27143
6-24 months   ki1000108-IRC              INDIA                          1                      0       35     236
6-24 months   ki1000108-IRC              INDIA                          1                      1       14     236
6-24 months   ki1000108-IRC              INDIA                          2+                     0      112     236
6-24 months   ki1000108-IRC              INDIA                          2+                     1       75     236
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      238     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       89     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0       82     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1       48     457
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     5247   10520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1308   10520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     2987   10520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      978   10520


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
![](/tmp/474205d0-d30e-4f75-a18c-838d4daaad2e/e727209b-0715-49fe-a76b-d2b9ff587282/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/474205d0-d30e-4f75-a18c-838d4daaad2e/e727209b-0715-49fe-a76b-d2b9ff587282/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/474205d0-d30e-4f75-a18c-838d4daaad2e/e727209b-0715-49fe-a76b-d2b9ff587282/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/474205d0-d30e-4f75-a18c-838d4daaad2e/e727209b-0715-49fe-a76b-d2b9ff587282/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.6158334   0.5149164   0.7167505
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6501000   0.5979238   0.7022761
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4172013   0.3664494   0.4679532
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.3948958   0.3160496   0.4737419
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4447756   0.4029561   0.4865950
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.5650107   0.4980650   0.6319565
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3466957   0.3222486   0.3711428
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.3563657   0.3152425   0.3974890
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3218603   0.2288808   0.4148398
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.3728798   0.3376024   0.4081573
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6344579   0.5867622   0.6821537
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.6399807   0.5942023   0.6857591
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4960479   0.4857199   0.5063758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.4855704   0.4691581   0.5019827
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.4515246   0.3461236   0.5569255
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.4177426   0.3636770   0.4718081
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2373892   0.1962082   0.2785701
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.2358126   0.1696594   0.3019659
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2815327   0.2432977   0.3197678
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.3488156   0.2846948   0.4129365
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1987394   0.1782984   0.2191804
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1724396   0.1409403   0.2039388
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3470488   0.2619281   0.4321695
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.3650152   0.2862527   0.4437777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4187736   0.4086609   0.4288863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.4028542   0.3864917   0.4192166
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2660486   0.1369714   0.3951258
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.4019857   0.3314380   0.4725334
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2717770   0.2159721   0.3275819
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.4648305   0.3795786   0.5500825
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2375262   0.1937286   0.2813238
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.3371831   0.2533001   0.4210660
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2180776   0.1919000   0.2442551
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2699588   0.2266229   0.3132947
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3246019   0.2339876   0.4152162
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.3742169   0.3387646   0.4096691
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6035086   0.5519322   0.6550850
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.5954059   0.5446219   0.6461898
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2057344   0.1930161   0.2184527
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2207202   0.1995718   0.2418685


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3467505   0.3276457   0.3658553
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3569636   0.3068991   0.4070281
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6366995   0.6035988   0.6698003
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4938807   0.4860335   0.5017279
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1949686   0.1790654   0.2108717
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4108610   0.4034098   0.4183122
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268170   0.2062654   0.2473687
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3569636   0.3068991   0.4070281
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5985816   0.5623721   0.6347910
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2173004   0.2079295   0.2266713


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0556425   0.8805197   1.265595
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.9465353   0.7496584   1.195116
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.2703278   1.0944585   1.474457
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0278919   0.8985237   1.175886
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1585145   0.8770569   1.530295
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.0087047   0.9102715   1.117782
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9788781   0.9430220   1.016098
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.9251824   0.7089478   1.207370
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.9933589   0.7160514   1.378060
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.2389879   0.9873433   1.554769
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8676667   0.7039593   1.069445
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.0517691   0.7606686   1.454271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9619855   0.9185578   1.007467
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.5109482   0.9028518   2.528615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.7103379   1.3020124   2.246719
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.4195616   1.0444589   1.929377
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2379027   1.0127683   1.513084
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1528485   0.8864721   1.499268
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.9865740   0.8758338   1.111316
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0728402   0.9612199   1.197422


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0256300   -0.0631237    0.1143836
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0170844   -0.0169306    0.0510994
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0327970    0.0105372    0.0550568
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0000548   -0.0149177    0.0150273
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0351033   -0.0153436    0.0855502
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0022416   -0.0320312    0.0365144
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0021672   -0.0084630    0.0041287
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0271343   -0.1203200    0.0660514
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0011823   -0.0239561    0.0263207
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0205781   -0.0007526    0.0419088
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0037708   -0.0161839    0.0086422
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0087565   -0.0539262    0.0714391
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0079126   -0.0142642   -0.0015610
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1110700   -0.0062115    0.2283515
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0280042   -0.0094514    0.0654598
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0253196    0.0003921    0.0502472
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0087395   -0.0076757    0.0251547
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0323617   -0.0151157    0.0798391
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0049270   -0.0418971    0.0320431
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0115660    0.0025615    0.0205704


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0399555   -0.1089673    0.1688794
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0393391   -0.0424421    0.1147044
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0686744    0.0206265    0.1143650
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0001580   -0.0439676    0.0424186
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0983386   -0.0665685    0.2377487
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0035206   -0.0517894    0.0559221
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0043880   -0.0172132    0.0082755
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0639372   -0.3078285    0.1344719
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0049556   -0.1062287    0.1049650
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0681144   -0.0052909    0.1361598
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0193408   -0.0850126    0.0423562
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0246103   -0.1685314    0.1858284
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0192586   -0.0348158   -0.0039354
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.2945227   -0.0973253    0.5464442
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0934153   -0.0410623    0.2105221
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0963289   -0.0033767    0.1861267
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0385310   -0.0366885    0.1082927
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0906582   -0.0636149    0.2225545
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0082311   -0.0719306    0.0516830
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0532257    0.0109027    0.0937377
