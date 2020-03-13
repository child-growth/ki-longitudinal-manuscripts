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

agecat      studyid         country                        safeh20    n_cell       n
----------  --------------  -----------------------------  --------  -------  ------
Birth       JiVitA-3        BANGLADESH                     1           17963   17992
Birth       JiVitA-3        BANGLADESH                     0              29   17992
Birth       JiVitA-4        BANGLADESH                     1            2394    2394
Birth       JiVitA-4        BANGLADESH                     0               0    2394
Birth       MAL-ED          BANGLADESH                     1               0     201
Birth       MAL-ED          BANGLADESH                     0             201     201
Birth       MAL-ED          BRAZIL                         1               0      38
Birth       MAL-ED          BRAZIL                         0              38      38
Birth       MAL-ED          INDIA                          1               0      39
Birth       MAL-ED          INDIA                          0              39      39
Birth       MAL-ED          NEPAL                          1               1      25
Birth       MAL-ED          NEPAL                          0              24      25
Birth       MAL-ED          PERU                           1               9     202
Birth       MAL-ED          PERU                           0             193     202
Birth       MAL-ED          SOUTH AFRICA                   1              13      95
Birth       MAL-ED          SOUTH AFRICA                   0              82      95
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              74     111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              37     111
Birth       NIH-Birth       BANGLADESH                     1             573     575
Birth       NIH-Birth       BANGLADESH                     0               2     575
Birth       NIH-Crypto      BANGLADESH                     1             707     707
Birth       NIH-Crypto      BANGLADESH                     0               0     707
Birth       PROVIDE         BANGLADESH                     1              45      45
Birth       PROVIDE         BANGLADESH                     0               0      45
6 months    CONTENT         PERU                           1              54      57
6 months    CONTENT         PERU                           0               3      57
6 months    JiVitA-3        BANGLADESH                     1           16756   16776
6 months    JiVitA-3        BANGLADESH                     0              20   16776
6 months    JiVitA-4        BANGLADESH                     1            4826    4827
6 months    JiVitA-4        BANGLADESH                     0               1    4827
6 months    LCNI-5          MALAWI                         1             672     816
6 months    LCNI-5          MALAWI                         0             144     816
6 months    MAL-ED          BANGLADESH                     1               0     240
6 months    MAL-ED          BANGLADESH                     0             240     240
6 months    MAL-ED          BRAZIL                         1               0     142
6 months    MAL-ED          BRAZIL                         0             142     142
6 months    MAL-ED          INDIA                          1               0     235
6 months    MAL-ED          INDIA                          0             235     235
6 months    MAL-ED          NEPAL                          1               1     233
6 months    MAL-ED          NEPAL                          0             232     233
6 months    MAL-ED          PERU                           1              11     259
6 months    MAL-ED          PERU                           0             248     259
6 months    MAL-ED          SOUTH AFRICA                   1              37     248
6 months    MAL-ED          SOUTH AFRICA                   0             211     248
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246
6 months    NIH-Birth       BANGLADESH                     1             535     537
6 months    NIH-Birth       BANGLADESH                     0               2     537
6 months    NIH-Crypto      BANGLADESH                     1             715     715
6 months    NIH-Crypto      BANGLADESH                     0               0     715
6 months    PROVIDE         BANGLADESH                     1              11      11
6 months    PROVIDE         BANGLADESH                     0               0      11
6 months    SAS-FoodSuppl   INDIA                          1             380     380
6 months    SAS-FoodSuppl   INDIA                          0               0     380
24 months   CONTENT         PERU                           1              45      48
24 months   CONTENT         PERU                           0               3      48
24 months   JiVitA-3        BANGLADESH                     1            8583    8594
24 months   JiVitA-3        BANGLADESH                     0              11    8594
24 months   JiVitA-4        BANGLADESH                     1            4729    4730
24 months   JiVitA-4        BANGLADESH                     0               1    4730
24 months   LCNI-5          MALAWI                         1             464     558
24 months   LCNI-5          MALAWI                         0              94     558
24 months   MAL-ED          BANGLADESH                     1               0     212
24 months   MAL-ED          BANGLADESH                     0             212     212
24 months   MAL-ED          BRAZIL                         1               0     113
24 months   MAL-ED          BRAZIL                         0             113     113
24 months   MAL-ED          INDIA                          1               0     227
24 months   MAL-ED          INDIA                          0             227     227
24 months   MAL-ED          NEPAL                          1               1     226
24 months   MAL-ED          NEPAL                          0             225     226
24 months   MAL-ED          PERU                           1               7     193
24 months   MAL-ED          PERU                           0             186     193
24 months   MAL-ED          SOUTH AFRICA                   1              34     237
24 months   MAL-ED          SOUTH AFRICA                   0             203     237
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213
24 months   NIH-Birth       BANGLADESH                     1             426     428
24 months   NIH-Birth       BANGLADESH                     0               2     428
24 months   NIH-Crypto      BANGLADESH                     1             514     514
24 months   NIH-Crypto      BANGLADESH                     0               0     514
24 months   PROVIDE         BANGLADESH                     1               9       9
24 months   PROVIDE         BANGLADESH                     0               0       9


