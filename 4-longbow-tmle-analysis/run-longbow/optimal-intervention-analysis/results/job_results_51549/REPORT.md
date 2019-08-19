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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
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

agecat      studyid                    country                        predfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                125     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                118     243
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 29     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                156     185
Birth       ki0047075b-MAL-ED          INDIA                          1                 16     198
Birth       ki0047075b-MAL-ED          INDIA                          0                182     198
Birth       ki0047075b-MAL-ED          NEPAL                          1                 26     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                146     172
Birth       ki0047075b-MAL-ED          PERU                           1                118     273
Birth       ki0047075b-MAL-ED          PERU                           0                155     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                233     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                120     121
Birth       ki1000109-EE               PAKISTAN                       1                  1       2
Birth       ki1000109-EE               PAKISTAN                       0                  1       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              11176   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2770   13946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                582     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                145     727
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                129     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                111     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                172     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 19     236
6 months    ki0047075b-MAL-ED          INDIA                          0                217     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 32     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                204     236
6 months    ki0047075b-MAL-ED          PERU                           1                126     271
6 months    ki0047075b-MAL-ED          PERU                           0                145     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                251     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                245     247
6 months    ki1000109-EE               PAKISTAN                       1                222     367
6 months    ki1000109-EE               PAKISTAN                       0                145     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                423     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                103     526
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              10705   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               2670   13375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3256    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                915    4171
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                117     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 94     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 30     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                139     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 18     227
24 months   ki0047075b-MAL-ED          INDIA                          0                209     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 30     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                198     228
24 months   ki0047075b-MAL-ED          PERU                           1                 94     200
24 months   ki0047075b-MAL-ED          PERU                           0                106     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                235     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                212     214
24 months   ki1113344-GMS-Nepal        NEPAL                          1                369     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 87     456
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5293    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1400    6693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3153    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                870    4023


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6248f37f-f16e-4912-9b31-ba939d793800/905ea564-380a-42ec-81e1-ecd27a3b67b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.1235897   -1.2874290   -0.9597505
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -1.0045958   -1.3461394   -0.6630523
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.9886474   -1.1329659   -0.8443290
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.4736067   -0.7194194   -0.2277939
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.9119503   -1.0863438   -0.7375568
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.5226795   -1.5508419   -1.4945170
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.4888956   -1.5790827   -1.3987085
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.1354636   -1.2917117   -0.9792154
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1704410   -0.2145077    0.5553897
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -1.1473294   -1.2696939   -1.0249648
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.6254785   -0.7852698   -0.4656873
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -1.1487983   -1.2942268   -1.0033697
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -1.9229040   -2.1260787   -1.7197293
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.2413633   -1.3409298   -1.1417968
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -1.4931017   -1.6835928   -1.3026107
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2862809   -1.3178982   -1.2546637
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.3339365   -1.3860202   -1.2818528
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.8736668   -2.0446584   -1.7026751
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.0014503   -0.2308616    0.2337623
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.7944256   -1.9225682   -1.6662830
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -1.3349194   -1.5888598   -1.0809791
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -1.5743809   -1.7262831   -1.4224786
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.8235107   -2.0004426   -1.6465788
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -2.0348128   -2.1839969   -1.8856287
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.9610418   -2.0040811   -1.9180025
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.7691256   -1.8149266   -1.7233245


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.0414815   -1.1687478   -0.9142151
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed          -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED     INDIA        observed             observed          -1.0235354   -1.1657122   -0.8813585
Birth       ki0047075b-MAL-ED     NEPAL        observed             observed          -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.9231136   -1.0355489   -0.8106782
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.5333680   -1.5553430   -1.5113930
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.5200688   -1.6064560   -1.4336815
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.2006806   -1.3182323   -1.0831288
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED     PERU         observed             observed          -1.3173678   -1.4250795   -1.2096560
6 months    ki1000109-EE          PAKISTAN     observed             observed          -2.2009401   -2.3240630   -2.0778171
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.3150063   -1.3948049   -1.2352077
6 months    ki1148112-LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3121772   -1.3366725   -1.2876819
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.3602409   -1.3996637   -1.3208182
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.9363270   -2.0622735   -1.8103806
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED     PERU         observed             observed          -1.7430000   -1.8632412   -1.6227588
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.8785563   -1.9657607   -1.7913519
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.9946153   -2.0246928   -1.9645378
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.7766542   -1.8163158   -1.7369927


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.0821083   -0.0456362    0.2098527
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2695147   -0.0326814    0.5717108
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0348879   -0.0879440    0.0181681
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.2316840   -0.4671320    0.0037639
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.0111633   -0.1241594    0.1018329
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0106885   -0.0276574    0.0062804
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0311732   -0.0687750    0.0064287
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0652170   -0.1759476    0.0455136
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1194203   -0.4599903    0.2211498
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0730379   -0.1319025   -0.0141732
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.0644192   -0.0489251    0.1777635
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.1685695   -0.2819964   -0.0551427
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.2780360   -0.4394260   -0.1166461
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0736431   -0.1481279    0.0008418
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -0.1464939   -0.2998559    0.0068682
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0258963   -0.0455069   -0.0062856
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0263044   -0.0660332    0.0134243
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0626603   -0.2025044    0.0771839
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.0403840   -0.1065198    0.1872877
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0513894   -0.0961965   -0.0065822
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed           0.0597001   -0.1544651    0.2738654
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -0.1686191   -0.2934153   -0.0438230
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0550456   -0.2004576    0.0903665
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0742308   -0.0515104    0.1999720
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0335735   -0.0629163   -0.0042307
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0075287   -0.0338994    0.0188421
