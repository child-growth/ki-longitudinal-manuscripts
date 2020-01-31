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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                31     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               174     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 2      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                58      60
Birth       ki0047075b-MAL-ED          INDIA                          1                 1      39
Birth       ki0047075b-MAL-ED          INDIA                          0                38      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                 2      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                22      24
Birth       ki0047075b-MAL-ED          PERU                           1                 2     213
Birth       ki0047075b-MAL-ED          PERU                           0               211     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                91      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      14
Birth       ki1000108-IRC              INDIA                          0                14      14
Birth       ki1000109-EE               PAKISTAN                       1                38      42
Birth       ki1000109-EE               PAKISTAN                       0                 4      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               346     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                18     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               159     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               380     539
Birth       ki1101329-Keneba           GAMBIA                         1               485    1403
Birth       ki1101329-Keneba           GAMBIA                         0               918    1403
Birth       ki1113344-GMS-Nepal        NEPAL                          1               419     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0               144     563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10452   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2971   13423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              2098    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               534    2632
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               141     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               463     604
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7628    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2273    9901
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3316    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               956    4272
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               441     578
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1               356     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     470
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3916    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1172    5088
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3280    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               919    4199


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
![](/tmp/613a4445-75f4-4392-ab47-468e846227cf/fa1f0aef-dad5-425d-865b-0e79f0b35516/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.0382145   -1.1915630   -0.8848661
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -1.5394402   -1.8299178   -1.2489627
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.8778910   -0.9647940   -0.7909879
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           0.0505263   -0.0428918    0.1439443
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.0818924   -1.2046051   -0.9591796
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.6187509   -1.6481965   -1.5893054
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.5480917   -1.6268627   -1.4693207
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.2475609   -1.4149585   -1.0801633
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.1573305   -0.6693709    0.9840319
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.7854337   -1.2421321   -0.3287353
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -1.3116392   -1.4223425   -1.2009358
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -1.1855999   -2.6183468    0.2471471
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -1.4877061   -1.6531098   -1.3223023
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.1934113   -1.3019901   -1.0848324
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.8721320   -0.9501061   -0.7941579
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.3077562   -1.3965938   -1.2189186
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -1.5536133   -1.6924982   -1.4147284
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.3071186   -1.3380547   -1.2761826
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.3394539   -1.3899563   -1.2889516
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -2.0983258   -2.3391293   -1.8575222
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.1929133   -0.4164368    0.0306102
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -1.5156548   -1.8485475   -1.1827621
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.4902328   -1.6007252   -1.3797403
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -1.5144728   -1.5995527   -1.4293930
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -2.0128041   -2.1863327   -1.8392756
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -2.0051428   -2.1938571   -1.8164284
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -2.0006789   -2.0413598   -1.9599980
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.8018235   -1.8512325   -1.7524146


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.0530244   -1.1913751   -0.9146736
Birth       ki1000304b-SAS-CompFeed   INDIA        observed             observed          -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA       observed             observed           0.0126443   -0.0554367    0.0807254
Birth       ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.5955338   -1.6186322   -1.5724354
Birth       kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.1900794   -1.3096296   -1.0705291
6 months    ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED         NEPAL        observed             observed          -0.5622370   -0.6774081   -0.4470660
6 months    ki0047075b-MAL-ED         PERU         observed             observed          -1.3220326   -1.4308168   -1.2132484
6 months    ki1000109-EE              PAKISTAN     observed             observed          -2.1595486   -2.5331781   -1.7859192
6 months    ki1000304b-SAS-CompFeed   INDIA        observed             observed          -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA       observed             observed          -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5          MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.3138259   -1.3418712   -1.2857806
6 months    kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.9576341   -2.0857597   -1.8295086
24 months   ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED         NEPAL        observed             observed          -1.3187671   -1.4406685   -1.1968657
24 months   ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA       observed             observed          -1.5876293   -1.6406755   -1.5345831
24 months   ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5          MALAWI       observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -2.0118003   -2.0479952   -1.9756055
24 months   kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.7914765   -1.8297816   -1.7531715


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0148099   -0.0682083    0.0385886
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.1457314   -0.0954388    0.3869016
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.0072110   -0.0456355    0.0312134
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -0.0378819   -0.1026184    0.0268546
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.0177716   -0.0715864    0.1071296
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed           0.0232172    0.0058316    0.0406027
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed           0.0207779   -0.0418739    0.0834296
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.0574816   -0.0803032    0.1952663
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.1097547   -0.9141539    0.6946445
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed           0.2231966   -0.2334104    0.6798037
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -0.0103934   -0.0243547    0.0035679
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.9739488   -2.3520865    0.4041890
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0179824   -0.0394213    0.0753861
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.1017198    0.0191091    0.1843304
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0609788   -0.1240971    0.0021395
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0462719   -0.0951581    0.0026144
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -0.0859823   -0.1903985    0.0184340
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0067073   -0.0202098    0.0067953
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0087764   -0.0412788    0.0237260
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.1406916   -0.0557695    0.3371528
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.1990277    0.0333694    0.3646861
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed           0.1968877   -0.1484764    0.5422518
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.1121894   -0.1976798   -0.0266990
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.0731565   -0.1438630   -0.0024500
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.1125913   -0.0260338    0.2512165
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed           0.0400105   -0.0801597    0.1601806
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0111214   -0.0305566    0.0083138
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed           0.0103470   -0.0188961    0.0395901
