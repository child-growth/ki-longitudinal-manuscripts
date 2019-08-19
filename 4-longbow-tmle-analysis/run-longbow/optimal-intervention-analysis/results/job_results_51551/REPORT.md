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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
* sex
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
* month
* brthmon
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
* delta_month
* delta_brthmon
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                56     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               175     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                12     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0               163     175
Birth       ki0047075b-MAL-ED          INDIA                          1                 5     190
Birth       ki0047075b-MAL-ED          INDIA                          0               185     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                11     170
Birth       ki0047075b-MAL-ED          NEPAL                          0               159     170
Birth       ki0047075b-MAL-ED          PERU                           1                10     256
Birth       ki0047075b-MAL-ED          PERU                           0               246     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               211     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               118     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      14
Birth       ki1000108-IRC              INDIA                          0                14      14
Birth       ki1000109-EE               PAKISTAN                       1                 1       2
Birth       ki1000109-EE               PAKISTAN                       0                 1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                48      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      50
Birth       ki1101329-Keneba           GAMBIA                         1               484    1401
Birth       ki1101329-Keneba           GAMBIA                         0               917    1401
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             15068   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              4014   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               617     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               150     767
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                57     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               178     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               193     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 6     232
6 months    ki0047075b-MAL-ED          INDIA                          0               226     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                15     235
6 months    ki0047075b-MAL-ED          NEPAL                          0               220     235
6 months    ki0047075b-MAL-ED          PERU                           1                11     269
6 months    ki0047075b-MAL-ED          PERU                           0               258     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               242     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               243     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1               218     372
6 months    ki1000109-EE               PAKISTAN                       0               154     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               136     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               447     583
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               404     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0               142     546
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13199   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3483   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3319    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               940    4259
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               156     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               154     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 5     224
24 months   ki0047075b-MAL-ED          INDIA                          0               219     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                15     227
24 months   ki0047075b-MAL-ED          NEPAL                          0               212     227
24 months   ki0047075b-MAL-ED          PERU                           1                 8     198
24 months   ki0047075b-MAL-ED          PERU                           0               190     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               227     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               211     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               144     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               433     577
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1               360     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120     480
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6665    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1877    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3276    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               898    4174


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/38bc495a-ed4a-48fd-9887-4e1e9b1f5eee/853cc32e-89eb-48fc-8ec8-453adf647471/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.8891265   -1.0614537   -0.7167993
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed          -1.1463303   -1.5797205   -0.7129401
Birth       ki0047075b-MAL-ED         INDIA        optimal              observed          -1.0164601   -1.1638435   -0.8690766
Birth       ki0047075b-MAL-ED         NEPAL        optimal              observed           0.0676746   -0.2002248    0.3355741
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.8969951   -1.0150086   -0.7789816
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           0.0388880   -0.0543065    0.1320825
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.5433776   -1.5653102   -1.5214449
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.4924073   -1.5811933   -1.4036213
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.3717332   -1.5793033   -1.1641631
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.4675480   -0.2562871    1.1913831
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -1.5720398   -1.7331169   -1.4109626
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.3427753   -0.6693462   -0.0162043
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -1.2941259   -1.4020708   -1.1861810
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -1.9628852   -2.1558739   -1.7698964
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -1.4877061   -1.6531098   -1.3223023
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.1620306   -1.2835152   -1.0405460
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.8985561   -0.9874652   -0.8096470
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.2973309   -1.4091409   -1.1855208
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -1.5280420   -1.7054172   -1.3506668
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.2742363   -1.2993671   -1.2491056
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.3313860   -1.3744719   -1.2883001
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.9161643   -2.0560515   -1.7762771
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.0500333   -0.1242547    0.2243214
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -1.8270439   -1.9535635   -1.7005243
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -1.2977966   -1.6219776   -0.9736156
24 months   ki0047075b-MAL-ED         PERU         optimal              observed          -1.7145040   -1.8367302   -1.5922779
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.5362452   -1.6371548   -1.4353355
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -1.4977083   -1.5834539   -1.4119626
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.9453156   -2.1133561   -1.7772752
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -1.9653555   -2.1258604   -1.8048506
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.9750455   -2.0152499   -1.9348411
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.7566071   -1.7984869   -1.7147273


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.0317316   -1.1618799   -0.9015833
Birth       ki0047075b-MAL-ED         BRAZIL       observed             observed          -0.7263429   -0.8876385   -0.5650472
Birth       ki0047075b-MAL-ED         INDIA        observed             observed          -1.0250526   -1.1724135   -0.8776918
Birth       ki0047075b-MAL-ED         NEPAL        observed             observed          -0.6964706   -0.8552823   -0.5376589
Birth       ki0047075b-MAL-ED         PERU         observed             observed          -0.9311719   -1.0458986   -0.8164451
Birth       ki1101329-Keneba          GAMBIA       observed             observed           0.0162027   -0.0517648    0.0841702
Birth       kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.5502914   -1.5696478   -1.5309349
Birth       kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.5207432   -1.6058630   -1.4356233
6 months    ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.2140355   -1.3320337   -1.0960372
6 months    ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA        observed             observed          -1.2193606   -1.3390323   -1.0996890
6 months    ki0047075b-MAL-ED         NEPAL        observed             observed          -0.5595745   -0.6727496   -0.4463993
6 months    ki0047075b-MAL-ED         PERU         observed             observed          -1.3092999   -1.4165606   -1.2020392
6 months    ki1000109-EE              PAKISTAN     observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed   INDIA        observed             observed          -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1101329-Keneba          GAMBIA       observed             observed          -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.3352045   -1.4146382   -1.2557708
6 months    ki1148112-LCNI-5          MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.3104400   -1.3338132   -1.2870668
6 months    kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.3574771   -1.3964060   -1.3185482
24 months   ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.9532775   -2.0781247   -1.8284303
24 months   ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA        observed             observed          -1.8466071   -1.9736347   -1.7195796
24 months   ki0047075b-MAL-ED         NEPAL        observed             observed          -1.2744493   -1.3952297   -1.1536689
24 months   ki0047075b-MAL-ED         PERU         observed             observed          -1.7294949   -1.8488722   -1.6101177
24 months   ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba          GAMBIA       observed             observed          -1.5721046   -1.6251725   -1.5190368
24 months   ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.8951389   -1.9810871   -1.8091907
24 months   ki1148112-LCNI-5          MALAWI       observed             observed          -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -2.0122091   -2.0399540   -1.9844641
24 months   kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.7762003   -1.8148628   -1.7375378


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.1426051   -0.2919415    0.0067313
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.4199874    0.0011534    0.8388214
Birth       ki0047075b-MAL-ED         INDIA        optimal              observed          -0.0085925   -0.0427973    0.0256123
Birth       ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.7641452   -1.0557100   -0.4725805
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.0341767   -0.0760296    0.0076761
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -0.0226853   -0.0869619    0.0415913
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0069138   -0.0167466    0.0029189
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0283358   -0.0652007    0.0085290
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.1576978   -0.0007805    0.3161760
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.4165272   -1.1039275    0.2708731
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed           0.3526791    0.2088493    0.4965089
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.2167992   -0.5313948    0.0977963
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -0.0151739   -0.0513505    0.0210026
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.2375853   -0.3871015   -0.0880690
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0179824   -0.0394213    0.0753861
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0749265   -0.0215026    0.1713556
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0345547   -0.1081854    0.0390760
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0378737   -0.1181651    0.0424177
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -0.1115536   -0.2464741    0.0233669
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0362036   -0.0467420   -0.0256653
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0260911   -0.0537915    0.0016093
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0371132   -0.1155952    0.0413688
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.0081990   -0.0611509    0.0447528
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.0195633   -0.0501203    0.0109938
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed           0.0233473   -0.2980365    0.3447311
24 months   ki0047075b-MAL-ED         PERU         optimal              observed          -0.0149909   -0.0388349    0.0088530
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.0498727   -0.1016094    0.0018640
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.0743964   -0.1445360   -0.0042568
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.0501768   -0.0861943    0.1865479
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed           0.0047735   -0.1237248    0.1332718
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0371636   -0.0655257   -0.0088015
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0195932   -0.0380100   -0.0011764
