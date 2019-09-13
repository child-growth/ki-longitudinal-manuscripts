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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             222     222
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0     119
Birth       ki0047075b-MAL-ED          BRAZIL                         0             119     119
Birth       ki0047075b-MAL-ED          INDIA                          1               0     188
Birth       ki0047075b-MAL-ED          INDIA                          0             188     188
Birth       ki0047075b-MAL-ED          NEPAL                          1               1     164
Birth       ki0047075b-MAL-ED          NEPAL                          0             163     164
Birth       ki0047075b-MAL-ED          PERU                           1               9     240
Birth       ki0047075b-MAL-ED          PERU                           0             231     240
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              33     214
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             181     214
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              76     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              38     114
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              28      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              23      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      23
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           15666   15690
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              24   15690
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             683     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     683
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             534     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             580     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0     580
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             715     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     715
6 months    ki1114097-CONTENT          PERU                           1              54      57
6 months    ki1114097-CONTENT          PERU                           0               3      57
6 months    ki1148112-LCNI-5           MALAWI                         1             672     816
6 months    ki1148112-LCNI-5           MALAWI                         0             144     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16756   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16776
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             577     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514
24 months   ki1114097-CONTENT          PERU                           1              45      48
24 months   ki1114097-CONTENT          PERU                           0               3      48
24 months   ki1148112-LCNI-5           MALAWI                         1             464     558
24 months   ki1148112-LCNI-5           MALAWI                         0              94     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8583    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8594
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
![](/tmp/d9f2fecd-0b62-4212-94cd-d17c351dcdae/3a79154d-c72c-493f-965b-8f5c39ad325c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           optimal              observed           0.1584946   -0.3944918    0.7114811
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.1652537   -0.3016016    0.6321091
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0077923    0.6494320    1.3661527
Birth       kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -0.6633591   -0.6868681   -0.6398500
6 months    ki0047075b-MAL-ED   PERU                           optimal              observed           1.1974922    1.0169697    1.3780147
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.5387592    0.2354360    0.8420824
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5768342    0.4183750    0.7352935
6 months    ki1148112-LCNI-5    MALAWI                         optimal              observed           0.4873602    0.2999471    0.6747733
6 months    kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -0.7439668   -0.7811058   -0.7068277
24 months   ki0047075b-MAL-ED   PERU                           optimal              observed          -0.0132286   -0.1504580    0.1240009
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.4464454    0.3155757    0.5773150
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0594973   -0.2643349    0.1453403
24 months   ki1148112-LCNI-5    MALAWI                         optimal              observed          -0.0139321   -0.1043628    0.0764986
24 months   kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -1.1463845   -1.1763659   -1.1164032


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           observed             observed          -0.0384167   -0.1584416    0.0816083
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed          -0.0034112   -0.1591733    0.1523508
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.8024561    0.5990025    1.0059098
Birth       kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -0.7239267   -0.7437724   -0.7040810
6 months    ki0047075b-MAL-ED   PERU                           observed             observed           1.0507722    0.9245302    1.1770142
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed           0.5429099    0.3886447    0.6971752
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5165515    0.3861929    0.6469101
6 months    ki1148112-LCNI-5    MALAWI                         observed             observed           0.4418137    0.3703100    0.5133174
6 months    kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -0.5932502   -0.6127743   -0.5737261
24 months   ki0047075b-MAL-ED   PERU                           observed             observed           0.1061658   -0.0166496    0.2289812
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed           0.4231857    0.3036551    0.5427162
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0470892   -0.0782759    0.1724543
24 months   ki1148112-LCNI-5    MALAWI                         observed             observed          -0.0478674   -0.1301904    0.0344557
24 months   kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -1.2973086   -1.3206115   -1.2740057


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           optimal              observed          -0.1969113   -0.7452685    0.3514459
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -0.1686650   -0.5898872    0.2525573
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2053362   -0.4992353    0.0885629
Birth       kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -0.0605677   -0.0742426   -0.0468927
6 months    ki0047075b-MAL-ED   PERU                           optimal              observed          -0.1467200   -0.3388062    0.0453662
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.0041507   -0.2461015    0.2544030
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0602827   -0.1494208    0.0288553
6 months    ki1148112-LCNI-5    MALAWI                         optimal              observed          -0.0455464   -0.2099164    0.1188235
6 months    kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed           0.1507166    0.1167365    0.1846967
24 months   ki0047075b-MAL-ED   PERU                           optimal              observed           0.1193944    0.0549565    0.1838322
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -0.0232597   -0.0711563    0.0246368
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1065865   -0.0594375    0.2726105
24 months   ki1148112-LCNI-5    MALAWI                         optimal              observed          -0.0339353   -0.0711916    0.0033210
24 months   kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -0.1509241   -0.1722472   -0.1296009
