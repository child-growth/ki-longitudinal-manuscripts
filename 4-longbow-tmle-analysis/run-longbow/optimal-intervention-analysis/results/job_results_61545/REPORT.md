---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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

agecat      studyid          country                        nchldlt5    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       IRC              INDIA                          1               84     388
Birth       IRC              INDIA                          2+             304     388
Birth       JiVitA-3         BANGLADESH                     1            13986   22431
Birth       JiVitA-3         BANGLADESH                     2+            8445   22431
Birth       NIH-Crypto       BANGLADESH                     1              522     732
Birth       NIH-Crypto       BANGLADESH                     2+             210     732
Birth       PROVIDE          BANGLADESH                     1              391     539
Birth       PROVIDE          BANGLADESH                     2+             148     539
6 months    IRC              INDIA                          1               89     407
6 months    IRC              INDIA                          2+             318     407
6 months    JiVitA-3         BANGLADESH                     1            10887   16800
6 months    JiVitA-3         BANGLADESH                     2+            5913   16800
6 months    LCNI-5           MALAWI                         1              390     811
6 months    LCNI-5           MALAWI                         2+             421     811
6 months    NIH-Crypto       BANGLADESH                     1              507     715
6 months    NIH-Crypto       BANGLADESH                     2+             208     715
6 months    PROVIDE          BANGLADESH                     1              438     604
6 months    PROVIDE          BANGLADESH                     2+             166     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2020
24 months   IRC              INDIA                          1               89     409
24 months   IRC              INDIA                          2+             320     409
24 months   JiVitA-3         BANGLADESH                     1             5454    8622
24 months   JiVitA-3         BANGLADESH                     2+            3168    8622
24 months   LCNI-5           MALAWI                         1              283     571
24 months   LCNI-5           MALAWI                         2+             288     571
24 months   NIH-Crypto       BANGLADESH                     1              357     514
24 months   NIH-Crypto       BANGLADESH                     2+             157     514
24 months   PROVIDE          BANGLADESH                     1              424     578
24 months   PROVIDE          BANGLADESH                     2+             154     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8b48fe44-74c6-4edc-94cb-2af9dc25c98c/92252fc0-a6fb-4b5e-b105-88e36613582b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed          -0.2990297   -0.6781296    0.0800703
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.5306184   -1.5719040   -1.4893328
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.8786552   -1.0053874   -0.7519231
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.6688612   -0.8014980   -0.5362245
6 months    IRC              INDIA                          optimal              observed          -1.3548081   -1.5955091   -1.1141072
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.3602307   -1.4059745   -1.3144868
6 months    LCNI-5           MALAWI                         optimal              observed          -1.6744980   -1.7770167   -1.5719794
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.1489668   -1.2363050   -1.0616285
6 months    PROVIDE          BANGLADESH                     optimal              observed          -1.0434989   -1.1402517   -0.9467461
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5150373   -0.5745700   -0.4555046
24 months   IRC              INDIA                          optimal              observed          -1.6341538   -1.8346193   -1.4336883
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.9743830   -2.0127639   -1.9360022
24 months   LCNI-5           MALAWI                         optimal              observed          -1.8399526   -1.9609435   -1.7189618
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.3851542   -1.4888400   -1.2814684
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.4838135   -1.5863540   -1.3812730


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5897031   -1.6089786   -1.5704276
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
6 months    IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3131375   -1.3362767   -1.2899983
6 months    LCNI-5           MALAWI                         observed             observed          -1.6431566   -1.7128296   -1.5734836
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442232   -0.5932373   -0.4952090
24 months   IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0134284   -2.0411019   -1.9857549
24 months   LCNI-5           MALAWI                         observed             observed          -1.8806830   -1.9625334   -1.7988326
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed          -0.0090116   -0.3369194    0.3188963
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0590847   -0.0983792   -0.0197901
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.0308393   -0.1383983    0.0767197
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.2162408   -0.3360435   -0.0964381
6 months    IRC              INDIA                          optimal              observed           0.1204019   -0.0595119    0.3003157
6 months    JiVitA-3         BANGLADESH                     optimal              observed           0.0470932    0.0057036    0.0884827
6 months    LCNI-5           MALAWI                         optimal              observed           0.0313414   -0.0441824    0.1068653
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0497116   -0.0991606   -0.0002625
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0481926   -0.1189388    0.0225535
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0291859   -0.0659890    0.0076172
24 months   IRC              INDIA                          optimal              observed          -0.1646237   -0.3405580    0.0113107
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0390454   -0.0658151   -0.0122758
24 months   LCNI-5           MALAWI                         optimal              observed          -0.0407304   -0.1268779    0.0454172
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.0561104   -0.1166352    0.0044143
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.1186087   -0.1912007   -0.0460166