The following strata were considered:

* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/48854701-c80f-45d5-ba3a-d901f1200020/293e1940-f242-46e9-84ec-f6794c91c4b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     optimal              observed          -0.7730460   -0.7925092   -0.7535829
Birth       MAL-ED     PERU                           optimal              observed           0.1221481   -0.4096068    0.6539029
Birth       MAL-ED     SOUTH AFRICA                   optimal              observed          -0.6758971   -1.2926632   -0.0591311
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6432382    0.3979764    0.8884999
6 months    JiVitA-3   BANGLADESH                     optimal              observed          -0.6521824   -0.6767042   -0.6276606
6 months    LCNI-5     MALAWI                         optimal              observed           0.4569713    0.2817764    0.6321663
6 months    MAL-ED     PERU                           optimal              observed           0.9000450    0.5546494    1.2454406
6 months    MAL-ED     SOUTH AFRICA                   optimal              observed           0.8582979    0.6188153    1.0977805
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5665275    0.4077691    0.7252859
24 months   JiVitA-3   BANGLADESH                     optimal              observed          -1.3403824   -1.3642243   -1.3165405
24 months   LCNI-5     MALAWI                         optimal              observed          -0.0119093   -0.1014859    0.0776672
24 months   MAL-ED     PERU                           optimal              observed          -0.0381550   -0.1726073    0.0962974
24 months   MAL-ED     SOUTH AFRICA                   optimal              observed           0.3784751    0.2365422    0.5204081
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0168886   -0.2020510    0.2358281


### Parameter: E(Y)


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     observed             observed          -0.7777807   -0.7967797   -0.7587816
Birth       MAL-ED     PERU                           observed             observed          -0.0410396   -0.1713918    0.0893125
Birth       MAL-ED     SOUTH AFRICA                   observed             observed          -0.1729474   -0.4186222    0.0727275
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7618919    0.5640188    0.9597650
6 months    JiVitA-3   BANGLADESH                     observed             observed          -0.5932502   -0.6127743   -0.5737261
6 months    LCNI-5     MALAWI                         observed             observed           0.4417647    0.3702742    0.5132552
6 months    MAL-ED     PERU                           observed             observed           1.0487066    0.9226025    1.1748107
6 months    MAL-ED     SOUTH AFRICA                   observed             observed           0.5430175    0.3887455    0.6972895
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5357995    0.4039850    0.6676139
24 months   JiVitA-3   BANGLADESH                     observed             observed          -1.2973086   -1.3206115   -1.2740057
24 months   LCNI-5     MALAWI                         observed             observed          -0.0477867   -0.1301103    0.0345368
24 months   MAL-ED     PERU                           observed             observed           0.0974309   -0.0286270    0.2234888
24 months   MAL-ED     SOUTH AFRICA                   observed             observed           0.4054395    0.2840471    0.5268320
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0518153   -0.0737716    0.1774023


### Parameter: PAR


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     optimal              observed          -0.0047346   -0.0063609   -0.0031084
Birth       MAL-ED     PERU                           optimal              observed          -0.1631877   -0.6897555    0.3633801
Birth       MAL-ED     SOUTH AFRICA                   optimal              observed           0.5029498   -0.0594881    1.0653876
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1186537   -0.0548380    0.2921454
6 months    JiVitA-3   BANGLADESH                     optimal              observed           0.0589322    0.0432575    0.0746069
6 months    LCNI-5     MALAWI                         optimal              observed          -0.0152066   -0.1694307    0.1390175
6 months    MAL-ED     PERU                           optimal              observed           0.1486616   -0.1794995    0.4768227
6 months    MAL-ED     SOUTH AFRICA                   optimal              observed          -0.3152804   -0.5149072   -0.1156536
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0307280   -0.1320333    0.0705773
24 months   JiVitA-3   BANGLADESH                     optimal              observed           0.0430738    0.0347822    0.0513655
24 months   LCNI-5     MALAWI                         optimal              observed          -0.0358774   -0.0724868    0.0007320
24 months   MAL-ED     PERU                           optimal              observed           0.1355859    0.0631795    0.2079923
24 months   MAL-ED     SOUTH AFRICA                   optimal              observed           0.0269644   -0.0409377    0.0948664
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0349268   -0.1448112    0.2146647
