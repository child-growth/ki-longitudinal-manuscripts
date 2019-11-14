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

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             201     201
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0      38
Birth       ki0047075b-MAL-ED          BRAZIL                         0              38      38
Birth       ki0047075b-MAL-ED          INDIA                          1               0      39
Birth       ki0047075b-MAL-ED          INDIA                          0              39      39
Birth       ki0047075b-MAL-ED          NEPAL                          1               1      25
Birth       ki0047075b-MAL-ED          NEPAL                          0              24      25
Birth       ki0047075b-MAL-ED          PERU                           1               9     202
Birth       ki0047075b-MAL-ED          PERU                           0             193     202
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              13      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              82      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              74     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              37     111
Birth       ki1017093-NIH-Birth        BANGLADESH                     1             573     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               2     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              45      45
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      45
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             707     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0     707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           22028   22059
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              31   22059
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2394    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0    2394
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             240     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0             142     142
6 months    ki0047075b-MAL-ED          INDIA                          1               0     235
6 months    ki0047075b-MAL-ED          INDIA                          0             235     235
6 months    ki0047075b-MAL-ED          NEPAL                          1               1     233
6 months    ki0047075b-MAL-ED          NEPAL                          0             232     233
6 months    ki0047075b-MAL-ED          PERU                           1              11     259
6 months    ki0047075b-MAL-ED          PERU                           0             248     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             211     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             380     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             535     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              11      11
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      11
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             715     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     715
6 months    ki1114097-CONTENT          PERU                           1              54      57
6 months    ki1114097-CONTENT          PERU                           0               3      57
6 months    ki1148112-LCNI-5           MALAWI                         1             672     816
6 months    ki1148112-LCNI-5           MALAWI                         0             144     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16698   16718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16718
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            4826    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0             113     113
24 months   ki0047075b-MAL-ED          INDIA                          1               0     227
24 months   ki0047075b-MAL-ED          INDIA                          0             227     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               1     226
24 months   ki0047075b-MAL-ED          NEPAL                          0             225     226
24 months   ki0047075b-MAL-ED          PERU                           1               7     193
24 months   ki0047075b-MAL-ED          PERU                           0             186     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             203     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             426     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               9       9
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514
24 months   ki1114097-CONTENT          PERU                           1              45      48
24 months   ki1114097-CONTENT          PERU                           0               3      48
24 months   ki1148112-LCNI-5           MALAWI                         1             464     558
24 months   ki1148112-LCNI-5           MALAWI                         0              94     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8518    8529
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8529
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            4729    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1    4730


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1ebb894a-527d-4fe0-a70e-1de71198eefe/65e59b93-92ba-4566-ac8a-2803464f3211/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           optimal              observed           0.1061087   -0.4358832    0.6481006
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -0.8103362   -1.2263198   -0.3943525
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8305233    0.5601320    1.1009145
Birth       kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -0.7509321   -0.7692365   -0.7326278
6 months    ki0047075b-MAL-ED   PERU                           optimal              observed           1.0155310    0.6506333    1.3804287
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.7989210    0.5343414    1.0635006
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6029207    0.4419458    0.7638957
6 months    ki1148112-LCNI-5    MALAWI                         optimal              observed           0.4791973    0.2941514    0.6642431
6 months    kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -0.5918613   -0.6118480   -0.5718746
24 months   ki0047075b-MAL-ED   PERU                           optimal              observed          -0.1042971   -0.3187526    0.1101584
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.4096871    0.2568236    0.5625507
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0708171   -0.2678409    0.1262068
24 months   ki1148112-LCNI-5    MALAWI                         optimal              observed          -0.0086516   -0.0989203    0.0816172
24 months   kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -1.3613800   -1.3859227   -1.3368373


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           observed             observed          -0.0410396   -0.1713918    0.0893125
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed          -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7618919    0.5640188    0.9597650
Birth       kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -0.7501043   -0.7679514   -0.7322572
6 months    ki0047075b-MAL-ED   PERU                           observed             observed           1.0534106    0.9272738    1.1795473
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed           0.5435753    0.3893523    0.6977982
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5357995    0.4039850    0.6676139
6 months    ki1148112-LCNI-5    MALAWI                         observed             observed           0.4417647    0.3702742    0.5132552
6 months    kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -0.5927536   -0.6123074   -0.5731998
24 months   ki0047075b-MAL-ED   PERU                           observed             observed           0.1067358   -0.0160906    0.2295621
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed           0.4112869    0.2901842    0.5323897
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0509624   -0.0746843    0.1766091
24 months   ki1148112-LCNI-5    MALAWI                         observed             observed          -0.0477867   -0.1301103    0.0345368
24 months   kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -1.2989248   -1.3223008   -1.2755489


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           optimal              observed          -0.1471483   -0.6838088    0.3895122
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.6373888    0.2588654    1.0159122
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0686314   -0.2928405    0.1555778
Birth       kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed           0.0008279   -0.0000673    0.0017230
6 months    ki0047075b-MAL-ED   PERU                           optimal              observed           0.0378795   -0.3102142    0.3859733
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -0.2553457   -0.4829823   -0.0277091
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0671213   -0.1565132    0.0222707
6 months    ki1148112-LCNI-5    MALAWI                         optimal              observed          -0.0374326   -0.2026463    0.1277811
6 months    kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -0.0008923   -0.0018583    0.0000736
24 months   ki0047075b-MAL-ED   PERU                           optimal              observed           0.2110328    0.0206385    0.4014271
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.0015998   -0.1113579    0.1145575
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1217795   -0.0400735    0.2836325
24 months   ki1148112-LCNI-5    MALAWI                         optimal              observed          -0.0391352   -0.0762367   -0.0020337
24 months   kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed           0.0624551    0.0507150    0.0741953
