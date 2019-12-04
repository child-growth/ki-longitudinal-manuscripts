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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* trth2o
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_trth2o
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

agecat         studyid                    country      nhh          n_cell     n  outcome_variable 
-------------  -------------------------  -----------  ----------  -------  ----  -----------------
0-3 months     ki1000108-IRC              INDIA        3 or less        53   377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA        4-5             146   377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA        6-7              99   377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA        8+               79   377  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less       101   566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5             239   566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7             132   566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+               94   566  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less       123   640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5             296   640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7             136   640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+               85   640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less       108   721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5             324   721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7             169   721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+              120   721  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA        3 or less        57   397  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA        4-5             154   397  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA        6-7             103   397  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA        8+               83   397  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less        89   523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5             223   523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7             126   523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+               85   523  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less       104   598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5             285   598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7             129   598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+               80   598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less       101   695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5             316   695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7             163   695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+              115   695  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA        3 or less        58   407  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA        4-5             158   407  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA        6-7             106   407  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA        8+               85   407  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less        23   314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        4-5             143   314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        6-7              95   314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        8+               53   314  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less        88   498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH   4-5             213   498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH   6-7             116   498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH   8+               81   498  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less       100   565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH   4-5             269   565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH   6-7             120   565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH   8+               76   565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less        98   688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5             316   688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7             164   688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   8+              110   688  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less       143   559  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI       4-5             247   559  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI       6-7             123   559  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI       8+               46   559  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA        3 or less        57   400  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA        4-5             154   400  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA        6-7             104   400  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA        8+               85   400  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        20   311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             142   311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7              99   311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               50   311  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        87   482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5             203   482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7             113   482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH   8+               79   482  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       105   566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5             267   566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7             115   566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH   8+               79   566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less        93   674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5             308   674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7             164   674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+              109   674  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less       108   383  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI       4-5             165   383  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI       6-7              82   383  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI       8+               28   383  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA        3 or less        56   390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA        4-5             149   390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA        6-7             101   390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA        8+               84   390  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less        22   303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5             129   303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7             104   303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        8+               48   303  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        82   461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH   4-5             194   461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH   6-7             107   461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH   8+               78   461  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less        96   532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH   4-5             249   532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH   6-7             109   532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH   8+               78   532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        91   660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             301   660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             162   660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   8+              106   660  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less        37   126  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI       4-5              53   126  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI       6-7              27   126  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI       8+                9   126  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA        3 or less        55   382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA        4-5             146   382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA        6-7             101   382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA        8+               80   382  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less        23   291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5             122   291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7              98   291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+               48   291  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        76   449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH   4-5             188   449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH   6-7             108   449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH   8+               77   449  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less        93   528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH   4-5             245   528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH   6-7             111   528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH   8+               79   528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        83   604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             278   604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             145   604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               98   604  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less        35   119  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI       4-5              49   119  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI       6-7              27   119  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI       8+                8   119  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA        3 or less        54   379  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA        4-5             144   379  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA        6-7             101   379  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA        8+               80   379  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        68   422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH   6-7              98   422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH   8+               72   422  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       100   541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH   4-5             247   541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH   6-7             114   541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH   8+               80   541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        77   546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             251   546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             132   546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               86   546  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less       127   474  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI       4-5             201   474  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI       6-7             104   474  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI       8+               42   474  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA        3 or less        56   389  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA        4-5             147   389  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA        6-7             102   389  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA        8+               84   389  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        71   411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             178   411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7              95   411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH   8+               67   411  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less        91   471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             214   471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             101   471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH   8+               65   471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        67   490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             223   490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             123   490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               77   490  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less       119   405  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI       4-5             168   405  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI       6-7              86   405  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI       8+               32   405  y_rate_haz       


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/67b8ac67-181c-420f-800d-4b2f21c2c239/de98fd30-1d31-4d56-bd8a-e16d26ee7b81/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/67b8ac67-181c-420f-800d-4b2f21c2c239/de98fd30-1d31-4d56-bd8a-e16d26ee7b81/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/67b8ac67-181c-420f-800d-4b2f21c2c239/de98fd30-1d31-4d56-bd8a-e16d26ee7b81/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                -0.2579288   -0.3982345   -0.1176232
0-3 months     ki1000108-IRC              INDIA        4-5                  NA                -0.2565209   -0.3477662   -0.1652757
0-3 months     ki1000108-IRC              INDIA        6-7                  NA                -0.1870830   -0.3133049   -0.0608611
0-3 months     ki1000108-IRC              INDIA        8+                   NA                -0.3059247   -0.4128335   -0.1990158
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.2593974   -0.3282433   -0.1905515
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.2421136   -0.2816920   -0.2025351
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.2142169   -0.2845006   -0.1439331
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.2140647   -0.2849513   -0.1431781
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.1464358   -0.1963429   -0.0965287
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.1773940   -0.2068271   -0.1479609
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.2316322   -0.2873524   -0.1759120
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.2415619   -0.2986999   -0.1844240
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.2251408   -0.2819698   -0.1683117
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.2451427   -0.2726370   -0.2176485
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.2218682   -0.2731228   -0.1706137
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.1550784   -0.1908906   -0.1192663
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                -0.0517820   -0.1347837    0.0312197
3-6 months     ki1000108-IRC              INDIA        4-5                  NA                -0.0585832   -0.1117156   -0.0054509
3-6 months     ki1000108-IRC              INDIA        6-7                  NA                -0.0669538   -0.1191440   -0.0147637
3-6 months     ki1000108-IRC              INDIA        8+                   NA                -0.0147752   -0.0881206    0.0585703
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0386295   -0.0830841    0.0058250
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0759127   -0.1104810   -0.0413444
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0201830   -0.0751082    0.0347422
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0368723   -0.0946694    0.0209249
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0496384   -0.1036433    0.0043665
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0388145   -0.0644004   -0.0132285
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                 0.0082875   -0.0473077    0.0638827
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0876652   -0.1359581   -0.0393723
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0056566   -0.0433035    0.0546168
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                 0.0320666    0.0039298    0.0602034
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                 0.0318788   -0.0188022    0.0825599
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.0694274   -0.1130855   -0.0257692
6-9 months     ki1000108-IRC              INDIA        3 or less            NA                -0.0510061   -0.1000171   -0.0019950
6-9 months     ki1000108-IRC              INDIA        4-5                  NA                -0.0242032   -0.0601614    0.0117550
6-9 months     ki1000108-IRC              INDIA        6-7                  NA                -0.0001237   -0.0450415    0.0447941
6-9 months     ki1000108-IRC              INDIA        8+                   NA                -0.0199074   -0.0740748    0.0342599
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.1163801   -0.1964599   -0.0363004
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -0.0998926   -0.1267311   -0.0730542
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -0.1007085   -0.1346423   -0.0667748
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -0.1273992   -0.1739088   -0.0808895
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0312737   -0.0725051    0.0099576
6-9 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0647069   -0.0942462   -0.0351677
6-9 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0835104   -0.1256790   -0.0413417
6-9 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0724966   -0.1236655   -0.0213276
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0561030   -0.0827673   -0.0294387
6-9 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0573417   -0.0726454   -0.0420381
6-9 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.0747979   -0.1001595   -0.0494364
6-9 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0650040   -0.0982566   -0.0317514
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0319365   -0.0167850    0.0806580
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0359258   -0.0562530   -0.0155986
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0414041   -0.0765691   -0.0062391
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.0480662   -0.0732701   -0.0228622
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0208481   -0.0102231    0.0519193
6-9 months     ki1148112-LCNI-5           MALAWI       4-5                  NA                 0.0296534    0.0048124    0.0544945
6-9 months     ki1148112-LCNI-5           MALAWI       6-7                  NA                 0.0427313    0.0069622    0.0785004
6-9 months     ki1148112-LCNI-5           MALAWI       8+                   NA                 0.0063177   -0.0557332    0.0683686
9-12 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0132945   -0.0547783    0.0281893
9-12 months    ki1000108-IRC              INDIA        4-5                  NA                -0.0116998   -0.0410349    0.0176353
9-12 months    ki1000108-IRC              INDIA        6-7                  NA                -0.0522407   -0.0834333   -0.0210482
9-12 months    ki1000108-IRC              INDIA        8+                   NA                -0.0800680   -0.1133754   -0.0467606
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1535258   -0.2887646    0.5958161
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -0.1475511   -0.2284524   -0.0666498
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -0.2073234   -0.2789597   -0.1356871
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -0.1275594   -0.3038000    0.0486812
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0580832   -0.0949648   -0.0212016
9-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0524932   -0.0731779   -0.0318085
9-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0239564   -0.0662815    0.0183687
9-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0355368   -0.0758704    0.0047968
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0496413   -0.0748245   -0.0244581
9-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0607535   -0.0777009   -0.0438061
9-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.0751205   -0.0992280   -0.0510131
9-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0640376   -0.0948709   -0.0332043
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0268384   -0.0546829    0.0010061
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0310162   -0.0501591   -0.0118733
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0610222   -0.0913692   -0.0306752
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.0292736   -0.0527852   -0.0057621
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0292837   -0.0708614    0.0122939
9-12 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0551060   -0.0837991   -0.0264130
9-12 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0482999   -0.0897116   -0.0068883
9-12 months    ki1148112-LCNI-5           MALAWI       8+                   NA                -0.0323544   -0.0826591    0.0179503
12-15 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0277527   -0.0720746    0.0165691
12-15 months   ki1000108-IRC              INDIA        4-5                  NA                -0.0510959   -0.0735014   -0.0286903
12-15 months   ki1000108-IRC              INDIA        6-7                  NA                -0.0332434   -0.0806934    0.0142065
12-15 months   ki1000108-IRC              INDIA        8+                   NA                -0.0468447   -0.0808547   -0.0128347
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.1378977   -0.3686847    0.0928892
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                 0.0399200    0.0128355    0.0670044
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                 0.0008719   -0.0724979    0.0742416
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                 0.0092323   -0.0906551    0.1091197
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1350689   -0.1644910   -0.1056467
12-15 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.1353061   -0.1569804   -0.1136318
12-15 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.1217376   -0.1557817   -0.0876936
12-15 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.1114193   -0.1632918   -0.0595469
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0422904   -0.0660896   -0.0184912
12-15 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0446032   -0.0594568   -0.0297496
12-15 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.0362930   -0.0569267   -0.0156594
12-15 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0349158   -0.0639609   -0.0058707
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0058786   -0.0201539    0.0319110
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0364040   -0.0528064   -0.0200016
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0388413   -0.0613844   -0.0162982
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.0604393   -0.0804944   -0.0403843
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0054629   -0.0571554    0.0680813
12-15 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0677429   -0.1374528    0.0019669
12-15 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0449941   -0.0916267    0.0016384
12-15 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -0.0535499   -0.1504158    0.0433159
15-18 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0393745   -0.0696961   -0.0090530
15-18 months   ki1000108-IRC              INDIA        4-5                  NA                -0.0454545   -0.0722872   -0.0186217
15-18 months   ki1000108-IRC              INDIA        6-7                  NA                -0.0341546   -0.0583015   -0.0100076
15-18 months   ki1000108-IRC              INDIA        8+                   NA                -0.0349030   -0.0713103    0.0015042
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0351892   -0.0756998    0.0053215
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -0.0425496   -0.0618156   -0.0232837
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -0.0377696   -0.0618455   -0.0136937
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -0.0173901   -0.0521788    0.0173986
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0606393   -0.0994407   -0.0218378
15-18 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0470837   -0.0691846   -0.0249829
15-18 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0549950   -0.0919256   -0.0180644
15-18 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0537972   -0.0938080   -0.0137865
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0354412   -0.0580829   -0.0127995
15-18 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0377440   -0.0504689   -0.0250191
15-18 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.0335034   -0.0538967   -0.0131102
15-18 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0376233   -0.0628258   -0.0124208
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0651546   -0.0935301   -0.0367791
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0099199   -0.0255073    0.0056675
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0169971   -0.0402854    0.0062911
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.0027266   -0.0263505    0.0208972
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0745143   -0.1248856   -0.0241429
15-18 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0340961   -0.0694324    0.0012401
15-18 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0280637   -0.0921686    0.0360412
15-18 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -0.0606805   -0.1090579   -0.0123032
18-21 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0312095   -0.0675182    0.0050993
18-21 months   ki1000108-IRC              INDIA        4-5                  NA                -0.0439989   -0.0654371   -0.0225607
18-21 months   ki1000108-IRC              INDIA        6-7                  NA                -0.0221863   -0.0532169    0.0088443
18-21 months   ki1000108-IRC              INDIA        8+                   NA                -0.0521972   -0.0779869   -0.0264076
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0356071   -0.0648690   -0.0063451
18-21 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0311425   -0.0490230   -0.0132620
18-21 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0678214   -0.0982362   -0.0374066
18-21 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0383211   -0.0688446   -0.0077977
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0093271   -0.0333236    0.0146694
18-21 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0097025   -0.0248469    0.0054418
18-21 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.0142150   -0.0369699    0.0085398
18-21 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0216160   -0.0440872    0.0008551
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0208729   -0.0120645    0.0538102
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0281220   -0.0393997   -0.0168442
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0402198   -0.0609702   -0.0194695
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.0137968   -0.0332391    0.0056454
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0043178   -0.0357514    0.0271157
18-21 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0309512   -0.0535037   -0.0083988
18-21 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                 0.0102006   -0.0183697    0.0387708
18-21 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -0.0350320   -0.1492425    0.0791785
21-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0100332   -0.0372314    0.0572977
21-24 months   ki1000108-IRC              INDIA        4-5                  NA                -0.0214205   -0.0459444    0.0031034
21-24 months   ki1000108-IRC              INDIA        6-7                  NA                -0.0294267   -0.0544047   -0.0044487
21-24 months   ki1000108-IRC              INDIA        8+                   NA                -0.0043072   -0.0298002    0.0211858
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0376164    0.0052330    0.0699997
21-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                 0.0384014    0.0211068    0.0556960
21-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                 0.0461648    0.0197873    0.0725422
21-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                 0.0395095    0.0122345    0.0667845
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0661920    0.0460159    0.0863680
21-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                 0.0423836    0.0303969    0.0543703
21-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                 0.0421551    0.0212634    0.0630468
21-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                 0.0409690    0.0154634    0.0664746
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0333556    0.0107089    0.0560022
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                 0.0681304    0.0560515    0.0802093
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                 0.0711739    0.0504840    0.0918638
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.0383721    0.0159290    0.0608152
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0227376   -0.0056522    0.0511274
21-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                 0.0166449   -0.0079849    0.0412747
21-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                 0.0339641    0.0007164    0.0672118
21-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                 0.0368705   -0.0120047    0.0857458


