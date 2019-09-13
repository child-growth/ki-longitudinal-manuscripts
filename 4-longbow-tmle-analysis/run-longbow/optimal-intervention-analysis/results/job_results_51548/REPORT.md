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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               119     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               112     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                27     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0               148     175
Birth       ki0047075b-MAL-ED          INDIA                          1                15     190
Birth       ki0047075b-MAL-ED          INDIA                          0               175     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                23     170
Birth       ki0047075b-MAL-ED          NEPAL                          0               147     170
Birth       ki0047075b-MAL-ED          PERU                           1               106     256
Birth       ki0047075b-MAL-ED          PERU                           0               150     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               208     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               118     119
Birth       ki1000109-EE               PAKISTAN                       1                 1       2
Birth       ki1000109-EE               PAKISTAN                       0                 1       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             15096   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3986   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               619     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               148     767
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
6 months    ki1000109-EE               PAKISTAN                       1               218     372
6 months    ki1000109-EE               PAKISTAN                       0               154     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1               404     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0               142     546
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13223   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3459   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3332    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               927    4259
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
24 months   ki1113344-GMS-Nepal        NEPAL                          1               360     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120     480
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6677    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1865    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3289    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               885    4174


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/26d9020c-497b-454f-8744-e1137cedd52d/ebc286f6-8e6c-4cdf-a02c-cec6bd8c3f23/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.0506111   -1.2258488   -0.8753735
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.5955224   -1.0434703   -0.1475744
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed          -1.1101204   -1.2527154   -0.9675254
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.2965489   -0.5800014   -0.0130964
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.9692964   -1.1389472   -0.7996455
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.5365247   -1.5569890   -1.5160604
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.4918496   -1.5804586   -1.4032407
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.1445749   -1.3039329   -0.9852170
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2205950   -0.1983416    0.6395315
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -1.0920619   -1.2182053   -0.9659185
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.5625621   -0.6872572   -0.4378670
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -1.1781347   -1.3390743   -1.0171950
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -1.9442479   -2.1332196   -1.7552761
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.2578689   -1.3813614   -1.1343765
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -1.5464528   -1.7363771   -1.3565285
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2744013   -1.2999986   -1.2488040
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.3218775   -1.3701774   -1.2735775
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.9134167   -2.0732728   -1.7535607
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1007361   -0.3501507    0.1486786
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.7995287   -1.9290784   -1.6699790
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -1.2627845   -1.3915594   -1.1340096
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -1.6534179   -1.8253321   -1.4815038
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.8761054   -2.0268039   -1.7254069
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -2.0127544   -2.1603885   -1.8651203
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -2.0078280   -2.0405567   -1.9750994
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.7654148   -1.8075439   -1.7232857


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.0317316   -1.1618799   -0.9015833
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed          -0.7263429   -0.8876385   -0.5650472
Birth       ki0047075b-MAL-ED     INDIA        observed             observed          -1.0250526   -1.1724135   -0.8776918
Birth       ki0047075b-MAL-ED     NEPAL        observed             observed          -0.6964706   -0.8552823   -0.5376589
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.9311719   -1.0458986   -0.8164451
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.5502914   -1.5696478   -1.5309349
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.5207432   -1.6058630   -1.4356233
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.2140355   -1.3320337   -1.0960372
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -1.2193606   -1.3390323   -1.0996890
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed          -0.5595745   -0.6727496   -0.4463993
6 months    ki0047075b-MAL-ED     PERU         observed             observed          -1.3092999   -1.4165606   -1.2020392
6 months    ki1000109-EE          PAKISTAN     observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.3352045   -1.4146382   -1.2557708
6 months    ki1148112-LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3104400   -1.3338132   -1.2870668
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.3574771   -1.3964060   -1.3185482
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.9532775   -2.0781247   -1.8284303
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -1.8466071   -1.9736347   -1.7195796
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -1.2744493   -1.3952297   -1.1536689
24 months   ki0047075b-MAL-ED     PERU         observed             observed          -1.7294949   -1.8488722   -1.6101177
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.8951389   -1.9810871   -1.8091907
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -2.0122091   -2.0399540   -1.9844641
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.7762003   -1.8148628   -1.7375378


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.0188795   -0.1105972    0.1483563
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1308205   -0.5414006    0.2797596
Birth       ki0047075b-MAL-ED     INDIA        optimal              observed           0.0850677   -0.0042008    0.1743363
Birth       ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.3999217   -0.6738341   -0.1260093
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.0381245   -0.0798959    0.1561449
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0137667   -0.0214576   -0.0060758
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0288935   -0.0657050    0.0079180
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0694605   -0.1836832    0.0447622
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1695743   -0.5438106    0.2046621
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.1272987   -0.2057252   -0.0488723
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.0029877   -0.0586177    0.0645931
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.1311652   -0.2528243   -0.0095061
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.2562226   -0.4015236   -0.1109216
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0773356   -0.1696158    0.0149446
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0931428   -0.2439070    0.0576214
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0360387   -0.0470740   -0.0250034
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0355996   -0.0694169   -0.0017823
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0398608   -0.1731216    0.0934000
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1425704   -0.0495292    0.3346700
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0470784   -0.0907293   -0.0034276
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.0116648   -0.0575824    0.0342528
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -0.0760770   -0.2154875    0.0633334
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0190335   -0.1424608    0.1043939
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0521724   -0.0868505    0.1911953
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0043810   -0.0234809    0.0147188
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0107855   -0.0287015    0.0071306
