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

**Outcome Variable:** y_rate_wtkg

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

agecat         studyid                    country                        nchldlt5    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
0-3 months     ki1000108-IRC              INDIA                          1               87     394  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          2+             307     394  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              471     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+             169     640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              516     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+             209     725  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1380    2014  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             634    2014  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            12683   20270  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+            7587   20270  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          1               87     399  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          2+             312     399  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              437     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+             164     601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              498     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+             204     702  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1151    1659  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             508    1659  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             8194   12711  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+            4517   12711  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          1               89     410  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          2+             321     410  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1              417     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2+             159     576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              491     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+             202     693  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1040    1488  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             448    1488  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         1              260     554  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         2+             294     554  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          1               88     403  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          2+             315     403  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              416     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+             153     569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              482     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             201     683  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              766    1077  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             311    1077  y_rate_wtkg      
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1              365    1102  y_rate_wtkg      
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2+             737    1102  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         1              179     380  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         2+             201     380  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          1               82     392  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          2+             310     392  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1              394     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2+             143     537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              469     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             197     666  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              570     786  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             216     786  y_rate_wtkg      
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1              325     962  y_rate_wtkg      
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+             637     962  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         1               51     124  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         2+              73     124  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          1               78     383  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          2+             305     383  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              391     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2+             142     533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              426     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             179     605  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              481     662  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             181     662  y_rate_wtkg      
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1              337    1038  y_rate_wtkg      
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+             701    1038  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         1               50     117  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         2+              67     117  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          1               82     380  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          2+             298     380  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1              394     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2+             148     542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              388     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             159     547  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                9      11  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               2      11  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         1              231     450  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         2+             219     450  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          1               84     389  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          2+             305     389  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              353     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             132     485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              342     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             151     493  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         1              205     380  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         2+             175     380  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f9b11f51-bbb9-4167-bd29-5854ed3cf4cb/29880a54-9005-4edb-bad2-1a34cdce8ef9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f9b11f51-bbb9-4167-bd29-5854ed3cf4cb/29880a54-9005-4edb-bad2-1a34cdce8ef9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f9b11f51-bbb9-4167-bd29-5854ed3cf4cb/29880a54-9005-4edb-bad2-1a34cdce8ef9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                0.7637238   0.7176819   0.8097657
0-3 months     ki1000108-IRC              INDIA                          2+                   NA                0.7694802   0.7477344   0.7912261
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9183476   0.8997839   0.9369113
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.8229314   0.7854832   0.8603796
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8946226   0.8769502   0.9122949
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.8631488   0.8338654   0.8924322
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9186900   0.9055135   0.9318665
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.9173614   0.8973935   0.9373293
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8648408   0.8605524   0.8691292
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.8458968   0.8371285   0.8546651
3-6 months     ki1000108-IRC              INDIA                          1                    NA                0.4880871   0.4500822   0.5260920
3-6 months     ki1000108-IRC              INDIA                          2+                   NA                0.4602393   0.4405304   0.4799482
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4930851   0.4782765   0.5078937
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.4583940   0.4329732   0.4838148
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5066892   0.4927701   0.5206083
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.4770470   0.4569156   0.4971784
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4242709   0.4132876   0.4352542
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.4198754   0.4024693   0.4372816
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4451374   0.4405893   0.4496855
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.4325795   0.4243145   0.4408446
6-9 months     ki1000108-IRC              INDIA                          1                    NA                0.2635013   0.2333894   0.2936132
6-9 months     ki1000108-IRC              INDIA                          2+                   NA                0.2625137   0.2464953   0.2785321
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2528300   0.2402901   0.2653699
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.2503794   0.2293940   0.2713648
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2688825   0.2558977   0.2818673
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.2643525   0.2444167   0.2842882
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2558603   0.2442018   0.2675187
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2531533   0.2368996   0.2694071
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                0.2888550   0.2679692   0.3097407
6-9 months     ki1148112-LCNI-5           MALAWI                         2+                   NA                0.2808990   0.2637858   0.2980122
9-12 months    ki1000108-IRC              INDIA                          1                    NA                0.2234873   0.1856161   0.2613584
9-12 months    ki1000108-IRC              INDIA                          2+                   NA                0.2100309   0.1946694   0.2253925
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1810737   0.1695861   0.1925614
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1596612   0.1428556   0.1764668
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1978326   0.1853657   0.2102995
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.2001774   0.1821462   0.2182086
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2101193   0.1975079   0.2227307
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1929932   0.1732230   0.2127633
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2464933   0.2290314   0.2639553
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2402572   0.2190608   0.2614536
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.2050074   0.1816096   0.2284053
9-12 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.1998348   0.1781117   0.2215578
12-15 months   ki1000108-IRC              INDIA                          1                    NA                0.1934115   0.1584487   0.2283742
12-15 months   ki1000108-IRC              INDIA                          2+                   NA                0.1787112   0.1653467   0.1920757
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1842549   0.1697480   0.1987619
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1514036   0.1343133   0.1684939
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1652315   0.1520401   0.1784229
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1587644   0.1392299   0.1782990
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1733895   0.1595133   0.1872656
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1723637   0.1490950   0.1956325
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1838140   0.1706041   0.1970239
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1972352   0.1791841   0.2152864
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1820334   0.1218446   0.2422222
12-15 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.1312760   0.0881864   0.1743656
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.1432204   0.1030335   0.1834072
15-18 months   ki1000108-IRC              INDIA                          2+                   NA                0.1642223   0.1501484   0.1782963
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1487231   0.1335283   0.1639179
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1548792   0.1337244   0.1760340
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1656314   0.1524787   0.1787841
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1469758   0.1273294   0.1666222
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1705258   0.1530309   0.1880208
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1697420   0.1425494   0.1969346
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1742751   0.1563395   0.1922107
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1766561   0.1623269   0.1909854
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1150784   0.0598177   0.1703390
15-18 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.2207749   0.1799867   0.2615630
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.1499062   0.1240155   0.1757968
18-21 months   ki1000108-IRC              INDIA                          2+                   NA                0.1616755   0.1461153   0.1772357
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1351820   0.1197856   0.1505784
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1724589   0.1507022   0.1942156
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1413881   0.1289161   0.1538600
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1466751   0.1244809   0.1688693
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1921757   0.1638119   0.2205395
18-21 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.1730834   0.1430147   0.2031520
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1966341   0.1658692   0.2273990
21-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1732879   0.1576132   0.1889626
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1401383   0.1250496   0.1552270
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1436592   0.1193989   0.1679195
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1712728   0.1565812   0.1859644
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1835665   0.1580221   0.2091109
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1819235   0.1446185   0.2192285
21-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.1729577   0.1336118   0.2123035


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9223779   0.9122086   0.9325472
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8576772   0.8546652   0.8606893
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4195871   0.4109053   0.4282689
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4414051   0.4384353   0.4443748
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2558522   0.2469636   0.2647409
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2853462   0.2727187   0.2979736
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2046179   0.1945139   0.2147219
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2420700   0.2289407   0.2551993
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2022567   0.1863082   0.2182053
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1737296   0.1623947   0.1850645
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1921946   0.1813846   0.2030045
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1530519   0.1191456   0.1869583
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702121   0.1559390   0.1844852
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1750401   0.1647066   0.1853735
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1724751   0.1407874   0.2041628
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1816953   0.1614502   0.2019405
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1772328   0.1503917   0.2040738


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2+                   1                  0.0057564   -0.0452344    0.0567473
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0954162   -0.1370634   -0.0537690
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0314738   -0.0659174    0.0029699
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0013286   -0.0252992    0.0226419
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0189439   -0.0284633   -0.0094246
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2+                   1                 -0.0278478   -0.0708295    0.0151340
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0346911   -0.0646143   -0.0047679
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0296422   -0.0540536   -0.0052309
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0043955   -0.0249904    0.0161994
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0125579   -0.0217323   -0.0033834
6-9 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          2+                   1                 -0.0009876   -0.0352902    0.0333150
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0024506   -0.0267980    0.0218968
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0045300   -0.0282473    0.0191873
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0027070   -0.0228559    0.0174420
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0079559   -0.0351085    0.0191967
9-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0134563   -0.0544916    0.0275789
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0214126   -0.0417342   -0.0010909
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0023448   -0.0195935    0.0242830
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0171261   -0.0405842    0.0063319
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0062361   -0.0375749    0.0251027
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0051727   -0.0371298    0.0267844
12-15 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          2+                   1                 -0.0147003   -0.0519421    0.0225416
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0328513   -0.0553460   -0.0103566
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0064670   -0.0300248    0.0170908
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0010257   -0.0281788    0.0261273
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                  0.0134212   -0.0109005    0.0377430
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0507574   -0.1255233    0.0240085
15-18 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          2+                   1                  0.0210019   -0.0216841    0.0636879
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0061561   -0.0199378    0.0322500
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0186556   -0.0423509    0.0050398
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0007839   -0.0332044    0.0316367
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                  0.0023810   -0.0210831    0.0258451
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         2+                   1                  0.1056965    0.0365101    0.1748828
18-21 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          2+                   1                  0.0117693   -0.0184459    0.0419846
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0372770    0.0103466    0.0642073
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0052870   -0.0203578    0.0309319
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0190923   -0.0607790    0.0225943
21-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          2+                   1                 -0.0233462   -0.0582255    0.0115331
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0035209   -0.0250349    0.0320766
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0122937   -0.0172571    0.0418446
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0089658   -0.0631383    0.0452066


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                 0.0042668   -0.0358841    0.0444177
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0167004   -0.0284015   -0.0049993
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0101006   -0.0197655   -0.0004357
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0036879   -0.0043050    0.0116807
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0071635   -0.0100826   -0.0042445
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0220154   -0.0554301    0.0113993
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0040240   -0.0147999    0.0067519
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0086348   -0.0160440   -0.0012257
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0046838   -0.0110687    0.0017012
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0037323   -0.0069820   -0.0004827
6-9 months     ki1000108-IRC              INDIA                          1                    NA                -0.0008703   -0.0282877    0.0265472
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0036647   -0.0135268    0.0061974
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0013728   -0.0084294    0.0056838
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0000080   -0.0066138    0.0065977
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0035088   -0.0185246    0.0115071
9-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0102628   -0.0428939    0.0223683
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0035422   -0.0101965    0.0031122
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0000123   -0.0067180    0.0067425
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0055014   -0.0126889    0.0016862
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0044233   -0.0255476    0.0167009
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0027507   -0.0199439    0.0144424
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0112689   -0.0411047    0.0185669
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0042226   -0.0122015    0.0037563
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0011712   -0.0082322    0.0058898
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0003401   -0.0069729    0.0076532
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0083805   -0.0072719    0.0240330
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0289815   -0.0752165    0.0172536
15-18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0172382   -0.0174651    0.0519416
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0076284   -0.0011489    0.0164056
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0044341   -0.0121483    0.0032801
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0003138   -0.0093133    0.0086858
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0007649   -0.0150083    0.0165381
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0573967    0.0134822    0.1013112
18-21 months   ki1000108-IRC              INDIA                          1                    NA                 0.0090730   -0.0144997    0.0326457
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0026938   -0.0118071    0.0064195
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0012728   -0.0059713    0.0085169
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0104804   -0.0305842    0.0096234
21-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0189001   -0.0465102    0.0087101
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0018322   -0.0069222    0.0105865
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0037773   -0.0052893    0.0128439
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0046907   -0.0294468    0.0200653
