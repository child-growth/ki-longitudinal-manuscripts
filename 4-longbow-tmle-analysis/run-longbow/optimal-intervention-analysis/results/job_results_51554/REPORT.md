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

**Intervention Variable:** earlybf

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
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
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

agecat      studyid                   country                        earlybf    n_cell       n
----------  ------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             159     256
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              97     256
Birth       ki0047075b-MAL-ED         BRAZIL                         1              83     191
Birth       ki0047075b-MAL-ED         BRAZIL                         0             108     191
Birth       ki0047075b-MAL-ED         INDIA                          1             124     205
Birth       ki0047075b-MAL-ED         INDIA                          0              81     205
Birth       ki0047075b-MAL-ED         NEPAL                          1              79     173
Birth       ki0047075b-MAL-ED         NEPAL                          0              94     173
Birth       ki0047075b-MAL-ED         PERU                           1             214     287
Birth       ki0047075b-MAL-ED         PERU                           0              73     287
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1             155     247
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              92     247
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             111     123
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              12     123
Birth       ki1000109-EE              PAKISTAN                       1               1       2
Birth       ki1000109-EE              PAKISTAN                       0               1       2
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              14     177
Birth       ki1000304b-SAS-CompFeed   INDIA                          0             163     177
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1              23      27
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               4      27
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6533   12319
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5786   12319
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             212   19541
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           19329   19541
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1             566     822
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             256     822
6 months    ki0047075b-MAL-ED         BANGLADESH                     1             147     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0              93     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1              95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0             114     209
6 months    ki0047075b-MAL-ED         INDIA                          1             140     236
6 months    ki0047075b-MAL-ED         INDIA                          0              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          0             140     236
6 months    ki0047075b-MAL-ED         PERU                           1             202     273
6 months    ki0047075b-MAL-ED         PERU                           0              71     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             156     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              94     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247
6 months    ki1000109-EE              PAKISTAN                       1              68     372
6 months    ki1000109-EE              PAKISTAN                       0             304     372
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              98    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1238    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0             359     510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            3968    7365
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3397    7365
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              35   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16776   16811
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3094    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1737    4831
24 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1              80     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0              89     169
24 months   ki0047075b-MAL-ED         INDIA                          1             134     227
24 months   ki0047075b-MAL-ED         INDIA                          0              93     227
24 months   ki0047075b-MAL-ED         NEPAL                          1              95     228
24 months   ki0047075b-MAL-ED         NEPAL                          0             133     228
24 months   ki0047075b-MAL-ED         PERU                           1             149     201
24 months   ki0047075b-MAL-ED         PERU                           0              52     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              91     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1             136     455
24 months   ki1113344-GMS-Nepal       NEPAL                          0             319     455
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             214     399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             185     399
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8631    8632
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3042    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1710    4752


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/91c92e7b-30bf-4d02-b215-b22dce538c86/c7ae6e86-1ea3-40ba-987e-dd9b25072a54/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.9743735   -1.1266208   -0.8221262
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.7084660   -0.9166235   -0.5003085
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.9482585   -1.1373891   -0.7591279
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.7622358   -1.0096617   -0.5148098
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.9324448   -1.0493586   -0.8155311
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.6203730   -0.7828851   -0.4578608
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8555621   -1.3398777   -0.3712465
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.2723471   -1.6970931   -0.8476011
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.4708996   -0.5019239   -0.4398753
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.2488736   -1.3203737   -1.1773734
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.4721714   -1.5679102   -1.3764326
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.1741468   -1.3247724   -1.0235212
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.1154929   -0.0677298    0.2987155
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.2689205   -1.4366704   -1.1011707
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.4737188   -0.6261515   -0.3212862
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -1.4740981   -1.6529859   -1.2952103
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.9513910   -1.1409492   -0.7618327
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3189008   -1.4460169   -1.1917847
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -2.0393143   -2.3846812   -1.6939475
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.4227421   -1.5568059   -1.2886783
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.0616832   -1.2574018   -0.8659647
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.1396787   -1.2890417   -0.9903157
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.8751070   -0.9111796   -0.8390343
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed           0.4402542    0.3270453    0.5534631
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.3367003   -1.3827934   -1.2906071
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.8522496   -2.0459397   -1.6585594
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.1629033   -0.0598154    0.3856219
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.7844427   -1.9734420   -1.5954434
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -1.2610833   -1.4174252   -1.1047414
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -1.5799621   -1.8033079   -1.3566164
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -1.5610654   -1.7857371   -1.3363936
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5716743   -2.7160805   -2.4272682
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.1854532   -1.3466899   -1.0242164
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.6217745   -1.7690369   -1.4745120
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -2.2836682   -2.4526777   -2.1146587
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.7345425   -1.7868080   -1.6822769


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.0876172   -1.2136298   -0.9616045
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -1.0138537   -1.1537563   -0.8739510
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.6902024   -0.8168430   -0.5635618
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.3661582   -1.6025814   -1.1297350
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -0.4898628   -0.5117273   -0.4679983
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.5752894   -1.5950861   -1.5554927
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.2063264   -1.3242819   -1.0883709
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED         PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.0599367   -1.1887637   -0.9311096
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000109-EE              PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.2991993   -1.3810668   -1.2173319
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -0.8848717   -0.9125215   -0.8572218
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.9381280   -2.0644004   -1.8118555
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED         PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.6144681   -1.7508611   -1.4780751
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.8698242   -1.9591140   -1.7805343
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -2.3716792   -2.4955680   -2.2477904
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.7582681   -1.7937283   -1.7228079


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.1132437   -0.2141700   -0.0123174
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0524764   -0.1910662    0.0861134
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0655952   -0.1959244    0.0647340
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.0533340   -0.1179268    0.2245948
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.0002149   -0.0920759    0.0925056
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0698295   -0.1905854    0.0509264
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0782590   -0.5175828    0.3610647
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.0938111   -0.4184141    0.2307919
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0189632   -0.0406823    0.0027559
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.3264158   -0.3952782   -0.2575534
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0254928   -0.0732883    0.0223026
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0321796   -0.1276476    0.0632884
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0644722   -0.1945964    0.0656521
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed           0.0485533   -0.0573686    0.1544753
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0873405   -0.1806527    0.0059717
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           0.1472971    0.0064577    0.2881366
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.1085457   -0.2479188    0.0308274
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0412207   -0.1050416    0.0226003
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.1611561   -0.4708431    0.1485310
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0208858   -0.0845836    0.1263552
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.1369951   -0.3177950    0.0438049
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.1595206   -0.2854889   -0.0335523
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0097647   -0.0337004    0.0141709
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.7533474   -1.8684114   -1.6382835
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0080938   -0.0343528    0.0181652
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0858784   -0.2208891    0.0491323
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1210690   -0.2832928    0.0411549
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0613723   -0.2088362    0.0860916
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0141360   -0.1220397    0.0937677
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.1701374   -0.3648889    0.0246141
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0534027   -0.2337632    0.1269577
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0342135   -0.0964054    0.0279784
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.2440799   -0.3980129   -0.0901469
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.2480497   -0.3784812   -0.1176182
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0880110   -0.2109677    0.0349457
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0237256   -0.0651276    0.0176763
