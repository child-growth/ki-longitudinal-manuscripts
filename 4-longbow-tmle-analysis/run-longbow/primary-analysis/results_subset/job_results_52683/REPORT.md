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

agecat      studyid                    country      nhh          n_cell     n
----------  -------------------------  -----------  ----------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less        52   343
Birth       ki1000108-IRC              INDIA        4-5             131   343
Birth       ki1000108-IRC              INDIA        6-7              84   343
Birth       ki1000108-IRC              INDIA        8+               76   343
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less       104   575
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5             244   575
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7             130   575
Birth       ki1017093-NIH-Birth        BANGLADESH   8+               97   575
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less       103   532
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5             249   532
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7             114   532
Birth       ki1017093b-PROVIDE         BANGLADESH   8+               66   532
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less       103   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5             318   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7             167   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+              119   707
6 months    ki1000108-IRC              INDIA        3 or less        57   408
6 months    ki1000108-IRC              INDIA        4-5             157   408
6 months    ki1000108-IRC              INDIA        6-7             107   408
6 months    ki1000108-IRC              INDIA        8+               87   408
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             128   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   537
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       105   603
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             289   603
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             130   603
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               79   603
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less       104   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5             326   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7             170   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+              115   715
6 months    ki1148112-LCNI-5           MALAWI       3 or less       224   816
6 months    ki1148112-LCNI-5           MALAWI       4-5             340   816
6 months    ki1148112-LCNI-5           MALAWI       6-7             182   816
6 months    ki1148112-LCNI-5           MALAWI       8+               70   816
24 months   ki1000108-IRC              INDIA        3 or less        58   409
24 months   ki1000108-IRC              INDIA        4-5             158   409
24 months   ki1000108-IRC              INDIA        6-7             107   409
24 months   ki1000108-IRC              INDIA        8+               86   409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        74   428
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   428
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7             100   428
24 months   ki1017093-NIH-Birth        BANGLADESH   8+               70   428
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       106   579
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   579
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   579
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               83   579
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             232   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             130   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               83   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less       157   558
24 months   ki1148112-LCNI-5           MALAWI       4-5             230   558
24 months   ki1148112-LCNI-5           MALAWI       6-7             123   558
24 months   ki1148112-LCNI-5           MALAWI       8+               48   558


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ed450130-aa73-4de6-8962-afda91526b0a/ff76da99-00f4-42d0-9ac6-00d702a2012c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.8352505   -1.1894804   -0.4810205
Birth       ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -1.1574264   -1.4494295   -0.8654234
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.3100795   -1.5010697   -1.1190893
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.2500258   -1.4805810   -1.0194706
6 months    ki1000108-IRC              INDIA        optimal              observed          -0.9807085   -1.2642511   -0.6971658
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -0.5321555   -0.8914919   -0.1728192
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.5556131   -0.7949208   -0.3163054
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.2860985   -0.5151896   -0.0570074
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.1300940   -0.0712587    0.3314467
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed           0.5428611    0.4104942    0.6752279
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.7680370   -1.0590414   -0.4770327
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.8032247   -0.9931158   -0.6133336
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.6997763   -0.9439261   -0.4556264
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.3918822   -0.6550659   -0.1286986
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed          -0.1584560   -0.3220552    0.0051432


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093-NIH-Birth        BANGLADESH   observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH   observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -1.2441513   -1.3281130   -1.1601897
6 months    ki1000108-IRC              INDIA        observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-FoodSuppl   INDIA        observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH   observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1148112-LCNI-5           MALAWI       observed             observed           0.4417647    0.3702742    0.5132552
24 months   ki1000108-IRC              INDIA        observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH   observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI       observed             observed          -0.0477867   -0.1301103    0.0345368


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.1753326   -0.4940343    0.1433690
Birth       ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.1924953   -0.4591424    0.0741517
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed           0.0116208   -0.1623397    0.1855814
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.0058745   -0.2087092    0.2204581
6 months    ki1000108-IRC              INDIA        optimal              observed           0.3817787    0.1136031    0.6499544
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -0.4800024   -0.8321292   -0.1278755
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed           0.1082093   -0.1058852    0.3223039
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed           0.0870078   -0.1259090    0.2999246
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.1003317   -0.2963216    0.0956581
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed          -0.1010964   -0.2115383    0.0093455
24 months   ki1000108-IRC              INDIA        optimal              observed           0.0222220   -0.2439139    0.2883579
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.1083544   -0.2742992    0.0575904
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.1930908   -0.4195840    0.0334025
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.2184680   -0.4537567    0.0168208
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed           0.1106693   -0.0216970    0.2430356
