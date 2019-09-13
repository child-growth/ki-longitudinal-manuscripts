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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      14
Birth       ki1000108-IRC              INDIA                          0                14      14
Birth       ki1000109-EE               PAKISTAN                       1                 1       2
Birth       ki1000109-EE               PAKISTAN                       0                 1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                48      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      50
Birth       ki1101329-Keneba           GAMBIA                         1               484    1401
Birth       ki1101329-Keneba           GAMBIA                         0               917    1401
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1               218     372
6 months    ki1000109-EE               PAKISTAN                       0               154     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               136     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               447     583
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               144     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               433     577
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513
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
![](/tmp/856314e9-6552-497d-8df9-b633b5bde0b9/eb2a077a-a4e0-4c35-8619-6ed5bccb0a26/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/856314e9-6552-497d-8df9-b633b5bde0b9/eb2a077a-a4e0-4c35-8619-6ed5bccb0a26/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/856314e9-6552-497d-8df9-b633b5bde0b9/eb2a077a-a4e0-4c35-8619-6ed5bccb0a26/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.9806682   -1.1528348   -0.8085016
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0535316   -1.2504161   -0.8566471
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.4409592   -0.8724842   -0.0094342
Birth       ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.7574648   -0.9322306   -0.5826989
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                -1.5052108   -2.1533105   -0.8571111
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                -0.9924934   -1.1416844   -0.8433024
Birth       ki0047075b-MAL-ED         NEPAL        1                    NA                -0.6528467   -1.1115245   -0.1941688
Birth       ki0047075b-MAL-ED         NEPAL        0                    NA                -0.7305332   -0.8986970   -0.5623694
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.8917505   -1.0610748   -0.7224263
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.9558314   -1.0960981   -0.8155648
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0102388   -0.0970320    0.1175095
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 0.0264279   -0.0523896    0.1052455
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.5366181   -1.5570812   -1.5161550
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.5919490   -1.6252531   -1.5586448
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.4933208   -1.5819002   -1.4047414
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.6378157   -1.8270639   -1.4485675
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.1646831   -1.3244691   -1.0048972
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.2918853   -1.4687025   -1.1150681
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.2136575   -0.2002381    0.6275531
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0227705   -0.1292834    0.1748245
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -1.6789940   -2.3077978   -1.0501903
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -1.1901304   -1.3089176   -1.0713432
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.8218825   -1.1698056   -0.4739593
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.5429932   -0.6629972   -0.4229892
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -1.1648668   -1.3236265   -1.0061071
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -1.4148721   -1.5586545   -1.2710898
6 months    ki1000109-EE              PAKISTAN     1                    NA                -2.3783175   -2.5349720   -2.2216631
6 months    ki1000109-EE              PAKISTAN     0                    NA                -1.9453314   -2.1317206   -1.7589422
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.0845061   -1.2251910   -0.9438211
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.0869834   -1.1771990   -0.9967679
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.8978988   -0.9875559   -0.8082417
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.9474735   -1.0065561   -0.8883909
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.2910668   -1.3810776   -1.2010561
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.4466099   -1.6125504   -1.2806694
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -1.6917856   -1.9866035   -1.3969678
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                -1.6271150   -1.7578828   -1.4963472
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.2732283   -1.2982075   -1.2482492
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.4434311   -1.4885886   -1.3982737
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.3134898   -1.3553886   -1.2715910
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.5011974   -1.5935292   -1.4088655
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -2.0012346   -2.1880867   -1.8143825
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.9019482   -2.0630294   -1.7408671
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0788948   -0.4927741    0.3349844
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0535639   -0.1313791    0.2385070
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -2.6730182   -3.1440048   -2.2020316
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -1.8016143   -1.9309578   -1.6722708
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -1.3644186   -1.7251778   -1.0036594
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -1.2651308   -1.3940090   -1.1362525
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -1.6137962   -1.7927932   -1.4347991
24 months   ki0047075b-MAL-ED         PERU         0                    NA                -1.8136820   -1.9716714   -1.6556927
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.6621994   -1.8158845   -1.5085144
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.5524585   -1.6487606   -1.4561563
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -1.5063201   -1.5915520   -1.4210881
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -1.6043308   -1.6708217   -1.5378399
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.8936182   -1.9876635   -1.7995730
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.8745164   -2.0740469   -1.6749859
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -2.1390470   -2.4298772   -1.8482168
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -1.9503659   -2.1077009   -1.7930308
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -2.0072656   -2.0363781   -1.9781531
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -2.0247384   -2.0758642   -1.9736125
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.7575661   -1.7993652   -1.7157671
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.8383635   -1.9189296   -1.7577973


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.0317316   -1.1618799   -0.9015833
Birth       ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.7263429   -0.8876385   -0.5650472
Birth       ki0047075b-MAL-ED         INDIA        NA                   NA                -1.0250526   -1.1724135   -0.8776918
Birth       ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.6964706   -0.8552823   -0.5376589
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                -0.9311719   -1.0458986   -0.8164451
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                 0.0162027   -0.0517648    0.0841702
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.5502914   -1.5696478   -1.5309349
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.5207432   -1.6058630   -1.4356233
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.2140355   -1.3320337   -1.0960372
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -1.2193606   -1.3390323   -1.0996890
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.5595745   -0.6727496   -0.4463993
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                -1.3092999   -1.4165606   -1.2020392
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.3352045   -1.4146382   -1.2557708
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3104400   -1.3338132   -1.2870668
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.3574771   -1.3964060   -1.3185482
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.9532775   -2.0781247   -1.8284303
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -1.8466071   -1.9736347   -1.7195796
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -1.2744493   -1.3952297   -1.1536689
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                -1.7294949   -1.8488722   -1.6101177
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -1.5721046   -1.6251725   -1.5190368
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.8951389   -1.9810871   -1.8091907
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -2.0122091   -2.0399540   -1.9844641
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.7762003   -1.8148628   -1.7375378


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0728634   -0.3355598    0.1898330
Birth       ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.3165055   -0.7813153    0.1483042
Birth       ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA        0                    1                  0.5127174   -0.1522791    1.1777140
Birth       ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0776866   -0.5669380    0.4115649
Birth       ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 -0.0640809   -0.2735880    0.1454262
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                  0.0161892   -0.1065378    0.1389161
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0553309   -0.0887316   -0.0219301
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1444949   -0.3403102    0.0513205
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1272021   -0.3661957    0.1117914
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.1908870   -0.6302716    0.2484976
6 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA        0                    1                  0.4888636   -0.1511467    1.1288740
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.2788893   -0.0899531    0.6477316
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 -0.2500053   -0.4646431   -0.0353675
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  0.4329861    0.1941169    0.6718552
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0024774   -0.1696717    0.1647169
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.0495748   -0.1565600    0.0574105
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.1555431   -0.3444735    0.0333873
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.0646706   -0.2548601    0.3842013
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.1702028   -0.2173597   -0.1230459
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1877075   -0.2878341   -0.0875810
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0992864   -0.1481475    0.3467203
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.1324588   -0.3199865    0.5849041
24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.8714039    0.3830500    1.3597578
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.0992878   -0.2841297    0.4827054
24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                 -0.1998859   -0.4384754    0.0387037
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.1097410   -0.0689714    0.2884534
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0980108   -0.2045473    0.0085258
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0191018   -0.2014259    0.2396295
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.1886811   -0.1430508    0.5204130
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0174728   -0.0690737    0.0341281
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0807973   -0.1669298    0.0053351


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0510634   -0.1798510    0.0777241
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.2853836   -0.6819997    0.1112324
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                 0.4801582   -0.1333816    1.0936979
Birth       ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0436239   -0.4677816    0.3805337
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.0394213   -0.1628031    0.0839604
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0059640   -0.0745649    0.0864928
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0136733   -0.0214357   -0.0059108
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0274223   -0.0641949    0.0093502
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0493523   -0.1633163    0.0646117
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.1626368   -0.5307661    0.2054925
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.4596334   -0.1332745    1.0525414
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.2623080   -0.0629313    0.5875473
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.1444330   -0.2716085   -0.0172575
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1778471    0.0771722    0.2785219
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0025980   -0.1309599    0.1257639
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0352120   -0.1098296    0.0394056
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0441377   -0.0949370    0.0066617
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0521900   -0.2156931    0.3200731
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0372117   -0.0474975   -0.0269258
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0439873   -0.0656386   -0.0223360
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0479571   -0.0655568    0.1614710
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1207292   -0.2575907    0.4990490
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.8264110    0.3714331    1.2813890
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0899693   -0.2473962    0.4273347
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -0.1156988   -0.2551652    0.0237677
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0760816   -0.0588752    0.2110384
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0657846   -0.1364862    0.0049170
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0015206   -0.0557371    0.0526958
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.1784650   -0.0960347    0.4529647
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0049435   -0.0162703    0.0063833
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0186342   -0.0365152   -0.0007531
