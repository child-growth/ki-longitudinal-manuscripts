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

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nchldlt5
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
* delta_W_nchldlt5
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

agecat      studyid                    country                        nrooms    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            144     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             50     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             28     234
Birth       ki0047075b-MAL-ED          BRAZIL                         4+           102     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1              3     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2             19     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3             50     174
Birth       ki0047075b-MAL-ED          INDIA                          4+            22     191
Birth       ki0047075b-MAL-ED          INDIA                          1             69     191
Birth       ki0047075b-MAL-ED          INDIA                          2             68     191
Birth       ki0047075b-MAL-ED          INDIA                          3             32     191
Birth       ki0047075b-MAL-ED          NEPAL                          4+            97     171
Birth       ki0047075b-MAL-ED          NEPAL                          1             36     171
Birth       ki0047075b-MAL-ED          NEPAL                          2             21     171
Birth       ki0047075b-MAL-ED          NEPAL                          3             17     171
Birth       ki0047075b-MAL-ED          PERU                           4+           132     259
Birth       ki0047075b-MAL-ED          PERU                           1             17     259
Birth       ki0047075b-MAL-ED          PERU                           2             51     259
Birth       ki0047075b-MAL-ED          PERU                           3             59     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+           160     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             21     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            55     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             24     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             33     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             38      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             28      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             19      90
Birth       ki1000108-IRC              INDIA                          4+            17     386
Birth       ki1000108-IRC              INDIA                          1            175     386
Birth       ki1000108-IRC              INDIA                          2            161     386
Birth       ki1000108-IRC              INDIA                          3             33     386
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              0      27
Birth       ki1114097-CONTENT          PERU                           4+             1       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1114097-CONTENT          PERU                           2              1       2
Birth       ki1114097-CONTENT          PERU                           3              0       2
Birth       ki1135781-COHORTS          INDIA                          4+            92    4769
Birth       ki1135781-COHORTS          INDIA                          1           3125    4769
Birth       ki1135781-COHORTS          INDIA                          2           1385    4769
Birth       ki1135781-COHORTS          INDIA                          3            167    4769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           584   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          12327   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           5117   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1561   19589
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+            26     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            506     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            207     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             83     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+            12     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            150     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2             50     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3             28     240
6 months    ki0047075b-MAL-ED          BRAZIL                         4+           126     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2             20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3             59     209
6 months    ki0047075b-MAL-ED          INDIA                          4+            25     235
6 months    ki0047075b-MAL-ED          INDIA                          1             84     235
6 months    ki0047075b-MAL-ED          INDIA                          2             78     235
6 months    ki0047075b-MAL-ED          INDIA                          3             48     235
6 months    ki0047075b-MAL-ED          NEPAL                          4+           131     236
6 months    ki0047075b-MAL-ED          NEPAL                          1             52     236
6 months    ki0047075b-MAL-ED          NEPAL                          2             31     236
6 months    ki0047075b-MAL-ED          NEPAL                          3             22     236
6 months    ki0047075b-MAL-ED          PERU                           4+           139     270
6 months    ki0047075b-MAL-ED          PERU                           1             19     270
6 months    ki0047075b-MAL-ED          PERU                           2             50     270
6 months    ki0047075b-MAL-ED          PERU                           3             62     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           191     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             21     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           108     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             62     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             64     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            198     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            106     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             51     369
6 months    ki1000108-IRC              INDIA                          4+            17     405
6 months    ki1000108-IRC              INDIA                          1            183     405
6 months    ki1000108-IRC              INDIA                          2            170     405
6 months    ki1000108-IRC              INDIA                          3             35     405
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            415     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             91     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             56     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            339     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3            101     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+           267     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1             40     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2            115     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3            141     563
6 months    ki1114097-CONTENT          PERU                           4+            78     215
6 months    ki1114097-CONTENT          PERU                           1             44     215
6 months    ki1114097-CONTENT          PERU                           2             54     215
6 months    ki1114097-CONTENT          PERU                           3             39     215
6 months    ki1135781-COHORTS          INDIA                          4+            93    4962
6 months    ki1135781-COHORTS          INDIA                          1           3213    4962
6 months    ki1135781-COHORTS          INDIA                          2           1474    4962
6 months    ki1135781-COHORTS          INDIA                          3            182    4962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           744   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9625   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4740   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1691   16800
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           262    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2850    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           1225    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3            488    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            134     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212
24 months   ki0047075b-MAL-ED          BRAZIL                         4+           104     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2             16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3             49     169
24 months   ki0047075b-MAL-ED          INDIA                          4+            25     227
24 months   ki0047075b-MAL-ED          INDIA                          1             82     227
24 months   ki0047075b-MAL-ED          INDIA                          2             74     227
24 months   ki0047075b-MAL-ED          INDIA                          3             46     227
24 months   ki0047075b-MAL-ED          NEPAL                          4+           127     228
24 months   ki0047075b-MAL-ED          NEPAL                          1             48     228
24 months   ki0047075b-MAL-ED          NEPAL                          2             31     228
24 months   ki0047075b-MAL-ED          NEPAL                          3             22     228
24 months   ki0047075b-MAL-ED          PERU                           4+           110     201
24 months   ki0047075b-MAL-ED          PERU                           1             16     201
24 months   ki0047075b-MAL-ED          PERU                           2             32     201
24 months   ki0047075b-MAL-ED          PERU                           3             43     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           183     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            98     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             50     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             57     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            201     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            106     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             51     372
24 months   ki1000108-IRC              INDIA                          4+            17     407
24 months   ki1000108-IRC              INDIA                          1            184     407
24 months   ki1000108-IRC              INDIA                          2            170     407
24 months   ki1000108-IRC              INDIA                          3             36     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            406     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2             92     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3             57     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            82     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            217     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            137     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           237     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1             36     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2            108     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3            118     499
24 months   ki1114097-CONTENT          PERU                           4+            63     164
24 months   ki1114097-CONTENT          PERU                           1             30     164
24 months   ki1114097-CONTENT          PERU                           2             39     164
24 months   ki1114097-CONTENT          PERU                           3             32     164
24 months   ki1135781-COHORTS          INDIA                          4+            76    3749
24 months   ki1135781-COHORTS          INDIA                          1           2302    3749
24 months   ki1135781-COHORTS          INDIA                          2           1221    3749
24 months   ki1135781-COHORTS          INDIA                          3            150    3749
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           367    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5051    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2400    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            802    8620
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           251    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2789    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           1216    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            491    4747


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/52c8e952-6d6a-464a-b39a-ba46c08d4551/4a463a87-8fff-4a99-b73c-c78fe4594ae7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4546408   -1.0279131    0.1186314
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8087133   -1.2234865   -0.3939401
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1738720   -1.6011122   -0.7466319
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9039163   -1.2524841   -0.5553486
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6114383   -0.9509183   -0.2719582
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7939349   -1.1853948   -0.4024750
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3330467   -1.7542088   -0.9118846
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1814598   -0.7611208    1.1240404
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.5722825   -0.7556903   -0.3888747
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3561422   -1.4247879   -1.2874965
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4664710   -1.6997208   -1.2332213
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1951167   -1.5671146   -0.8231188
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9548336   -1.2208754   -0.6887917
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6531706   -0.8782989   -0.4280423
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3228036   -1.5233771   -1.1222302
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9912835   -1.4455585   -0.5370085
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2224291   -1.4396759   -1.0051824
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0536415   -1.6269847   -0.4802983
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.2820528   -1.8548336   -0.7092720
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0399471   -1.4874945   -0.5923996
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8928052   -1.0767900   -0.7088204
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2808614   -1.4203016   -1.1414212
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.3386938   -0.6689451   -0.0084424
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5917610   -0.7087739   -0.4747482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0469525   -1.1233841   -0.9705209
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1083692   -1.2527591   -0.9639793
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4675778   -1.9324131   -1.0027426
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.8279893   -2.0566798   -1.5992988
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1827302   -1.5430552   -0.8224052
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.8872515   -2.0995284   -1.6749745
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1531498   -1.6226151   -0.6836846
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.8019321   -3.5162671   -2.0875972
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.2097962   -2.6257617   -1.7938307
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6488274   -1.7927964   -1.5048584
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9665204   -1.4500255   -0.4830153
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0886802   -1.2704000   -0.9069603
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8504288   -1.9779071   -1.7229506
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.7336562   -1.1588649   -0.3084475
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.2986670   -1.4604459   -1.1368880
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7026883   -1.8160916   -1.5892850
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3839900   -1.5058335   -1.2621465


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0229487   -1.1509575   -0.8949400
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0069634   -1.1525107   -0.8614160
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6998830   -0.8579049   -0.5418612
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9447876   -1.0604945   -0.8290808
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6917890   -0.8248091   -0.5587689
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.8810169   -1.0869236   -0.6751103
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3079016   -0.4694769   -0.1463262
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6777626   -0.7107167   -0.6448086
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5751978   -1.5949779   -1.5554177
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2033681   -1.3212429   -1.0854932
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2159433   -1.3345235   -1.0973630
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3280247   -1.4371552   -1.2188942
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0548494   -1.1845497   -0.9251491
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2470123   -1.3779341   -1.1160906
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0413281   -1.0740395   -1.0086167
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3132988   -1.3364412   -1.2901565
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7853686   -1.8795723   -1.6911648
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.0008909   -2.0401990   -1.9615828
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0127436   -2.0404564   -1.9850309
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7578934   -1.7933205   -1.7224663


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5683079   -1.1246969   -0.0119189
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1982500   -0.5907650    0.1942650
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4739890    0.0972316    0.8507464
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0408713   -0.3502629    0.2685203
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0803507   -0.4142334    0.2535320
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0870820   -0.4238364    0.2496723
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.3676023   -0.0274599    0.7626644
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4893614   -1.3989347    0.4202119
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1054801   -0.2853179    0.0743577
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2190556   -0.2875917   -0.1505196
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0311932   -0.2540841    0.1916977
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0082513   -0.3788274    0.3623247
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2611097   -0.5130470   -0.0091724
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0921113   -0.1046325    0.2888551
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0052211   -0.1987807    0.1883386
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0635659   -0.4950132    0.3678814
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1376923   -0.3335980    0.0582134
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3698093   -0.9247942    0.1851756
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0350404   -0.5111257    0.5812065
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0471570   -0.4858729    0.3915589
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3058731   -0.4779904   -0.1337559
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0512908   -0.1729106    0.0703290
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.0247721   -0.2711155    0.3206597
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4495670   -0.5672624   -0.3318717
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2663463   -0.3428189   -0.1898737
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2356785   -0.3757875   -0.0955694
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4755354   -0.9354784   -0.0155924
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0178257   -0.1995901    0.1639388
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0924891   -0.4237664    0.2387882
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1371520   -0.0491134    0.3234174
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4696863   -0.9217339   -0.0176387
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1960443   -0.4896686    0.8817572
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3495721   -0.7639845    0.0648403
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1365411   -0.2480249   -0.0250573
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6195974   -1.0928766   -0.1463183
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3408529   -0.5150973   -0.1666085
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0331617   -0.1327860    0.0664627
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.0374367   -0.3145781    0.3894515
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.7022240   -0.8627519   -0.5416960
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3100553   -0.4196894   -0.2004212
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3739034   -0.4907979   -0.2570089
