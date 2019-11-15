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

**Outcome Variable:** haz

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
Birth       ki1000108-IRC              INDIA                          1               84     388
Birth       ki1000108-IRC              INDIA                          2+             304     388
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              391     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+             148     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              522     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+             210     732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            13986   22431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            8445   22431
6 months    ki1000108-IRC              INDIA                          1               89     407
6 months    ki1000108-IRC              INDIA                          2+             318     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              438     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             166     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2020
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10887   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5913   16800
24 months   ki1000108-IRC              INDIA                          1               89     409
24 months   ki1000108-IRC              INDIA                          2+             320     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              424     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             154     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6
24 months   ki1148112-LCNI-5           MALAWI                         1              283     571
24 months   ki1148112-LCNI-5           MALAWI                         2+             288     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5454    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3168    8622


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
![](/tmp/9840af26-4449-44ef-8bc8-f2b86a549bcb/5960e28c-5cc9-4e7d-9dcc-9a617f05ca9c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9840af26-4449-44ef-8bc8-f2b86a549bcb/5960e28c-5cc9-4e7d-9dcc-9a617f05ca9c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9840af26-4449-44ef-8bc8-f2b86a549bcb/5960e28c-5cc9-4e7d-9dcc-9a617f05ca9c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2892343   -0.6906568    0.1121882
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.3159374   -0.4912306   -0.1406442
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9065236   -1.0012387   -0.8118085
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.6894722   -0.8414351   -0.5375093
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9180649   -1.0047819   -0.8313480
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.8914842   -1.0292801   -0.7536883
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.6315593   -1.6587224   -1.6043962
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.5303013   -1.5721720   -1.4884305
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2753877   -1.5918069   -0.9589686
6 months    ki1000108-IRC              INDIA                          2+                   NA                -1.2223397   -1.3648491   -1.0798302
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.0423072   -1.1407006   -0.9439139
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.0811162   -1.2486560   -0.9135764
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.1499312   -1.2358515   -1.0640109
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -1.3301173   -1.4682735   -1.1919612
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5177725   -0.5779878   -0.4575571
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.5865485   -0.6886071   -0.4844899
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -1.6214832   -1.7199591   -1.5230073
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                -1.6615487   -1.7601999   -1.5628975
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3102919   -1.3384177   -1.2821661
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.3229587   -1.3743610   -1.2715564
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.6243621   -1.8372683   -1.4114559
24 months   ki1000108-IRC              INDIA                          2+                   NA                -1.8476769   -1.9517144   -1.7436394
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5481482   -1.6609910   -1.4353054
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.7000136   -1.8611053   -1.5389218
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3741778   -1.4782639   -1.2700916
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -1.6408987   -1.8039773   -1.4778202
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -1.8483103   -1.9669718   -1.7296489
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -1.9205117   -2.0349064   -1.8061170
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.9603275   -1.9971987   -1.9234562
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -2.0609620   -2.1249668   -1.9969571


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5897031   -1.6089786   -1.5704276
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442232   -0.5932373   -0.4952090
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6431566   -1.7128296   -1.5734836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3131375   -1.3362767   -1.2899983
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8806830   -1.9625334   -1.7988326
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0134284   -2.0411019   -1.9857549


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 -0.0267031   -0.4657477    0.4123415
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.2170514    0.0383054    0.3957974
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0265807   -0.1358607    0.1890222
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.1012580    0.0528115    0.1497045
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                  0.0530481   -0.2934831    0.3995793
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0388090   -0.2332908    0.1556729
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1801861   -0.3429700   -0.0174023
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0687761   -0.1864459    0.0488937
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0400655   -0.1794703    0.0993392
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0126668   -0.0669509    0.0416173
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 -0.2233148   -0.4601682    0.0135386
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.1518653   -0.3486966    0.0449659
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.2667210   -0.4601213   -0.0733207
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0722014   -0.2371577    0.0927550
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.1006345   -0.1713323   -0.0299367


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0188069   -0.3649879    0.3273740
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0214216   -0.0358923    0.0787354
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0085704   -0.0368211    0.0539619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0418562    0.0247004    0.0590121
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0409815   -0.2292441    0.3112071
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0493843   -0.1111183    0.0123498
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0487471   -0.0958725   -0.0016217
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0264507   -0.0640002    0.0110987
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0216734   -0.0949628    0.0516160
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0028456   -0.0188821    0.0131909
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1744154   -0.3602134    0.0113826
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0542739   -0.1259650    0.0174172
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0670868   -0.1278406   -0.0063330
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0323727   -0.1166901    0.0519447
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0531010   -0.0766674   -0.0295346
