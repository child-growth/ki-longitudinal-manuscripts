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
![](/tmp/9242d615-edb8-4f17-a68d-7fe887be2fd5/03a95217-4458-4789-b41c-6f77365512a5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5485681   -1.1278003    0.0306640
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9400206   -1.7015416   -0.1784996
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3996338   -0.5841593   -0.2151083
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6950821    0.2906038    1.0995604
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3070617   -1.5355814   -1.0785419
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1817487   -1.3588129   -1.0046845
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0335985   -1.2090365   -0.8581605
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.7836463   -0.9176341   -0.6496584
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1949583   -0.6238594    1.0137760
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0300335   -0.4337381    0.3736712
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.9708476    0.4500243    1.4916709
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2029346   -0.2693906    0.6752598
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.7974436   -1.1915968   -0.4032905
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2655134   -0.6520871    0.1210603
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1286884   -0.2765462    0.0191694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2908644    0.0823865    0.4993422
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.2687994   -0.1664438    0.7040426
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.4165919    0.7840601    2.0491237
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2147842   -0.3871065   -0.0424618
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4634793   -1.9318557   -0.9951030
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4085907   -0.9799005    0.1627191
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0371225   -0.6228158    0.6970608
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8369239   -1.0010540   -0.6727937
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9365241   -1.0706641   -0.8023841
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5644630   -0.8168674   -0.3120586
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2272014   -1.3427928   -1.1116100


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3525437   -1.4473932   -1.2576942
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3932923   -0.9538400    0.1672553
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0075761   -0.6700540    0.6852063
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.3476162    0.1613311    0.5339013
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0673527   -0.3273616    0.4620670
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0454820   -0.2658632    0.1748991
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1167099   -0.2852085    0.0517887
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2105528   -0.3672696   -0.0538361
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0950194   -0.0274370    0.2174758
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3326346   -1.1420060    0.4767367
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1404643   -0.2343687    0.5152972
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0820339   -0.4130866    0.5771545
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3332867   -0.1136878    0.7802612
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2147143   -0.5903057    0.1608771
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1818904   -0.5690594    0.2052786
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0704023   -0.1958453    0.0550407
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2611021   -0.4568418   -0.0653625
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3528128   -0.7664412    0.0608156
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.3481601   -0.9767104    0.2803902
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1750213   -0.3410427   -0.0090000
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.6441869    0.1753606    1.1130131
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0336784   -0.5182285    0.5855854
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0176750   -0.6352879    0.6706379
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0746552   -0.2100989    0.0607886
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0436571   -0.0718476    0.1591617
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0458872   -0.2707331    0.1789588
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0040927   -0.1034548    0.1116402
