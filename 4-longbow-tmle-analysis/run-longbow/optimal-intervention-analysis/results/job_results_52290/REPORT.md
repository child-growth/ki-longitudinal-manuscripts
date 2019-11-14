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

**Intervention Variable:** impfloor

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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              196     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               17     213
Birth       ki0047075b-MAL-ED          BRAZIL                         1               58      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2      60
Birth       ki0047075b-MAL-ED          INDIA                          1               35      41
Birth       ki0047075b-MAL-ED          INDIA                          0                6      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                9      25
Birth       ki0047075b-MAL-ED          NEPAL                          0               16      25
Birth       ki0047075b-MAL-ED          PERU                           1               39     215
Birth       ki0047075b-MAL-ED          PERU                           0              176     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               87      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                9      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                7     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              112     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               72      72
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      72
Birth       ki1000108-IRC              INDIA                          1              287     287
Birth       ki1000108-IRC              INDIA                          0                0     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              533     605
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               72     605
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              491     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               48     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              558     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              174     732
Birth       ki1113344-GMS-Nepal        NEPAL                          1              100     544
Birth       ki1113344-GMS-Nepal        NEPAL                          0              444     544
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             2064   26604
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            24540   26604
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              307    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             2513    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              221     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               19     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1              207     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                2     209
6 months    ki0047075b-MAL-ED          INDIA                          1              220     235
6 months    ki0047075b-MAL-ED          INDIA                          0               15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1              103     229
6 months    ki0047075b-MAL-ED          NEPAL                          0              126     229
6 months    ki0047075b-MAL-ED          PERU                           1               58     270
6 months    ki0047075b-MAL-ED          PERU                           0              212     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              229     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               14     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              231     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              257     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     257
6 months    ki1000108-IRC              INDIA                          1              303     303
6 months    ki1000108-IRC              INDIA                          0                0     303
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              477     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              557     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               47     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1461   16716
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15255   16716
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4234    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              167     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     169
24 months   ki0047075b-MAL-ED          INDIA                          1              212     227
24 months   ki0047075b-MAL-ED          INDIA                          0               15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               98     221
24 months   ki0047075b-MAL-ED          NEPAL                          0              123     221
24 months   ki0047075b-MAL-ED          PERU                           1               49     201
24 months   ki0047075b-MAL-ED          PERU                           0              152     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              200     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              259     259
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     259
24 months   ki1000108-IRC              INDIA                          1              305     305
24 months   ki1000108-IRC              INDIA                          0                0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              377     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              533     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               45     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     374
24 months   ki1113344-GMS-Nepal        NEPAL                          0              302     374
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              667    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7875    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              566    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4180    4746


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/766f623e-462c-41e5-a1ee-956b2120cee1/0954f10c-02f8-41cf-87e4-eed8828cf8da/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.9405809   -1.4248821   -0.4562797
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.3002344   -1.5001559   -1.1003129
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.6536915   -1.1014977   -0.2058853
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.6240136   -0.8251765   -0.4228507
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.9331332   -1.3315721   -0.5346943
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0730700   -1.2741725   -0.8719674
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.8260164   -0.9195782   -0.7324545
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.8633320   -0.9422852   -0.7843789
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.9279623   -1.1144287   -0.7414959
Birth       ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.8106296   -1.0765353   -0.5447238
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.8041092   -0.9108360   -0.6973823
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.6132732   -1.8319654   -1.3945811
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.5139900   -1.9341048   -1.0938753
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.2299419   -1.7359535   -0.7239303
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.3685147   -0.5287501   -0.2082793
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -1.1625738   -1.3106298   -1.0145178
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -1.2894174   -1.5731460   -1.0056887
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3982855   -1.8044962   -0.9920749
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.3710980   -1.4656807   -1.2765152
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.9962040   -1.0763506   -0.9160574
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.2335516   -1.3571395   -1.1099637
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.9857892   -1.1922540   -0.7793244
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.2396104   -0.7342761    0.2550552
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.2049967   -1.2643006   -1.1456928
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.1988672   -1.3979952   -0.9997392
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.7677156   -2.1739493   -1.3614819
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -2.0398042   -2.3752002   -1.7044082
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.1021792   -1.3066477   -0.8977107
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -1.6305196   -1.8908880   -1.3701513
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -1.5023771   -1.8332696   -1.1714846
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.3934940   -2.9876161   -1.7993719
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -2.1577982   -2.2659771   -2.0496193
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.5196774   -1.6084757   -1.4308791
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.3564711   -1.4904248   -1.2225174
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -1.7828798   -2.0355657   -1.5301939
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.7844211   -0.9977785   -0.5710636
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -1.8464823   -1.9383813   -1.7545833
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -1.5560588   -1.7438373   -1.3682803


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -1.2070732   -1.5254820   -0.8886644
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.7828000   -1.1547571   -0.4108429
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.9141395   -1.0364098   -0.7918693
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1213445   -1.3341800   -0.9085090
Birth       ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9289256   -1.0178691   -0.8399821
Birth       ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.1177022   -1.2075344   -1.0278700
Birth       kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.1725229   -1.2005540   -1.1444918
Birth       kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.2031806   -1.3209873   -1.0853738
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -1.2069078   -1.3255669   -1.0882487
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.5534934   -0.6683107   -0.4386762
6 months    ki0047075b-MAL-ED       PERU                           observed             observed          -1.3293333   -1.4383829   -1.2202838
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.0554016   -1.1850591   -0.9257441
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3700408   -1.4930436   -1.2470380
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -1.4060639   -1.4948910   -1.3172368
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.3225094   -1.4115793   -1.2334396
6 months    ki1114097-CONTENT       PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -1.3358555   -1.3589365   -1.3127744
6 months    kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.3440174   -1.3812821   -1.3067527
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -1.2972172   -1.4192878   -1.1751466
24 months   ki0047075b-MAL-ED       PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6428302   -2.7790815   -2.5065788
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -2.2235968   -2.3265592   -2.1206344
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal     NEPAL                          observed             observed          -1.8396747   -1.9349390   -1.7444104
24 months   ki1114097-CONTENT       PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   kiGH5241-JiVitA-3       BANGLADESH                     observed             observed          -2.0193889   -2.0469721   -1.9918057
24 months   kiGH5241-JiVitA-4       BANGLADESH                     observed             observed          -1.7804046   -1.8159135   -1.7448956


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1124708   -0.5749940    0.3500525
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0931612   -0.2613202    0.4476427
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1291085   -0.4392947    0.1810777
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2901260   -0.4516140   -0.1286379
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.3807373    0.0089101    0.7525646
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0482746   -0.1471444    0.0505953
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.1029092   -0.1480345   -0.0577840
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0217700   -0.0438146    0.0002746
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0184678   -0.1448807    0.1818162
Birth       ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.3070726   -0.5669079   -0.0472374
Birth       kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.3684138   -0.4713678   -0.2654597
Birth       kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed           0.0896598   -0.1170803    0.2963998
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.3108095   -0.0799903    0.7016092
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0230341   -0.4651351    0.5112034
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1849787   -0.3128100   -0.0571475
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1667595   -0.2737155   -0.0598035
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2340158   -0.0301646    0.4981961
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0282447   -0.3690356    0.4255250
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0349659   -0.0659644   -0.0039675
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0954875   -0.1381650   -0.0528100
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0348733   -0.0561649    0.1259115
6 months    ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.3367203   -0.5366051   -0.1368355
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.0743113   -0.5369564    0.3883339
6 months    kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.1308587   -0.1903776   -0.0713399
6 months    kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.1451502   -0.3385994    0.0482990
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.2111995   -0.6048020    0.1824030
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed           0.1549583   -0.1441164    0.4540331
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1950380   -0.3484408   -0.0416351
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1239580   -0.3449241    0.0970081
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.1468035   -0.4704405    0.1768334
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2493361   -0.8332255    0.3345532
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0657986   -0.1051801   -0.0264172
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0827448   -0.1238006   -0.0416889
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0847935   -0.1903532    0.0207662
24 months   ki1113344-GMS-Nepal     NEPAL                          optimal              observed          -0.0567949   -0.3030491    0.1894593
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.0882016   -0.0183827    0.1947858
24 months   kiGH5241-JiVitA-3       BANGLADESH                     optimal              observed          -0.1729066   -0.2648247   -0.0809885
24 months   kiGH5241-JiVitA-4       BANGLADESH                     optimal              observed          -0.2243458   -0.4061415   -0.0425500
