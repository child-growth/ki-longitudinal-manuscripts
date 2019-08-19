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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             234     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0     124
Birth       ki0047075b-MAL-ED          BRAZIL                         0             124     124
Birth       ki0047075b-MAL-ED          INDIA                          1               0     191
Birth       ki0047075b-MAL-ED          INDIA                          0             191     191
Birth       ki0047075b-MAL-ED          NEPAL                          1               1     168
Birth       ki0047075b-MAL-ED          NEPAL                          0             167     168
Birth       ki0047075b-MAL-ED          PERU                           1               9     247
Birth       ki0047075b-MAL-ED          PERU                           0             238     247
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              33     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             183     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              79     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              39     118
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              28      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              27      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      27
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           19558   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              35   19593
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             822     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     822
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             581     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             715     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     715
6 months    ki1114097-CONTENT          PERU                           1              54      57
6 months    ki1114097-CONTENT          PERU                           0               3      57
6 months    ki1148112-LCNI-5           MALAWI                         1             672     816
6 months    ki1148112-LCNI-5           MALAWI                         0             144     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16783   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            4824    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1    4825
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             427     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             576     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514
24 months   ki1114097-CONTENT          PERU                           1              45      48
24 months   ki1114097-CONTENT          PERU                           0               3      48
24 months   ki1148112-LCNI-5           MALAWI                         1             475     574
24 months   ki1148112-LCNI-5           MALAWI                         0              99     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8612    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            4746    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1    4747


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
![](/tmp/ee222f68-80bf-45e1-b01d-6540387f21f7/a091ed4e-20eb-4a07-9b01-3dfa9f646104/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           optimal              observed          -0.5370114   -1.2622432    0.1882205
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -0.5986960   -0.7920729   -0.4053191
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7586433   -0.9995012   -0.5177855
Birth       kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -1.7868149   -1.8097908   -1.7638389
6 months    ki0047075b-MAL-ED   PERU                           optimal              observed          -1.2627265   -1.7491639   -0.7762892
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -1.1287164   -1.2997522   -0.9576807
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2333841   -1.4335572   -1.0332111
6 months    ki1148112-LCNI-5    MALAWI                         optimal              observed          -1.6164881   -1.7108714   -1.5221047
6 months    kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -1.3565739   -1.3830223   -1.3301255
24 months   ki0047075b-MAL-ED   PERU                           optimal              observed          -1.7358184   -1.8630249   -1.6086119
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -1.7817588   -2.0474546   -1.5160630
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5503032   -2.7712122   -2.3293943
24 months   ki1148112-LCNI-5    MALAWI                         optimal              observed          -1.9117361   -2.0548279   -1.7686443
24 months   kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -1.6466838   -1.7068072   -1.5865603


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  ----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           observed             observed          -0.9306883   -1.048645   -0.8127312
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed          -0.6819907   -0.814754   -0.5492274
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.8810169   -1.086924   -0.6751103
Birth       kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -1.5750140   -1.594790   -1.5552384
6 months    ki0047075b-MAL-ED   PERU                           observed             observed          -1.3102574   -1.420486   -1.2000288
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed          -1.0534375   -1.183632   -0.9232428
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3572358   -1.479663   -1.2348087
6 months    ki1148112-LCNI-5    MALAWI                         observed             observed          -1.6426961   -1.712060   -1.5733318
6 months    kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -1.3132090   -1.336349   -1.2900693
24 months   ki0047075b-MAL-ED   PERU                           observed             observed          -1.7505440   -1.875506   -1.6255816
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed          -1.6248101   -1.760608   -1.4890121
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6089906   -2.743901   -2.4740799
24 months   ki1148112-LCNI-5    MALAWI                         observed             observed          -1.8714634   -1.952856   -1.7900711
24 months   kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -2.0125560   -2.040268   -1.9848436


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           optimal              observed          -0.3936769   -1.1071286    0.3197748
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -0.0832948   -0.2669341    0.1003446
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1223736   -0.2788938    0.0341466
Birth       kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed           0.2118008    0.1954879    0.2281138
6 months    ki0047075b-MAL-ED   PERU                           optimal              observed          -0.0475309   -0.5240709    0.4290092
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.0752789   -0.0426947    0.1932525
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1238516   -0.2608434    0.0131402
6 months    ki1148112-LCNI-5    MALAWI                         optimal              observed          -0.0262080   -0.0837764    0.0313604
6 months    kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed           0.0433650    0.0292048    0.0575251
24 months   ki0047075b-MAL-ED   PERU                           optimal              observed          -0.0147256   -0.0400556    0.0106044
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.1569487   -0.0549934    0.3688907
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0586874   -0.2367023    0.1193275
24 months   ki1148112-LCNI-5    MALAWI                         optimal              observed           0.0402727   -0.0714699    0.1520153
24 months   kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -0.3658722   -0.4219516   -0.3097927
