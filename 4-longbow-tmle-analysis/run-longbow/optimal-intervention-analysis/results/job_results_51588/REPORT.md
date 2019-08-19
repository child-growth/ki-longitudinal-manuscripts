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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               18    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              81    241
Birth       ki0047075b-MAL-ED          BRAZIL                         0%              105    183
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         76    183
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2    183
Birth       ki0047075b-MAL-ED          INDIA                          0%               12    203
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]        153    203
Birth       ki0047075b-MAL-ED          INDIA                          >5%              38    203
Birth       ki0047075b-MAL-ED          NEPAL                          0%               13    168
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        101    168
Birth       ki0047075b-MAL-ED          NEPAL                          >5%              54    168
Birth       ki0047075b-MAL-ED          PERU                           0%               26    279
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]        107    279
Birth       ki0047075b-MAL-ED          PERU                           >5%             146    279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               95    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        152    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    250
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                8    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         86    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              24    118
Birth       ki1000109-EE               PAKISTAN                       0%                0      1
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          1      1
Birth       ki1000109-EE               PAKISTAN                       >5%               0      1
Birth       ki1000109-ResPak           PAKISTAN                       0%                0      5
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          1      5
Birth       ki1000109-ResPak           PAKISTAN                       >5%               4      5
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          8     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%              14     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                4     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]         10     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%               9     23
Birth       ki1114097-CMIN             BANGLADESH                     0%                6      8
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0      8
Birth       ki1114097-CMIN             BANGLADESH                     >5%               2      8
Birth       ki1114097-CMIN             BRAZIL                         0%                1    111
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]         63    111
Birth       ki1114097-CMIN             BRAZIL                         >5%              47    111
Birth       ki1114097-CMIN             PERU                           0%                1     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          8     10
Birth       ki1114097-CMIN             PERU                           >5%               1     10
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%              162    683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        457    683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%              64    683
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
6 months    ki1000109-EE               PAKISTAN                       0%              275    376
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]         80    376
6 months    ki1000109-EE               PAKISTAN                       >5%              21    376
6 months    ki1000109-ResPak           PAKISTAN                       0%               11    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         70    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%             154    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               74    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             260    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        338    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    536
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        400    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             170    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        111    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             130    243
6 months    ki1114097-CMIN             BRAZIL                         0%                1    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         60    108
6 months    ki1114097-CMIN             BRAZIL                         >5%              47    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%               25    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        332    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             473    830
6 months    ki1114097-CMIN             PERU                           0%               34    636
6 months    ki1114097-CMIN             PERU                           (0%, 5%]        301    636
6 months    ki1114097-CMIN             PERU                           >5%             301    636
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%             1243   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3119   4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             471   4833
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        278    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        395    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    243
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    243
24 months   ki1114097-CMIN             BANGLADESH                     >5%             126    243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%               30    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        182    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%             326    538
24 months   ki1114097-CMIN             PERU                           0%               38    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]        193    426
24 months   ki1114097-CMIN             PERU                           >5%             195    426
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%             1207   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3085   4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             443   4735


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/1ea79d20-1221-45b5-aef1-38bba3c33199/ce3dc799-1be3-4caa-8d62-249fc8c31f2b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4687975   -0.8959539   -0.0416410
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2752698   -1.7039623   -0.8465773
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8266976   -1.4064115   -0.2469837
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1753891   -0.5351380    0.1843598
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7213528    0.2889598    1.1537459
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2715335   -0.4683325   -0.0747344
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1896957   -0.6687990    1.0481903
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2218651   -0.4845324    0.0408022
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.8673919    0.3952248    1.3395590
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1498321   -0.2391498    0.5388141
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.5600297   -1.0238494   -0.0962100
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0507572   -0.2717522    0.1702377
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.7758374   -1.1358155   -0.4158594
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2866893   -0.6894418    0.1160631
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1481520   -0.3028310    0.0065271
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0624116   -0.1004703    0.2252935
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0553971   -0.3355902    0.4463845
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1986745   -0.4426914    0.0453425
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.9968687    0.5961007    1.3976368
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.1301154    0.6471170    1.6131137
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3363255   -0.4077487   -0.2649024
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3561920   -1.8392565   -0.8731274
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3560590   -0.8717225    0.1596046
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2026694   -0.6555256    0.2501869
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8355220   -0.9991315   -0.6719125
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9135150   -1.0904378   -0.7365923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4586319   -0.6765397   -0.2407241
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0547431   -0.2648686    0.1553824
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.6316081    0.4540309    0.8091853
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1923079   -1.2498801   -1.1347357


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -0.1683617   -0.3528233    0.0160999
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0373373   -0.1163695    0.0416948
6 months    ki1114097-CMIN             PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.1445508   -0.2343737   -0.0547279
24 months   ki1114097-CMIN             PERU                           observed             observed           0.6487715    0.5686942    0.7288488
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4942731   -0.9042009   -0.0843452
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2061565   -0.1904165    0.6027295
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0777667   -0.6265711    0.4710378
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1018048   -0.2455030    0.4491127
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0718675   -0.2429580    0.3866930
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0967828   -0.2781991    0.0846335
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3294916   -1.1781913    0.5192081
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3329103    0.0952087    0.5706119
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.1870037   -0.2625042    0.6365116
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3672191    0.0105842    0.7238540
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1612468   -0.6145865    0.2920929
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1176045   -0.2565747    0.0213657
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2363205   -0.5776787    0.1050378
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1522208   -0.5533775    0.2489359
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0602186   -0.1921362    0.0716991
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0326493   -0.1763501    0.1110514
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1394105   -0.5054500    0.2266290
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.1613371   -0.0684449    0.3911192
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.3247670   -0.7133888    0.0638547
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.0616836   -0.5463055    0.4229383
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0534800   -0.1126445    0.0056846
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.5353665    0.0575179    1.0132151
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0203884   -0.5151267    0.4743499
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2527628   -0.1972571    0.7027828
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0760571   -0.2111119    0.0589978
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0255739   -0.1323299    0.1834776
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1517183   -0.3350844    0.0316478
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0898077   -0.2912634    0.1116479
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.0171634   -0.1329341    0.1672608
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0308009   -0.0794799    0.0178782
