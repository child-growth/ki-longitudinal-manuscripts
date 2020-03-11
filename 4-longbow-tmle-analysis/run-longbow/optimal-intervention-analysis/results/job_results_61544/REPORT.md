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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country      nhh          n_cell     n
----------  --------------  -----------  ----------  -------  ----
Birth       IRC             INDIA        3 or less        54   388
Birth       IRC             INDIA        4-5             150   388
Birth       IRC             INDIA        6-7             103   388
Birth       IRC             INDIA        8+               81   388
Birth       NIH-Birth       BANGLADESH   3 or less       112   608
Birth       NIH-Birth       BANGLADESH   4-5             255   608
Birth       NIH-Birth       BANGLADESH   6-7             138   608
Birth       NIH-Birth       BANGLADESH   8+              103   608
Birth       NIH-Crypto      BANGLADESH   3 or less       108   732
Birth       NIH-Crypto      BANGLADESH   4-5             328   732
Birth       NIH-Crypto      BANGLADESH   6-7             176   732
Birth       NIH-Crypto      BANGLADESH   8+              120   732
Birth       PROVIDE         BANGLADESH   3 or less       104   539
Birth       PROVIDE         BANGLADESH   4-5             251   539
Birth       PROVIDE         BANGLADESH   6-7             116   539
Birth       PROVIDE         BANGLADESH   8+               68   539
6 months    IRC             INDIA        3 or less        58   407
6 months    IRC             INDIA        4-5             158   407
6 months    IRC             INDIA        6-7             106   407
6 months    IRC             INDIA        8+               85   407
6 months    LCNI-5          MALAWI       3 or less       224   816
6 months    LCNI-5          MALAWI       4-5             340   816
6 months    LCNI-5          MALAWI       6-7             182   816
6 months    LCNI-5          MALAWI       8+               70   816
6 months    NIH-Birth       BANGLADESH   3 or less        95   537
6 months    NIH-Birth       BANGLADESH   4-5             227   537
6 months    NIH-Birth       BANGLADESH   6-7             128   537
6 months    NIH-Birth       BANGLADESH   8+               87   537
6 months    NIH-Crypto      BANGLADESH   3 or less       104   715
6 months    NIH-Crypto      BANGLADESH   4-5             326   715
6 months    NIH-Crypto      BANGLADESH   6-7             170   715
6 months    NIH-Crypto      BANGLADESH   8+              115   715
6 months    PROVIDE         BANGLADESH   3 or less       105   604
6 months    PROVIDE         BANGLADESH   4-5             289   604
6 months    PROVIDE         BANGLADESH   6-7             130   604
6 months    PROVIDE         BANGLADESH   8+               80   604
6 months    SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    SAS-FoodSuppl   INDIA        4-5             166   380
6 months    SAS-FoodSuppl   INDIA        6-7             115   380
6 months    SAS-FoodSuppl   INDIA        8+               66   380
24 months   IRC             INDIA        3 or less        58   409
24 months   IRC             INDIA        4-5             158   409
24 months   IRC             INDIA        6-7             107   409
24 months   IRC             INDIA        8+               86   409
24 months   LCNI-5          MALAWI       3 or less       159   574
24 months   LCNI-5          MALAWI       4-5             237   574
24 months   LCNI-5          MALAWI       6-7             129   574
24 months   LCNI-5          MALAWI       8+               49   574
24 months   NIH-Birth       BANGLADESH   3 or less        75   429
24 months   NIH-Birth       BANGLADESH   4-5             184   429
24 months   NIH-Birth       BANGLADESH   6-7             100   429
24 months   NIH-Birth       BANGLADESH   8+               70   429
24 months   NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   NIH-Crypto      BANGLADESH   4-5             232   514
24 months   NIH-Crypto      BANGLADESH   6-7             130   514
24 months   NIH-Crypto      BANGLADESH   8+               83   514
24 months   PROVIDE         BANGLADESH   3 or less       106   578
24 months   PROVIDE         BANGLADESH   4-5             273   578
24 months   PROVIDE         BANGLADESH   6-7             117   578
24 months   PROVIDE         BANGLADESH   8+               82   578


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/01d4a842-707b-4d98-ab8c-9c9a95c1480d/804f6e6c-7dc1-4360-a60b-89e6e06d7e02/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        optimal              observed           0.1418696   -0.2196783    0.5034175
Birth       NIH-Birth       BANGLADESH   optimal              observed          -0.8311535   -1.0121467   -0.6501604
Birth       NIH-Crypto      BANGLADESH   optimal              observed          -0.8999557   -1.0823505   -0.7175609
Birth       PROVIDE         BANGLADESH   optimal              observed          -0.8889746   -0.9997621   -0.7781870
6 months    IRC             INDIA        optimal              observed          -0.9797935   -1.3379568   -0.6216302
6 months    LCNI-5          MALAWI       optimal              observed          -1.8627571   -2.1259538   -1.5995605
6 months    NIH-Birth       BANGLADESH   optimal              observed          -1.5319007   -1.7504344   -1.3133669
6 months    NIH-Crypto      BANGLADESH   optimal              observed          -1.0704281   -1.2621199   -0.8787364
6 months    PROVIDE         BANGLADESH   optimal              observed          -0.9250897   -1.0821731   -0.7680064
6 months    SAS-FoodSuppl   INDIA        optimal              observed          -1.4666508   -1.8173570   -1.1159446
24 months   IRC             INDIA        optimal              observed          -1.5336182   -1.7835749   -1.2836614
24 months   LCNI-5          MALAWI       optimal              observed          -1.9508364   -2.2121679   -1.6895050
24 months   NIH-Birth       BANGLADESH   optimal              observed          -2.4841661   -2.7072003   -2.2611319
24 months   NIH-Crypto      BANGLADESH   optimal              observed          -1.4554372   -1.6172757   -1.2935986
24 months   PROVIDE         BANGLADESH   optimal              observed          -1.6921686   -1.9125458   -1.4717914


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       NIH-Birth       BANGLADESH   observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto      BANGLADESH   observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE         BANGLADESH   observed             observed          -0.8851020   -0.9601332   -0.8100709
6 months    IRC             INDIA        observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    LCNI-5          MALAWI       observed             observed          -1.6426961   -1.7120603   -1.5733318
6 months    NIH-Birth       BANGLADESH   observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto      BANGLADESH   observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE         BANGLADESH   observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    SAS-FoodSuppl   INDIA        observed             observed          -1.8986842   -2.0118892   -1.7854792
24 months   IRC             INDIA        observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   LCNI-5          MALAWI       observed             observed          -1.8822648   -1.9637218   -1.8008078
24 months   NIH-Birth       BANGLADESH   observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto      BANGLADESH   observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE         BANGLADESH   observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        optimal              observed          -0.4499109   -0.7829375   -0.1168842
Birth       NIH-Birth       BANGLADESH   optimal              observed          -0.0998662   -0.2642340    0.0645016
Birth       NIH-Crypto      BANGLADESH   optimal              observed          -0.0095388   -0.1734138    0.1543361
Birth       PROVIDE         BANGLADESH   optimal              observed           0.0038725   -0.0792239    0.0869690
6 months    IRC             INDIA        optimal              observed          -0.2546127   -0.5846872    0.0754618
6 months    LCNI-5          MALAWI       optimal              observed           0.2200611   -0.0294446    0.4695667
6 months    NIH-Birth       BANGLADESH   optimal              observed           0.1245186   -0.0732333    0.3222705
6 months    NIH-Crypto      BANGLADESH   optimal              observed          -0.1282502   -0.3015174    0.0450171
6 months    PROVIDE         BANGLADESH   optimal              observed          -0.1666018   -0.3099301   -0.0232734
6 months    SAS-FoodSuppl   INDIA        optimal              observed          -0.4320334   -0.7726639   -0.0914029
24 months   IRC             INDIA        optimal              observed          -0.2651594   -0.4936882   -0.0366305
24 months   LCNI-5          MALAWI       optimal              observed           0.0685716   -0.1765161    0.3136593
24 months   NIH-Birth       BANGLADESH   optimal              observed           0.2651082    0.0618156    0.4684008
24 months   NIH-Crypto      BANGLADESH   optimal              observed           0.0141726   -0.1279164    0.1562615
24 months   PROVIDE         BANGLADESH   optimal              observed           0.0897465   -0.1124225    0.2919154