### Parameter: E(Y)


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.2312607   -0.2486732   -0.2138483
3-6 months     ki1000108-IRC              INDIA        NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0267740    0.0099602    0.0435879
6-9 months     ki1000108-IRC              INDIA        NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1148112-LCNI-5           MALAWI       NA                   NA                 0.0279334    0.0120046    0.0438622
9-12 months    ki1000108-IRC              INDIA        NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1148112-LCNI-5           MALAWI       NA                   NA                -0.0433141   -0.0626948   -0.0239333
12-15 months   ki1000108-IRC              INDIA        NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1148112-LCNI-5           MALAWI       NA                   NA                -0.0403575   -0.0774359   -0.0032790
15-18 months   ki1000108-IRC              INDIA        NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1148112-LCNI-5           MALAWI       NA                   NA                -0.0464023   -0.0722064   -0.0205982
18-21 months   ki1000108-IRC              INDIA        NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1148112-LCNI-5           MALAWI       NA                   NA                -0.0147327   -0.0309734    0.0015080
21-24 months   ki1000108-IRC              INDIA        NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                 0.0258428    0.0105053    0.0411803


### Parameter: ATE


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        4-5                  3 or less          0.0014079   -0.1661964    0.1690122
0-3 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.0708458   -0.1179155    0.2596072
0-3 months     ki1000108-IRC              INDIA        8+                   3 or less         -0.0479959   -0.2247808    0.1287890
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0172838   -0.0625076    0.0970753
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0451805   -0.0531486    0.1435096
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0453327   -0.0537528    0.1444183
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0309582   -0.0890298    0.0271135
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0851964   -0.1599283   -0.0104645
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0951261   -0.1709567   -0.0192955
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0200019   -0.0832956    0.0432917
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0032725   -0.0735406    0.0800857
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0700623    0.0025999    0.1375248
3-6 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0068012   -0.1054923    0.0918898
3-6 months     ki1000108-IRC              INDIA        6-7                  3 or less         -0.0151718   -0.1129219    0.0825783
3-6 months     ki1000108-IRC              INDIA        8+                   3 or less          0.0370068   -0.0743816    0.1483953
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0372831   -0.0935853    0.0190190
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0184466   -0.0522061    0.0890992
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0017573   -0.0711468    0.0746613
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0108240   -0.0490390    0.0706870
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0579260   -0.0195804    0.1354323
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0380268   -0.1104364    0.0343828
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0264099   -0.0303622    0.0831821
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0262222   -0.0444251    0.0968695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0750840   -0.1410376   -0.0091304
6-9 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA        4-5                  3 or less          0.0268029   -0.0341626    0.0877683
6-9 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.0508824   -0.0157797    0.1175445
6-9 months     ki1000108-IRC              INDIA        8+                   3 or less          0.0310987   -0.0422780    0.1044753
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less          0.0164875   -0.0679463    0.1009213
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less          0.0156716   -0.0714307    0.1027739
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0110190   -0.1036281    0.0815900
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0334332   -0.0846033    0.0177369
6-9 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0522366   -0.1114770    0.0070037
6-9 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0412228   -0.1071302    0.0246845
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0012387   -0.0319832    0.0295058
6-9 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0186949   -0.0555973    0.0182075
6-9 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0089009   -0.0515266    0.0337248
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0678623   -0.1206695   -0.0150552
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0733406   -0.1334773   -0.0132038
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0800027   -0.1348843   -0.0251211
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0088054   -0.0310930    0.0487037
6-9 months     ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0218832   -0.0256626    0.0694291
6-9 months     ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0145304   -0.0841715    0.0551107
9-12 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA        4-5                  3 or less          0.0015948   -0.0491434    0.0523329
9-12 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.0389462   -0.0909233    0.0130309
9-12 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.0667735   -0.1201442   -0.0134028
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.3010768   -0.7509074    0.1487537
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.3608491   -0.8090653    0.0873670
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.2810851   -0.7574632    0.1952929
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0055900   -0.0369453    0.0481253
9-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0341268   -0.0221636    0.0904172
9-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0225464   -0.0322940    0.0773867
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0111122   -0.0417183    0.0194938
9-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0254793   -0.0604525    0.0094939
9-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0143963   -0.0544167    0.0256241
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0041778   -0.0379985    0.0296428
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0341838   -0.0754047    0.0070371
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0024352   -0.0388953    0.0340249
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0258223   -0.0762107    0.0245660
9-12 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0190162   -0.0777910    0.0397586
9-12 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0030707   -0.0686899    0.0625486
12-15 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0233432   -0.0728763    0.0261900
12-15 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0054907   -0.0703986    0.0594172
12-15 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0190920   -0.0748277    0.0366437
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less          0.1778177   -0.0547793    0.4104147
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less          0.1387696   -0.1036106    0.3811498
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less          0.1471300   -0.1044598    0.3987199
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0002372   -0.0370531    0.0365787
12-15 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0133313   -0.0319528    0.0586153
12-15 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0236495   -0.0360694    0.0833684
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0023128   -0.0303920    0.0257664
12-15 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0059974   -0.0255282    0.0375230
12-15 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0073746   -0.0301613    0.0449106
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0422826   -0.0730057   -0.0115595
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0447198   -0.0790997   -0.0103400
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0663179   -0.0990643   -0.0335715
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0732059   -0.1669103    0.0204986
12-15 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0504570   -0.1285317    0.0276176
12-15 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0590128   -0.1743560    0.0563304
15-18 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0060799   -0.0465059    0.0343460
15-18 months   ki1000108-IRC              INDIA        6-7                  3 or less          0.0052199   -0.0333851    0.0438250
15-18 months   ki1000108-IRC              INDIA        8+                   3 or less          0.0044715   -0.0428113    0.0517543
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0073605   -0.0522311    0.0375102
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0025804   -0.0496625    0.0445016
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less          0.0177991   -0.0356826    0.0712808
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0135556   -0.0315009    0.0586120
15-18 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0056443   -0.0484546    0.0597432
15-18 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0068420   -0.0488615    0.0625455
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0023028   -0.0282994    0.0236939
15-18 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0019378   -0.0285945    0.0324701
15-18 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0021821   -0.0360891    0.0317250
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0552347    0.0226792    0.0877903
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0481575    0.0112590    0.0850560
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0624280    0.0252656    0.0995903
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0404181   -0.0211118    0.1019480
15-18 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0464505   -0.0350768    0.1279779
15-18 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0138337   -0.0560064    0.0836738
18-21 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0127895   -0.0550735    0.0294946
18-21 months   ki1000108-IRC              INDIA        6-7                  3 or less          0.0090232   -0.0392870    0.0573334
18-21 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0209877   -0.0654851    0.0235096
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0044646   -0.0298498    0.0387790
18-21 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0322143   -0.0745487    0.0101201
18-21 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0027140   -0.0451632    0.0397351
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0003754   -0.0287549    0.0280040
18-21 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0048879   -0.0379567    0.0281808
18-21 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0122889   -0.0451643    0.0205864
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0489948   -0.0838537   -0.0141360
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0610927   -0.1000744   -0.0221109
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0346697   -0.0729133    0.0035739
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0266334   -0.0654067    0.0121399
18-21 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0145184   -0.0278828    0.0569196
18-21 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0307141   -0.1492164    0.0877882
21-24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0314537   -0.0846178    0.0217104
21-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0394599   -0.0929379    0.0140182
21-24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0143403   -0.0679784    0.0392977
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0007850   -0.0359591    0.0375292
21-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0085484   -0.0332440    0.0503409
21-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0018931   -0.0404862    0.0442725
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0238083   -0.0473472   -0.0002695
21-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0240369   -0.0531699    0.0050961
21-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0252229   -0.0577839    0.0073380
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0347748    0.0090615    0.0604882
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0378183    0.0070500    0.0685867
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0050165   -0.0268234    0.0368565
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0060927   -0.0437780    0.0315927
21-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0112265   -0.0325459    0.0549990
21-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0141330   -0.0425984    0.0708643


