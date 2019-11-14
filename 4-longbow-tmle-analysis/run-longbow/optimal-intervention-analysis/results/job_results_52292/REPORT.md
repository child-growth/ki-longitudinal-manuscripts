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

agecat      studyid                    country                        safeh20    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             213     213
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0      41
Birth       ki0047075b-MAL-ED          BRAZIL                         0              41      41
Birth       ki0047075b-MAL-ED          INDIA                          1               0      41
Birth       ki0047075b-MAL-ED          INDIA                          0              41      41
Birth       ki0047075b-MAL-ED          NEPAL                          1               1      26
Birth       ki0047075b-MAL-ED          NEPAL                          0              25      26
Birth       ki0047075b-MAL-ED          PERU                           1               9     207
Birth       ki0047075b-MAL-ED          PERU                           0             198     207
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              13      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              83      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              79     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              40     119
Birth       ki1017093-NIH-Birth        BANGLADESH                     1             606     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               2     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              45      45
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      45
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             732     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0     732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           26599   26642
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              43   26642
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2820    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0    2820
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              11      11
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      11
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             715     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     715
6 months    ki1114097-CONTENT          PERU                           1              54      57
6 months    ki1114097-CONTENT          PERU                           0               3      57
6 months    ki1148112-LCNI-5           MALAWI                         1             672     816
6 months    ki1148112-LCNI-5           MALAWI                         0             144     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16725   16745
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16745
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               9       9
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514
24 months   ki1114097-CONTENT          PERU                           1              45      48
24 months   ki1114097-CONTENT          PERU                           0               3      48
24 months   ki1148112-LCNI-5           MALAWI                         1             475     574
24 months   ki1148112-LCNI-5           MALAWI                         0              99     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8545    8556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8556
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
![](/tmp/259bebc7-8b6d-41be-a861-8a4d48ef9b75/b1ec578a-49b9-4a3c-a2c2-e959a035883f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  ----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           optimal              observed          -0.6615524   -1.369043    0.0459384
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -0.6234719   -1.208103   -0.0388413
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0163733   -1.341263   -0.6914831
Birth       kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -1.1687760   -1.197432   -1.1401204
6 months    ki0047075b-MAL-ED   PERU                           optimal              observed          -1.4811141   -1.859545   -1.1026830
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -1.3384170   -1.637541   -1.0392932
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3562843   -1.512668   -1.1999003
6 months    ki1148112-LCNI-5    MALAWI                         optimal              observed          -1.6201559   -1.697297   -1.5430148
6 months    kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -1.3490295   -1.373873   -1.3241858
24 months   ki0047075b-MAL-ED   PERU                           optimal              observed          -1.7389074   -1.866346   -1.6114688
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          -1.8577023   -2.158980   -1.5564243
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5996576   -2.827481   -2.3718344
24 months   ki1148112-LCNI-5    MALAWI                         optimal              observed          -1.9503775   -2.053252   -1.8475030
24 months   kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -2.0227318   -2.051140   -1.9943241


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           observed             observed          -0.8950725   -1.0180716   -0.7720734
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed          -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1158824   -1.3283278   -0.9034369
Birth       kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -1.1729536   -1.2010222   -1.1448850
6 months    ki0047075b-MAL-ED   PERU                           observed             observed          -1.3116216   -1.4217664   -1.2014769
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed          -1.0539919   -1.1841437   -0.9238401
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3658943   -1.4882808   -1.2435078
6 months    ki1148112-LCNI-5    MALAWI                         observed             observed          -1.6426961   -1.7120603   -1.5733318
6 months    kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -1.3357056   -1.3587889   -1.3126223
24 months   ki0047075b-MAL-ED   PERU                           observed             observed          -1.7545337   -1.8798502   -1.6292172
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             observed          -1.6512658   -1.7868828   -1.5156488
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6484507   -2.7840006   -2.5129008
24 months   ki1148112-LCNI-5    MALAWI                         observed             observed          -1.8822648   -1.9637218   -1.8008078
24 months   kiGH5241-JiVitA-3   BANGLADESH                     observed             observed          -2.0194951   -2.0471365   -1.9918537


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           optimal              observed          -0.2335201   -0.9254919    0.4584517
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.0710760   -0.4692849    0.6114370
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0995091   -0.3386339    0.1396158
Birth       kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          -0.0041776   -0.0062247   -0.0021305
6 months    ki0047075b-MAL-ED   PERU                           optimal              observed           0.1694925   -0.2039470    0.5429320
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.2844251    0.0269475    0.5419026
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0096101   -0.1098091    0.0905890
6 months    ki1148112-LCNI-5    MALAWI                         optimal              observed          -0.0225402   -0.0536955    0.0086151
6 months    kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed           0.0133239    0.0027171    0.0239307
24 months   ki0047075b-MAL-ED   PERU                           optimal              observed          -0.0156263   -0.0415772    0.0103246
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed           0.2064365   -0.0444759    0.4573490
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0487931   -0.2442304    0.1466442
24 months   ki1148112-LCNI-5    MALAWI                         optimal              observed           0.0681127    0.0085571    0.1276683
24 months   kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed           0.0032367    0.0007064    0.0057670
