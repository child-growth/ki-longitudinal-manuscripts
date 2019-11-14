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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        perdiar24    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               14    215
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127    215
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              74    215
Birth       ki0047075b-MAL-ED          BRAZIL                         0%               34     62
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         26     62
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2     62
Birth       ki0047075b-MAL-ED          INDIA                          0%                5     45
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]         31     45
Birth       ki0047075b-MAL-ED          INDIA                          >5%               9     45
Birth       ki0047075b-MAL-ED          NEPAL                          0%                2     26
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]         19     26
Birth       ki0047075b-MAL-ED          NEPAL                          >5%               5     26
Birth       ki0047075b-MAL-ED          PERU                           0%               21    228
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]         87    228
Birth       ki0047075b-MAL-ED          PERU                           >5%             120    228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               42    112
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]         69    112
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                7    115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         77    115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    115
Birth       ki1000109-EE               PAKISTAN                       0%              115    177
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]         62    177
Birth       ki1000109-EE               PAKISTAN                       >5%               0    177
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%               46    572
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        327    572
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%             199    572
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%               55    532
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        322    532
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%             155    532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%              144    707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        375    707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%             188    707
Birth       ki1114097-CMIN             BANGLADESH                     0%                6     19
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          3     19
Birth       ki1114097-CMIN             BANGLADESH                     >5%              10     19
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%               61   2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2091   2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%             244   2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              93    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0%              106    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    209
6 months    ki0047075b-MAL-ED          INDIA                          0%                3    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        191    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%              42    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%               14    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        143    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%              79    236
6 months    ki0047075b-MAL-ED          PERU                           0%                7    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    273
6 months    ki0047075b-MAL-ED          PERU                           >5%             157    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               78    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247
6 months    ki1000109-EE               PAKISTAN                       0%              258    375
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]        117    375
6 months    ki1000109-EE               PAKISTAN                       >5%               0    375
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               74    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             260    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        408    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             183    603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        111    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             130    243
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              156   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4153   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             524   4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        130    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              76    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0%               76    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    169
24 months   ki0047075b-MAL-ED          INDIA                          0%                3    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        183    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    227
24 months   ki0047075b-MAL-ED          NEPAL                          0%               12    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    228
24 months   ki0047075b-MAL-ED          PERU                           0%                1    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         84    201
24 months   ki0047075b-MAL-ED          PERU                           >5%             116    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214
24 months   ki1000109-EE               PAKISTAN                       0%              116    168
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         52    168
24 months   ki1000109-EE               PAKISTAN                       >5%               0    168
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        278    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    579
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        396    579
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    243
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    243
24 months   ki1114097-CMIN             BANGLADESH                     >5%             126    243
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              164   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4082   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             489   4735


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ede6ff4e-7547-4911-937e-eac4edcb689d/e4b5f366-9b41-43c7-90f6-30bd52ee3d34/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8436856   -1.4356359   -0.2517354
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2676736   -1.9359435   -0.5994037
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0842028   -0.4754187    0.3070132
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7294673   -0.0881494    1.5470840
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3522873   -1.5545824   -1.1499921
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1962107   -1.3744127   -1.0180088
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1656061   -1.3389054   -0.9923069
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.7113654   -0.7786029   -0.6441280
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2993611   -0.9131449    0.3144228
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1760200   -0.5100768    0.1580367
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.8821836    0.6361872    1.1281800
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3750653   -0.5108761    1.2610068
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.9366225   -1.2690068   -0.6042382
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2616490   -0.6320817    0.1087838
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1272416   -0.2753262    0.0208430
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0709841   -0.1329736    0.2749418
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.2195407   -0.1903914    0.6294728
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.4042956    0.7775246    2.0310665
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2111104   -0.3802986   -0.0419223
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4273027   -1.7617012   -1.0929041
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0656168   -0.7143498    0.5831163
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0029052   -0.6569219    0.6511115
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8376033   -1.0035449   -0.6716616
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9191272   -1.0770621   -0.7611923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5383796   -0.7093943   -0.3673649
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2428785   -1.3256143   -1.1601428


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9412093   -1.0864308   -0.7959878
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3525437   -1.4473932   -1.2576942
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0975237   -0.6628124    0.4677651
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3352291   -0.2656803    0.9361385
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0321852   -0.3469547    0.4113251
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0329675   -0.7583111    0.8242461
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0002564   -0.1951689    0.1946561
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1022479   -0.2691514    0.0646555
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0785452   -0.2296335    0.0725431
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0227386   -0.0207402    0.0662173
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1609655   -0.4495748    0.7715058
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2870652   -0.0174616    0.5915921
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.1747151   -0.0281278    0.3775580
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1611560   -0.6961893    1.0185013
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0755354   -0.3885848    0.2375140
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1857548   -0.5574397    0.1859301
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0718491   -0.1974187    0.0537205
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0412219   -0.2306970    0.1482533
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3035541   -0.6924928    0.0853847
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.3358638   -0.9587481    0.2870205
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1786951   -0.3416051   -0.0157850
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.6071140    0.2680967    0.9461313
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3108306   -0.9382315    0.3165704
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0568538   -0.5914183    0.7051259
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0739758   -0.2110067    0.0630552
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0262602   -0.1098523    0.1623727
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0719706   -0.2268612    0.0829200
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0197698   -0.0571582    0.0966978
