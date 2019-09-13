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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               164     227
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                63     227
Birth       ki0047075b-MAL-ED          BRAZIL                         1                65     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0               112     177
Birth       ki0047075b-MAL-ED          INDIA                          1               121     193
Birth       ki0047075b-MAL-ED          INDIA                          0                72     193
Birth       ki0047075b-MAL-ED          NEPAL                          1                60     166
Birth       ki0047075b-MAL-ED          NEPAL                          0               106     166
Birth       ki0047075b-MAL-ED          PERU                           1                64     265
Birth       ki0047075b-MAL-ED          PERU                           0               201     265
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                32     231
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               199     231
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                76     114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0       9
Birth       ki1000108-IRC              INDIA                          0                 9       9
Birth       ki1000109-EE               PAKISTAN                       1                 1       1
Birth       ki1000109-EE               PAKISTAN                       0                 0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                45      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      47
Birth       ki1101329-Keneba           GAMBIA                         1              1150    1305
Birth       ki1101329-Keneba           GAMBIA                         0               155    1305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             13731   15136
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1405   15136
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                28      31
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 3      31
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
6 months    ki1000109-EE               PAKISTAN                       1               349     375
6 months    ki1000109-EE               PAKISTAN                       0                26     375
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               412     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               170     582
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             14758   16253
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1495   16253
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               407     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               171     578
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1421
24 months   ki1101329-Keneba           GAMBIA                         0               147    1421
24 months   ki1113344-GMS-Nepal        NEPAL                          1               336     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                68     404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              7492    8313
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               821    8313
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               136     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     151


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
![](/tmp/91a0916c-03e7-4558-9c04-959444be8c40/874ee0a8-bdd8-4cdd-af96-8ab785c3ee18/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/91a0916c-03e7-4558-9c04-959444be8c40/874ee0a8-bdd8-4cdd-af96-8ab785c3ee18/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/91a0916c-03e7-4558-9c04-959444be8c40/874ee0a8-bdd8-4cdd-af96-8ab785c3ee18/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.9448164   -1.1116786   -0.7779541
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.0097654   -1.2698708   -0.7496601
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2178191   -0.0349980    0.4706361
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.4676321    0.2402816    0.6949826
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.0151290   -1.1979778   -0.8322802
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -1.1912860   -1.4096588   -0.9729131
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.7843740   -0.9833499   -0.5853981
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.9922241   -1.1646960   -0.8197521
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.0767046   -0.1432930    0.2967022
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.0859629   -0.2199821    0.0480564
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0591367   -0.4815715    0.3632982
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0520768   -0.2117981    0.1076446
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7969813    0.5433249    1.0506376
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.8248862    0.5542802    1.0954921
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 1.7081572    1.6186232    1.7976913
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                 1.3470633    1.0691322    1.6249944
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.7193957   -0.7401106   -0.6986808
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.7483656   -0.8071513   -0.6895799
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1200790   -0.2738817    0.0337237
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.1829553   -0.4226217    0.0567111
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 1.0541998    0.7953980    1.3130017
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.9133351    0.7018571    1.1248130
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.6284404   -0.7694521   -0.4874287
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.8170718   -1.0538436   -0.5803000
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1263201   -0.0869899    0.3396302
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0834131   -0.0786050    0.2454311
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 1.0780903    0.8630654    1.2931152
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 1.0381651    0.8921317    1.1841984
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.4675362    0.1393352    0.7957372
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.5483644    0.3782020    0.7185268
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7230950    0.4698095    0.9763806
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.4659810    0.3112334    0.6207286
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.6560116   -0.7700527   -0.5419705
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -1.5773164   -2.0611096   -1.0935233
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.6465859   -0.7848454   -0.5083265
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.6556227   -1.1386877   -0.1725576
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.1463948   -0.2425114   -0.0502783
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.3570393   -0.5254205   -0.1886581
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.1808667   -0.2392032   -0.1225303
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.4129215   -0.5847362   -0.2411068
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.6210909   -0.7289223   -0.5132596
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.6044842   -0.8401137   -0.3688546
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.5852635   -0.6060681   -0.5644589
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.6759243   -0.7394915   -0.6123572
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.3610374   -0.5873043   -0.1347705
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.4410490   -0.8813646   -0.0007335
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.8200256   -0.9677057   -0.6723455
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.7240692   -0.9347202   -0.5134183
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2749693   -0.0026658    0.5526044
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.5443878    0.2624613    0.8263142
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.9923580   -1.1317174   -0.8529986
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.9269983   -1.1278308   -0.7261659
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.2723276   -0.4581058   -0.0865494
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.4407997   -0.5855213   -0.2960782
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0910843   -0.1080998    0.2902684
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.1342431   -0.0057175    0.2742038
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.6690062    0.3907369    0.9472755
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.3855856    0.2532492    0.5179219
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0135276   -0.2307292    0.2036740
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0846890   -0.0703130    0.2396910
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.9149168   -1.0124452   -0.8173883
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.8242106   -0.9809368   -0.6674845
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.7749476   -0.8291006   -0.7207946
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.9698601   -1.1146263   -0.8250939
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1501236   -1.2613826   -1.0388646
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.0396188   -1.2650196   -0.8142180
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.3157064   -1.3409432   -1.2904696
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.1912734   -1.2624152   -1.1201317
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.0113854   -1.1724186   -0.8503521
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.9237378   -1.4380822   -0.4093934


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.9701762   -1.1093516   -0.8310008
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.3837288    0.2059602    0.5614974
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.0824352   -1.2259825   -0.9388879
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.9184337   -1.0582074   -0.7786600
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0558491   -0.1687562    0.0570581
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0290476   -0.1772448    0.1191495
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7865789    0.5832028    0.9899551
Birth       ki1101329-Keneba          GAMBIA                         NA                   NA                 1.6646743    1.5791251    1.7502236
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.7222456   -0.7423351   -0.7021562
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1245816   -0.2544517    0.0052886
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.7105222   -0.8368775   -0.5841669
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.1010587   -0.0308005    0.2329178
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                 1.0571296    0.9346064    1.1796528
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.5435551    0.3895443    0.6975659
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5063403    0.3745918    0.6380888
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                -0.7218667   -0.8355727   -0.6081607
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.2057405   -0.2614576   -0.1500234
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.6194068   -0.7173394   -0.5214742
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.5929896   -0.6128338   -0.5731455
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.3657303   -0.5647992   -0.1666615
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.8080769   -0.9302432   -0.6859106
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9551111   -1.0714034   -0.8388188
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.3795556   -0.4938120   -0.2652991
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                 0.1242714    0.0054301    0.2431126
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.4157543    0.2953789    0.5361297
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0434286   -0.0830724    0.1699295
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.7930925   -0.8442611   -0.7419240
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.1267450   -1.2257791   -1.0277110
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3031012   -1.3269655   -1.2792368
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.0137086   -1.1659964   -0.8614208


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0649491   -0.3751521    0.2452539
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.2498130   -0.0771297    0.5767557
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                 -0.1761570   -0.4550355    0.1027216
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.2078501   -0.4554813    0.0397812
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.1626675   -0.4199964    0.0946614
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0070599   -0.4439006    0.4580204
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0279049   -0.3443638    0.4001736
Birth       ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA                         0                    1                 -0.3610939   -0.6530936   -0.0690942
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0289699   -0.0886089    0.0306691
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0628763   -0.3468325    0.2210799
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.1408648   -0.4735681    0.1918386
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.1886314   -0.4651232    0.0878604
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0429070   -0.3069423    0.2211282
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                 -0.0399252   -0.2982527    0.2184023
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0808282   -0.2894761    0.4511324
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2571141   -0.5548428    0.0406147
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.9213048   -1.4190465   -0.4235631
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0090367   -0.5362411    0.5181676
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.2106445   -0.4040564   -0.0172325
6 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 -0.2320548   -0.4122856   -0.0518240
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0166068   -0.2426345    0.2758480
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0906608   -0.1566694   -0.0246522
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0800117   -0.5786713    0.4186480
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0959564   -0.1599134    0.3518261
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.2694184   -0.1253555    0.6641923
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0653596   -0.1797366    0.3104559
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.1684722   -0.4047613    0.0678170
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0431588   -0.1983151    0.2846328
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.2834206   -0.5958392    0.0289980
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0982166   -0.1690904    0.3655236
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0907061   -0.0928999    0.2743122
24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.1949126   -0.3484883   -0.0413368
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.1105048   -0.1425256    0.3635352
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.1244329    0.0492772    0.1995886
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0876475   -0.4524572    0.6277523


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0253599   -0.1093683    0.0586485
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1659098   -0.0415468    0.3733663
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0673063   -0.1716583    0.0370457
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1340597   -0.2923500    0.0242306
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.1325537   -0.3307734    0.0656660
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0300891   -0.3618185    0.4219966
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0104023   -0.2696141    0.2488095
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                -0.0434829   -0.0783408   -0.0086250
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0028499   -0.0082454    0.0025456
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0045026   -0.0832488    0.0742436
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0824773   -0.2873630    0.1224084
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0820818   -0.1917857    0.0276222
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0252615   -0.1918645    0.1413415
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0209607   -0.2156576    0.1737362
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0760189   -0.2480218    0.4000596
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2167548   -0.4310246   -0.0024849
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0658550   -0.1076444   -0.0240657
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0116999   -0.0141795    0.0375792
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0619758   -0.1186342   -0.0053173
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0248738   -0.0457263   -0.0040212
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0016841   -0.0429224    0.0462906
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0077261   -0.0135308   -0.0019214
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0046930   -0.0613794    0.0519935
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0119487   -0.0580279    0.0819253
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1716579   -0.0687056    0.4120214
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0372469   -0.0641731    0.1386668
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1072280   -0.2578403    0.0433843
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0331871   -0.1505565    0.2169306
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.2532519   -0.5303918    0.0238881
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0569561   -0.1385279    0.2524402
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0269756   -0.0272115    0.0811626
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0181450   -0.0343583   -0.0019316
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0233786   -0.0194310    0.0661881
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0126052    0.0049845    0.0202259
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0023232   -0.0526455    0.0479990
