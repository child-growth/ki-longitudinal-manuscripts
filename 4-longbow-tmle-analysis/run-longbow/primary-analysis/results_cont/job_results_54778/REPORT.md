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

**Intervention Variable:** enwast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enwast    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            179     215  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     1             36     215  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0             60      62  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1              2      62  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0             40      45  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1              5      45  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0             24      26  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1              2      26  haz              
Birth       ki0047075b-MAL-ED          PERU                           0            223     228  haz              
Birth       ki0047075b-MAL-ED          PERU                           1              5     228  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            108     121  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     121  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            114     115  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1     115  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             75      87  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             12      87  haz              
Birth       ki1000108-IRC              INDIA                          0            251     364  haz              
Birth       ki1000108-IRC              INDIA                          1            113     364  haz              
Birth       ki1000109-EE               PAKISTAN                       0            155     180  haz              
Birth       ki1000109-EE               PAKISTAN                       1             25     180  haz              
Birth       ki1000109-ResPak           PAKISTAN                       0             34      38  haz              
Birth       ki1000109-ResPak           PAKISTAN                       1              4      38  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            985    1105  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            120    1105  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     0            407     580  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     1            173     580  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            415     532  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            117     532  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            535     713  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            178     713  haz              
Birth       ki1101329-Keneba           GAMBIA                         0           1102    1488  haz              
Birth       ki1101329-Keneba           GAMBIA                         1            386    1488  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0            509     645  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1            136     645  haz              
Birth       ki1114097-CMIN             BANGLADESH                     0             15      19  haz              
Birth       ki1114097-CMIN             BANGLADESH                     1              4      19  haz              
Birth       ki1114097-CONTENT          PERU                           0              2       2  haz              
Birth       ki1114097-CONTENT          PERU                           1              0       2  haz              
Birth       ki1119695-PROBIT           BELARUS                        0          10942   13883  haz              
Birth       ki1119695-PROBIT           BELARUS                        1           2941   13883  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          10856   13092  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           2236   13092  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      0            564     762  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      1            198     762  haz              
Birth       ki1135781-COHORTS          INDIA                          0           5097    6231  haz              
Birth       ki1135781-COHORTS          INDIA                          1           1134    6231  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2448    2910  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    1            462    2910  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0          16041   18062  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           2021   18062  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0           2157    2399  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            242    2399  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            188     229  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1             41     229  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0            192     199  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1              7     199  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0            189     232  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1             43     232  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0            201     232  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1             31     232  haz              
6 months    ki0047075b-MAL-ED          PERU                           0            261     266  haz              
6 months    ki0047075b-MAL-ED          PERU                           1              5     266  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            235     253  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             18     253  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            235     238  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     238  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            272     363  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             91     363  haz              
6 months    ki1000108-IRC              INDIA                          0            268     382  haz              
6 months    ki1000108-IRC              INDIA                          1            114     382  haz              
6 months    ki1000109-EE               PAKISTAN                       0            255     292  haz              
6 months    ki1000109-EE               PAKISTAN                       1             37     292  haz              
6 months    ki1000109-ResPak           PAKISTAN                       0            185     228  haz              
6 months    ki1000109-ResPak           PAKISTAN                       1             43     228  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          0           1074    1213  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            139    1213  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0            311     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             69     380  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     0            368     514  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     1            146     514  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            472     597  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            125     597  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            517     694  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            177     694  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1901    2020  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            119    2020  haz              
6 months    ki1101329-Keneba           GAMBIA                         0           1641    2029  haz              
6 months    ki1101329-Keneba           GAMBIA                         1            388    2029  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            293     299  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              6     299  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0            421     528  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1            107     528  haz              
6 months    ki1114097-CMIN             BANGLADESH                     0            218     232  haz              
6 months    ki1114097-CMIN             BANGLADESH                     1             14     232  haz              
6 months    ki1114097-CONTENT          PERU                           0            214     215  haz              
6 months    ki1114097-CONTENT          PERU                           1              1     215  haz              
6 months    ki1119695-PROBIT           BELARUS                        0          12721   15754  haz              
6 months    ki1119695-PROBIT           BELARUS                        1           3033   15754  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           6904    8174  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1270    8174  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      0            725     901  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      1            176     901  haz              
6 months    ki1135781-COHORTS          INDIA                          0           5364    6508  haz              
6 months    ki1135781-COHORTS          INDIA                          1           1144    6508  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2191    2593  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    1            402    2593  haz              
6 months    ki1148112-LCNI-5           MALAWI                         0            825     839  haz              
6 months    ki1148112-LCNI-5           MALAWI                         1             14     839  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0          12724   14244  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           1520   14244  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4010    4410  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            400    4410  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            164     201  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1             37     201  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0            154     160  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1              6     160  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0            180     223  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1             43     223  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0            195     225  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1             30     225  haz              
24 months   ki0047075b-MAL-ED          PERU                           0            193     197  haz              
24 months   ki0047075b-MAL-ED          PERU                           1              4     197  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            221     237  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             16     237  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            202     205  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     205  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            272     364  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             92     364  haz              
24 months   ki1000108-IRC              INDIA                          0            269     383  haz              
24 months   ki1000108-IRC              INDIA                          1            114     383  haz              
24 months   ki1000109-EE               PAKISTAN                       0            115     137  haz              
24 months   ki1000109-EE               PAKISTAN                       1             22     137  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     0            293     409  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     1            116     409  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            452     570  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            118     570  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            364     500  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            136     500  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              5       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6  haz              
24 months   ki1101329-Keneba           GAMBIA                         0           1354    1677  haz              
24 months   ki1101329-Keneba           GAMBIA                         1            323    1677  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0            365     455  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1             90     455  haz              
24 months   ki1114097-CMIN             BANGLADESH                     0            217     232  haz              
24 months   ki1114097-CMIN             BANGLADESH                     1             15     232  haz              
24 months   ki1114097-CONTENT          PERU                           0            163     164  haz              
24 months   ki1114097-CONTENT          PERU                           1              1     164  haz              
24 months   ki1119695-PROBIT           BELARUS                        0           3121    4032  haz              
24 months   ki1119695-PROBIT           BELARUS                        1            911    4032  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0           1346    1505  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            159    1505  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      0            874    1027  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      1            153    1027  haz              
24 months   ki1135781-COHORTS          INDIA                          0           4252    5070  haz              
24 months   ki1135781-COHORTS          INDIA                          1            818    5070  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    0           1989    2347  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    1            358    2347  haz              
24 months   ki1148112-LCNI-5           MALAWI                         0            569     579  haz              
24 months   ki1148112-LCNI-5           MALAWI                         1             10     579  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0           6422    7242  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            820    7242  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           3943    4315  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            372    4315  haz              


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/08da63f6-d389-443c-bc5c-b3ad8c983290/0f05dbd3-e252-4bfc-9d2c-e8fd5496e51e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/08da63f6-d389-443c-bc5c-b3ad8c983290/0f05dbd3-e252-4bfc-9d2c-e8fd5496e51e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/08da63f6-d389-443c-bc5c-b3ad8c983290/0f05dbd3-e252-4bfc-9d2c-e8fd5496e51e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.0022593   -1.1305088   -0.8740097
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.8744416   -1.2072437   -0.5416394
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -1.0995000   -1.3601155   -0.8388845
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.9800000   -1.9772048    0.0172048
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.8421525   -0.9539315   -0.7303735
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.5260000   -1.5481689    0.4961689
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.6516139   -0.8184443   -0.4847836
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.2763534   -0.2921215    0.8448282
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.7942654   -0.9816432   -0.6068876
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7993451   -1.4351204   -0.1635697
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.5956595   -0.7163888   -0.4749302
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.9781497    0.6819924    1.2743070
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -1.3206076   -1.4617329   -1.1794822
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -0.3019127   -0.9052979    0.3014725
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.1592754   -1.2085888   -1.1099620
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.2023935   -1.3506267   -1.0541603
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.8847086   -0.9701437   -0.7992735
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.6542467   -0.8386079   -0.4698855
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8608684   -0.9406406   -0.7810962
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9281407   -1.1024550   -0.7538264
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.8914907   -0.9669262   -0.8160553
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7486669   -0.8953453   -0.6019886
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.0602115   -0.1180457   -0.0023773
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.6922494    0.5641444    0.8203545
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.9497025   -1.0261865   -0.8732184
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.7697845   -0.9329116   -0.6066574
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.0861755    0.9795793    1.1927716
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 2.1830758    2.0074768    2.3586747
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.4606664   -0.4782672   -0.4430656
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2379723    0.1815137    0.2944309
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0445714   -0.0443184    0.1334611
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.7215695    0.5762690    0.8668700
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.5526442   -0.5791180   -0.5261703
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.3065505   -0.3720943   -0.2410067
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2217557   -0.2580599   -0.1854515
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2433680    0.1396145    0.3471215
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1889965   -1.2037487   -1.1742442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.0955709   -1.1438442   -1.0472975
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2282002   -1.2697041   -1.1866964
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.1179902   -1.2759874   -0.9599930
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1293130   -1.2585784   -1.0000477
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2350594   -1.5300367   -0.9400821
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0897049   -0.0622819    0.2416917
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1292857   -0.4801482    0.2215768
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.1921370   -1.3193394   -1.0649346
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.2269033   -1.5304444   -0.9233622
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.4965840   -0.6152251   -0.3779430
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7195265   -1.0244958   -0.4145572
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3082471   -1.4186449   -1.1978493
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.8746667   -1.3965179   -0.3528155
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.0537925   -1.1837361   -0.9238489
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.9782244   -1.4391542   -0.5172946
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.3873404   -1.5474012   -1.2272796
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.6049606   -1.9256926   -1.2842286
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1313113   -1.2816700   -0.9809526
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2704207   -1.5360795   -1.0047619
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -1.7883771   -1.9125438   -1.6642104
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -1.8227361   -2.1314007   -1.5140716
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.3941664   -1.6237900   -1.1645428
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -1.5761298   -2.1262869   -1.0259726
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.2484940   -1.3405162   -1.1564718
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.5306914   -1.7706511   -1.2907317
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.8317049   -1.9542613   -1.7091485
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.2013626   -2.4881293   -1.9145958
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.3428285   -1.4429870   -1.2426701
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.3957889   -1.5842455   -1.2073324
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0464103   -1.1282949   -0.9645258
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2007732   -1.3807778   -1.0207687
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1426483   -1.2221917   -1.0631049
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2045543   -1.3511187   -1.0579900
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5467835   -0.5972831   -0.4962838
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4819405   -0.6789767   -0.2849043
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.8824968   -0.9344145   -0.8305790
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.9284785   -1.0436045   -0.8133525
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5321274   -1.6425348   -1.4217201
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -3.0158333   -3.4993139   -2.5323527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.2752186   -1.3599036   -1.1905336
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2765546   -1.4544581   -1.0986511
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.6960306   -1.8331218   -1.5589395
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -2.1620093   -2.9405039   -1.3835147
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1021266    0.0006918    0.2035614
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.1740143    0.0457950    0.3022336
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.7459634   -0.7735836   -0.7183433
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.2059945   -1.2726215   -1.1393675
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.8355374   -1.9136945   -1.7573803
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.6362101   -1.7862408   -1.4861794
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.9208499   -0.9502448   -0.8914550
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.9424464   -1.0148909   -0.8700019
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.1007879   -1.1456686   -1.0559072
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.0603573   -1.1734124   -0.9473022
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -1.6506351   -1.7196931   -1.5815772
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -2.5998449   -3.3208978   -1.8787919
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1275612   -1.1506022   -1.1045202
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.1071301   -1.1715470   -1.0427133
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2409296   -1.2792044   -1.2026549
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3027350   -1.4235974   -1.1818727
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9395924   -2.0828358   -1.7963491
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.8586725   -2.1458210   -1.5715240
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0348377   -0.1411854    0.2108607
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.5908333   -1.2594074    0.0777407
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.9063939   -2.0409169   -1.7718710
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.8535601   -2.1795609   -1.5275592
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.3050924   -1.4306772   -1.1795075
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.2604763   -1.6818584   -0.8390941
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.6643112   -1.8011526   -1.5274699
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.3232498   -2.1884657   -0.4580339
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5670963   -2.6779467   -2.4562459
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5320283   -2.7512086   -2.3128480
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7131550   -1.8282240   -1.5980861
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8813203   -2.0601242   -1.7025163
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.5845820   -2.7476695   -2.4214945
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -2.6138609   -3.0039282   -2.2237936
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -2.1844852   -2.3052634   -2.0637070
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.0859031   -2.2823697   -1.8894365
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5758679   -1.6713249   -1.4804109
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6644739   -1.8360775   -1.4928703
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.4083913   -1.5052463   -1.3115364
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.4307722   -1.5963852   -1.2651593
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5487509   -1.6049229   -1.4925789
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.6766676   -1.7871766   -1.5661586
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8410717   -1.9371967   -1.7449468
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.8609082   -2.0758382   -1.6459782
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.4811073   -2.6138699   -2.3483447
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.0361458   -2.6985107   -1.3737810
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0627044   -0.3962479    0.2708391
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.3141448   -0.6587809    0.0304912
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.5245166   -1.5854253   -1.4636079
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.7149017   -1.9020170   -1.5277863
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -3.0296600   -3.1008075   -2.9585125
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.7688291   -2.9257672   -2.6118911
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.0759138   -2.1111823   -2.0406454
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.0669900   -2.1530546   -1.9809254
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.4058297   -2.4547701   -2.3568893
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.2667192   -2.3865176   -2.1469209
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -1.8745287   -1.9554012   -1.7936562
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -2.8986909   -3.6501314   -2.1472504
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.8794039   -1.9100769   -1.8487309
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8546440   -1.9301525   -1.7791355
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.7123669   -1.7502366   -1.6744973
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.7793951   -1.8889667   -1.6698235


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9625581   -1.0817638   -0.8433525
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0862222   -1.3432542   -0.8291902
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8352193   -0.9473216   -0.7231170
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5594215   -0.7261377   -0.3927053
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.8194253   -1.0062738   -0.6325768
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.1131044   -0.2551572    0.0289484
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.2383333   -1.3946042   -1.0820625
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.1641176   -1.2153187   -1.1129166
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.8156034   -0.8972149   -0.7339920
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8579887   -0.9311892   -0.7847883
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.8487377   -0.9161997   -0.7812758
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.1338508    0.0777935    0.1899081
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.9117209   -0.9811840   -0.8422578
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3292725    1.1705582    1.4879867
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.3412145   -0.3591726   -0.3232564
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.2220341    0.1435838    0.3004845
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.5071369   -0.5319444   -0.4823294
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.1490962   -0.1843045   -0.1138879
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1782283   -1.1929469   -1.1635098
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2196123   -1.2608853   -1.1783394
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1545706   -1.2720635   -1.0370777
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0820017   -0.0652646    0.2292679
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1907471   -1.3084496   -1.0730447
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5356897   -0.6466309   -0.4247484
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3000971   -1.4087542   -1.1914400
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0492424   -1.1743146   -0.9241702
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4223508   -1.5654032   -1.2792984
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.1707373   -1.3023712   -1.0391035
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -1.7873630   -1.9021295   -1.6725965
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4274196   -1.6382670   -1.2165722
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.2781121   -1.3694457   -1.1867786
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3447001   -1.4316348   -1.2577653
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0728671   -1.1465641   -0.9991701
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1560014   -1.2261266   -1.0858763
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424220   -0.5912180   -0.4936261
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8918017   -0.9392551   -0.8443483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.2753093   -1.3514861   -1.1991326
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7090230   -1.8439050   -1.5741410
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1076416    0.0130507    0.2022324
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8157359   -0.8414876   -0.7899842
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.7950277   -1.8646284   -1.7254271
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9241887   -0.9514678   -0.8969095
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.0928731   -1.1347142   -1.0510321
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1254416   -1.1482406   -1.1026426
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2464966   -1.2832103   -1.2097829
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9287562   -2.0568859   -1.8006265
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0113750   -0.1608859    0.1836359
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8697758   -1.9956076   -1.7439440
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2990889   -1.4193577   -1.1788201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6435830   -1.7787856   -1.5083803
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5559249   -2.6552739   -2.4565759
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7639600   -1.8601530   -1.6677669
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.5941727   -2.7436756   -2.4446699
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1580827   -2.2606216   -2.0555438
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5877105   -1.6705437   -1.5048773
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4121200   -1.4955578   -1.3286822
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5730887   -1.6234321   -1.5227452
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8435238   -1.9304004   -1.7566473
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.4877155   -2.6168325   -2.3585986
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1311901   -0.4268581    0.1644779
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5460133   -1.6038691   -1.4881575
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9946835   -3.0601854   -2.9291817
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.0741479   -2.1071054   -2.0411904
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3841755   -2.4295300   -2.3388211
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8861485   -1.9671802   -1.8051169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.8772038   -1.9062064   -1.8482013
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7182341   -1.7544244   -1.6820437


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.1278177   -0.2315757    0.4872112
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.1195000   -0.9111978    1.1501978
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                  0.3161525   -0.7121101    1.3444150
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.9279673    0.3362907    1.5196439
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0050797   -0.6681175    0.6579582
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  1.5738092    1.2537372    1.8938812
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  1.0186949    0.3966003    1.6407895
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0431181   -0.1834540    0.0972179
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.2304619    0.0269453    0.4339785
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0672722   -0.2600113    0.1254668
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1428238   -0.0221617    0.3078093
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                  0.7524609    0.6117997    0.8931221
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1799180    0.0000624    0.3597735
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  1.0969003    0.9112752    1.2825254
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.6986387    0.6395228    0.7577546
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.6769981    0.5068972    0.8470991
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.2460937    0.1754965    0.3166908
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.4651237    0.3554152    0.5748322
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0934256    0.0446330    0.1422182
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1102100   -0.0515178    0.2719379
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1057464   -0.4283826    0.2168898
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.2189906   -0.6013575    0.1633763
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0347663   -0.3641979    0.2946653
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2229425   -0.5496086    0.1037237
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.4335805   -0.0998203    0.9669812
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0755681   -0.4029508    0.5540871
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2176202   -0.5778564    0.1426160
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.1391094   -0.4443522    0.1661334
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0343591   -0.3673874    0.2986693
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1819634   -0.7783425    0.4144158
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2821974   -0.5069783   -0.0574165
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.3696577   -0.6812636   -0.0580518
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0529604   -0.2669578    0.1610369
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1543629   -0.3535850    0.0448591
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0619060   -0.2283069    0.1044949
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0648430   -0.1387302    0.2684161
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0459818   -0.1721135    0.0801500
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.4837059   -1.9796326   -0.9877792
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0013361   -0.1983936    0.1957215
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.4659787   -1.2577216    0.3257643
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0718877   -0.0559579    0.1997334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.4600311   -0.5320753   -0.3879868
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.1993273    0.0299843    0.3686704
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0215965   -0.0995925    0.0563995
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0404306   -0.0807964    0.1616576
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.9492097   -1.6740216   -0.2243978
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0204311   -0.0439753    0.0848374
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0618054   -0.1877247    0.0641140
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0809199   -0.2384356    0.4002754
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.6256710   -1.3170286    0.0656866
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0528339   -0.3000384    0.4057062
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0446161   -0.3951702    0.4844024
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.3410614   -0.5350929    1.2172158
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0350680   -0.2095476    0.2796835
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.1681652   -0.3807043    0.0443739
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0292789   -0.4524624    0.3939047
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0985821   -0.1325203    0.3296844
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0886060   -0.2857987    0.1085867
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0223809   -0.2141282    0.1693664
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.1279167   -0.2515067   -0.0043267
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0198365   -0.2551569    0.2154839
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.4449615   -0.2314415    1.1213644
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.2514404   -0.6535317    0.1506508
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1903850   -0.3873442    0.0065741
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.2608309    0.0896825    0.4319794
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0089238   -0.0832273    0.1010749
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.1391105    0.0097829    0.2684380
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -1.0241622   -1.7806680   -0.2676563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0247599   -0.0548437    0.1043636
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0670282   -0.1815139    0.0474575


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0397011   -0.0207034    0.1001057
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0132778   -0.1017806    0.1283361
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0069332   -0.0194696    0.0333360
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0921924    0.0134237    0.1709611
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0251599   -0.1294434    0.0791236
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.4825551    0.3601118    0.6049984
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0822743   -0.0220911    0.1866396
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0048422   -0.0161445    0.0064600
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0691051    0.0077128    0.1304975
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0028797   -0.0399880    0.0457474
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0427530    0.0008488    0.0846572
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.1940623    0.1545799    0.2335446
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0379815    0.0002702    0.0756929
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.2430970    0.1436368    0.3425572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1194519    0.1085676    0.1303363
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1774627    0.1285767    0.2263488
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0455073    0.0325218    0.0584928
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0726595    0.0542355    0.0910834
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0107681    0.0052895    0.0162468
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0085879   -0.0079091    0.0250849
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0252576   -0.0821095    0.0315944
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0077032   -0.0222800    0.0068736
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0013899   -0.0592655    0.0620452
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0391056   -0.0844657    0.0062545
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0081500   -0.0069525    0.0232525
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0045501   -0.0303316    0.0394317
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0350104   -0.1244031    0.0543823
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0394260   -0.1300430    0.0511910
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0010141   -0.0400444    0.0420726
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0332532   -0.1411799    0.0746735
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0296181   -0.0626660    0.0034298
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0669793   -0.1252122   -0.0087465
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0018715   -0.0614394    0.0576964
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0264568   -0.0670587    0.0141451
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0133531   -0.0558134    0.0291072
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0043614   -0.0074007    0.0161236
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0093049   -0.0333973    0.0147875
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0297734   -0.0564518   -0.0030950
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0000908   -0.0394395    0.0392580
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0129924   -0.0547157    0.0287309
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0055150   -0.0198987    0.0309286
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0697724   -0.0814948   -0.0580501
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0405097    0.0071972    0.0738221
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0033388   -0.0168808    0.0102031
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0079148   -0.0107928    0.0266224
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0095556   -0.0271992    0.0080881
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0021196   -0.0045910    0.0088303
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0055670   -0.0167584    0.0056244
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0108362   -0.0469605    0.0686330
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0234627   -0.0552985    0.0083732
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0366181   -0.0314263    0.1046626
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0060035   -0.0478786    0.0598856
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0207283   -0.0265827    0.0680392
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0111714   -0.0500765    0.0724192
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0508049   -0.1138704    0.0122606
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0095907   -0.0766043    0.0574228
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0264025   -0.0386425    0.0914475
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0118426   -0.0522557    0.0285704
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0037287   -0.0563454    0.0488881
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0243377   -0.0483581   -0.0003174
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0024521   -0.0474919    0.0425877
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0066082   -0.0438677    0.0306513
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0684857   -0.1512233    0.0142520
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0214967   -0.0424035   -0.0005898
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0349765    0.0086036    0.0613494
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0017659   -0.0130891    0.0166209
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0216542    0.0016831    0.0416252
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0116198   -0.0308791    0.0076395
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0022001   -0.0065567    0.0109569
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0058671   -0.0154257    0.0036914
