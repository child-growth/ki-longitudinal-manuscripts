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

agecat      studyid                    country      nhh          n_cell     n
----------  -------------------------  -----------  ----------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less        54   388
Birth       ki1000108-IRC              INDIA        4-5             150   388
Birth       ki1000108-IRC              INDIA        6-7             103   388
Birth       ki1000108-IRC              INDIA        8+               81   388
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less       112   608
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5             255   608
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7             138   608
Birth       ki1017093-NIH-Birth        BANGLADESH   8+              103   608
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less       104   539
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5             251   539
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7             116   539
Birth       ki1017093b-PROVIDE         BANGLADESH   8+               68   539
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less       108   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5             328   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7             176   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+              120   732
6 months    ki1000108-IRC              INDIA        3 or less        58   407
6 months    ki1000108-IRC              INDIA        4-5             158   407
6 months    ki1000108-IRC              INDIA        6-7             106   407
6 months    ki1000108-IRC              INDIA        8+               85   407
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             128   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   537
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       105   604
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             289   604
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             130   604
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               80   604
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
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        75   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7             100   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+               70   429
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       106   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               82   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             232   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             130   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               83   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less       159   574
24 months   ki1148112-LCNI-5           MALAWI       4-5             237   574
24 months   ki1148112-LCNI-5           MALAWI       6-7             129   574
24 months   ki1148112-LCNI-5           MALAWI       8+               49   574


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
![](/tmp/35560dc7-cfd4-429d-8bdc-f569f501c9ab/907b52f2-0eb6-4dc6-ad2f-277042a1b2cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        optimal              observed           0.0412182   -0.2793315    0.3617679
Birth       ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.7482445   -0.9555909   -0.5408980
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.8874822   -1.0091850   -0.7657794
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.8558631   -1.0300733   -0.6816529
6 months    ki1000108-IRC              INDIA        optimal              observed          -1.3873194   -1.7390336   -1.0356052
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -1.5917085   -1.9463860   -1.2370310
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -1.4717816   -1.6608909   -1.2826723
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.1370584   -1.3044276   -0.9696891
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.0868513   -1.2878451   -0.8858575
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed          -1.8122716   -2.0403986   -1.5841445
24 months   ki1000108-IRC              INDIA        optimal              observed          -1.5328508   -1.7997692   -1.2659323
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -2.2946604   -2.5144569   -2.0748638
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.7649587   -1.9507872   -1.5791301
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.4128953   -1.6225771   -1.2032135
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed          -2.0519686   -2.2834557   -1.8204816


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093-NIH-Birth        BANGLADESH   observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -0.9094945   -0.9809370   -0.8380521
6 months    ki1000108-IRC              INDIA        observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-FoodSuppl   INDIA        observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH   observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH   observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1148112-LCNI-5           MALAWI       observed             observed          -1.6426961   -1.7120603   -1.5733318
24 months   ki1000108-IRC              INDIA        observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093-NIH-Birth        BANGLADESH   observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH   observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1148112-LCNI-5           MALAWI       observed             observed          -1.8822648   -1.9637218   -1.8008078


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.3492594   -0.6632148   -0.0353041
Birth       ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.1827753   -0.3655939    0.0000434
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed           0.0023802   -0.0886527    0.0934131
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0536314   -0.2090917    0.1018289
6 months    ki1000108-IRC              INDIA        optimal              observed           0.1529132   -0.1616008    0.4674272
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -0.3069757   -0.6491423    0.0351908
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed           0.0643995   -0.1084635    0.2372625
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed           0.0453669   -0.1077911    0.1985249
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.1118270   -0.2930033    0.0693493
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed           0.1695755   -0.0438368    0.3829878
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.2659267   -0.5122190   -0.0196344
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed           0.0756025   -0.1254765    0.2766814
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed           0.1625365   -0.0128264    0.3378995
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0283693   -0.2091418    0.1524032
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed           0.1697038   -0.0467796    0.3861872
