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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               18    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        131    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              82    231
Birth       ki0047075b-MAL-ED          BRAZIL                         0%               34     65
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         29     65
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2     65
Birth       ki0047075b-MAL-ED          INDIA                          0%                5     47
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]         33     47
Birth       ki0047075b-MAL-ED          INDIA                          >5%               9     47
Birth       ki0047075b-MAL-ED          NEPAL                          0%                2     27
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]         19     27
Birth       ki0047075b-MAL-ED          NEPAL                          >5%               6     27
Birth       ki0047075b-MAL-ED          PERU                           0%               21    233
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]         89    233
Birth       ki0047075b-MAL-ED          PERU                           >5%             123    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               42    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]         70    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         85    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    125
Birth       ki1000109-EE               PAKISTAN                       0%              161    240
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]         79    240
Birth       ki1000109-EE               PAKISTAN                       >5%               0    240
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%               51    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        345    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%             209    605
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%               55    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        327    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%             157    539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%              151    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    732
Birth       ki1114097-CMIN             BANGLADESH                     0%               12     26
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          4     26
Birth       ki1114097-CMIN             BANGLADESH                     >5%              10     26
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%               76   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2449   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%             298   2823
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
6 months    ki1000109-EE               PAKISTAN                       0%              256    373
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]        117    373
6 months    ki1000109-EE               PAKISTAN                       >5%               0    373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               73    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             261    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        409    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             183    604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        112    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             129    243
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              156   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4153   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             522   4831
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
24 months   ki1000109-EE               PAKISTAN                       0%              115    167
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         52    167
24 months   ki1000109-EE               PAKISTAN                       >5%               0    167
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        279    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        395    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%             125    242
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              165   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4094   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             493   4752


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
![](/tmp/26f4f765-d901-414f-aeae-f5970eca54c1/85e3e92a-0f59-4af5-8858-91e6a0c870d1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1721082   -1.4936773   -0.8505392
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2318031   -2.3035089   -0.1600972
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.7092409   -1.0112221   -0.4072596
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8718468   -1.1492626   -0.5944311
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9728002   -1.0919134   -0.8536869
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7983950   -0.9802839   -0.6165062
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8043896   -0.9484549   -0.6603242
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5044776   -1.5574004   -1.4515548
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.5101742   -1.7698100   -1.2505384
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3280857   -0.8589421    0.2027708
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4422687   -1.9441026   -0.9404349
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2865786   -1.5093662   -1.0637909
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.8022908   -2.0748988   -1.5296827
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5058013   -1.6322265   -1.3793760
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1644149   -1.2896712   -1.0391586
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2324640   -1.4814220   -0.9835060
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5959359   -1.8371800   -1.3546919
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1363862   -0.4427342    0.1699618
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3824507   -1.5089475   -1.2559538
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.7191656   -2.2971051   -1.1412261
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9890809   -1.4582254   -0.5199364
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.7361461   -2.9369823   -2.5353099
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.6738821   -1.8194093   -1.5283549
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6880780   -1.7980933   -1.5780626
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.5694611   -1.7874642   -1.3514581
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7111706   -1.8723322   -1.5500091


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9314050   -1.0202164   -0.8425936
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0540130   -0.2241630    0.3321890
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0281861   -0.9690504    1.0254226
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1735488   -0.4577124    0.1106148
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2837532   -0.5748703    0.0073640
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0413952   -0.0429917    0.1257820
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0867070   -0.2550712    0.0816572
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1051050   -0.2395491    0.0293392
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0188132   -0.0375218   -0.0001046
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.3051811    0.0366716    0.5736906
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2334963   -0.7470776    0.2800850
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.1186027   -0.3814171    0.6186224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0821664   -0.2830221    0.1186894
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0963934   -0.3567117    0.1639249
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0984192    0.0074378    0.1894007
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0727234   -0.0243249    0.1697716
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0337857   -0.2022107    0.2697821
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0340352   -0.1915939    0.2596643
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1775355   -0.4353353    0.0802643
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0376566   -0.0819804    0.1572937
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2592306   -0.8373248    0.3188636
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3185068   -0.7800288    0.1430151
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0905854   -0.0459089    0.2270796
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5451757   -0.7208123   -0.3695392
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0856558    0.0086126    0.1626991
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1281965   -0.0618156    0.3182087
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0695512   -0.2236959    0.0845936
