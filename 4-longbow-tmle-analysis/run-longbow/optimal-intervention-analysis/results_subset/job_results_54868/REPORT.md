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

**Intervention Variable:** predfeed6

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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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

agecat      studyid                    country                        predfeed6    n_cell       n
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
Birth       ki1000109-EE               PAKISTAN                       1                24      28
Birth       ki1000109-EE               PAKISTAN                       0                 4      28
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              8392   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2352   10744
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
6 months    ki1000109-EE               PAKISTAN                       1                43      48
6 months    ki1000109-EE               PAKISTAN                       0                 5      48
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7625    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2257    9882
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
24 months   ki1000109-EE               PAKISTAN                       1                20      23
24 months   ki1000109-EE               PAKISTAN                       0                 3      23
24 months   ki1113344-GMS-Nepal        NEPAL                          1               355     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     469
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3909    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1158    5067
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/644bb859-71d6-43a5-975f-dc7386b17fa8/b68f40d8-7ad6-4999-b9e8-007178e34914/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.9040219   -1.1156964   -0.6923474
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2209843   -0.1528728    0.5948414
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.0054237   -0.2043114    0.2151587
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.0891205   -1.2269778   -0.9512631
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.7588932   -0.8026844   -0.7151020
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.6769218   -0.7318378   -0.6220058
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.2542104   -0.4534080   -0.0550127
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           1.4090530    0.9282888    1.8898173
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.1034212   -0.5888051    0.3819627
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.0156345   -0.3568569    0.3881259
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           1.1841860    0.9828412    1.3855307
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.6192759   -1.1470091   -0.0915427
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.6529618   -0.7581688   -0.5477548
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.2504996    0.1080551    0.3929440
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.6065079   -0.6448231   -0.5681927
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.3510960   -0.3964117   -0.3057803
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.7848186   -0.9661998   -0.6034374
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1260616   -0.2769038    0.5290271
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.6693461   -1.2719240   -0.0667681
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.6247295   -0.7801666   -0.4692924
24 months   ki0047075b-MAL-ED     PERU         optimal              observed           0.0249012   -0.1434720    0.1932744
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.9832536   -1.0954624   -0.8710448
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.1468911   -0.3182159    0.0244337
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2773024   -1.3373377   -1.2172672
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.1966448   -1.2474041   -1.1458855


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.9755670   -1.1287016   -0.8224325
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.0587981   -0.1871869    0.0695908
Birth       ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.7807809   -0.8030521   -0.7585097
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.1213203   -0.2539388    0.0112981
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -0.7067317   -0.8369134   -0.5765499
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed           0.1091407   -0.0265536    0.2448351
6 months    ki0047075b-MAL-ED     PERU         observed             observed           1.0506150    0.9281868    1.1730433
6 months    ki1000109-EE          PAKISTAN     observed             observed          -0.6106944   -0.9239621   -0.2974268
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -0.6009171   -0.6886356   -0.5131986
6 months    ki1148112-LCNI-5      MALAWI       observed             observed           0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -0.6001300   -0.6240378   -0.5762223
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -0.3968456   -0.4358721   -0.3578192
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -0.8169756   -0.9388013   -0.6951499
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -0.9442584   -1.0642426   -0.8242742
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -0.3674429   -0.4840752   -0.2508107
24 months   ki0047075b-MAL-ED     PERU         observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3103375   -1.3408810   -1.2797940
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.2265320   -1.2620508   -1.1910132


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0715451   -0.2530401    0.1099499
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2434017    0.0029768    0.4838266
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.0642217   -0.2385957    0.1101522
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0173355   -0.1201292    0.0854583
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0218877   -0.0598575    0.0160821
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0135368   -0.0410200    0.0139464
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.1328900   -0.0112562    0.2770362
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.4369757   -0.8764760    0.0025246
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.6033104   -1.0847946   -0.1218263
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.0935062   -0.2575803    0.4445927
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.1335710   -0.3014491    0.0343072
6 months    ki1000109-EE          PAKISTAN     optimal              observed           0.0085815   -0.5300425    0.5472055
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed           0.0520447   -0.0114909    0.1155803
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed           0.1420004    0.0386446    0.2453562
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed           0.0063778   -0.0252832    0.0380389
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0457496   -0.0680186   -0.0234806
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0321570   -0.1517783    0.0874643
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.3365617   -0.0037288    0.6768521
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.2749123   -0.8680111    0.3181864
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed           0.2572866    0.1293620    0.3852111
24 months   ki0047075b-MAL-ED     PERU         optimal              observed           0.0862970   -0.0438631    0.2164571
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.1590989   -0.2419038   -0.0762941
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0698259   -0.0292113    0.1688631
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0330350   -0.0859684    0.0198983
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0298872   -0.0716652    0.0118907
