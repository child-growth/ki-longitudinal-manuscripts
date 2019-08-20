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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** exclfeed36

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

agecat      studyid                    country                        exclfeed36    stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       51     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1       11     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      151     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1       30     243
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       10     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        3     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      156     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1       16     185
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        2     198
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        3     198
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      164     198
Birth       ki0047075b-MAL-ED          INDIA                          0                   1       29     198
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       11     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      143     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1       18     172
Birth       ki0047075b-MAL-ED          PERU                           1                   0       13     273
Birth       ki0047075b-MAL-ED          PERU                           1                   1        2     273
Birth       ki0047075b-MAL-ED          PERU                           0                   0      228     273
Birth       ki0047075b-MAL-ED          PERU                           0                   1       30     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      212     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       24     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      102     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       18     121
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       3
Birth       ki1000108-IRC              INDIA                          1                   0        0       4
Birth       ki1000108-IRC              INDIA                          1                   1        0       4
Birth       ki1000108-IRC              INDIA                          0                   0        3       4
Birth       ki1000108-IRC              INDIA                          0                   1        1       4
Birth       ki1000109-EE               PAKISTAN                       1                   0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       2
Birth       ki1000109-EE               PAKISTAN                       0                   0        0       2
Birth       ki1000109-EE               PAKISTAN                       0                   1        1       2
Birth       ki1101329-Keneba           GAMBIA                         1                   0      347    1252
Birth       ki1101329-Keneba           GAMBIA                         1                   1       16    1252
Birth       ki1101329-Keneba           GAMBIA                         0                   0      838    1252
Birth       ki1101329-Keneba           GAMBIA                         0                   1       51    1252
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     7883   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     3272   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1762   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1029   13946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      413     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1      167     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0       91     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       56     727
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       52     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       11     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      144     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       33     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      186     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        6     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        5     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      185     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1       44     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       15     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      209     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       12     236
6 months    ki0047075b-MAL-ED          PERU                           1                   0       12     271
6 months    ki0047075b-MAL-ED          PERU                           1                   1        4     271
6 months    ki0047075b-MAL-ED          PERU                           0                   0      200     271
6 months    ki0047075b-MAL-ED          PERU                           0                   1       55     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      204     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       50     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      188     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       58     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        4       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
6 months    ki1000108-IRC              INDIA                          1                   0        0       4
6 months    ki1000108-IRC              INDIA                          1                   1        0       4
6 months    ki1000108-IRC              INDIA                          0                   0        3       4
6 months    ki1000108-IRC              INDIA                          0                   1        1       4
6 months    ki1000109-EE               PAKISTAN                       1                   0       94     367
6 months    ki1000109-EE               PAKISTAN                       1                   1      128     367
6 months    ki1000109-EE               PAKISTAN                       0                   0       83     367
6 months    ki1000109-EE               PAKISTAN                       0                   1       62     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       81     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      121     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       19     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      368     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       74     582
6 months    ki1101329-Keneba           GAMBIA                         1                   0      435    1790
6 months    ki1101329-Keneba           GAMBIA                         1                   1       72    1790
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1091    1790
6 months    ki1101329-Keneba           GAMBIA                         0                   1      192    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      342     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       81     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       75     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       28     526
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       80     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     8197   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2488   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1815   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      875   13375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2467    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      776    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      637    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      291    4171
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       30     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       28     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       84     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       69     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      147     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        6     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        1     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        5     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      131     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       90     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       12     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      167     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       47     228
24 months   ki0047075b-MAL-ED          PERU                           1                   0        6     200
24 months   ki0047075b-MAL-ED          PERU                           1                   1        6     200
24 months   ki0047075b-MAL-ED          PERU                           0                   0      121     200
24 months   ki0047075b-MAL-ED          PERU                           0                   1       67     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      154     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       84     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       60     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1      153     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        4       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        5       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
24 months   ki1000108-IRC              INDIA                          1                   0        0       4
24 months   ki1000108-IRC              INDIA                          1                   1        0       4
24 months   ki1000108-IRC              INDIA                          0                   0        1       4
24 months   ki1000108-IRC              INDIA                          0                   1        3       4
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       96     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       52     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      290     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1      138     576
24 months   ki1101329-Keneba           GAMBIA                         1                   0      299    1394
24 months   ki1101329-Keneba           GAMBIA                         1                   1      125    1394
24 months   ki1101329-Keneba           GAMBIA                         0                   0      622    1394
24 months   ki1101329-Keneba           GAMBIA                         0                   1      348    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      211     456
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      158     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       43     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       44     456
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1       17     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       75     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2741    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2542    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      701    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      709    6693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1921    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1219    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      496    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      387    4023


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/1f898dac-5587-4449-915e-a6ae5000f134/af1ba8f8-cdde-4661-87a5-0a788a72d7d6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1f898dac-5587-4449-915e-a6ae5000f134/af1ba8f8-cdde-4661-87a5-0a788a72d7d6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1f898dac-5587-4449-915e-a6ae5000f134/af1ba8f8-cdde-4661-87a5-0a788a72d7d6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1f898dac-5587-4449-915e-a6ae5000f134/af1ba8f8-cdde-4661-87a5-0a788a72d7d6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1712156   0.0747054   0.2677258
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1660455   0.1117375   0.2203534
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0445267   0.0233039   0.0657495
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0572228   0.0419530   0.0724927
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3082771   0.2996053   0.3169489
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3087909   0.3001186   0.3174632
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3068376   0.2690939   0.3445813
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3080907   0.2662248   0.3499566
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1503994   0.0579549   0.2428439
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1895423   0.1320369   0.2470477
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.5789121   0.5161642   0.6416601
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4252762   0.3498918   0.5006606
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1347859   0.0774554   0.1921165
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1693301   0.1344951   0.2041652
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.1472114   0.1173290   0.1770938
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.1482494   0.1290737   0.1674252
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1920644   0.1544359   0.2296929
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2721557   0.1843699   0.3599415
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3672813   0.2244385   0.5101241
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3541404   0.2914150   0.4168658
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2428170   0.2335871   0.2520468
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2864698   0.2698541   0.3030856
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2443337   0.2281871   0.2604803
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2924909   0.2593417   0.3256401
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4489463   0.3233964   0.5744961
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4688794   0.3913078   0.5464509
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.5000000   0.2163937   0.7836063
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.3563830   0.2877505   0.4250155
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3411906   0.2689907   0.4133905
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.3288130   0.2851524   0.3724735
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.2979805   0.2559679   0.3399931
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.3557978   0.3261134   0.3854823
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4297924   0.3792851   0.4802997
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4860582   0.3784382   0.5936782
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.5692521   0.3968203   0.7416840
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4867905   0.4081120   0.5654690
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4860461   0.4705623   0.5015300
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4797200   0.4512672   0.5081728
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3917961   0.3715614   0.4120307
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4250399   0.3868590   0.4632208


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1687243   0.1215395   0.2159090
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0535144   0.0410431   0.0659857
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.3084038   0.2997331   0.3170746
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3067400   0.2694794   0.3440006
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5177112   0.4665188   0.5689035
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1597938   0.1299995   0.1895881
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.1474860   0.1310548   0.1639172
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2072243   0.1725535   0.2418951
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2514393   0.2427410   0.2601375
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2558140   0.2405969   0.2710310
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4597156   0.3923103   0.5271210
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.3650000   0.2981110   0.4318890
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.3298611   0.2914318   0.3682904
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.3393113   0.3144474   0.3641753
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4429825   0.3973399   0.4886250
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4857314   0.4714029   0.5000599
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3992046   0.3802350   0.4181742


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9698033   0.5054336   1.8608152
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.2851354   0.7443691   2.2187554
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0016667   1.0005046   1.0028301
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0040838   0.9264713   1.0881981
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.2602593   0.6381718   2.4887555
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 0.7346127   0.6028777   0.8951331
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.2562892   0.7838178   2.0135580
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.0070514   0.7959465   1.2741468
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4170023   0.9714660   2.0668714
6 months    ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                 0.9642212   0.6283829   1.4795478
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1797768   1.1086481   1.2554690
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1970961   1.0571710   1.3555414
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0443997   0.7630076   1.4295672
24 months   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 0.7127660   0.3915602   1.2974641
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9637222   0.7563293   1.2279843
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.1940305   1.0169704   1.4019178
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1309138   0.8802735   1.4529190
24 months   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                 0.8551404   0.6070697   1.2045818
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9869845   0.9267815   1.0510983
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0848498   0.9854060   1.1943291


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0024913   -0.0852794    0.0802968
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0089877   -0.0095889    0.0275643
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001267    0.0000462    0.0002073
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0000976   -0.0047523    0.0045571
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0329339   -0.0473633    0.1132311
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0612010   -0.0991511   -0.0232508
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0250079   -0.0259495    0.0759653
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0002746   -0.0247133    0.0252626
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0151599   -0.0034988    0.0338187
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0106636   -0.1410151    0.1196878
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0086223    0.0050422    0.0122024
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0114803    0.0037311    0.0192295
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0107694   -0.0930461    0.1145848
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.1350000   -0.4093261    0.1393261
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0113295   -0.0720687    0.0494097
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0413308    0.0062285    0.0764331
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0131900   -0.0096453    0.0360254
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0824796   -0.2394138    0.0744545
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003148   -0.0066825    0.0060530
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0074085   -0.0013422    0.0161593


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0147657   -0.6455656    0.3742277
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.1679491   -0.2597167    0.4504251
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0004110    0.0001494    0.0006725
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0003181   -0.0156070    0.0147406
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1796394   -0.4004650    0.5194514
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.1182145   -0.1953549   -0.0460522
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1565009   -0.2302245    0.4216578
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0018622   -0.1827919    0.1576885
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0731571   -0.0209185    0.1585638
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0299022   -0.4686640    0.2777800
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0342917    0.0199611    0.0484128
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0448774    0.0143402    0.0744686
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0234261   -0.2308135    0.2251495
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.3698630   -1.3741603    0.2096049
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0343462   -0.2358933    0.1343329
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1218079    0.0120743    0.2193530
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0297755   -0.0231804    0.0799907
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1694419   -0.5419236    0.1130596
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0006481   -0.0138446    0.0123767
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0185582   -0.0035537    0.0401829
