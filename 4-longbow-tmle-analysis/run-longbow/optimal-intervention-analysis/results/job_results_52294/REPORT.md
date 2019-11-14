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
![](/tmp/30115d26-34fd-48f6-adbb-71316c659d01/633916f1-58af-46d1-8b3e-cef7e13c6537/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0059818   -1.1846643   -0.8272994
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1048457   -2.2729982    0.0633068
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.7223530   -1.0427577   -0.4019482
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9059116   -1.1981371   -0.6136861
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8905641   -1.0139753   -0.7671528
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9087754   -1.0530731   -0.7644778
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8765127   -1.0068232   -0.7462023
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5713327   -1.6755321   -1.4671334
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2218813   -1.6669371   -0.7768255
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5899350   -1.0270116   -0.1528584
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3528256   -1.8783136   -0.8273375
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2825920   -1.5071186   -1.0580655
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.8789799   -2.0944471   -1.6635128
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5020637   -1.6264764   -1.3776509
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2457468   -1.3612394   -1.1302543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0848428   -1.2310646   -0.9386211
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.4850724   -1.7014341   -1.2687107
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1305096   -0.4423261    0.1813070
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4009662   -1.5259531   -1.2759793
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.7027911   -2.2754621   -1.1301201
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9627589   -1.4294289   -0.4960889
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.7344394   -2.9104579   -2.5584210
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.7087875   -1.8426677   -1.5749072
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5858869   -1.6840687   -1.4877050
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.6250101   -1.7975978   -1.4524223
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.8445321   -2.0054363   -1.6836279


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1121134   -0.2369353    0.0127084
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0987714   -1.2270988    1.0295561
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1604367   -0.4601795    0.1393060
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2496884   -0.5520736    0.0526968
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0408409   -0.1402794    0.0585976
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0236734   -0.1075171    0.1548639
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0329818   -0.1446285    0.0786649
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0480419   -0.0476135    0.1436974
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0163903   -0.4328211    0.4656016
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0288757   -0.3960100    0.4537613
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0247303   -0.4970256    0.5464862
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0861529   -0.2885682    0.1162624
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0197043   -0.2252697    0.1858611
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0946816    0.0046962    0.1846671
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1540553    0.0618732    0.2462375
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1138355   -0.2494974    0.0218264
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0768284   -0.2796016    0.1259448
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1834121   -0.4456720    0.0788478
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0561721   -0.0631123    0.1754566
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2761240   -0.8488974    0.2966494
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3491051   -0.8083272    0.1101169
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0892759   -0.0276648    0.2062165
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5102704   -0.6765725   -0.3439684
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0165353   -0.0752253    0.0421547
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1837455    0.0370321    0.3304588
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0638103   -0.0922492    0.2198698
