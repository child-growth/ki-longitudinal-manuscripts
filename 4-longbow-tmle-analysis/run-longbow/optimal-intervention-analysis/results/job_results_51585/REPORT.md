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
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            186     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             36     222
Birth       ki0047075b-MAL-ED       BRAZIL                         1            163     167
Birth       ki0047075b-MAL-ED       BRAZIL                         0              4     167
Birth       ki0047075b-MAL-ED       INDIA                          1             90     188
Birth       ki0047075b-MAL-ED       INDIA                          0             98     188
Birth       ki0047075b-MAL-ED       NEPAL                          1            165     166
Birth       ki0047075b-MAL-ED       NEPAL                          0              1     166
Birth       ki0047075b-MAL-ED       PERU                           1             60     243
Birth       ki0047075b-MAL-ED       PERU                           0            183     243
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              2     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0            209     211
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            109     109
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0             19      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1             21      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              2      23
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             43     449
Birth       ki1135781-COHORTS       GUATEMALA                      0            406     449
Birth       ki1135781-COHORTS       INDIA                          1           1685    4461
Birth       ki1135781-COHORTS       INDIA                          0           2776    4461
Birth       ki1135781-COHORTS       PHILIPPINES                    1            177    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0            949    1126
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          10724   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           4965   15689
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1            503     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            180     683
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
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            331     536
6 months    ki1017093b-PROVIDE      BANGLADESH                     1            554     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     0             26     580
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
24 months   ki1017093b-PROVIDE      BANGLADESH                     1            553     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0             24     577
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cad5bc7d-9db2-4768-ab18-11340414e3e7/dddc0be8-eaa3-44d8-bae9-966ff2c68b42/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.9514883   -1.3122886   -0.5906879
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed          -1.2342625   -1.4399739   -1.0285512
Birth       ki0047075b-MAL-ED       PERU          optimal              observed           0.0026944   -0.1389144    0.1443033
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -1.6504745   -2.1810623   -1.1198868
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed          -1.0466458   -1.3545423   -0.7387492
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.9499396   -1.0114048   -0.8884744
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.6508628   -0.7319648   -0.5697607
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.7099161   -0.7347321   -0.6851001
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.4047025   -0.5124393   -0.2969657
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.4129888   -0.6323065   -0.1936711
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed          -0.7774764   -0.9569859   -0.5979669
6 months    ki0047075b-MAL-ED       PERU          optimal              observed           1.0831533    0.8883104    1.2779961
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.3262328   -0.4644936   -0.1879720
6 months    ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -0.4322353   -0.6941760   -0.1702945
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.1073255   -0.2384972    0.0238462
6 months    ki1114097-CONTENT       PERU          optimal              observed           1.0723116    0.9499467    1.1946765
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed           0.2757479    0.0652245    0.4862714
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.5893037   -0.6437989   -0.5348086
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.2565828   -0.4149200   -0.0982457
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.5685628   -0.5945714   -0.5425541
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.3634597   -0.4069335   -0.3199858
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.7751216   -0.9074042   -0.6428390
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.8127007   -0.9959242   -0.6294772
24 months   ki0047075b-MAL-ED       PERU          optimal              observed           0.1601827    0.0055073    0.3148581
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.8477020   -0.9960156   -0.6993884
24 months   ki1017093b-PROVIDE      BANGLADESH    optimal              observed          -1.2121548   -1.5613651   -0.8629444
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.4700038   -0.7113574   -0.2286502
24 months   ki1114097-CONTENT       PERU          optimal              observed           0.4681615    0.2699242    0.6663988
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.0559329   -0.2092621    0.0973964
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.5798186   -0.6326868   -0.5269504
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.5270240   -0.6813797   -0.3726684
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -1.2770971   -1.3054177   -1.2487765
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -1.2040018   -1.2430205   -1.1649831


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.9902252   -1.1311070   -0.8493435
Birth       ki0047075b-MAL-ED       INDIA         observed             observed          -1.0536702   -1.1965043   -0.9108361
Birth       ki0047075b-MAL-ED       PERU          observed             observed          -0.0315638   -0.1495606    0.0864330
Birth       ki1017093-NIH-Birth     BANGLADESH    observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1135781-COHORTS       GUATEMALA     observed             observed          -0.9294432   -1.0701697   -0.7887168
Birth       ki1135781-COHORTS       INDIA         observed             observed          -0.9771733   -1.0119896   -0.9423570
Birth       ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.6841030   -0.7582767   -0.6099293
Birth       kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -0.7238913   -0.7437437   -0.7040388
Birth       kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.1354618   -0.2647919   -0.0061317
6 months    ki0047075b-MAL-ED       INDIA         observed             observed          -0.7004578   -0.8268704   -0.5740452
6 months    ki0047075b-MAL-ED       PERU          observed             observed           1.0376236    0.9141918    1.1610554
6 months    ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE      BANGLADESH    observed             observed          -0.2080201   -0.2927357   -0.1233045
6 months    ki1017093c-NIH-Crypto   BANGLADESH    observed             observed           0.0336790   -0.0458848    0.1132428
6 months    ki1114097-CONTENT       PERU          observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS       GUATEMALA     observed             observed           0.1458511    0.0589571    0.2327450
6 months    ki1135781-COHORTS       INDIA         observed             observed          -0.7104855   -0.7428053   -0.6781657
6 months    ki1135781-COHORTS       PHILIPPINES   observed             observed          -0.2830286   -0.3471028   -0.2189545
6 months    kiGH5241-JiVitA-3       BANGLADESH    observed             observed          -0.5931476   -0.6127125   -0.5735828
6 months    kiGH5241-JiVitA-4       BANGLADESH    observed             observed          -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED       BANGLADESH    observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA         observed             observed          -0.9496667   -1.0657716   -0.8335618
24 months   ki0047075b-MAL-ED       PERU          observed             observed           0.1064286   -0.0147106    0.2275677
24 months   ki1017093-NIH-Birth     BANGLADESH    observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH    observed             observed          -0.8896187   -0.9726240   -0.8066134
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
Birth       ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.0387369   -0.3628149    0.2853410
Birth       ki0047075b-MAL-ED       INDIA         optimal              observed           0.1805923    0.0351611    0.3260235
Birth       ki0047075b-MAL-ED       PERU          optimal              observed          -0.0342582   -0.0978593    0.0293429
Birth       ki1017093-NIH-Birth     BANGLADESH    optimal              observed           0.2265460   -0.0811328    0.5342248
Birth       ki1135781-COHORTS       GUATEMALA     optimal              observed           0.1172026   -0.1449246    0.3793297
Birth       ki1135781-COHORTS       INDIA         optimal              observed          -0.0272337   -0.0766113    0.0221439
Birth       ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.0332402   -0.0648761   -0.0016044
Birth       kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0139752   -0.0268578   -0.0010925
Birth       kiGH5241-JiVitA-4       BANGLADESH    optimal              observed           0.0363862   -0.0282912    0.1010637
6 months    ki0047075b-MAL-ED       BANGLADESH    optimal              observed           0.2775270    0.0745536    0.4805004
6 months    ki0047075b-MAL-ED       INDIA         optimal              observed           0.0770186   -0.0561880    0.2102253
6 months    ki0047075b-MAL-ED       PERU          optimal              observed          -0.0455297   -0.1971315    0.1060721
6 months    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.1126773   -0.2237551   -0.0015996
6 months    ki1017093b-PROVIDE      BANGLADESH    optimal              observed           0.2242152   -0.0345250    0.4829553
6 months    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed           0.1410045    0.0348586    0.2471504
6 months    ki1114097-CONTENT       PERU          optimal              observed          -0.0038798   -0.0309189    0.0231593
6 months    ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.1298969   -0.3279755    0.0681817
6 months    ki1135781-COHORTS       INDIA         optimal              observed          -0.1211818   -0.1663338   -0.0760298
6 months    ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.0264458   -0.1745614    0.1216698
6 months    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0245848   -0.0402934   -0.0088763
6 months    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0266999   -0.0506890   -0.0027108
24 months   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          -0.0457039   -0.0969485    0.0055407
24 months   ki0047075b-MAL-ED       INDIA         optimal              observed          -0.1369660   -0.2668959   -0.0070360
24 months   ki0047075b-MAL-ED       PERU          optimal              observed          -0.0537541   -0.1847445    0.0772363
24 months   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          -0.0638770   -0.1727217    0.0449677
24 months   ki1017093b-PROVIDE      BANGLADESH    optimal              observed           0.3225360   -0.0206461    0.6657182
24 months   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          -0.1415667   -0.3601963    0.0770628
24 months   ki1114097-CONTENT       PERU          optimal              observed           0.0986678   -0.1208561    0.3181916
24 months   ki1135781-COHORTS       GUATEMALA     optimal              observed          -0.2302576   -0.3764693   -0.0840459
24 months   ki1135781-COHORTS       INDIA         optimal              observed          -0.0808688   -0.1229020   -0.0388357
24 months   ki1135781-COHORTS       PHILIPPINES   optimal              observed          -0.1293909   -0.2736029    0.0148211
24 months   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          -0.0199447   -0.0358474   -0.0040419
24 months   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          -0.0191758   -0.0423154    0.0039637
