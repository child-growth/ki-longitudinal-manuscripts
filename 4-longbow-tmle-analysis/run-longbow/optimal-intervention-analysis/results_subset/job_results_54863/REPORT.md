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
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          12413   17991
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           5578   17991
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
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          12015   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4758   16773
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
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6085    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2508    8593
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
![](/tmp/4dae63ae-4016-44d1-ab98-e93440680771/a44fedd2-2324-427a-806a-9a1f88753908/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -1.1371047   -1.4665740   -0.8076353
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -0.9718927   -1.3072022   -0.6365833
Birth       ki0047075b-MAL-ED       PERU          optimal              observed           0.0075902   -0.1554591    0.1706394
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -1.5021146   -1.6487895   -1.3554397
Birth       ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -1.1577242   -1.3193909   -0.9960575
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.8950304   -1.0384891   -0.7515717
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.9491831   -1.0109307   -0.8874355
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.6278168   -0.7124946   -0.5431391
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.7701189   -0.7934078   -0.7468299
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.6708117   -0.7346089   -0.6070144
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.2331299   -0.4916799    0.0254201
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -0.6948676   -0.8718282   -0.5179070
6 months    ki0047075b-MAL-ED       PERU          optimal              observed           1.1303890    0.8731159    1.3876621
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.3326157   -0.4732056   -0.1920257
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0535274   -0.1556763    0.0486215
6 months    ki1114097-CONTENT       PERU          optimal              observed           0.9868709    0.7806772    1.1930647
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed           0.0490734   -0.1553380    0.2534849
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.5923622   -0.6465508   -0.5381736
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.1902827   -0.3430443   -0.0375211
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.5733851   -0.5964283   -0.5503420
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.3566565   -0.4142581   -0.2990550
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.7332857   -0.9062563   -0.5603152
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.8167312   -0.9980836   -0.6353787
24 months   ki0047075b-MAL-ED       PERU          optimal              observed          -0.0274097   -0.2844797    0.2296603
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.8802533   -1.0242773   -0.7362293
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.5195867   -0.7518345   -0.2873389
24 months   ki1114097-CONTENT       PERU          optimal              observed           0.6258121    0.3375349    0.9140892
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0710963   -0.2081417    0.0659492
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.5706416   -0.6237384   -0.5175447
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.5540938   -0.6929245   -0.4152630
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.2864087   -1.3155778   -1.2572397
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.2335560   -1.2735883   -1.1935237


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.9728358   -1.1217009   -0.8239707
Birth       ki0047075b-MAL-ED       INDIA         observed             observed          -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED       PERU          observed             observed          -0.0381281   -0.1669868    0.0907307
Birth       ki1017093-NIH-Birth     BANGLADESH    observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -1.2402802   -1.3249395   -1.1556208
Birth       ki1135781-COHORTS       GUATEMALA     observed             observed          -0.9294432   -1.0701697   -0.7887168
Birth       ki1135781-COHORTS       INDIA         observed             observed          -0.9771733   -1.0119896   -0.9423570
Birth       ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.6841030   -0.7582767   -0.6099293
Birth       kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -0.7777528   -0.7967725   -0.7587330
Birth       kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.1333333   -0.2623761   -0.0042906
6 months    ki0047075b-MAL-ED       INDIA         observed             observed          -0.7018062   -0.8289790   -0.5746333
6 months    ki0047075b-MAL-ED       PERU          observed             observed           1.0372972    0.9141109    1.1604836
6 months    ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093c-NIH-Crypto   BANGLADESH    observed             observed           0.0336790   -0.0458848    0.1132428
6 months    ki1114097-CONTENT       PERU          observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS       GUATEMALA     observed             observed           0.1458511    0.0589571    0.2327450
6 months    ki1135781-COHORTS       INDIA         observed             observed          -0.7104855   -0.7428053   -0.6781657
6 months    ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.2830286   -0.3471028   -0.2189545
6 months    kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -0.5931476   -0.6127125   -0.5735828
6 months    kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED       INDIA         observed             observed          -0.9490222   -1.0651720   -0.8328724
24 months   ki0047075b-MAL-ED       PERU          observed             observed           0.0972406   -0.0271085    0.2215898
24 months   ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH    observed             observed          -0.6115706   -0.7075788   -0.5155624
24 months   ki1114097-CONTENT       PERU          observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS       GUATEMALA     observed             observed          -0.2861905   -0.3461594   -0.2262216
24 months   ki1135781-COHORTS       INDIA         observed             observed          -0.6606874   -0.6938402   -0.6275347
24 months   ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.6564149   -0.7144543   -0.5983756
24 months   kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -1.2970418   -1.3203361   -1.2737475
24 months   kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -1.2231776   -1.2550332   -1.1913220


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.1642689   -0.1340185    0.4625562
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed           0.0277902   -0.2523505    0.3079308
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.0457182   -0.1202525    0.0288160
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed           0.1521929    0.0468342    0.2575515
Birth       ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0825560   -0.2187285    0.0536166
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0344128   -0.0910033    0.0221777
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.0279902   -0.0775755    0.0215952
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.0562862   -0.0967778   -0.0157946
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0076339   -0.0211888    0.0059211
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0174381   -0.0586546    0.0237783
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.0997966   -0.1292585    0.3288517
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -0.0069386   -0.1412091    0.1273320
6 months    ki0047075b-MAL-ED       PERU          optimal              observed          -0.0930918   -0.3100219    0.1238383
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1147881   -0.2285999   -0.0009764
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed           0.0872064    0.0081536    0.1662591
6 months    ki1114097-CONTENT       PERU          optimal              observed           0.0815608   -0.0948497    0.2579714
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed           0.0967776   -0.0943968    0.2879521
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.1181233   -0.1629761   -0.0732705
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.0927460   -0.2340836    0.0485916
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0197625   -0.0315081   -0.0080168
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0335030   -0.0764868    0.0094808
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.0860067   -0.2284011    0.0563876
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.1322910   -0.2599540   -0.0046281
24 months   ki0047075b-MAL-ED       PERU          optimal              observed           0.1246503   -0.1160816    0.3653823
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.0313258   -0.1464615    0.0838100
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.0919839   -0.3020254    0.1180576
24 months   ki1114097-CONTENT       PERU          optimal              observed          -0.0589828   -0.3437049    0.2257393
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.2150942   -0.3461125   -0.0840759
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.0900459   -0.1317030   -0.0483888
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.1023211   -0.2333778    0.0287355
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0106330   -0.0276690    0.0064029
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed           0.0103784   -0.0155657    0.0363225
