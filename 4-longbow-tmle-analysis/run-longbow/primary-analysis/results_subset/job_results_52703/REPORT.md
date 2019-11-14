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

**Intervention Variable:** exclfeed6

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

agecat      studyid                    country                        exclfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                29     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               165     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                56      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 1      37
Birth       ki0047075b-MAL-ED          INDIA                          0                36      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 2      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                21      23
Birth       ki0047075b-MAL-ED          PERU                           1                 2     208
Birth       ki0047075b-MAL-ED          PERU                           0               206     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                90      90
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      12
Birth       ki1000108-IRC              INDIA                          0                12      12
Birth       ki1000109-EE               PAKISTAN                       1                24      28
Birth       ki1000109-EE               PAKISTAN                       0                 4      28
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               310     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                15     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               155     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               377     532
Birth       ki1101329-Keneba           GAMBIA                         1               450    1327
Birth       ki1101329-Keneba           GAMBIA                         0               877    1327
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10144   13000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2856   13000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1799    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               425    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                33     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               198     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               197     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 2     218
6 months    ki0047075b-MAL-ED          INDIA                          0               216     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                 5     225
6 months    ki0047075b-MAL-ED          NEPAL                          0               220     225
6 months    ki0047075b-MAL-ED          PERU                           1                 5     271
6 months    ki0047075b-MAL-ED          PERU                           0               266     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               233     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               232     232
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1                43      48
6 months    ki1000109-EE               PAKISTAN                       0                 5      48
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               141     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               462     603
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7590    9858
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2268    9858
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3315    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               960    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                31     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               174     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               158     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 2     209
24 months   ki0047075b-MAL-ED          INDIA                          0               207     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                 5     219
24 months   ki0047075b-MAL-ED          NEPAL                          0               214     219
24 months   ki0047075b-MAL-ED          PERU                           1                 3     201
24 months   ki0047075b-MAL-ED          PERU                           0               198     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               216     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               202     202
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1000109-EE               PAKISTAN                       1                20      23
24 months   ki1000109-EE               PAKISTAN                       0                 3      23
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               442     579
24 months   ki1101329-Keneba           GAMBIA                         1               514    1514
24 months   ki1101329-Keneba           GAMBIA                         0              1000    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               355     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     469
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3871    5028
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1157    5028
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3266    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               918    4184


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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e6e81cc1-c385-436c-b751-d469ae058846/20f0c8b2-da90-44a2-9fe1-7c32ce243069/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.8596227   -1.2160903   -0.5031551
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.6562835   -0.8852815   -0.4272855
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.3391148   -1.4252738   -1.2529557
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -1.2522670   -1.3515975   -1.1529364
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.1341114   -1.2690821   -0.9991407
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.7339366   -0.7673209   -0.7005522
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.6762958   -0.7313111   -0.6212806
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.3617615   -0.6719516   -0.0515714
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           1.3399067    0.7327144    1.9470991
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.0823967   -0.2436453    0.0788519
6 months    ki0047075b-MAL-ED         PERU         optimal              observed           0.9366638    0.7984869    1.0748408
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.5902703   -1.0336144   -0.1469262
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.7249143   -1.0477394   -0.4020893
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0383656   -0.1236742    0.2004055
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0155538   -0.1126920    0.0815844
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.6287738   -0.7522181   -0.5053294
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed           0.2552412    0.0284986    0.4819837
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.5901964   -0.6266674   -0.5537253
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.3502597   -0.3956681   -0.3048514
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.7372846   -1.0098180   -0.4647512
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.5684676    0.0175553    1.1193800
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.3997930   -1.0305138    0.2309279
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.7916219   -0.9467851   -0.6364588
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.7063267   -0.7871902   -0.6254632
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.0594929   -1.1596863   -0.9592996
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -0.1837112   -0.3587903   -0.0086321
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.2915560   -1.3494016   -1.2337103
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.2248094   -1.2862518   -1.1633670


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.9748454   -1.1280978   -0.8215930
Birth       ki1000304b-SAS-CompFeed   INDIA        observed             observed          -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA       observed             observed          -1.2599925   -1.3251703   -1.1948146
Birth       ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -0.7557115   -0.7768180   -0.7346051
Birth       kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.1220707   -0.2547831    0.0106417
6 months    ki0047075b-MAL-ED         BRAZIL       observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         NEPAL        observed             observed           0.1097852   -0.0259319    0.2455023
6 months    ki0047075b-MAL-ED         PERU         observed             observed           1.0546617    0.9322137    1.1771098
6 months    ki1000109-EE              PAKISTAN     observed             observed          -0.6106944   -0.9239621   -0.2974268
6 months    ki1000304b-SAS-CompFeed   INDIA        observed             observed          -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba          GAMBIA       observed             observed          -0.1997647   -0.2531388   -0.1463906
6 months    ki1113344-GMS-Nepal       NEPAL        observed             observed          -0.6009171   -0.6886356   -0.5131986
6 months    ki1148112-LCNI-5          MALAWI       observed             observed           0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -0.5998808   -0.6237974   -0.5759642
6 months    kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -0.3968456   -0.4358721   -0.3578192
24 months   ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.8179024   -0.9399789   -0.6958260
24 months   ki0047075b-MAL-ED         BRAZIL       observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED         NEPAL        observed             observed          -0.3690411   -0.4853679   -0.2527143
24 months   ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA       observed             observed          -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5          MALAWI       observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.3113405   -1.3420927   -1.2805883
24 months   kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.2265320   -1.2620508   -1.1910132


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.1152227   -0.4529654    0.2225200
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.0033473   -0.0446450    0.0379504
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0406561   -0.0120275    0.0933397
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -0.0077255   -0.0835572    0.0681062
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.0276555   -0.0720585    0.1273695
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0217750   -0.0484882    0.0049382
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0141628   -0.0415811    0.0132555
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.2396908   -0.0281738    0.5075554
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.3681842   -0.9581560    0.2217875
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed           0.1921819    0.0639185    0.3204452
6 months    ki0047075b-MAL-ED         PERU         optimal              observed           0.1179979    0.0515598    0.1844361
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.0204241   -0.5320271    0.4911789
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0900283   -0.2741145    0.4541710
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.2374563   -0.3802411   -0.0946715
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.1842108   -0.2642636   -0.1041581
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.0278566   -0.0549588    0.1106721
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed           0.1372588   -0.0440053    0.3185230
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0096844   -0.0380882    0.0187194
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0465859   -0.0685394   -0.0246324
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0806179   -0.3211654    0.1599297
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.1092369   -0.5946085    0.3761348
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed           0.0307519   -0.5765619    0.6380656
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.1012451   -0.2357734    0.0332833
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.0969062   -0.1611671   -0.0326454
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0828596   -0.1485804   -0.0171388
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed           0.1066460    0.0174677    0.1958242
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0197845   -0.0701087    0.0305397
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0017226   -0.0481774    0.0447322
