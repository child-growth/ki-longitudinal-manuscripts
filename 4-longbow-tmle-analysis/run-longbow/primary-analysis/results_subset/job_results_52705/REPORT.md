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

**Intervention Variable:** predexfd6

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

agecat      studyid                    country                        predexfd6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                68     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               126     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 5      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                52      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      37
Birth       ki0047075b-MAL-ED          INDIA                          0                33      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                20      23
Birth       ki0047075b-MAL-ED          PERU                           1                72     208
Birth       ki0047075b-MAL-ED          PERU                           0               136     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                89      90
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10161   13000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2839   13000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1802    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               422    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                84     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               147     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               179     209
6 months    ki0047075b-MAL-ED          INDIA                          1                11     218
6 months    ki0047075b-MAL-ED          INDIA                          0               207     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                12     225
6 months    ki0047075b-MAL-ED          NEPAL                          0               213     225
6 months    ki0047075b-MAL-ED          PERU                           1                92     271
6 months    ki0047075b-MAL-ED          PERU                           0               179     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7605    9858
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2253    9858
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3327    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               948    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                76     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               144     169
24 months   ki0047075b-MAL-ED          INDIA                          1                11     209
24 months   ki0047075b-MAL-ED          INDIA                          0               198     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                12     219
24 months   ki0047075b-MAL-ED          NEPAL                          0               207     219
24 months   ki0047075b-MAL-ED          PERU                           1                68     201
24 months   ki0047075b-MAL-ED          PERU                           0               133     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3881    5028
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1147    5028
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3278    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               906    4184


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
![](/tmp/66d7c4a6-d30f-4621-82e2-162bd5513dc4/3ff53976-5a1b-4144-ba7f-37a4316a855f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.8470796   -1.0695736   -0.6245856
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.3157356   -0.3440032    0.9754744
Birth       ki0047075b-MAL-ED         PERU         optimal              observed           0.0044587   -0.2137649    0.2226824
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.6562835   -0.8852815   -0.4272855
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.3414961   -1.4338078   -1.2491845
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -1.2551901   -1.3561723   -1.1542078
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.1106806   -1.2513380   -0.9700232
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.7347476   -0.7685246   -0.7009707
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.6755257   -0.7303612   -0.6206902
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.1673637   -0.3820783    0.0473510
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           1.4162863    0.9550197    1.8775528
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -0.0601293   -0.5315295    0.4112709
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.0199039   -0.3418083    0.3020005
6 months    ki0047075b-MAL-ED         PERU         optimal              observed           1.1988653    0.9981648    1.3995657
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.4573174   -0.9737693    0.0591346
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.7249143   -1.0477394   -0.4020893
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0041651   -0.1636632    0.1719935
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0263989   -0.1240239    0.0712260
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.6315701   -0.7585632   -0.5045769
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed           0.3762070    0.0946721    0.6577419
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.6031839   -0.6401500   -0.5662177
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.3500097   -0.3940298   -0.3059896
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.7324677   -0.8942212   -0.5707141
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.2934111   -0.1162973    0.7031196
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.6825543   -1.1348168   -0.2302918
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.9520574   -1.1573049   -0.7468099
24 months   ki0047075b-MAL-ED         PERU         optimal              observed           0.1245923   -0.0490250    0.2982097
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.7860849   -0.9485905   -0.6235794
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.6804258   -0.7601638   -0.6006879
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.0009062   -1.1130747   -0.8887378
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -0.1160643   -0.3202572    0.0881286
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.2813517   -1.3419707   -1.2207328
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.1992194   -1.2585623   -1.1398765


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.9748454   -1.1280978   -0.8215930
Birth       ki0047075b-MAL-ED         BRAZIL       observed             observed           0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED         PERU         observed             observed          -0.0587981   -0.1871869    0.0695908
Birth       ki1000304b-SAS-CompFeed   INDIA        observed             observed          -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA       observed             observed          -1.2599925   -1.3251703   -1.1948146
Birth       ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -0.7557115   -0.7768180   -0.7346051
Birth       kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.1220707   -0.2547831    0.0106417
6 months    ki0047075b-MAL-ED         BRAZIL       observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA        observed             observed          -0.7073471   -0.8375598   -0.5771344
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
24 months   ki0047075b-MAL-ED         INDIA        observed             observed          -0.9449522   -1.0648865   -0.8250178
24 months   ki0047075b-MAL-ED         NEPAL        observed             observed          -0.3690411   -0.4853679   -0.2527143
24 months   ki0047075b-MAL-ED         PERU         observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA       observed             observed          -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5          MALAWI       observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.3113405   -1.3420927   -1.2805883
24 months   kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.2265320   -1.2620508   -1.1910132


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.1277657   -0.3226545    0.0671230
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.1486504   -0.4053382    0.7026389
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.0632568   -0.2454051    0.1188915
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.0033473   -0.0446450    0.0379504
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0430375   -0.0145635    0.1006385
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -0.0048024   -0.0825853    0.0729805
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.0042246   -0.1004586    0.1089079
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0209639   -0.0486608    0.0067330
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0149329   -0.0422412    0.0123754
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.0452930   -0.0912498    0.1818357
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.4445638   -0.8682134   -0.0209142
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -0.6472178   -1.1148015   -0.1796341
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed           0.1296890   -0.1902076    0.4495857
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -0.1442035   -0.3122124    0.0238053
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.1533771   -0.7268881    0.4201339
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0900283   -0.2741145    0.4541710
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.2032558   -0.3518048   -0.0547068
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.1733657   -0.2535861   -0.0931454
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.0306529   -0.0543611    0.1156669
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed           0.0162930   -0.2187105    0.2512965
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed           0.0033031   -0.0271278    0.0337339
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0468359   -0.0691577   -0.0245141
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0854348   -0.1766298    0.0057603
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.1658196   -0.1925356    0.5241748
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.2623978   -0.7092096    0.1844139
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed           0.5830163    0.3775348    0.7884979
24 months   ki0047075b-MAL-ED         PERU         optimal              observed          -0.0041446   -0.1283947    0.1201056
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.1067821   -0.2489752    0.0354111
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.1228071   -0.1869056   -0.0587086
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.1414463   -0.2189893   -0.0639032
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed           0.0389991   -0.0831803    0.1611784
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0299888   -0.0816688    0.0216913
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0273126   -0.0715194    0.0168942
