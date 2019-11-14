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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                72     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               133     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 6      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                54      60
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      39
Birth       ki0047075b-MAL-ED          INDIA                          0                35      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                21      24
Birth       ki0047075b-MAL-ED          PERU                           1                73     213
Birth       ki0047075b-MAL-ED          PERU                           0               140     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                90      91
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12323   15793
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3470   15793
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              2103    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               529    2632
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7624    9877
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2253    9877
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3328    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               944    4272
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               441     578
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1               356     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     470
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3897    5048
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1151    5048
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3292    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               907    4199


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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e414eb71-f7db-4882-b46c-81e7516882e4/134de291-b667-4581-bdce-f7d5979f85d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.1594747   -1.3781100   -0.9408394
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.9151307   -1.2798905   -0.5503709
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.9589293   -1.1019321   -0.8159265
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -1.5461965   -1.8640911   -1.2283019
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.8951395   -0.9973898   -0.7928892
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           0.0355911   -0.0540738    0.1252561
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.0990231   -1.2039886   -0.9940577
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.2475516   -1.2861456   -1.2089577
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.5104684   -1.5626943   -1.4582425
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.0710098   -1.2251597   -0.9168599
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.0018893   -0.4523504    0.4485718
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -1.1923643   -1.3135593   -1.0711693
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.7346177   -1.1826767   -0.2865587
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -1.2485687   -1.4250389   -1.0720985
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -1.0088973   -2.2964341    0.2786395
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -1.4877061   -1.6531098   -1.3223023
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.1850248   -1.3101701   -1.0598795
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.9088442   -0.9829348   -0.8347536
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.3055543   -1.3945321   -1.2165764
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -1.5346839   -1.7192177   -1.3501501
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.3569693   -1.3900711   -1.3238676
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.3180103   -1.3653780   -1.2706426
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.9207503   -2.0651852   -1.7763153
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.2910637   -0.6460403    0.0639130
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -1.8471784   -1.9786334   -1.7157234
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -1.4791945   -1.6835179   -1.2748711
24 months   ki0047075b-MAL-ED         PERU         optimal              observed          -1.6990004   -1.8779098   -1.5200911
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.4889690   -1.5999953   -1.3779428
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -1.5359191   -1.6202090   -1.4516291
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.8743893   -2.0445655   -1.7042130
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -2.0422988   -2.2189799   -1.8656177
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -2.0053797   -2.0450085   -1.9657510
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.7802877   -1.8223168   -1.7382586


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.0530244   -1.1913751   -0.9146736
Birth       ki0047075b-MAL-ED         BRAZIL       observed             observed          -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED         PERU         observed             observed          -0.9065728   -1.0297267   -0.7834188
Birth       ki1000304b-SAS-CompFeed   INDIA        observed             observed          -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA       observed             observed           0.0126443   -0.0554367    0.0807254
Birth       ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.2156259   -1.2478377   -1.1834141
Birth       kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.1905988   -1.3103463   -1.0708514
6 months    ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA        observed             observed          -1.2185703   -1.3422027   -1.0949380
6 months    ki0047075b-MAL-ED         NEPAL        observed             observed          -0.5616889   -0.6770008   -0.4463770
6 months    ki0047075b-MAL-ED         PERU         observed             observed          -1.3264945   -1.4355111   -1.2174779
6 months    ki1000109-EE              PAKISTAN     observed             observed          -2.1595486   -2.5331781   -1.7859192
6 months    ki1000304b-SAS-CompFeed   INDIA        observed             observed          -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA       observed             observed          -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5          MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.3370052   -1.3650190   -1.3089913
6 months    kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.9581707   -2.0862906   -1.8300508
24 months   ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED         INDIA        observed             observed          -1.8848804   -2.0154334   -1.7543274
24 months   ki0047075b-MAL-ED         NEPAL        observed             observed          -1.3232192   -1.4452887   -1.2011496
24 months   ki0047075b-MAL-ED         PERU         observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA       observed             observed          -1.5876293   -1.6406755   -1.5345831
24 months   ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5          MALAWI       observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -2.0173019   -2.0536076   -1.9809962
24 months   kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.7914765   -1.8297816   -1.7531715


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.1064503   -0.0499249    0.2628255
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.2187974    0.0094269    0.4281678
Birth       ki0047075b-MAL-ED         PERU         optimal              observed           0.0523565   -0.0600699    0.1647829
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.1524877   -0.1183159    0.4232913
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0100375   -0.0486605    0.0687355
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -0.0229468   -0.0865499    0.0406562
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.0349023   -0.0284154    0.0982200
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed           0.0319257    0.0106063    0.0532451
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0168454   -0.0453272    0.0116363
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.1195891   -0.2566592    0.0174811
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.0529100   -0.3531601    0.4589801
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -0.0262060   -0.0718563    0.0194443
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed           0.1729288   -0.2514106    0.5972683
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -0.0779257   -0.2191978    0.0633463
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -1.1506513   -2.3880203    0.0867177
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0179824   -0.0394213    0.0753861
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0933333   -0.0070958    0.1937624
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0242666   -0.0823375    0.0338044
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0484738   -0.0978694    0.0009219
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -0.1049117   -0.2452258    0.0354024
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed           0.0199642    0.0021895    0.0377388
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0302201   -0.0599523   -0.0004878
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0374205   -0.1411409    0.0663000
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.2981642   -0.0247493    0.6210778
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.0377020   -0.0754229    0.0000190
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed           0.1559753   -0.0142361    0.3261868
24 months   ki0047075b-MAL-ED         PERU         optimal              observed          -0.0554772   -0.1998836    0.0889293
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.1134531   -0.1933714   -0.0335348
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.0517103   -0.1194876    0.0160670
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0258235   -0.1576346    0.1059876
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed           0.0771665   -0.0257831    0.1801162
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0119222   -0.0283010    0.0044567
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0111888   -0.0288710    0.0064934
