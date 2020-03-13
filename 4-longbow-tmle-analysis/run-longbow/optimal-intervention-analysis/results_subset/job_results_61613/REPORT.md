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

**Outcome Variable:** whz

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
Birth       IRC             INDIA        3 or less        52   343
Birth       IRC             INDIA        4-5             131   343
Birth       IRC             INDIA        6-7              84   343
Birth       IRC             INDIA        8+               76   343
Birth       NIH-Birth       BANGLADESH   3 or less       104   575
Birth       NIH-Birth       BANGLADESH   4-5             244   575
Birth       NIH-Birth       BANGLADESH   6-7             130   575
Birth       NIH-Birth       BANGLADESH   8+               97   575
Birth       NIH-Crypto      BANGLADESH   3 or less       103   707
Birth       NIH-Crypto      BANGLADESH   4-5             318   707
Birth       NIH-Crypto      BANGLADESH   6-7             167   707
Birth       NIH-Crypto      BANGLADESH   8+              119   707
Birth       PROVIDE         BANGLADESH   3 or less       103   532
Birth       PROVIDE         BANGLADESH   4-5             249   532
Birth       PROVIDE         BANGLADESH   6-7             114   532
Birth       PROVIDE         BANGLADESH   8+               66   532
6 months    IRC             INDIA        3 or less        57   408
6 months    IRC             INDIA        4-5             157   408
6 months    IRC             INDIA        6-7             107   408
6 months    IRC             INDIA        8+               87   408
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
6 months    PROVIDE         BANGLADESH   3 or less       105   603
6 months    PROVIDE         BANGLADESH   4-5             289   603
6 months    PROVIDE         BANGLADESH   6-7             130   603
6 months    PROVIDE         BANGLADESH   8+               79   603
6 months    SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    SAS-FoodSuppl   INDIA        4-5             166   380
6 months    SAS-FoodSuppl   INDIA        6-7             115   380
6 months    SAS-FoodSuppl   INDIA        8+               66   380
24 months   IRC             INDIA        3 or less        58   409
24 months   IRC             INDIA        4-5             158   409
24 months   IRC             INDIA        6-7             107   409
24 months   IRC             INDIA        8+               86   409
24 months   LCNI-5          MALAWI       3 or less       157   558
24 months   LCNI-5          MALAWI       4-5             230   558
24 months   LCNI-5          MALAWI       6-7             123   558
24 months   LCNI-5          MALAWI       8+               48   558
24 months   NIH-Birth       BANGLADESH   3 or less        74   428
24 months   NIH-Birth       BANGLADESH   4-5             184   428
24 months   NIH-Birth       BANGLADESH   6-7             100   428
24 months   NIH-Birth       BANGLADESH   8+               70   428
24 months   NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   NIH-Crypto      BANGLADESH   4-5             232   514
24 months   NIH-Crypto      BANGLADESH   6-7             130   514
24 months   NIH-Crypto      BANGLADESH   8+               83   514
24 months   PROVIDE         BANGLADESH   3 or less       106   579
24 months   PROVIDE         BANGLADESH   4-5             273   579
24 months   PROVIDE         BANGLADESH   6-7             117   579
24 months   PROVIDE         BANGLADESH   8+               83   579


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
![](/tmp/9fa28c06-8e15-46ae-850f-d79429c1402d/33a6db72-2d41-4b70-a84a-7850d6eabe4c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        optimal              observed          -0.9475814   -1.2902307   -0.6049322
Birth       NIH-Birth       BANGLADESH   optimal              observed          -1.1342578   -1.4199375   -0.8485782
Birth       NIH-Crypto      BANGLADESH   optimal              observed          -1.2685582   -1.4730031   -1.0641133
Birth       PROVIDE         BANGLADESH   optimal              observed          -1.3125194   -1.5218820   -1.1031568
6 months    IRC             INDIA        optimal              observed          -0.7601163   -0.9922965   -0.5279361
6 months    LCNI-5          MALAWI       optimal              observed           0.5223899    0.3699558    0.6748239
6 months    NIH-Birth       BANGLADESH   optimal              observed          -0.7602035   -0.9794125   -0.5409945
6 months    NIH-Crypto      BANGLADESH   optimal              observed           0.1012333   -0.1161223    0.3185890
6 months    PROVIDE         BANGLADESH   optimal              observed          -0.0138946   -0.1843052    0.1565159
6 months    SAS-FoodSuppl   INDIA        optimal              observed          -0.5347766   -0.8858951   -0.1836581
24 months   IRC             INDIA        optimal              observed          -0.7153026   -0.9451467   -0.4854584
24 months   LCNI-5          MALAWI       optimal              observed          -0.2607084   -0.4054685   -0.1159483
24 months   NIH-Birth       BANGLADESH   optimal              observed          -0.8948232   -1.0866687   -0.7029776
24 months   NIH-Crypto      BANGLADESH   optimal              observed          -0.4249031   -0.6565049   -0.1933012
24 months   PROVIDE         BANGLADESH   optimal              observed          -0.8041433   -0.9908311   -0.6174556


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       NIH-Birth       BANGLADESH   observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto      BANGLADESH   observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE         BANGLADESH   observed             observed          -1.2984586   -1.3752758   -1.2216415
6 months    IRC             INDIA        observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    LCNI-5          MALAWI       observed             observed           0.4417647    0.3702742    0.5132552
6 months    NIH-Birth       BANGLADESH   observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto      BANGLADESH   observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROVIDE         BANGLADESH   observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    SAS-FoodSuppl   INDIA        observed             observed          -1.0121579   -1.1280429   -0.8962729
24 months   IRC             INDIA        observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   LCNI-5          MALAWI       observed             observed          -0.0477867   -0.1301103    0.0345368
24 months   NIH-Birth       BANGLADESH   observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto      BANGLADESH   observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE         BANGLADESH   observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        optimal              observed          -0.0630016   -0.3622774    0.2362741
Birth       NIH-Birth       BANGLADESH   optimal              observed          -0.2156639   -0.4762572    0.0449294
Birth       NIH-Crypto      BANGLADESH   optimal              observed           0.0244069   -0.1619931    0.2108068
Birth       PROVIDE         BANGLADESH   optimal              observed           0.0140608   -0.1704983    0.1986198
6 months    IRC             INDIA        optimal              observed           0.1611865   -0.0466062    0.3689793
6 months    LCNI-5          MALAWI       optimal              observed          -0.0806252   -0.2077971    0.0465467
6 months    NIH-Birth       BANGLADESH   optimal              observed           0.3127997    0.1117792    0.5138201
6 months    NIH-Crypto      BANGLADESH   optimal              observed          -0.0714711   -0.2804724    0.1375302
6 months    PROVIDE         BANGLADESH   optimal              observed          -0.1851960   -0.3421549   -0.0282371
6 months    SAS-FoodSuppl   INDIA        optimal              observed          -0.4773813   -0.8217520   -0.1330106
24 months   IRC             INDIA        optimal              observed          -0.0305124   -0.2406015    0.1795766
24 months   LCNI-5          MALAWI       optimal              observed           0.2129216    0.0881770    0.3376663
24 months   NIH-Birth       BANGLADESH   optimal              observed          -0.0167559   -0.1896235    0.1561118
24 months   NIH-Crypto      BANGLADESH   optimal              observed          -0.1854471   -0.3860355    0.0151412
24 months   PROVIDE         BANGLADESH   optimal              observed          -0.0887237   -0.2573910    0.0799437
