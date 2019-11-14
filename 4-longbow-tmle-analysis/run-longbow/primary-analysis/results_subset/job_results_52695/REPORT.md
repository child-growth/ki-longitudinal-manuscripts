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

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        impsan    n_cell       n
----------  ----------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            168     201
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             33     201
Birth       ki0047075b-MAL-ED       BRAZIL                         1             56      57
Birth       ki0047075b-MAL-ED       BRAZIL                         0              1      57
Birth       ki0047075b-MAL-ED       INDIA                          1             14      39
Birth       ki0047075b-MAL-ED       INDIA                          0             25      39
Birth       ki0047075b-MAL-ED       NEPAL                          1             24      25
Birth       ki0047075b-MAL-ED       NEPAL                          0              1      25
Birth       ki0047075b-MAL-ED       PERU                           1             50     203
Birth       ki0047075b-MAL-ED       PERU                           0            153     203
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              0      94
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0             94      94
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     110
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            110     110
Birth       ki1017093-NIH-Birth     BANGLADESH                     1            222     575
Birth       ki1017093-NIH-Birth     BANGLADESH                     0            353     575
Birth       ki1017093b-PROVIDE      BANGLADESH                     1             43      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0              2      45
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1            610     696
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0             86     696
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             43     449
Birth       ki1135781-COHORTS       GUATEMALA                      0            406     449
Birth       ki1135781-COHORTS       INDIA                          1           1685    4461
Birth       ki1135781-COHORTS       INDIA                          0           2776    4461
Birth       ki1135781-COHORTS       PHILIPPINES                    1            177    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0            949    1126
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          15611   22057
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           6446   22057
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1           1859    2394
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            535    2394
6 months    ki0047075b-MAL-ED       BANGLADESH                     1            202     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0             38     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1            205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              4     209
6 months    ki0047075b-MAL-ED       INDIA                          1            108     233
6 months    ki0047075b-MAL-ED       INDIA                          0            125     233
6 months    ki0047075b-MAL-ED       NEPAL                          1            235     236
6 months    ki0047075b-MAL-ED       NEPAL                          0              1     236
6 months    ki0047075b-MAL-ED       PERU                           1             65     263
6 months    ki0047075b-MAL-ED       PERU                           0            198     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            240     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            332     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1             11      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              0      11
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89     704
6 months    ki1114097-CONTENT       PERU                           1            201     215
6 months    ki1114097-CONTENT       PERU                           0             14     215
6 months    ki1135781-COHORTS       GUATEMALA                      1             67     658
6 months    ki1135781-COHORTS       GUATEMALA                      0            591     658
6 months    ki1135781-COHORTS       INDIA                          1           1879    4964
6 months    ki1135781-COHORTS       INDIA                          0           3085    4964
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          11975   16715
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4740   16715
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1093    4827
24 months   ki0047075b-MAL-ED       BANGLADESH                     1            181     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0             31     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1            166     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     169
24 months   ki0047075b-MAL-ED       INDIA                          1            104     225
24 months   ki0047075b-MAL-ED       INDIA                          0            121     225
24 months   ki0047075b-MAL-ED       NEPAL                          1            227     228
24 months   ki0047075b-MAL-ED       NEPAL                          0              1     228
24 months   ki0047075b-MAL-ED       PERU                           1             47     196
24 months   ki0047075b-MAL-ED       PERU                           0            149     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            258     428
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503
24 months   ki1114097-CONTENT       PERU                           1            151     164
24 months   ki1114097-CONTENT       PERU                           0             13     164
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     903
24 months   ki1135781-COHORTS       GUATEMALA                      0            826     903
24 months   ki1135781-COHORTS       INDIA                          1           1457    3724
24 months   ki1135781-COHORTS       INDIA                          0           2267    3724
24 months   ki1135781-COHORTS       PHILIPPINES                    1            124     993
24 months   ki1135781-COHORTS       PHILIPPINES                    0            869     993
24 months   ki1148112-LCNI-5        MALAWI                         1              2     556
24 months   ki1148112-LCNI-5        MALAWI                         0            554     556
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6040    8528
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2488    8528
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3671    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1059    4730


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e237b742-80bc-44e0-bfbc-d4cab784dc5c/6faee65b-4e0d-462d-8df4-a7f3e9609a14/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.0116290   -1.3213763   -0.7018817
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -0.8708215   -1.2542413   -0.4874017
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.0236622   -0.1752352    0.1279108
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -1.3416422   -1.4826303   -1.2006540
Birth       ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -1.1204351   -1.2945087   -0.9463614
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.8986885   -1.0419898   -0.7553873
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.9500680   -1.0124720   -0.8876640
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.6453054   -0.7252629   -0.5653479
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.7321454   -0.7530056   -0.7112852
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.6705718   -0.7298691   -0.6112745
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.2294804   -0.4891309    0.0301701
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -0.7026575   -0.8818315   -0.5234835
6 months    ki0047075b-MAL-ED       PERU          optimal              observed           1.2565595    1.0373857    1.4757334
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.3390743   -0.4803665   -0.1977821
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.1005139   -0.2797302    0.0787024
6 months    ki1114097-CONTENT       PERU          optimal              observed           1.0190986    0.7916963    1.2465008
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed           0.2327768    0.0821991    0.3833546
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.5904176   -0.6451754   -0.5356599
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.2492330   -0.3937057   -0.1047603
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.5784492   -0.6043224   -0.5525761
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.3567850   -0.3988069   -0.3147630
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.7497719   -0.8823246   -0.6172193
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.8227791   -1.0034251   -0.6421331
24 months   ki0047075b-MAL-ED       PERU          optimal              observed          -0.0819454   -0.4703684    0.3064776
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.8517562   -0.9963715   -0.7071410
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.4922499   -0.7164919   -0.2680079
24 months   ki1114097-CONTENT       PERU          optimal              observed           0.5297661    0.2564854    0.8030468
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0321012   -0.1689590    0.1047566
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.5762646   -0.6298912   -0.5226380
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.5098430   -0.6609528   -0.3587331
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.2804607   -1.3098197   -1.2511018
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.2466627   -1.2941165   -1.1992088


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.9721393   -1.1211171   -0.8231615
Birth       ki0047075b-MAL-ED       INDIA         observed             observed          -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED       PERU          observed             observed          -0.0381281   -0.1669868    0.0907307
Birth       ki1017093-NIH-Birth     BANGLADESH    observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -1.2402802   -1.3249395   -1.1556208
Birth       ki1135781-COHORTS       GUATEMALA     observed             observed          -0.9294432   -1.0701697   -0.7887168
Birth       ki1135781-COHORTS       INDIA         observed             observed          -0.9771733   -1.0119896   -0.9423570
Birth       ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.6841030   -0.7582767   -0.6099293
Birth       kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -0.7501016   -0.7679528   -0.7322503
Birth       kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.1340556   -0.2631866   -0.0049245
6 months    ki0047075b-MAL-ED       INDIA         observed             observed          -0.7020815   -0.8292964   -0.5748666
6 months    ki0047075b-MAL-ED       PERU          observed             observed           1.0402218    0.9168903    1.1635533
6 months    ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093c-NIH-Crypto   BANGLADESH    observed             observed           0.0336790   -0.0458848    0.1132428
6 months    ki1114097-CONTENT       PERU          observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS       GUATEMALA     observed             observed           0.1458511    0.0589571    0.2327450
6 months    ki1135781-COHORTS       INDIA         observed             observed          -0.7104855   -0.7428053   -0.6781657
6 months    ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.2830286   -0.3471028   -0.2189545
6 months    kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -0.5926506   -0.6122450   -0.5730562
6 months    kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED       INDIA         observed             observed          -0.9496667   -1.0657716   -0.8335618
24 months   ki0047075b-MAL-ED       PERU          observed             observed           0.1069898   -0.0141601    0.2281397
24 months   ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -0.6115706   -0.7075788   -0.5155624
24 months   ki1114097-CONTENT       PERU          observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS       GUATEMALA     observed             observed          -0.2861905   -0.3461594   -0.2262216
24 months   ki1135781-COHORTS       INDIA         observed             observed          -0.6606874   -0.6938402   -0.6275347
24 months   ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.6564149   -0.7144543   -0.5983756
24 months   kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.2986562   -1.3220237   -1.2752887
24 months   kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.2231776   -1.2550332   -1.1913220


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.0394897   -0.2299056    0.3088850
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -0.0732811   -0.3077297    0.1611676
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.0144658   -0.0944720    0.0655404
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.0082796   -0.1095677    0.0930086
Birth       ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.1198451   -0.2702120    0.0305217
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0307547   -0.0865778    0.0250685
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.0271053   -0.0772781    0.0230675
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.0387976   -0.0719710   -0.0056242
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0179562   -0.0281917   -0.0077206
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0176780   -0.0434899    0.0081340
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.0954248   -0.1365688    0.3274185
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed           0.0005760   -0.1342979    0.1354498
6 months    ki0047075b-MAL-ED       PERU          optimal              observed          -0.2163377   -0.4075658   -0.0251097
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1083295   -0.2227194    0.0060605
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed           0.1341929   -0.0175005    0.2858863
6 months    ki1114097-CONTENT       PERU          optimal              observed           0.0493332   -0.1352056    0.2338721
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0869258   -0.2207656    0.0469140
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.1200679   -0.1655562   -0.0745796
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.0337956   -0.1661184    0.0985272
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0142014   -0.0302589    0.0018561
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0333746   -0.0535906   -0.0131586
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.0704168   -0.1254579   -0.0153756
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.1268876   -0.2539710    0.0001959
24 months   ki0047075b-MAL-ED       PERU          optimal              observed           0.1889352   -0.1661032    0.5439736
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.0598228   -0.1755263    0.0558806
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.1193207   -0.3256260    0.0869847
24 months   ki1114097-CONTENT       PERU          optimal              observed           0.0370632   -0.2394604    0.3135867
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.2540893   -0.3855377   -0.1226409
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.0844228   -0.1268526   -0.0419930
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.1465719   -0.2885784   -0.0045655
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0181954   -0.0353035   -0.0010874
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed           0.0234851   -0.0129011    0.0598713
