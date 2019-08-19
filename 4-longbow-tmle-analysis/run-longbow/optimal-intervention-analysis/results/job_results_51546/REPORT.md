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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* hhwealth_quart
* hfoodsec
* hdlvry
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               22    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        146    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              89    257
Birth       ki0047075b-MAL-ED          BRAZIL                         0%              108    191
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         81    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2    191
Birth       ki0047075b-MAL-ED          INDIA                          0%               12    206
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]        156    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%              38    206
Birth       ki0047075b-MAL-ED          NEPAL                          0%               14    173
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        103    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%              56    173
Birth       ki0047075b-MAL-ED          PERU                           0%               27    287
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    287
Birth       ki0047075b-MAL-ED          PERU                           >5%             151    287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               95    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        154    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    252
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                8    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         90    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              25    123
Birth       ki1000109-EE               PAKISTAN                       0%                0      2
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          2      2
Birth       ki1000109-EE               PAKISTAN                       >5%               0      2
Birth       ki1000109-ResPak           PAKISTAN                       0%                0      6
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          2      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%               4      6
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          8     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%              14     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                6     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]         10     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%              11     27
Birth       ki1114097-CMIN             BANGLADESH                     0%               11     13
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%               2     13
Birth       ki1114097-CMIN             BRAZIL                         0%                1    115
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]         66    115
Birth       ki1114097-CMIN             BRAZIL                         >5%              48    115
Birth       ki1114097-CMIN             PERU                           0%                1     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          8     10
Birth       ki1114097-CMIN             PERU                           >5%               1     10
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%              195    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        547    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%              80    822
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
6 months    ki1000109-EE               PAKISTAN                       0%              271    372
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]         80    372
6 months    ki1000109-EE               PAKISTAN                       >5%              21    372
6 months    ki1000109-ResPak           PAKISTAN                       0%               11    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         70    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%             154    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               73    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             261    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        401    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             170    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        112    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             129    243
6 months    ki1114097-CMIN             BRAZIL                         0%                1    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         60    108
6 months    ki1114097-CMIN             BRAZIL                         >5%              47    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%               25    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        332    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             472    829
6 months    ki1114097-CMIN             PERU                           0%               34    637
6 months    ki1114097-CMIN             PERU                           (0%, 5%]        301    637
6 months    ki1114097-CMIN             PERU                           >5%             302    637
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%             1243   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3119   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             469   4831
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        279    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        394    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%             125    242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%               30    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        182    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%             326    538
24 months   ki1114097-CMIN             PERU                           0%               38    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]        193    426
24 months   ki1114097-CMIN             PERU                           >5%             195    426
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%             1211   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3095   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             446   4752


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
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/be4023b4-f5e1-4eaa-8e39-44e859d0dc5a/aeb46279-a441-47ea-9c67-18be28b81385/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1153609   -1.4154268   -0.8152950
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9488343   -1.5218733   -0.3757953
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0779044   -1.3660611   -0.7897477
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8640907   -1.3553035   -0.3728778
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6266547   -1.0567378   -0.1965717
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3281871   -2.5865721   -0.0698021
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5340416   -1.6436477   -1.4244355
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3415610   -1.6642501   -1.0188720
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6444835   -1.1428696   -0.1460974
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0677308   -1.7276443   -0.4078173
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6569966   -2.0040879   -1.3099053
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.0906438   -2.3057566   -1.8755310
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.9481697   -2.4838923   -1.4124471
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.6773208   -1.9682975   -1.3863440
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.4653973   -1.5954589   -1.3353356
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1587630   -1.3038549   -1.0136711
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2084554   -1.3586782   -1.0582326
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.4081160   -1.6309305   -1.1853015
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.4200185   -0.5314921   -0.3085448
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.3689900   -0.4899166   -0.2480634
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1448454   -0.4488750    0.1591842
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3511699   -1.4264462   -1.2758937
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.6538434   -2.2495133   -1.0581735
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1044722   -1.5741754   -0.6347689
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.7091511   -2.8976241   -2.5206782
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.6541055   -1.7564743   -1.5517366
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6269409   -1.7257964   -1.5280853
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.5127848   -1.6465994   -1.3789703
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -1.3863579   -1.5505061   -1.2222097
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.4854388   -1.6562307   -1.3146469
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7081874   -1.7764859   -1.6398889


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4029220   -1.6085859   -1.1972581
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.6003317   -0.6767125   -0.5239510
6 months    ki1114097-CMIN             PERU                           observed             observed          -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -1.5996561   -1.6995642   -1.4997481
24 months   ki1114097-CMIN             PERU                           observed             observed          -1.5759624   -1.6729826   -1.4789423
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7582681   -1.7937283   -1.7228079


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0309640   -0.2286007    0.2905288
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0617968   -0.6160684    0.4924749
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3690027    0.1283550    0.6096503
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0681393   -0.5281765    0.3918979
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3071664   -0.7109438    0.0966109
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2181871   -0.7649578    1.2013320
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0363773   -0.0346725    0.1074271
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1358833   -0.1985908    0.4703574
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0834242   -0.3927546    0.5596029
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2590702   -0.9117803    0.3936400
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2968751   -0.0313089    0.6250591
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1098266   -0.3133802    0.0937270
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.5452477    0.0226107    1.0678847
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2213635   -0.5004944    0.0577675
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0580152   -0.0359225    0.1519529
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0716589   -0.0371235    0.1804414
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0097771   -0.1267989    0.1463531
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1537848   -0.3550750    0.0475055
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1803133   -0.2718415   -0.0887851
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.1442649   -0.2289585   -0.0595712
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1690763   -0.4249243    0.0867717
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0063759   -0.0528463    0.0655981
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2892698   -0.8846527    0.3061132
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1707471   -0.6346902    0.2931959
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1032633   -0.0128765    0.2194030
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5266890   -0.6701521   -0.3832259
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0408230   -0.0249722    0.1066182
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0832518   -0.0186018    0.1851054
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.2132982   -0.3531084   -0.0734881
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0905236   -0.2310245    0.0499772
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0500807   -0.1067795    0.0066180
