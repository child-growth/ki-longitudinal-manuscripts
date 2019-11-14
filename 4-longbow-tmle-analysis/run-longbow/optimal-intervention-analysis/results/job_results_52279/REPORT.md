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



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/728cdbdf-acfe-472b-8665-09d9a3f7e85d/0e98945f-7a13-453f-9c9e-2394e0f35bbc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        optimal              observed           0.2908799   -0.0376890    0.6194488
Birth       ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.8223767   -0.9987292   -0.6460242
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.9757711   -1.1213905   -0.8301516
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.8581184   -1.0346629   -0.6815740
6 months    ki1000108-IRC              INDIA        optimal              observed          -1.1444196   -1.4765813   -0.8122579
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -1.4894740   -1.8515440   -1.1274040
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -1.5314323   -1.7431721   -1.3196925
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.0059225   -1.1589224   -0.8529226
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.0893052   -1.2984098   -0.8802006
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed          -1.6662223   -1.9378721   -1.3945726
24 months   ki1000108-IRC              INDIA        optimal              observed          -1.4236009   -1.6448749   -1.2023269
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -2.3953595   -2.6012272   -2.1894917
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.6209941   -1.8451255   -1.3968626
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.5165388   -1.6795206   -1.3535570
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed          -1.8550627   -2.0602645   -1.6498609


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
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.5989211   -0.9197161   -0.2781262
Birth       ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.1086430   -0.2692944    0.0520083
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed           0.0906690   -0.0300365    0.2113745
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0513761   -0.2100247    0.1072725
6 months    ki1000108-IRC              INDIA        optimal              observed          -0.0899866   -0.3975258    0.2175525
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -0.4092102   -0.7610198   -0.0574006
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed           0.1240502   -0.0658845    0.3139850
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0857690   -0.2248797    0.0533417
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.1093732   -0.2992534    0.0805071
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed           0.0235263   -0.2315350    0.2785876
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.3751766   -0.5766362   -0.1737170
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed           0.1763016   -0.0158306    0.3684337
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed           0.0185719   -0.1864684    0.2236122
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.0752742   -0.0637141    0.2142626
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed          -0.0272021   -0.2205572    0.1661531
