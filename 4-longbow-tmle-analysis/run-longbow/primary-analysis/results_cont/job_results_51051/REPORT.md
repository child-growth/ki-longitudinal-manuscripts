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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** predexfd6

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

agecat      studyid                    country                        predexfd6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               114     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               105     219
Birth       ki0047075b-MAL-ED          BRAZIL                         1                26     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0               142     168
Birth       ki0047075b-MAL-ED          INDIA                          1                15     187
Birth       ki0047075b-MAL-ED          INDIA                          0               172     187
Birth       ki0047075b-MAL-ED          NEPAL                          1                22     165
Birth       ki0047075b-MAL-ED          NEPAL                          0               143     165
Birth       ki0047075b-MAL-ED          PERU                           1               104     249
Birth       ki0047075b-MAL-ED          PERU                           0               145     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               206     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               114     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      12
Birth       ki1000108-IRC              INDIA                          0                12      12
Birth       ki1000109-EE               PAKISTAN                       1                 0       1
Birth       ki1000109-EE               PAKISTAN                       0                 1       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                45      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      47
Birth       ki1101329-Keneba           GAMBIA                         1               451    1336
Birth       ki1101329-Keneba           GAMBIA                         0               885    1336
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12395   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3025   15420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               521     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               112     633
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               123     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               112     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                35     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               174     209
6 months    ki0047075b-MAL-ED          INDIA                          1                18     232
6 months    ki0047075b-MAL-ED          INDIA                          0               214     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                29     235
6 months    ki0047075b-MAL-ED          NEPAL                          0               206     235
6 months    ki0047075b-MAL-ED          PERU                           1               113     269
6 months    ki0047075b-MAL-ED          PERU                           0               156     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               239     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               242     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1               220     376
6 months    ki1000109-EE               PAKISTAN                       0               156     376
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               136     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               446     582
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               404     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0               142     546
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13186   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3469   16655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3331    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               929    4260
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               112     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                97     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               140     169
24 months   ki0047075b-MAL-ED          INDIA                          1                17     224
24 months   ki0047075b-MAL-ED          INDIA                          0               207     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                28     227
24 months   ki0047075b-MAL-ED          NEPAL                          0               199     227
24 months   ki0047075b-MAL-ED          PERU                           1                84     198
24 months   ki0047075b-MAL-ED          PERU                           0               114     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               224     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               210     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               144     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               434     578
24 months   ki1101329-Keneba           GAMBIA                         1               514    1514
24 months   ki1101329-Keneba           GAMBIA                         0              1000    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               359     479
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120     479
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6653    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1860    8513
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3275    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               884    4159


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
![](/tmp/c7e0589b-0f3d-4f89-901c-18b1f473c958/27d3a92b-01a8-4f67-aeb5-e7cf00e5b9c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c7e0589b-0f3d-4f89-901c-18b1f473c958/27d3a92b-01a8-4f67-aeb5-e7cf00e5b9c7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c7e0589b-0f3d-4f89-901c-18b1f473c958/27d3a92b-01a8-4f67-aeb5-e7cf00e5b9c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.8740309   -1.0508176   -0.6972441
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0718357   -1.3024028   -0.8412686
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.2776148   -0.2192850    0.7745145
Birth       ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.4048280    0.2073514    0.6023047
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                -0.4428375   -0.9435916    0.0579166
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                -1.0806074   -1.2295304   -0.9316843
Birth       ki0047075b-MAL-ED         NEPAL        1                    NA                -0.5445911   -0.9353788   -0.1538034
Birth       ki0047075b-MAL-ED         NEPAL        0                    NA                -0.9979191   -1.1465120   -0.8493262
Birth       ki0047075b-MAL-ED         PERU         1                    NA                 0.0400049   -0.1379001    0.2179100
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.0913227   -0.2483726    0.0657272
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 1.7179476    1.5622839    1.8736113
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 1.6786396    1.5782328    1.7790465
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.7151400   -0.7364469   -0.6938331
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.7553658   -0.7950711   -0.7156605
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.3625945   -0.4547476   -0.2704414
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.4312233   -0.5982161   -0.2642304
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1577957   -0.3461571    0.0305658
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1257768   -0.3088100    0.0572565
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 1.3873267    0.9971993    1.7774541
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.8721093    0.6937687    1.0504500
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.4505509   -0.8576706   -0.0434313
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.7306938   -0.8624048   -0.5989827
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.4691306    0.0308025    0.9074587
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                 0.0865906   -0.0494500    0.2226312
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 1.1866255    1.0195192    1.3537317
6 months    ki0047075b-MAL-ED         PERU         0                    NA                 0.9492723    0.7810021    1.1175426
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.4748524   -0.6141288   -0.3355759
6 months    ki1000109-EE              PAKISTAN     0                    NA                -1.0687058   -1.2472061   -0.8902056
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6465859   -0.7848454   -0.5083265
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.6556227   -1.1386877   -0.1725576
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0036348   -0.1711137    0.1638441
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2736257   -0.3707353   -0.1765161
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0176054   -0.1148858    0.0796750
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.2806529   -0.3433295   -0.2179763
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.5747164   -0.6774980   -0.4719348
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.6702478   -0.8400525   -0.5004431
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.4462604    0.0834345    0.8090863
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.3889193    0.2604349    0.5174038
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.5644589   -0.5859635   -0.5429543
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.7082259   -0.7503108   -0.6661411
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.3436433   -0.3903022   -0.2969844
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.5781714   -0.6560467   -0.5002961
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.9367444   -1.1153082   -0.7581805
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.7070930   -0.8866292   -0.5275568
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.4833102   -0.0431339    1.0097544
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.4407781    0.2171738    0.6643823
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.6745254   -1.0152810   -0.3337698
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.9514913   -1.0735885   -0.8293940
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1871663   -0.5748989    0.2005662
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.3960876   -0.5138921   -0.2782830
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.1462422   -0.0135376    0.3060219
24 months   ki0047075b-MAL-ED         PERU         0                    NA                 0.1419208   -0.0261431    0.3099847
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.8164314   -0.9721843   -0.6606785
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.9141054   -1.0102736   -0.8179372
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.7296284   -0.8129124   -0.6463443
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.8396914   -0.9013308   -0.7780519
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0934041   -1.1936468   -0.9931615
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.2755940   -1.4844743   -1.0667136
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.2197660   -0.5561774    0.1166455
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0611236   -0.2246836    0.1024365
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3051819   -1.3315611   -1.2788026
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.2790768   -1.3266348   -1.2315189
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.2241944   -1.2611522   -1.1872366
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.2624941   -1.3386167   -1.1863716


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.9925114   -1.1346572   -0.8503656
Birth       ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4073214    0.2229599    0.5916830
Birth       ki0047075b-MAL-ED         INDIA        NA                   NA                -1.0435829   -1.1865715   -0.9005943
Birth       ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.9226061   -1.0630064   -0.7822058
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                -0.0430924   -0.1600210    0.0738362
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                 1.6904416    1.6057966    1.7750867
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.7234060   -0.7433920   -0.7034200
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.3738863   -0.4580087   -0.2897638
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.1464929   -0.2779745   -0.0150113
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -0.7028736   -0.8283047   -0.5774424
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.1167518   -0.0146454    0.2481490
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                 1.0554461    0.9322755    1.1786167
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.1997850   -0.2531586   -0.1464114
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.6015049   -0.6892785   -0.5137313
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                 0.3927574    0.2737700    0.5117448
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.5931801   -0.6126929   -0.5736674
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.3971948   -0.4378192   -0.3565704
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.8315789   -0.9546058   -0.7085521
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -0.9390848   -1.0545919   -0.8235777
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.3703084   -0.4835704   -0.2570464
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                 0.1430051    0.0254144    0.2605957
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.1369520   -1.2269975   -1.0469065
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0771196   -0.2204715    0.0662323
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.2991319   -1.3225545   -1.2757094
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.2337581   -1.2679680   -1.1995482


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1978048   -0.4895521    0.0939425
Birth       ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL       0                    1                  0.1272133   -0.4043089    0.6587354
Birth       ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA        0                    1                 -0.6377699   -1.1616733   -0.1138664
Birth       ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL        0                    1                 -0.4533280   -0.8728215   -0.0338346
Birth       ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 -0.1313276   -0.3699552    0.1072999
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                 -0.0393080   -0.2246259    0.1460100
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0402258   -0.0811390    0.0006873
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0686288   -0.2505342    0.1132767
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0320189   -0.2296862    0.2937240
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.5152174   -0.9449025   -0.0855322
6 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA        0                    1                 -0.2801428   -0.7081937    0.1479080
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                 -0.3825400   -0.8419631    0.0768831
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 -0.2373531   -0.4738672   -0.0008390
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                 -0.5938535   -0.8204418   -0.3672651
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0090367   -0.5362411    0.5181676
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.2699910   -0.4638239   -0.0761580
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.2630475   -0.3778397   -0.1482552
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0955314   -0.2941479    0.1030851
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                 -0.0573410   -0.4463008    0.3316187
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.1437671   -0.1894077   -0.0981264
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.2345281   -0.3238411   -0.1452151
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.2296514   -0.0248263    0.4841291
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0425322   -0.6129756    0.5279113
24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA        0                    1                 -0.2769659   -0.6392971    0.0853653
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.2089212   -0.6141839    0.1963415
24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                 -0.0043214   -0.2371108    0.2284681
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0976740   -0.2775185    0.0821704
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.1100630   -0.2125772   -0.0075488
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.1821898   -0.4152527    0.0508731
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.1586424   -0.2197946    0.5370794
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0261050   -0.0273768    0.0795868
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0382998   -0.1204904    0.0438909


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1184806   -0.2602453    0.0232842
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1297067   -0.3244122    0.5838255
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                -0.6007454   -1.0863825   -0.1151083
Birth       ki0047075b-MAL-ED         NEPAL        1                    NA                -0.3780150   -0.7463515   -0.0096785
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.0830973   -0.2229780    0.0567834
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.0275060   -0.1504482    0.0954362
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0082660   -0.0163888   -0.0001431
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0112918   -0.0435994    0.0210158
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0113028   -0.1136466    0.1362521
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.4156042   -0.7755413   -0.0556672
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.2523226   -0.6493225    0.1446773
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.3523788   -0.7564007    0.0516430
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.1311794   -0.2701432    0.0077844
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.2464242   -0.3453869   -0.1474615
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0116999   -0.0141795    0.0375792
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.2047358   -0.3538424   -0.0556292
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1821796   -0.2621927   -0.1021664
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0267885   -0.0785995    0.0250225
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0535030   -0.3814201    0.2744141
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0287212   -0.0383261   -0.0191164
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0535515   -0.0739044   -0.0331986
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.1051654   -0.0158799    0.2262107
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0366830   -0.5130922    0.4397262
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.2645594   -0.6015449    0.0724260
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1831420   -0.5408281    0.1745440
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.0032371   -0.1388577    0.1323835
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0715098   -0.2073183    0.0642986
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0736046   -0.1416887   -0.0055204
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0435479   -0.1014943    0.0143986
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.1426464   -0.1706283    0.4559211
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0060500   -0.0056982    0.0177981
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0095637   -0.0273475    0.0082200
