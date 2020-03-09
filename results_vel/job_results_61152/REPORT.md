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

agecat         studyid          country                        nchldlt5    n_cell       n
-------------  ---------------  -----------------------------  ---------  -------  ------
0-3 months     IRC              INDIA                          1               87     394
0-3 months     IRC              INDIA                          2+             307     394
0-3 months     JiVitA-3         BANGLADESH                     1            12682   20269
0-3 months     JiVitA-3         BANGLADESH                     2+            7587   20269
0-3 months     NIH-Crypto       BANGLADESH                     1              516     725
0-3 months     NIH-Crypto       BANGLADESH                     2+             209     725
0-3 months     PROVIDE          BANGLADESH                     1              471     640
0-3 months     PROVIDE          BANGLADESH                     2+             169     640
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1380    2014
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             634    2014
3-6 months     IRC              INDIA                          1               87     399
3-6 months     IRC              INDIA                          2+             312     399
3-6 months     JiVitA-3         BANGLADESH                     1             8194   12711
3-6 months     JiVitA-3         BANGLADESH                     2+            4517   12711
3-6 months     NIH-Crypto       BANGLADESH                     1              498     702
3-6 months     NIH-Crypto       BANGLADESH                     2+             204     702
3-6 months     PROVIDE          BANGLADESH                     1              437     601
3-6 months     PROVIDE          BANGLADESH                     2+             164     601
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1151    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             508    1659
6-9 months     IRC              INDIA                          1               89     410
6-9 months     IRC              INDIA                          2+             321     410
6-9 months     LCNI-5           MALAWI                         1              260     554
6-9 months     LCNI-5           MALAWI                         2+             294     554
6-9 months     NIH-Crypto       BANGLADESH                     1              491     693
6-9 months     NIH-Crypto       BANGLADESH                     2+             202     693
6-9 months     PROVIDE          BANGLADESH                     1              417     576
6-9 months     PROVIDE          BANGLADESH                     2+             159     576
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1040    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             448    1488
9-12 months    iLiNS-Zinc       BURKINA FASO                   1              365    1102
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+             737    1102
9-12 months    IRC              INDIA                          1               88     403
9-12 months    IRC              INDIA                          2+             315     403
9-12 months    LCNI-5           MALAWI                         1              179     380
9-12 months    LCNI-5           MALAWI                         2+             201     380
9-12 months    NIH-Crypto       BANGLADESH                     1              482     683
9-12 months    NIH-Crypto       BANGLADESH                     2+             201     683
9-12 months    PROVIDE          BANGLADESH                     1              416     569
9-12 months    PROVIDE          BANGLADESH                     2+             153     569
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              766    1077
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             311    1077
12-15 months   iLiNS-Zinc       BURKINA FASO                   1              325     962
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+             637     962
12-15 months   IRC              INDIA                          1               82     392
12-15 months   IRC              INDIA                          2+             310     392
12-15 months   LCNI-5           MALAWI                         1               51     124
12-15 months   LCNI-5           MALAWI                         2+              73     124
12-15 months   NIH-Crypto       BANGLADESH                     1              469     666
12-15 months   NIH-Crypto       BANGLADESH                     2+             197     666
12-15 months   PROVIDE          BANGLADESH                     1              394     537
12-15 months   PROVIDE          BANGLADESH                     2+             143     537
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              570     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             216     786
15-18 months   iLiNS-Zinc       BURKINA FASO                   1              337    1038
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+             701    1038
15-18 months   IRC              INDIA                          1               78     383
15-18 months   IRC              INDIA                          2+             305     383
15-18 months   LCNI-5           MALAWI                         1               50     117
15-18 months   LCNI-5           MALAWI                         2+              67     117
15-18 months   NIH-Crypto       BANGLADESH                     1              426     605
15-18 months   NIH-Crypto       BANGLADESH                     2+             179     605
15-18 months   PROVIDE          BANGLADESH                     1              391     533
15-18 months   PROVIDE          BANGLADESH                     2+             142     533
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              481     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             181     662
18-21 months   IRC              INDIA                          1               82     380
18-21 months   IRC              INDIA                          2+             298     380
18-21 months   LCNI-5           MALAWI                         1              231     450
18-21 months   LCNI-5           MALAWI                         2+             219     450
18-21 months   NIH-Crypto       BANGLADESH                     1              388     547
18-21 months   NIH-Crypto       BANGLADESH                     2+             159     547
18-21 months   PROVIDE          BANGLADESH                     1              394     542
18-21 months   PROVIDE          BANGLADESH                     2+             148     542
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                9      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               2      11
21-24 months   IRC              INDIA                          1               84     389
21-24 months   IRC              INDIA                          2+             305     389
21-24 months   LCNI-5           MALAWI                         1              205     380
21-24 months   LCNI-5           MALAWI                         2+             175     380
21-24 months   NIH-Crypto       BANGLADESH                     1              342     493
21-24 months   NIH-Crypto       BANGLADESH                     2+             151     493
21-24 months   PROVIDE          BANGLADESH                     1              353     485
21-24 months   PROVIDE          BANGLADESH                     2+             132     485


