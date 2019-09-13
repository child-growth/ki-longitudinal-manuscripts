---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** exclfeed3

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

agecat      studyid                    country                        exclfeed3    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               173     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                67     240
Birth       ki0047075b-MAL-ED          BRAZIL                         1                67     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0               118     185
Birth       ki0047075b-MAL-ED          INDIA                          1               123     196
Birth       ki0047075b-MAL-ED          INDIA                          0                73     196
Birth       ki0047075b-MAL-ED          NEPAL                          1                61     171
Birth       ki0047075b-MAL-ED          NEPAL                          0               110     171
Birth       ki0047075b-MAL-ED          PERU                           1                67     272
Birth       ki0047075b-MAL-ED          PERU                           0               205     272
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                32     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               201     233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                39     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                80     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0      10
Birth       ki1000108-IRC              INDIA                          0                10      10
Birth       ki1000109-EE               PAKISTAN                       1                 2       2
Birth       ki1000109-EE               PAKISTAN                       0                 0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                48      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      50
Birth       ki1101329-Keneba           GAMBIA                         1              1196    1354
Birth       ki1101329-Keneba           GAMBIA                         0               158    1354
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             16824   18710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1886   18710
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                37      40
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 3      40
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               172     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                65     237
6 months    ki0047075b-MAL-ED          BRAZIL                         1                81     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               128     209
6 months    ki0047075b-MAL-ED          INDIA                          1               141     233
6 months    ki0047075b-MAL-ED          INDIA                          0                92     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                85     233
6 months    ki0047075b-MAL-ED          NEPAL                          0               148     233
6 months    ki0047075b-MAL-ED          PERU                           1                67     270
6 months    ki0047075b-MAL-ED          PERU                           0               203     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                31     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               217     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                68     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               172     240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    ki1000108-IRC              INDIA                          1                 0      10
6 months    ki1000108-IRC              INDIA                          0                10      10
6 months    ki1000109-EE               PAKISTAN                       1               346     371
6 months    ki1000109-EE               PAKISTAN                       0                25     371
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               412     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               171     583
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             14792   16281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1489   16281
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                77      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                12      89
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               150     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                58     208
24 months   ki0047075b-MAL-ED          BRAZIL                         1                71     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                98     169
24 months   ki0047075b-MAL-ED          INDIA                          1               133     225
24 months   ki0047075b-MAL-ED          INDIA                          0                92     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                82     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               143     225
24 months   ki0047075b-MAL-ED          PERU                           1                46     199
24 months   ki0047075b-MAL-ED          PERU                           0               153     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                27     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               205     232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                57     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               153     210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   ki1000108-IRC              INDIA                          1                 0      10
24 months   ki1000108-IRC              INDIA                          0                10      10
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               407     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               170     577
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1420
24 months   ki1101329-Keneba           GAMBIA                         0               146    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          1               336     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                68     404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              7517    8341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               824    8341
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               137     152
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     152


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
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
![](/tmp/74534b2a-ef28-48f2-9e5a-1a4b138758e7/bc73520c-5aba-4d12-8aa8-3587f24834b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/74534b2a-ef28-48f2-9e5a-1a4b138758e7/bc73520c-5aba-4d12-8aa8-3587f24834b3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/74534b2a-ef28-48f2-9e5a-1a4b138758e7/bc73520c-5aba-4d12-8aa8-3587f24834b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.0840857   -1.2300035   -0.9381679
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.9917512   -1.2597180   -0.7237845
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.4968481   -0.7414294   -0.2522667
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.8529880   -1.0626013   -0.6433747
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.0490665   -1.2238632   -0.8742697
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.9442176   -1.1550023   -0.7334330
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.4729851   -0.7191943   -0.2267759
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.8396561   -1.0416710   -0.6376411
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -1.0067556   -1.2415386   -0.7719725
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.9160580   -1.0346357   -0.7974804
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.7824784   -1.1104747   -0.4544821
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.7065813   -0.8438556   -0.5693070
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8372478   -1.1614868   -0.5130087
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.9350028   -1.2284612   -0.6415445
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0066000   -0.0663266    0.0795266
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                 0.0785353   -0.1009027    0.2579733
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.5353289   -1.5551312   -1.5155267
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.6146866   -1.6629611   -1.5664122
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1998787   -1.3280104   -1.0717470
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.1628553   -1.4339094   -0.8918012
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0667113   -0.1453247    0.2787474
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0304883   -0.1603264    0.2213031
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -1.2292514   -1.3814013   -1.0771015
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -1.1870433   -1.3808243   -0.9932624
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6062186   -0.8082695   -0.4041678
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.5223271   -0.6572898   -0.3873643
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -1.4193256   -1.6403744   -1.1982769
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -1.3079119   -1.4309273   -1.1848965
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.7851111   -1.1634950   -0.4067272
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.1200695   -1.2570071   -0.9831319
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2898246   -1.5307006   -1.0489486
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3778024   -1.5231731   -1.2324318
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -2.2094607   -2.3367683   -2.0821532
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -2.1890863   -2.6488889   -1.7292838
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.0785688   -1.1645978   -0.9925399
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.1079312   -1.2694045   -0.9464579
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.9290273   -0.9830796   -0.8749750
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -1.0941215   -1.2509661   -0.9372770
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.2935247   -1.3865848   -1.2004646
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.4184155   -1.6489129   -1.1879182
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.2925663   -1.3159707   -1.2691618
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.4241997   -1.4978220   -1.3505774
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.1327438   -1.3172969   -0.9481907
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.3763199   -1.7994932   -0.9531465
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.9483901   -2.1019873   -1.7947930
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.9127973   -2.1406298   -1.6849648
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0709541   -0.3219767    0.1800686
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0784777   -0.1449435    0.3018988
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -1.9970943   -2.1595789   -1.8346096
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -1.5684744   -1.7517864   -1.3851624
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -1.3581846   -1.5530042   -1.1633651
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -1.2166124   -1.3699312   -1.0632937
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -1.8388594   -2.1156315   -1.5620873
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -1.7071906   -1.8351998   -1.5791814
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.3269088   -1.6913438   -0.9624738
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.6382674   -1.7869185   -1.4896164
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6103779   -2.8947754   -2.3259805
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6185118   -2.7732343   -2.4637892
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.6270467   -1.7244786   -1.5296148
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.4839872   -1.6389211   -1.3290534
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -1.5584842   -1.6152675   -1.5017009
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -1.7511114   -1.9130922   -1.5891306
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.8770860   -1.9758883   -1.7782838
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.9110210   -2.1536921   -1.6683499
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.0077207   -2.0366667   -1.9787746
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -2.0415688   -2.1307484   -1.9523891
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.7158822   -1.8594694   -1.5722951
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -2.0614749   -2.3746682   -1.7482816


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.0497083   -1.1780996   -0.9213171
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.0098469   -1.1519586   -0.8677353
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.7128070   -0.8704934   -0.5551207
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.9261397   -1.0389037   -0.8133757
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.7108584   -0.8390511   -0.5826657
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9205882   -1.1394357   -0.7017408
Birth       ki1101329-Keneba          GAMBIA                         NA                   NA                 0.0135081   -0.0559902    0.0830065
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.5457493   -1.5650991   -1.5263996
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.2009705   -1.3199485   -1.0819924
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.2109514   -1.3300505   -1.0918522
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.5557940   -0.6681063   -0.4434817
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -1.3229136   -1.4307207   -1.2151065
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0640356   -1.1937663   -0.9343049
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3516458   -1.4765824   -1.2267092
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                -2.2056604   -2.3285064   -2.0828144
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.9489317   -1.0001696   -0.8976937
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.3235298   -1.4103807   -1.2366790
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3060279   -1.3292905   -1.2827653
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.2339326   -1.4137041   -1.0541611
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.9391587   -2.0665449   -1.8117724
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.8433556   -1.9704665   -1.7162446
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -1.2693778   -1.3896188   -1.1491367
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -1.7440201   -1.8648503   -1.6231899
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6114440   -1.7486349   -1.4742530
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6159762   -2.7525555   -2.4793968
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -1.5804688   -1.6348908   -1.5260468
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.8788036   -1.9703700   -1.7872372
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -2.0111797   -2.0396837   -1.9826758
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.7671053   -1.9017670   -1.6324435


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0923344   -0.2136080    0.3982769
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.3561399   -0.6795777   -0.0327021
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                  0.1048488   -0.1496751    0.3593728
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.3666710   -0.6859610   -0.0473809
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                  0.0906975   -0.1590888    0.3404839
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0758971   -0.2714035    0.4231977
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0977551   -0.5371793    0.3416692
Birth       ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA                         0                    1                  0.0719352   -0.1140534    0.2579239
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0793577   -0.1270195   -0.0316959
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0370234   -0.2632586    0.3373054
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0362230   -0.3192054    0.2467594
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.0422080   -0.2048896    0.2893057
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0838915   -0.1602569    0.3280399
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.1114138   -0.1417998    0.3646274
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.3349584   -0.7360780    0.0661611
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0879779   -0.3680602    0.1921044
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                  0.0203744   -0.4571028    0.4978516
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0293624   -0.2124238    0.1536990
6 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 -0.1650942   -0.3308171    0.0006287
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1248909   -0.3736175    0.1238358
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.1316334   -0.2046747   -0.0585921
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.2435760   -0.7159519    0.2287998
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0355928   -0.2393778    0.3105634
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1494317   -0.1829425    0.4818059
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.4286199    0.1869069    0.6703328
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1415722   -0.1066094    0.3897538
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.1316688   -0.1665904    0.4299280
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.3113586   -0.7058866    0.0831693
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0081338   -0.3318085    0.3155408
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.1430595   -0.0381950    0.3243140
24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.1926272   -0.3616317   -0.0236227
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0339350   -0.2965876    0.2287176
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0338481   -0.1241708    0.0564747
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.3455927   -0.6901164   -0.0010690


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0343773   -0.0504794    0.1192341
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.2382330   -0.4478494   -0.0286167
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0392195   -0.0547398    0.1331788
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.2398219   -0.4465578   -0.0330861
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.0806159   -0.1080474    0.2692791
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0716200   -0.2319945    0.3752345
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0833405   -0.3808707    0.2141898
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0069081   -0.0134929    0.0273091
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0104204   -0.0157080   -0.0051328
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0010917   -0.0842964    0.0821129
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0156906   -0.1888062    0.1574250
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0183000   -0.0796722    0.1162723
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0504246   -0.1074499    0.2082991
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0964121   -0.0939652    0.2867894
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.2789245   -0.6306962    0.0728471
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0618213   -0.2627431    0.1391006
6 months    ki1000109-EE              PAKISTAN                       1                    NA                 0.0038003   -0.0291050    0.0367057
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0085352   -0.0613015    0.0442310
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0199043   -0.0391986   -0.0006101
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0300052   -0.0735865    0.0135762
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0134616   -0.0204023   -0.0065209
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.1011888   -0.1963111   -0.0060664
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0092315   -0.0668479    0.0853108
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1127884   -0.0815008    0.3070776
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1537387    0.0491883    0.2582891
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0888069   -0.0715806    0.2491944
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0948393   -0.1341999    0.3238785
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.2845351   -0.6363289    0.0672586
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0055982   -0.2415074    0.2303109
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0409289   -0.0118296    0.0936874
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0219846   -0.0395009   -0.0044683
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0017176   -0.0454670    0.0420318
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0034590   -0.0123117    0.0053937
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0512231   -0.0889278   -0.0135183
