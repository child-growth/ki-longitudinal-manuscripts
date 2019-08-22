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
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      368     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      173     758
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    12740   26933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4486   26933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     7242   26933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1     2465   26933
0-6 months    ki1000108-IRC              INDIA                          1                     0       37     410
0-6 months    ki1000108-IRC              INDIA                          1                     1       52     410
0-6 months    ki1000108-IRC              INDIA                          2+                    0      150     410
0-6 months    ki1000108-IRC              INDIA                          2+                    1      171     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      375     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      137     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0      144     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1       44     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      404     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      137     758
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    14046   26836
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     3101   26836
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     8058   26836
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1     1631   26836
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
![](/tmp/a1194890-2d62-4b29-b60e-4b5f2a170e1d/c937c195-a152-4b3b-9d84-c987e35a786d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a1194890-2d62-4b29-b60e-4b5f2a170e1d/c937c195-a152-4b3b-9d84-c987e35a786d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a1194890-2d62-4b29-b60e-4b5f2a170e1d/c937c195-a152-4b3b-9d84-c987e35a786d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a1194890-2d62-4b29-b60e-4b5f2a170e1d/c937c195-a152-4b3b-9d84-c987e35a786d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7188713   0.6251096   0.8126331
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6378058   0.5851055   0.6905060
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3640592   0.3112233   0.4168952
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.2407730   0.1751330   0.3064129
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3190655   0.2791039   0.3590272
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.3627570   0.2944146   0.4310995
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2447018   0.2224219   0.2669816
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2227655   0.1866560   0.2588751
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2177941   0.1747726   0.2608157
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2324163   0.2039727   0.2608598
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0619513   0.0383159   0.0855866
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0953586   0.0673931   0.1233242
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2529621   0.2445897   0.2613345
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2608373   0.2451515   0.2765232
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.5968527   0.4953293   0.6983761
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.5319719   0.4770900   0.5868537
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2702253   0.2315996   0.3088510
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.2404154   0.1788121   0.3020186
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2473005   0.2105575   0.2840434
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.2712206   0.2077621   0.3346790
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1417350   0.1236379   0.1598321
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1457446   0.1128106   0.1786785
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1750183   0.1675464   0.1824901
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1738969   0.1593721   0.1884217
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3820143   0.2770033   0.4870254
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.2909345   0.2412467   0.3406223
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1484687   0.1108881   0.1860492
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.2111438   0.1508469   0.2714406
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1131840   0.0856899   0.1406781
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1740854   0.1193576   0.2288132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1693372   0.1477454   0.1909290
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1368027   0.1077766   0.1658288
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2190846   0.1739517   0.2642176
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2303334   0.2023536   0.2583133
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0604590   0.0367087   0.0842093
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0923284   0.0644130   0.1202438
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1555316   0.1473416   0.1637217
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1621690   0.1474723   0.1768657


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2364780   0.2194210   0.2535349
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2279712   0.2010014   0.2549409
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0812808   0.0624736   0.1000879
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580849   0.2516205   0.2645492
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1392034   0.1253080   0.1530987
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1763303   0.1707026   0.1819580
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606965   0.1446374   0.1767556
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2279712   0.2010014   0.2549409
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0787500   0.0600738   0.0974262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1638320   0.1577093   0.1699547


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.8872322   0.7601049   1.0356214
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.6613566   0.4856015   0.9007231
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.1369359   0.9066789   1.4256681
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9103552   0.7559658   1.0962751
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0671374   0.8664537   1.3143024
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.5392526   0.9504598   2.4927919
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0311319   0.9660130   1.1006405
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.8912951   0.7303846   1.0876556
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8896848   0.6628195   1.1942001
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.0967248   0.8309600   1.4474889
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0282891   0.7931637   1.3331150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9935929   0.9075382   1.0878074
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.7615801   0.5515106   1.0516647
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.4221434   0.9727956   2.0790511
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5380743   1.0340462   2.2877822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8078713   0.6308184   1.0346178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0513444   0.8483258   1.3029489
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.5271228   0.9296475   2.5085896
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0426751   0.9416355   1.1545564


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0627738   -0.1472824   0.0217349
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0126307   -0.0492510   0.0239897
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0120691   -0.0106026   0.0347407
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0082238   -0.0218055   0.0053579
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0101770   -0.0194905   0.0398445
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0193295    0.0001970   0.0384620
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0051228   -0.0003675   0.0106130
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0529502   -0.1435708   0.0376703
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0116539   -0.0313252   0.0080174
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0112747   -0.0094753   0.0320247
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0025316   -0.0136602   0.0085969
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0013120   -0.0034324   0.0060564
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0722583   -0.1643643   0.0198478
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0125069   -0.0121968   0.0372107
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0183229    0.0012274   0.0354184
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0086407   -0.0218695   0.0045881
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0088865   -0.0222740   0.0400470
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0182910   -0.0009114   0.0374934
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0083004    0.0024526   0.0141481


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0956775   -0.2330104   0.0263592
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0359409   -0.1453300   0.0630006
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0364476   -0.0345100   0.1025382
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0347762   -0.0937708   0.0210365
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0446417   -0.0958154   0.1670956
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2378117   -0.0298824   0.4359250
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0198491   -0.0016492   0.0408861
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0973525   -0.2778082   0.0576188
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0450703   -0.1239658   0.0282872
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0436033   -0.0400585   0.1205354
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0181867   -0.1013084   0.0586614
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0074407   -0.0198424   0.0339939
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2332747   -0.5691848   0.0307283
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0776945   -0.0895354   0.2192567
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1393301    0.0009706   0.2585276
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0537704   -0.1391269   0.0251902
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0389808   -0.1090605   0.1672611
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2322662   -0.0470396   0.4370650
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0506639    0.0143651   0.0856259
