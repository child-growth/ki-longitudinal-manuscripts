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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
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
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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

agecat      studyid                    country                        exclfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 32     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                189     221
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 60      65
Birth       ki0047075b-MAL-ED          INDIA                          1                  1      42
Birth       ki0047075b-MAL-ED          INDIA                          0                 41      42
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                 26      26
Birth       ki0047075b-MAL-ED          PERU                           1                  5     223
Birth       ki0047075b-MAL-ED          PERU                           0                218     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                104     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       ki1000108-IRC              INDIA                          1                  0       4
Birth       ki1000108-IRC              INDIA                          0                  4       4
Birth       ki1000109-EE               PAKISTAN                       1                  3       7
Birth       ki1000109-EE               PAKISTAN                       0                  4       7
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                119     490
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                371     490
Birth       ki1101329-Keneba           GAMBIA                         1                363    1253
Birth       ki1101329-Keneba           GAMBIA                         0                890    1253
Birth       ki1113344-GMS-Nepal        NEPAL                          1                422     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                104     526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               9840   12642
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2802   12642
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1994    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                523    2517
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 30     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                210     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                197     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  9     233
6 months    ki0047075b-MAL-ED          INDIA                          0                224     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  4     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                231     235
6 months    ki0047075b-MAL-ED          PERU                           1                  6     272
6 months    ki0047075b-MAL-ED          PERU                           0                266     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                249     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                239     243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
6 months    ki1000108-IRC              INDIA                          1                  0       4
6 months    ki1000108-IRC              INDIA                          0                  4       4
6 months    ki1000109-EE               PAKISTAN                       1                  4       9
6 months    ki1000109-EE               PAKISTAN                       0                  5       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                145     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                458     603
6 months    ki1101329-Keneba           GAMBIA                         1                507    1790
6 months    ki1101329-Keneba           GAMBIA                         0               1283    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105     527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6561    8533
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1972    8533
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3241    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                944    4185
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                187     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                158     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  9     224
24 months   ki0047075b-MAL-ED          INDIA                          0                215     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  4     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                223     227
24 months   ki0047075b-MAL-ED          PERU                           1                  4     201
24 months   ki0047075b-MAL-ED          PERU                           0                197     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                234     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                210     213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
24 months   ki1000108-IRC              INDIA                          1                  0       4
24 months   ki1000108-IRC              INDIA                          0                  4       4
24 months   ki1000109-EE               PAKISTAN                       1                  0       3
24 months   ki1000109-EE               PAKISTAN                       0                  3       3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                141     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                436     577
24 months   ki1101329-Keneba           GAMBIA                         1                424    1394
24 months   ki1101329-Keneba           GAMBIA                         0                970    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          1                363     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     446
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3302    4300
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                998    4300
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3145    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                904    4049


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/93d44574-5eaf-478c-9ca7-0c26d91dc430/22590082-acac-41e1-bae0-31a35b8278a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.1717906   -1.3318631   -1.0117182
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.6141963   -0.8972572   -0.3311355
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -1.0046101   -1.2803513   -0.7288689
Birth       ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.8609935   -0.9490560   -0.7729310
Birth       ki1101329-Keneba      GAMBIA       optimal              observed          -0.0159064   -0.1093150    0.0775021
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.0051359   -1.1010769   -0.9091949
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.1866523   -1.2284441   -1.1448605
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.5244304   -1.6016763   -1.4471845
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.2378475   -1.3915170   -1.0841780
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2871578   -0.5315882    1.1059038
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -1.0706979   -2.2873614    0.1459656
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -1.5934613   -1.8415457   -1.3453770
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -1.2172810   -1.3320849   -1.1024771
6 months    ki1101329-Keneba      GAMBIA       optimal              observed          -0.9093049   -0.9969897   -0.8216200
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.2877615   -1.3751487   -1.2003743
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -1.5021248   -1.6910377   -1.3132118
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.3531325   -1.3860492   -1.3202159
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.3379985   -1.3937457   -1.2822513
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -2.1615659   -2.4475308   -1.8756009
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.0233009   -0.7819239    0.7353221
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.8762214   -2.0032502   -1.7491927
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -1.5675329   -1.6851031   -1.4499627
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -1.5340852   -1.6257577   -1.4424128
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.8696298   -1.9634361   -1.7758236
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -2.0275413   -2.2158814   -1.8392013
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -2.0080770   -2.0518974   -1.9642566
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.7846571   -1.8278970   -1.7414171


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.0802262   -1.2151319   -0.9453206
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.8913004   -1.0115814   -0.7710195
Birth       ki1017093b-PROVIDE    BANGLADESH   observed             observed          -0.8769592   -0.9559693   -0.7979491
Birth       ki1101329-Keneba      GAMBIA       observed             observed           0.0318156   -0.0392907    0.1029220
Birth       ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.0299620   -1.1192344   -0.9406896
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.1758733   -1.2120647   -1.1396819
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.5234724   -1.5733491   -1.4735957
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.2077639   -1.3255735   -1.0899543
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -1.2054220   -1.3250470   -1.0857970
6 months    ki0047075b-MAL-ED     PERU         observed             observed          -1.3275368   -1.4361710   -1.2189025
6 months    ki1017093b-PROVIDE    BANGLADESH   observed             observed          -1.0855583   -1.1591292   -1.0119875
6 months    ki1101329-Keneba      GAMBIA       observed             observed          -0.9355822   -0.9858754   -0.8852889
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.3337634   -1.4135810   -1.2539459
6 months    ki1148112-LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3384308   -1.3675493   -1.3093123
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.3514886   -1.3904044   -1.3125729
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -1.8892634   -2.0152690   -1.7632578
24 months   ki1017093b-PROVIDE    BANGLADESH   observed             observed          -1.6022704   -1.6857342   -1.5188065
24 months   ki1101329-Keneba      GAMBIA       observed             observed          -1.5981956   -1.6534947   -1.5428965
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.8830717   -1.9710591   -1.7950844
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -2.0131814   -2.0513347   -1.9750280
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.7922845   -1.8313538   -1.7532153


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.0915644   -0.0006271   0.1837558
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.0618037   -0.1595602   0.0359528
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.1133097   -0.1403806   0.3669999
Birth       ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.0159657   -0.0510719   0.0191406
Birth       ki1101329-Keneba      GAMBIA       optimal              observed           0.0477221   -0.0128329   0.1082770
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0248260   -0.0666509   0.0169988
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed           0.0107790   -0.0083720   0.0299301
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed           0.0009580   -0.0578130   0.0597290
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.0300836   -0.1062575   0.1664247
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.2361371   -1.0239848   0.5517107
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.1347241   -1.3249801   1.0555319
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           0.2659246    0.0374255   0.4944237
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed           0.1317226    0.0390188   0.2244265
6 months    ki1101329-Keneba      GAMBIA       optimal              observed          -0.0262773   -0.0994053   0.0468507
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0460020   -0.0948738   0.0028699
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -0.1374708   -0.2849385   0.0099969
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed           0.0147017   -0.0021435   0.0315469
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0134902   -0.0538754   0.0268951
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.1826508   -0.0653543   0.4306559
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.0304015   -0.6861684   0.7469715
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0130420   -0.0456382   0.0195543
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.0347375   -0.1135766   0.0441016
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -0.0641104   -0.1424209   0.0142001
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0134419   -0.0596392   0.0327554
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0624091   -0.0469165   0.1717347
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0051044   -0.0294561   0.0192473
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0076275   -0.0262389   0.0109840