### Parameter: PAR


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                 0.0021017   -0.1292032    0.1334066
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0274109   -0.0356794    0.0905012
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0416044   -0.0883430    0.0051342
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0061200   -0.0603208    0.0480808
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                -0.0001098   -0.0770845    0.0768649
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0122711   -0.0547778    0.0302355
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0226759   -0.0277061    0.0730580
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0211174   -0.0265095    0.0687443
6-9 months     ki1000108-IRC              INDIA        3 or less            NA                 0.0347384   -0.0133333    0.0828102
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0111497   -0.0654059    0.0877053
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0282811   -0.0669992    0.0104371
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0053234   -0.0295709    0.0189242
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0633003   -0.1099892   -0.0166114
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0070853   -0.0203740    0.0345446
9-12 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0228368   -0.0614223    0.0157487
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.2997895   -0.7198012    0.1202223
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0156084   -0.0183120    0.0495287
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0134057   -0.0365922    0.0097808
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0074611   -0.0344741    0.0195519
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0140303   -0.0477865    0.0197259
12-15 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0176992   -0.0591660    0.0237676
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1467723   -0.0665093    0.3600540
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0091101   -0.0203318    0.0385520
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0013797   -0.0202453    0.0230047
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0442099   -0.0691718   -0.0192480
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0458204   -0.1005289    0.0088882
15-18 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0008579   -0.0285659    0.0302817
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0017234   -0.0413680    0.0379213
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0029487   -0.0331231    0.0390204
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0022025   -0.0227624    0.0183575
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0482473    0.0207291    0.0757654
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0281119   -0.0132476    0.0694715
18-21 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0088722   -0.0430631    0.0253188
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0027819   -0.0297198    0.0241560
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0016128   -0.0237458    0.0205202
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0488416   -0.0799181   -0.0177651
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0104149   -0.0382597    0.0174299
21-24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0239413   -0.0666923    0.0188096
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0030751   -0.0257277    0.0318780
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0199577   -0.0379984   -0.0019170
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0254065    0.0037663    0.0470467
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0031052   -0.0203097    0.0265202
