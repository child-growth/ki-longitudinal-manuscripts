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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        nchldlt5    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                     0       25     410
0-24 months   ki1000108-IRC              INDIA                          1                     1       64     410
0-24 months   ki1000108-IRC              INDIA                          2+                    0      116     410
0-24 months   ki1000108-IRC              INDIA                          2+                    1      205     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      327     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      185     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0      127     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1       61     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      369     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      172     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0      139     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1       78     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1242    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      395    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0      579    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1      169    2385
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      838    3189
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      235    3189
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0     1624    3189
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1      492    3189
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      366     812
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       25     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0      380     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1       41     812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    12739   26929
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4485   26929
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     7242   26929
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1     2463   26929
0-6 months    ki1000108-IRC              INDIA                          1                     0       37     410
0-6 months    ki1000108-IRC              INDIA                          1                     1       52     410
0-6 months    ki1000108-IRC              INDIA                          2+                    0      150     410
0-6 months    ki1000108-IRC              INDIA                          2+                    1      171     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      375     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      137     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0      144     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1       44     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      405     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      136     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0      158     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1       59     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1407    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      230    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0      646    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1      102    2385
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0      121     267
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        1     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    0      142     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    1        3     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    14046   26832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     3099   26832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     8058   26832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1     1629   26832
6-24 months   ki1000108-IRC              INDIA                          1                     0       56     410
6-24 months   ki1000108-IRC              INDIA                          1                     1       33     410
6-24 months   ki1000108-IRC              INDIA                          2+                    0      227     410
6-24 months   ki1000108-IRC              INDIA                          2+                    1       94     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      380     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       68     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0      136     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1       31     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      460     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       60     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0      174     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1       36     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1154    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      229    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0      533    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       94    2010
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      838    3189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      235    3189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0     1624    3189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1      492    3189
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      360     800
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       24     800
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0      377     800
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1       39     800
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     9417   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1787   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     5037   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1     1045   17286


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7a88fb35-4000-493d-9fe6-c314c6846b0d/2563d748-89fc-41cf-bb70-498840907d59/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7a88fb35-4000-493d-9fe6-c314c6846b0d/2563d748-89fc-41cf-bb70-498840907d59/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7a88fb35-4000-493d-9fe6-c314c6846b0d/2563d748-89fc-41cf-bb70-498840907d59/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7a88fb35-4000-493d-9fe6-c314c6846b0d/2563d748-89fc-41cf-bb70-498840907d59/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7193522   0.6260881   0.8126163
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6392316   0.5866344   0.6918287
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3631421   0.3213763   0.4049078
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.3402591   0.2723263   0.4081919
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3131155   0.2734980   0.3527329
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.3854813   0.3184298   0.4525327
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2438495   0.2214869   0.2662121
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2389331   0.2013271   0.2765391
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2203180   0.1774027   0.2632333
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2299957   0.2012192   0.2587722
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0636419   0.0394330   0.0878508
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0961597   0.0679603   0.1243591
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2536012   0.2452485   0.2619539
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2625327   0.2473018   0.2777636
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.5952220   0.4930231   0.6974209
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.5320714   0.4772291   0.5869137
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2694776   0.2306415   0.3083137
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.2361475   0.1742723   0.2980228
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2480842   0.2113587   0.2848097
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.2875525   0.2259812   0.3491237
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1400786   0.1221044   0.1580529
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1500569   0.1182220   0.1818917
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1757781   0.1683452   0.1832109
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1722723   0.1583969   0.1861477
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3746827   0.2722324   0.4771330
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.2926857   0.2428515   0.3425199
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1516963   0.1184345   0.1849582
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1846405   0.1255151   0.2437659
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1117350   0.0847628   0.1387072
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1854732   0.1313667   0.2395797
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1673083   0.1462982   0.1883184
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1347485   0.1050383   0.1644587
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2173108   0.1756931   0.2589285
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2309374   0.2015751   0.2602997
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0612447   0.0374050   0.0850845
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0928047   0.0644857   0.1211237
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1566762   0.1483015   0.1650510
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1605286   0.1470842   0.1739730


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2364780   0.2194210   0.2535349
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2279712   0.2010014   0.2549409
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0812808   0.0624736   0.1000879
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580118   0.2515422   0.2644814
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1392034   0.1253080   0.1530987
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1762075   0.1705779   0.1818372
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606965   0.1446374   0.1767556
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2279712   0.2010014   0.2549409
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0787500   0.0600738   0.0974262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1638320   0.1577093   0.1699547


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.8886211   0.7619482   1.036353
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.9369862   0.7457285   1.177296
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.2311153   0.9935970   1.525412
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9798384   0.8167733   1.175459
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0439262   0.8554964   1.273859
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.5109498   0.9340810   2.444081
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0352187   0.9718216   1.102752
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.8939041   0.7316100   1.092200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8763160   0.6496527   1.182062
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.1590921   0.8940984   1.502625
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0712330   0.8360422   1.372586
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9800556   0.8979263   1.069697
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.7811563   0.5664991   1.077151
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.2171717   0.8256078   1.794444
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.6599387   1.1387182   2.419735
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8053902   0.6252295   1.037465
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0627059   0.8708194   1.296875
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.5153091   0.9238510   2.485424
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0245881   0.9297577   1.129091


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0632546   -0.1475001   0.0209908
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0117135   -0.0329671   0.0095401
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0166998   -0.0054317   0.0388314
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0073715   -0.0210450   0.0063020
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0076532   -0.0224908   0.0377971
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0176389   -0.0018213   0.0370991
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0044106   -0.0011623   0.0099835
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0513196   -0.1425795   0.0399404
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0109062   -0.0306554   0.0088430
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0091717   -0.0109799   0.0293233
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0008753   -0.0119146   0.0101640
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0004294   -0.0043064   0.0051653
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0649266   -0.1546471   0.0247940
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0092793   -0.0091718   0.0277304
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0197719    0.0032176   0.0363262
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0066118   -0.0192875   0.0060639
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0106604   -0.0183163   0.0396370
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0175053   -0.0017246   0.0367351
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0071558    0.0010365   0.0132750


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0964104   -0.2333424   0.0253188
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0333311   -0.0956176   0.0254145
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0506339   -0.0189527   0.1154682
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0311720   -0.0905784   0.0249984
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0335707   -0.1087722   0.1576398
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2170119   -0.0565201   0.4197267
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0170946   -0.0047292   0.0384444
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0943544   -0.2761676   0.0615563
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0421786   -0.1213354   0.0313904
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0356521   -0.0459786   0.1109122
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0062879   -0.0887849   0.0699584
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0024372   -0.0248066   0.0289567
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2096055   -0.5367933   0.0479231
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0576439   -0.0639053   0.1653063
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1503486    0.0169984   0.2656090
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0411447   -0.1229558   0.0347062
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0467620   -0.0900117   0.1663734
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2222892   -0.0572212   0.4279021
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0436776    0.0056594   0.0802421
