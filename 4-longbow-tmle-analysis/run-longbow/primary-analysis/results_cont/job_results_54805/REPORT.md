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

**Intervention Variable:** predfeed3

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

agecat      studyid               country                        predfeed3    n_cell       n  outcome_variable 
----------  --------------------  -----------------------------  ----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               176     215  haz              
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                39     215  haz              
Birth       ki0047075b-MAL-ED     BRAZIL                         1                24      57  haz              
Birth       ki0047075b-MAL-ED     BRAZIL                         0                33      57  haz              
Birth       ki0047075b-MAL-ED     INDIA                          1                29      41  haz              
Birth       ki0047075b-MAL-ED     INDIA                          0                12      41  haz              
Birth       ki0047075b-MAL-ED     NEPAL                          1                14      26  haz              
Birth       ki0047075b-MAL-ED     NEPAL                          0                12      26  haz              
Birth       ki0047075b-MAL-ED     PERU                           1               150     223  haz              
Birth       ki0047075b-MAL-ED     PERU                           0                73     223  haz              
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                33     100  haz              
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                67     100  haz              
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                26     102  haz              
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                76     102  haz              
Birth       ki1000109-EE          PAKISTAN                       1                35      35  haz              
Birth       ki1000109-EE          PAKISTAN                       0                 0      35  haz              
Birth       ki1113344-GMS-Nepal   NEPAL                          1               380     458  haz              
Birth       ki1113344-GMS-Nepal   NEPAL                          0                78     458  haz              
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1             12017   13276  haz              
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0              1259   13276  haz              
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1               105     116  haz              
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                11     116  haz              
6 months    ki0047075b-MAL-ED     BANGLADESH                     1               191     233  haz              
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                42     233  haz              
6 months    ki0047075b-MAL-ED     BRAZIL                         1                93     187  haz              
6 months    ki0047075b-MAL-ED     BRAZIL                         0                94     187  haz              
6 months    ki0047075b-MAL-ED     INDIA                          1               147     210  haz              
6 months    ki0047075b-MAL-ED     INDIA                          0                63     210  haz              
6 months    ki0047075b-MAL-ED     NEPAL                          1               113     227  haz              
6 months    ki0047075b-MAL-ED     NEPAL                          0               114     227  haz              
6 months    ki0047075b-MAL-ED     PERU                           1               176     270  haz              
6 months    ki0047075b-MAL-ED     PERU                           0                94     270  haz              
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                63     244  haz              
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               181     244  haz              
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                64     212  haz              
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               148     212  haz              
6 months    ki1000109-EE          PAKISTAN                       1                39      39  haz              
6 months    ki1000109-EE          PAKISTAN                       0                 0      39  haz              
6 months    ki1113344-GMS-Nepal   NEPAL                          1               367     441  haz              
6 months    ki1113344-GMS-Nepal   NEPAL                          0                74     441  haz              
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1              8516    9328  haz              
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0               812    9328  haz              
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                76      88  haz              
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                12      88  haz              
24 months   ki0047075b-MAL-ED     BANGLADESH                     1               168     205  haz              
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                37     205  haz              
24 months   ki0047075b-MAL-ED     BRAZIL                         1                79     152  haz              
24 months   ki0047075b-MAL-ED     BRAZIL                         0                73     152  haz              
24 months   ki0047075b-MAL-ED     INDIA                          1               139     202  haz              
24 months   ki0047075b-MAL-ED     INDIA                          0                63     202  haz              
24 months   ki0047075b-MAL-ED     NEPAL                          1               110     220  haz              
24 months   ki0047075b-MAL-ED     NEPAL                          0               110     220  haz              
24 months   ki0047075b-MAL-ED     PERU                           1               131     198  haz              
24 months   ki0047075b-MAL-ED     PERU                           0                67     198  haz              
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     228  haz              
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               168     228  haz              
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                54     184  haz              
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               130     184  haz              
24 months   ki1000109-EE          PAKISTAN                       1                20      20  haz              
24 months   ki1000109-EE          PAKISTAN                       0                 0      20  haz              
24 months   ki1113344-GMS-Nepal   NEPAL                          1               322     384  haz              
24 months   ki1113344-GMS-Nepal   NEPAL                          0                62     384  haz              
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              4434    4852  haz              
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               418    4852  haz              
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               136     151  haz              
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                15     151  haz              


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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/67527134-2bb8-4240-a35c-1f927e6ea8c7/e4461be0-118f-4042-8edf-8cff12352e39/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/67527134-2bb8-4240-a35c-1f927e6ea8c7/e4461be0-118f-4042-8edf-8cff12352e39/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/67527134-2bb8-4240-a35c-1f927e6ea8c7/e4461be0-118f-4042-8edf-8cff12352e39/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1265197   -1.2808720   -0.9721673
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.7759491   -1.0694775   -0.4824208
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.5493983   -1.0081025   -0.0906941
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.7186416   -1.0948688   -0.3424144
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                -1.3864975   -1.7939673   -0.9790278
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                -0.6928066   -1.1018449   -0.2837683
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.9454634   -1.3307944   -0.5601324
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.6588346   -1.3385461    0.0208768
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.8790553   -1.0157320   -0.7423785
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.8658223   -1.0428372   -0.6888073
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.4708778   -0.8445956   -0.0971600
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.6355617   -0.8840600   -0.3870634
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2581492   -1.6738504   -0.8424481
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0896259   -1.3550718   -0.8241801
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0276180   -1.1346921   -0.9205439
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.2232855   -1.4901031   -0.9564679
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.5902703   -1.6139289   -1.5666116
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.6162871   -1.6715657   -1.5610085
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.5689637   -1.7712253   -1.3667021
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.5866402   -2.3342373   -0.8390430
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1781714   -1.3030183   -1.0533245
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.4352086   -1.8190072   -1.0514100
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0691956   -0.2941101    0.1557189
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1914706   -0.0246999    0.4076410
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -1.2273469   -1.3784555   -1.0762383
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -1.1109064   -1.3530829   -0.8687299
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.6202246   -0.7828604   -0.4575889
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.5113240   -0.6648128   -0.3578352
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -1.2801705   -1.4081288   -1.1522122
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -1.3958211   -1.5850383   -1.2066038
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -1.0622463   -1.3211145   -0.8033781
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -1.0832968   -1.2358225   -0.9307711
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3427389   -1.5465661   -1.1389117
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4310665   -1.5866713   -1.2754617
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.3301600   -1.4251537   -1.2351662
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.5107069   -1.7454815   -1.2759324
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3200948   -1.3493031   -1.2908865
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.3650449   -1.4493559   -1.2807339
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.1168965   -1.3047219   -0.9290710
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.3236219   -1.9772737   -0.6699701
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.9917781   -2.1383496   -1.8452066
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -2.0432423   -2.2919552   -1.7945294
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1851951   -0.4244255    0.0540352
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1551926   -0.1050174    0.4154025
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -2.0298158   -2.1870282   -1.8726034
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -1.6137251   -1.8670004   -1.3604498
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -1.3736444   -1.5396841   -1.2076047
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -1.2119473   -1.3870590   -1.0368356
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -1.7188172   -1.8658918   -1.5717427
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                -1.7990714   -2.0203803   -1.5777624
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -1.6620054   -1.8850807   -1.4389301
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -1.6482534   -1.8178885   -1.4786182
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5513387   -2.7895343   -2.3131432
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7296813   -2.9078059   -2.5515567
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.8864692   -1.9881285   -1.7848098
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.8457899   -2.0680421   -1.6235378
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -2.0055513   -2.0433517   -1.9677510
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -2.1534736   -2.2626502   -2.0442970
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.7151439   -1.8628250   -1.5674628
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -2.1283211   -2.4072799   -1.8493623


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.0949767   -1.2319917   -0.9579618
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.6996491   -0.9856018   -0.4136965
Birth       ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.2075610   -1.5261540   -0.8889679
Birth       ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.8234615   -1.1896049   -0.4573182
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.8753812   -0.9932108   -0.7575515
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.5797000   -0.7788298   -0.3805702
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1086275   -1.3310338   -0.8862211
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.0555240   -1.1550843   -0.9559638
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.5928457   -1.6158667   -1.5698248
Birth       kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.6073276   -1.8105798   -1.4040753
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.2242918   -1.3439424   -1.1046413
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0609091   -0.0944768    0.2162950
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.2002381   -1.3274929   -1.0729833
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.5634068   -0.6769687   -0.4498449
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -1.3108735   -1.4182407   -1.2035062
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -1.0662227   -1.1965862   -0.9358591
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4030503   -1.5292443   -1.2768563
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.3499849   -1.4387386   -1.2612312
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3240051   -1.3526414   -1.2953689
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.1994318   -1.3808291   -1.0180345
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -2.0016585   -2.1303297   -1.8729874
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0162939   -0.1929098    0.1603221
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.8994059   -2.0346781   -1.7641337
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -1.3109318   -1.4313748   -1.1904888
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -1.7412963   -1.8630698   -1.6195228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -1.6424525   -1.7808926   -1.5040124
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6768207   -2.8213178   -2.5323235
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.8752995   -1.9688053   -1.7817937
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -2.0187325   -2.0554682   -1.9819968
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.7726490   -1.9111913   -1.6341067


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.3505705    0.0158102    0.6853308
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1692433   -0.7687590    0.4302725
Birth       ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA                          0                    1                  0.6936909    0.1131741    1.2742078
Birth       ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL                          0                    1                  0.2866288   -0.5151927    1.0884502
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                  0.0132330   -0.1846090    0.2110750
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1646839   -0.6157241    0.2863562
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1685233   -0.3289656    0.6660122
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1956675   -0.4833865    0.0920515
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0260168   -0.0818316    0.0297979
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0176765   -0.7716925    0.7363395
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.2570372   -0.6606562    0.1465819
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.2606662   -0.0540703    0.5754027
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.1164405   -0.1697547    0.4026357
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1089006   -0.1105513    0.3283524
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.1156506   -0.3404249    0.1091238
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0210505   -0.3224515    0.2803505
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0883276   -0.3434888    0.1668335
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1805470   -0.4340147    0.0729207
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0449501   -0.1302852    0.0403849
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.2067255   -0.8845828    0.4711319
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0514642   -0.3385694    0.2356410
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.3403877   -0.0142232    0.6949986
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.4160906    0.1172124    0.7149688
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1616971   -0.0805479    0.4039421
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                 -0.0802541   -0.3460031    0.1854948
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0137521   -0.2682581    0.2957622
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1783426   -0.4755437    0.1188586
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0406792   -0.2009076    0.2822660
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.1479223   -0.2601493   -0.0356953
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.4131773   -0.7284081   -0.0979464


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0315429   -0.0292240    0.0923099
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1502508   -0.5122483    0.2117467
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1789366   -0.0146686    0.3725418
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.1220019   -0.2549092    0.4989130
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0036741   -0.0604559    0.0678042
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1088222   -0.4187358    0.2010913
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1495218   -0.2246850    0.5237286
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0279060   -0.0768644    0.0210524
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0025755   -0.0078343    0.0026833
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0383639   -0.1112532    0.0345254
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0461205   -0.1112020    0.0189611
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1301047   -0.0271932    0.2874026
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0271088   -0.0587097    0.1129272
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0568179   -0.0545152    0.1681509
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0307030   -0.1084218    0.0470159
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0039764   -0.2361709    0.2282181
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0603114   -0.2392352    0.1186123
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0198249   -0.0637151    0.0240652
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0039104   -0.0113729    0.0035522
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0825354   -0.1708392    0.0057685
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0098804   -0.0607414    0.0409805
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1689013   -0.0034367    0.3412393
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1304098    0.0328694    0.2279502
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0627126   -0.0584632    0.1838883
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0224790   -0.1122465    0.0672884
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0195529   -0.1911647    0.2302706
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1254819   -0.3356964    0.0847325
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0111697   -0.0290440    0.0513834
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0131811   -0.0226982   -0.0036641
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0575051   -0.0967567   -0.0182535