The following strata were considered:

* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2e902407-b0aa-4cce-8f01-4f975cf96f5e/a0dc66cd-f3c6-4ad5-816f-ab34efb5eb81/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2e902407-b0aa-4cce-8f01-4f975cf96f5e/a0dc66cd-f3c6-4ad5-816f-ab34efb5eb81/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2e902407-b0aa-4cce-8f01-4f975cf96f5e/a0dc66cd-f3c6-4ad5-816f-ab34efb5eb81/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     IRC              INDIA                          1                    NA                0.7591909   0.7123262   0.8060556
0-3 months     IRC              INDIA                          2+                   NA                0.7700401   0.7484710   0.7916092
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                0.8776942   0.8733024   0.8820860
0-3 months     JiVitA-3         BANGLADESH                     2+                   NA                0.8619767   0.8528572   0.8710961
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                0.8923995   0.8750232   0.9097759
0-3 months     NIH-Crypto       BANGLADESH                     2+                   NA                0.8626159   0.8343097   0.8909222
0-3 months     PROVIDE          BANGLADESH                     1                    NA                0.9155717   0.8966235   0.9345199
0-3 months     PROVIDE          BANGLADESH                     2+                   NA                0.8170068   0.7795038   0.8545099
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9202853   0.9071273   0.9334434
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.9201759   0.8990501   0.9413017
3-6 months     IRC              INDIA                          1                    NA                0.4853142   0.4448470   0.5257813
3-6 months     IRC              INDIA                          2+                   NA                0.4601675   0.4405783   0.4797566
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                0.4450136   0.4404235   0.4496037
3-6 months     JiVitA-3         BANGLADESH                     2+                   NA                0.4329638   0.4242271   0.4417005
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                0.5049251   0.4912525   0.5185977
3-6 months     NIH-Crypto       BANGLADESH                     2+                   NA                0.4808568   0.4608585   0.5008551
3-6 months     PROVIDE          BANGLADESH                     1                    NA                0.4930818   0.4789592   0.5072045
3-6 months     PROVIDE          BANGLADESH                     2+                   NA                0.4301848   0.4070472   0.4533225
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4242520   0.4130065   0.4354975
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.4164880   0.3983997   0.4345762
6-9 months     IRC              INDIA                          1                    NA                0.2648147   0.2354826   0.2941468
6-9 months     IRC              INDIA                          2+                   NA                0.2618720   0.2459384   0.2778055
6-9 months     LCNI-5           MALAWI                         1                    NA                0.2881685   0.2675108   0.3088261
6-9 months     LCNI-5           MALAWI                         2+                   NA                0.2863127   0.2685598   0.3040657
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                0.2704383   0.2575259   0.2833507
6-9 months     NIH-Crypto       BANGLADESH                     2+                   NA                0.2595993   0.2394152   0.2797833
6-9 months     PROVIDE          BANGLADESH                     1                    NA                0.2520570   0.2389115   0.2652026
6-9 months     PROVIDE          BANGLADESH                     2+                   NA                0.2652363   0.2431652   0.2873075
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2542775   0.2426559   0.2658992
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2550207   0.2381291   0.2719123
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2480114   0.2306497   0.2653731
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2400735   0.2190389   0.2611082
9-12 months    IRC              INDIA                          1                    NA                0.2332836   0.1953501   0.2712172
9-12 months    IRC              INDIA                          2+                   NA                0.2085521   0.1931722   0.2239321
9-12 months    LCNI-5           MALAWI                         1                    NA                0.2079874   0.1835125   0.2324622
9-12 months    LCNI-5           MALAWI                         2+                   NA                0.1962700   0.1745414   0.2179987
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                0.1990340   0.1866320   0.2114360
9-12 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.2001564   0.1824636   0.2178491
9-12 months    PROVIDE          BANGLADESH                     1                    NA                0.1800944   0.1679863   0.1922026
9-12 months    PROVIDE          BANGLADESH                     2+                   NA                0.1506503   0.1337817   0.1675190
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2092404   0.1970447   0.2214361
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1919813   0.1721767   0.2117859
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1803385   0.1675912   0.1930857
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1971880   0.1783595   0.2160165
12-15 months   IRC              INDIA                          1                    NA                0.1980543   0.1629259   0.2331827
12-15 months   IRC              INDIA                          2+                   NA                0.1777027   0.1643200   0.1910853
12-15 months   LCNI-5           MALAWI                         1                    NA                0.1768164   0.1210256   0.2326073
12-15 months   LCNI-5           MALAWI                         2+                   NA                0.1364159   0.0938571   0.1789746
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1641038   0.1507463   0.1774613
12-15 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1628783   0.1440129   0.1817436
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.1852929   0.1703894   0.2001964
12-15 months   PROVIDE          BANGLADESH                     2+                   NA                0.1356397   0.1169725   0.1543070
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1744727   0.1608756   0.1880697
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1723620   0.1496493   0.1950748
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1734302   0.1561779   0.1906825
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1764138   0.1628701   0.1899575
15-18 months   IRC              INDIA                          1                    NA                0.1426677   0.1051478   0.1801876
15-18 months   IRC              INDIA                          2+                   NA                0.1649912   0.1508274   0.1791549
15-18 months   LCNI-5           MALAWI                         1                    NA                0.1211087   0.0709207   0.1712966
15-18 months   LCNI-5           MALAWI                         2+                   NA                0.2118972   0.1695294   0.2542650
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1652740   0.1526705   0.1778775
15-18 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1478895   0.1264171   0.1693619
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.1496352   0.1350572   0.1642132
15-18 months   PROVIDE          BANGLADESH                     2+                   NA                0.1650000   0.1420470   0.1879530
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1704080   0.1528143   0.1880018
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1730528   0.1438998   0.2022059
18-21 months   IRC              INDIA                          1                    NA                0.1495226   0.1235579   0.1754872
18-21 months   IRC              INDIA                          2+                   NA                0.1617987   0.1465302   0.1770671
18-21 months   LCNI-5           MALAWI                         1                    NA                0.1858953   0.1565092   0.2152813
18-21 months   LCNI-5           MALAWI                         2+                   NA                0.1724340   0.1424578   0.2024101
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1411750   0.1280653   0.1542847
18-21 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1440480   0.1220529   0.1660431
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.1322740   0.1170782   0.1474698
18-21 months   PROVIDE          BANGLADESH                     2+                   NA                0.1576704   0.1364328   0.1789080
21-24 months   IRC              INDIA                          1                    NA                0.2025164   0.1685960   0.2364368
21-24 months   IRC              INDIA                          2+                   NA                0.1714064   0.1559032   0.1869096
21-24 months   LCNI-5           MALAWI                         1                    NA                0.1873223   0.1496759   0.2249686
21-24 months   LCNI-5           MALAWI                         2+                   NA                0.1713221   0.1306665   0.2119777
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1754405   0.1599918   0.1908892
21-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1776236   0.1485278   0.2067194
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1398806   0.1250740   0.1546873
21-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1467795   0.1229135   0.1706455


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8710452   0.8679657   0.8741247
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9223779   0.9122086   0.9325472
3-6 months     IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4414051   0.4384353   0.4443748
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4195871   0.4109053   0.4282689
6-9 months     IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     LCNI-5           MALAWI                         NA                   NA                0.2853462   0.2727187   0.2979736
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2558522   0.2469636   0.2647409
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2420700   0.2289407   0.2551993
9-12 months    IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    LCNI-5           MALAWI                         NA                   NA                0.2022567   0.1863082   0.2182053
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2046179   0.1945139   0.2147219
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1921946   0.1813846   0.2030045
12-15 months   IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.1530519   0.1191456   0.1869583
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1737296   0.1623947   0.1850645
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1750401   0.1647066   0.1853735
15-18 months   IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.1724751   0.1407874   0.2041628
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702121   0.1559390   0.1844852
18-21 months   IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.1816953   0.1614502   0.2019405
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.1772328   0.1503917   0.2040738
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          2+                   1                  0.0108492   -0.0408825    0.0625810
0-3 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0157175   -0.0256166   -0.0058185
0-3 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0297836   -0.0630027    0.0034355
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0985649   -0.1405265   -0.0566032
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0001094   -0.0250716    0.0248527
3-6 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          2+                   1                 -0.0251467   -0.0701880    0.0198947
3-6 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0120498   -0.0216836   -0.0024160
3-6 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0240683   -0.0482558    0.0001192
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0628970   -0.0902108   -0.0355832
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0077640   -0.0291268    0.0135989
6-9 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          2+                   1                 -0.0029427   -0.0363685    0.0304830
6-9 months     LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         2+                   1                 -0.0018557   -0.0294311    0.0257196
6-9 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0108390   -0.0348160    0.0131380
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2+                   1                  0.0131793   -0.0123674    0.0387261
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0007432   -0.0197605    0.0212469
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0079379   -0.0388609    0.0229851
9-12 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          2+                   1                 -0.0247315   -0.0659804    0.0165174
9-12 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         2+                   1                 -0.0117173   -0.0444481    0.0210134
9-12 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     2+                   1                  0.0011223   -0.0204019    0.0226465
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2+                   1                 -0.0294441   -0.0501772   -0.0087109
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0172591   -0.0405279    0.0060097
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                  0.0168495   -0.0081531    0.0418522
12-15 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          2+                   1                 -0.0203517   -0.0580083    0.0173050
12-15 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         2+                   1                 -0.0404005   -0.1108403    0.0300392
12-15 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0012255   -0.0243205    0.0218694
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0496532   -0.0737371   -0.0255692
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0021107   -0.0286373    0.0244160
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                  0.0029836   -0.0196368    0.0256040
15-18 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          2+                   1                  0.0223235   -0.0179278    0.0625747
15-18 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         2+                   1                  0.0907886    0.0245582    0.1570190
15-18 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0173844   -0.0422556    0.0074868
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2+                   1                  0.0153648   -0.0119942    0.0427237
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0026448   -0.0314777    0.0367673
18-21 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          2+                   1                  0.0122761   -0.0178711    0.0424234
18-21 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         2+                   1                 -0.0134613   -0.0560321    0.0291095
18-21 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     2+                   1                  0.0028730   -0.0229665    0.0287126
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2+                   1                  0.0253964   -0.0007752    0.0515680
21-24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          2+                   1                 -0.0311100   -0.0687689    0.0065489
21-24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         2+                   1                 -0.0160001   -0.0715590    0.0395587
21-24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     2+                   1                  0.0021831   -0.0307359    0.0351021
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2+                   1                  0.0068989   -0.0213367    0.0351345


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    NA                 0.0087997   -0.0321691    0.0497685
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0066490   -0.0096385   -0.0036595
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0078776   -0.0172383    0.0014831
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0139245   -0.0262007   -0.0016483
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020926   -0.0059008    0.0100859
3-6 months     IRC              INDIA                          1                    NA                -0.0192425   -0.0550098    0.0165248
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0036085   -0.0068322   -0.0003848
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0068707   -0.0141930    0.0004515
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0040207   -0.0139853    0.0059439
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0046648   -0.0112641    0.0019344
6-9 months     IRC              INDIA                          1                    NA                -0.0021837   -0.0288688    0.0245014
6-9 months     LCNI-5           MALAWI                         1                    NA                -0.0028223   -0.0178089    0.0121643
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0029286   -0.0099779    0.0041207
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0028917   -0.0131950    0.0074116
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0015747   -0.0050072    0.0081566
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0059414   -0.0267603    0.0148775
9-12 months    IRC              INDIA                          1                    NA                -0.0200592   -0.0527707    0.0126523
9-12 months    LCNI-5           MALAWI                         1                    NA                -0.0057306   -0.0239608    0.0124996
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0011891   -0.0079372    0.0055589
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0025628   -0.0098500    0.0047244
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0046225   -0.0113952    0.0021502
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0118561   -0.0036939    0.0274061
12-15 months   IRC              INDIA                          1                    NA                -0.0159117   -0.0459710    0.0141475
12-15 months   LCNI-5           MALAWI                         1                    NA                -0.0237645   -0.0654836    0.0179546
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0000435   -0.0073879    0.0073009
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0052605   -0.0140859    0.0035649
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0007431   -0.0078493    0.0063632
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0016099   -0.0138301    0.0170498
15-18 months   IRC              INDIA                          1                    NA                 0.0177909   -0.0143427    0.0499246
15-18 months   LCNI-5           MALAWI                         1                    NA                 0.0513664    0.0119764    0.0907564
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0040767   -0.0114669    0.0033136
15-18 months   PROVIDE          BANGLADESH                     1                    NA                 0.0067162   -0.0017142    0.0151466
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0001959   -0.0093392    0.0089474
18-21 months   IRC              INDIA                          1                    NA                 0.0094566   -0.0141685    0.0330817
18-21 months   LCNI-5           MALAWI                         1                    NA                -0.0041999   -0.0254667    0.0170668
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0014859   -0.0062893    0.0092612
18-21 months   PROVIDE          BANGLADESH                     1                    NA                 0.0002141   -0.0089908    0.0094191
21-24 months   IRC              INDIA                          1                    NA                -0.0247823   -0.0553582    0.0057935
21-24 months   LCNI-5           MALAWI                         1                    NA                -0.0100895   -0.0352850    0.0151060
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0003904   -0.0101813    0.0094004
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0020898   -0.0064743    0.0106540
