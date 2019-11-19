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

**Intervention Variable:** exclfeed3

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

agecat      studyid                    country                        exclfeed3    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               130     202
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                72     202
Birth       ki0047075b-MAL-ED          BRAZIL                         1                11      55
Birth       ki0047075b-MAL-ED          BRAZIL                         0                44      55
Birth       ki0047075b-MAL-ED          INDIA                          1                22      39
Birth       ki0047075b-MAL-ED          INDIA                          0                17      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                 8      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                17      25
Birth       ki0047075b-MAL-ED          PERU                           1                47     218
Birth       ki0047075b-MAL-ED          PERU                           0               171     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                12      99
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                87      99
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                15      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                80      95
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0       9
Birth       ki1000108-IRC              INDIA                          0                 9       9
Birth       ki1000109-EE               PAKISTAN                       1                22      22
Birth       ki1000109-EE               PAKISTAN                       0                 0      22
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               310     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                15     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               381     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               151     532
Birth       ki1101329-Keneba           GAMBIA                         1              1133    1282
Birth       ki1101329-Keneba           GAMBIA                         0               149    1282
Birth       ki1113344-GMS-Nepal        NEPAL                          1               352     422
Birth       ki1113344-GMS-Nepal        NEPAL                          0                70     422
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              9636   10634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               998   10634
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                89      97
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 8      97
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               152     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                81     233
6 months    ki0047075b-MAL-ED          BRAZIL                         1                60     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0               127     187
6 months    ki0047075b-MAL-ED          INDIA                          1               110     210
6 months    ki0047075b-MAL-ED          INDIA                          0               100     210
6 months    ki0047075b-MAL-ED          NEPAL                          1                70     227
6 months    ki0047075b-MAL-ED          NEPAL                          0               157     227
6 months    ki0047075b-MAL-ED          PERU                           1                61     270
6 months    ki0047075b-MAL-ED          PERU                           0               209     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               222     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                46     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               166     212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    ki1000108-IRC              INDIA                          1                 0      10
6 months    ki1000108-IRC              INDIA                          0                10      10
6 months    ki1000109-EE               PAKISTAN                       1                39      39
6 months    ki1000109-EE               PAKISTAN                       0                 0      39
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               428     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               175     603
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               367     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                74     441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              8499    9310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               811    9310
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                76      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                12      88
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               135     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                52     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0               100     152
24 months   ki0047075b-MAL-ED          INDIA                          1               102     202
24 months   ki0047075b-MAL-ED          INDIA                          0               100     202
24 months   ki0047075b-MAL-ED          NEPAL                          1                67     220
24 months   ki0047075b-MAL-ED          NEPAL                          0               153     220
24 months   ki0047075b-MAL-ED          PERU                           1                43     198
24 months   ki0047075b-MAL-ED          PERU                           0               155     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                19     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     228
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               146     184
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   ki1000108-IRC              INDIA                          1                 0      10
24 months   ki1000108-IRC              INDIA                          0                10      10
24 months   ki1000109-EE               PAKISTAN                       1                20      20
24 months   ki1000109-EE               PAKISTAN                       0                 0      20
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               408     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               171     579
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1421
24 months   ki1101329-Keneba           GAMBIA                         0               147    1421
24 months   ki1113344-GMS-Nepal        NEPAL                          1               322     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                62     384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              4416    4833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               417    4833
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               135     150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     150


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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/ace32d34-fb0b-4912-a6ee-461bbcb0ccb8/adeb0771-02d5-4f16-ba82-aeed78206c28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.8248641   -1.0223620   -0.6273663
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.1486191   -0.3733406    0.6705789
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.5825443   -0.9936100   -0.1714786
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.5673560   -1.0812451   -0.0534668
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.1999094   -0.0269673    0.4267861
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.2411337   -0.2199257    0.7021931
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3050247    0.8169733    1.7930761
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.6562835   -0.8852815   -0.4272855
Birth       ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -1.2656857   -1.3537329   -1.1776386
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed          -1.2762594   -1.4089472   -1.1435717
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.0621292   -1.2291698   -0.8950885
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.7535161   -0.8146299   -0.6924024
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.4134963   -0.6365035   -0.1904891
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0718301   -0.2611651    0.1175049
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           1.1033366    0.7729529    1.4337203
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.5536112   -0.7585040   -0.3487184
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.2601568    0.0526223    0.4676914
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           1.1508702    0.9461404    1.3556001
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.3725870    0.0987229    0.6464510
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.9083650    0.6157606    1.2009695
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.7249143   -1.0477394   -0.4020893
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.1363196   -0.2306444   -0.0419949
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.1917996   -0.2521182   -0.1314810
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.6802494   -0.8727774   -0.4877213
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.5506639   -0.6129844   -0.4883433
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.5622718   -0.8986912   -0.2258524
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.7770188   -0.9675497   -0.5864879
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.6137911    0.3143660    0.9132161
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.9837082   -1.1653728   -0.8020437
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.2715258   -0.4881384   -0.0549132
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0212827   -0.1588446    0.1162792
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.7132976    0.4201980    1.0063971
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1223563   -0.1084044    0.3531170
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.8271820   -0.9831955   -0.6711684
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -0.7742658   -0.8285306   -0.7200009
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.1191709   -1.3087106   -0.9296313
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.2776225   -1.3952356   -1.1600094
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.0399353   -1.6120420   -0.4678287


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.9411386   -1.0895370   -0.7927402
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.4316364    0.0969688    0.7663039
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -0.9779487   -1.2664810   -0.6894164
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.7944000   -1.1625222   -0.4262778
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.0335321   -0.1564905    0.0894263
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.1588889   -0.3845288    0.0667510
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7996842    0.5874808    1.0118876
Birth       ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA                         observed             observed          -1.2629563   -1.3291505   -1.1967622
Birth       ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.0991706   -1.2073693   -0.9909719
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.7798636   -0.8022140   -0.7575133
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.4347423   -0.6441144   -0.2253701
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.1304936   -0.2625419    0.0015547
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.9754144    0.7990651    1.1517638
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -0.7185992   -0.8491469   -0.5880515
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed           0.1041483   -0.0311352    0.2394318
6 months    ki0047075b-MAL-ED         PERU                           observed             observed           1.0514136    0.9289176    1.1739096
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.5564071    0.4055220    0.7072922
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5257626    0.3871543    0.6643709
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba          GAMBIA                         observed             observed          -0.2057183   -0.2614359   -0.1500006
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -0.6198791   -0.7206518   -0.5191063
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.6040977   -0.6286619   -0.5795335
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.4110227   -0.6122701   -0.2097753
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.8076829   -0.9296166   -0.6857493
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.4981140    0.2760418    0.7201863
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -0.9516832   -1.0703961   -0.8329703
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.3790455   -0.4958857   -0.2622052
24 months   ki0047075b-MAL-ED         PERU                           observed             observed           0.1176052   -0.0015211    0.2367315
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.4120797    0.2900939    0.5340654
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0495743   -0.0857535    0.1849021
24 months   ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA                         observed             observed          -0.7930925   -0.8442611   -0.7419240
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.1396441   -1.2416403   -1.0376479
24 months   kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3109518   -1.3423299   -1.2795737
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.0096000   -1.1619164   -0.8572836


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.1162745   -0.2603448    0.0277958
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.2830172   -0.1534197    0.7194542
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.3954044   -0.7049553   -0.0858535
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.2270440   -0.7435278    0.2894398
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.2334415   -0.4396181   -0.0272649
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.4000226   -0.8311272    0.0310821
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5053405   -0.9727612   -0.0379198
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.0033473   -0.0446450    0.0379504
Birth       ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0327729   -0.0778429    0.0122971
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed           0.0133031   -0.0985823    0.1251885
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0370415   -0.1837119    0.1096290
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0263475   -0.0829303    0.0302353
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0212459   -0.0644915    0.0219996
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0586635   -0.1917175    0.0743906
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1279222   -0.3905647    0.1347204
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.1649880   -0.3016686   -0.0283074
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.1560085   -0.3293397    0.0173227
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0994567   -0.2858566    0.0869432
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.1838202   -0.0678390    0.4354793
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3826025   -0.6236091   -0.1415958
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0900283   -0.2741145    0.4541710
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0627710   -0.1183793   -0.0071628
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0139187   -0.0396030    0.0117657
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.0603703   -0.1157115    0.2364521
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0534339   -0.1105468    0.0036791
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.1512491   -0.1628427    0.4653409
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0306641   -0.1682093    0.1068810
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1156770   -0.3072414    0.0758873
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed           0.0320251   -0.0917657    0.1558159
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.1075196   -0.2725000    0.0574607
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed           0.1388879    0.0204713    0.2573045
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.3012179   -0.5974281   -0.0050077
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0727820   -0.2767540    0.1311900
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0656851   -0.1946470    0.0632769
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0188268   -0.0356301   -0.0020235
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0204731   -0.1893986    0.1484523
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0333293   -0.1429898    0.0763312
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.0303353   -0.5109006    0.5715712
