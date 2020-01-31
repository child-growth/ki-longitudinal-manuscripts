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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
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
* month
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
* delta_month
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

agecat      studyid                    country                        exclfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 32     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                189     221
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 60      65
Birth       ki0047075b-MAL-ED          INDIA                          1                  1      42
Birth       ki0047075b-MAL-ED          INDIA                          0                 41      42
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                 26      26
Birth       ki0047075b-MAL-ED          PERU                           1                  5     223
Birth       ki0047075b-MAL-ED          PERU                           0                218     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                104     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       ki1000108-IRC              INDIA                          1                  0       4
Birth       ki1000108-IRC              INDIA                          0                  4       4
Birth       ki1000109-EE               PAKISTAN                       1                  3       7
Birth       ki1000109-EE               PAKISTAN                       0                  4       7
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                119     490
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                371     490
Birth       ki1101329-Keneba           GAMBIA                         1                363    1253
Birth       ki1101329-Keneba           GAMBIA                         0                890    1253
Birth       ki1113344-GMS-Nepal        NEPAL                          1                422     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                104     526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               8322   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2359   10681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1994    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                523    2517
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 30     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                210     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                197     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  9     233
6 months    ki0047075b-MAL-ED          INDIA                          0                224     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  4     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                231     235
6 months    ki0047075b-MAL-ED          PERU                           1                  6     272
6 months    ki0047075b-MAL-ED          PERU                           0                266     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                249     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                239     243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
6 months    ki1000108-IRC              INDIA                          1                  0       4
6 months    ki1000108-IRC              INDIA                          0                  4       4
6 months    ki1000109-EE               PAKISTAN                       1                  4       9
6 months    ki1000109-EE               PAKISTAN                       0                  5       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                145     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                458     603
6 months    ki1101329-Keneba           GAMBIA                         1                507    1790
6 months    ki1101329-Keneba           GAMBIA                         0               1283    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105     527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6578    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1974    8552
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3241    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                944    4185
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                187     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                158     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  9     224
24 months   ki0047075b-MAL-ED          INDIA                          0                215     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  4     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                223     227
24 months   ki0047075b-MAL-ED          PERU                           1                  4     201
24 months   ki0047075b-MAL-ED          PERU                           0                197     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                234     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                210     213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
24 months   ki1000108-IRC              INDIA                          1                  0       4
24 months   ki1000108-IRC              INDIA                          0                  4       4
24 months   ki1000109-EE               PAKISTAN                       1                  0       3
24 months   ki1000109-EE               PAKISTAN                       0                  3       3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                141     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                436     577
24 months   ki1101329-Keneba           GAMBIA                         1                424    1394
24 months   ki1101329-Keneba           GAMBIA                         0                970    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          1                363     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     446
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3325    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1009    4334
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3145    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                904    4049


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f9af882f-3196-46fe-be2a-50f16988c494/b3396bce-99a6-4414-a145-3fcacbdc4a24/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.0696417   -1.2213202   -0.9179633
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.6156058   -0.8968173   -0.3343943
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -1.1149497   -1.3362902   -0.8936093
Birth       ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.8715956   -0.9734447   -0.7697465
Birth       ki1101329-Keneba      GAMBIA       optimal              observed           0.0323984   -0.0635572    0.1283541
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.0055592   -1.1022870   -0.9088314
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.5824372   -1.6154916   -1.5493829
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.5543837   -1.6298612   -1.4789061
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.3824252   -1.6218004   -1.1430500
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2067433   -0.6401101    1.0535968
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -1.0194670   -2.1448259    0.1058919
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -1.5771211   -1.7438948   -1.4103474
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -1.1163131   -1.2276985   -1.0049278
6 months    ki1101329-Keneba      GAMBIA       optimal              observed          -0.9549711   -1.0429455   -0.8669966
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.3003037   -1.4182735   -1.1823339
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -1.5679753   -1.7248164   -1.4111343
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.3108915   -1.3458930   -1.2758900
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.3162517   -1.3628587   -1.2696446
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -2.2195161   -2.4341179   -2.0049143
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.2269048   -0.7114073    0.2575977
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.8769384   -2.0039249   -1.7499518
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -1.6264571   -1.7280123   -1.5249020
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -1.5310562   -1.6220279   -1.4400846
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.9181262   -2.0484622   -1.7877902
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -2.0103827   -2.2442732   -1.7764923
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.9970485   -2.0501099   -1.9439871
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.7801683   -1.8232444   -1.7370921


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.0802262   -1.2151319   -0.9453206
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.8913004   -1.0115814   -0.7710195
Birth       ki1017093b-PROVIDE    BANGLADESH   observed             observed          -0.8769592   -0.9559693   -0.7979491
Birth       ki1101329-Keneba      GAMBIA       observed             observed           0.0318156   -0.0392907    0.1029220
Birth       ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.0299620   -1.1192344   -0.9406896
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.5762700   -1.6018685   -1.5506716
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.5234724   -1.5733491   -1.4735957
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.2072639   -1.3248889   -1.0896388
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -1.2055794   -1.3250712   -1.0860876
6 months    ki0047075b-MAL-ED     PERU         observed             observed          -1.3230913   -1.4314947   -1.2146879
6 months    ki1017093b-PROVIDE    BANGLADESH   observed             observed          -1.0855583   -1.1591292   -1.0119875
6 months    ki1101329-Keneba      GAMBIA       observed             observed          -0.9355822   -0.9858754   -0.8852889
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.3337634   -1.4135810   -1.2539459
6 months    ki1148112-LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3152982   -1.3444394   -1.2861570
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.3514886   -1.3904044   -1.3125729
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -1.8906250   -2.0165920   -1.7646580
24 months   ki1017093b-PROVIDE    BANGLADESH   observed             observed          -1.6022704   -1.6857342   -1.5188065
24 months   ki1101329-Keneba      GAMBIA       observed             observed          -1.5981956   -1.6534947   -1.5428965
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.8830717   -1.9710591   -1.7950844
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -2.0071989   -2.0453355   -1.9690623
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.7922845   -1.8313538   -1.7532153


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0105845   -0.0560517    0.0348827
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.0603942   -0.1549570    0.0341686
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.2236493    0.0075750    0.4397236
Birth       ki1017093b-PROVIDE    BANGLADESH   optimal              observed          -0.0053635   -0.0634355    0.0527084
Birth       ki1101329-Keneba      GAMBIA       optimal              observed          -0.0005828   -0.0706310    0.0694654
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0244028   -0.0673481    0.0185426
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed           0.0061672   -0.0140057    0.0263401
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed           0.0309113   -0.0257067    0.0875292
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.1751613   -0.0492620    0.3995845
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.1591676   -0.9747955    0.6564603
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.1861124   -1.2854375    0.9132127
6 months    ki0047075b-MAL-ED     PERU         optimal              observed           0.2540298    0.1139752    0.3940844
6 months    ki1017093b-PROVIDE    BANGLADESH   optimal              observed           0.0307548   -0.0618168    0.1233264
6 months    ki1101329-Keneba      GAMBIA       optimal              observed           0.0193889   -0.0547908    0.0935686
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0334598   -0.1254705    0.0585510
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0716202   -0.1879986    0.0447581
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0044066   -0.0228978    0.0140845
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0352370   -0.0657612   -0.0047128
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.2411198    0.0521996    0.4300401
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2330192   -0.2369799    0.7030182
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0136866   -0.0460640    0.0186908
24 months   ki1017093b-PROVIDE    BANGLADESH   optimal              observed           0.0241868   -0.0300765    0.0784501
24 months   ki1101329-Keneba      GAMBIA       optimal              observed          -0.0671394   -0.1448562    0.0105775
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed           0.0350545   -0.0558353    0.1259443
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0452505   -0.1194122    0.2099131
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0101504   -0.0430288    0.0227280
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0121162   -0.0312195    0.0069870
