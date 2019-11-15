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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hhwealth_quart    n_cell       n
----------  -------------------------  -----------------------------  ---------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             56     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             52     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             51     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             54     213
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             11      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             21      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             17      60
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             11      60
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4              8      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1             14      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2              9      41
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3             10      41
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              6      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              9      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              3      26
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              8      26
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4             54     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1             55     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2             54     215
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3             52     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             17      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             27      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             24      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             28      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             26     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             32     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             34     120
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             32      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             15      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             20      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25      92
Birth       ki1000108-IRC              INDIA                          Wealth Q4             91     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1             98     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2             99     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3            100     388
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            132     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            134     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            136     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            137     539
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            173     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            175     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            174     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            174     696
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            293     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            157     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            161     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            205     816
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            842    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            687    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            538    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            982    3049
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           5278   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           5772   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           5701   22434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           5683   22434
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            654    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            685    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            722    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            759    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             59     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             59     240
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             53     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             52     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     209
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             60     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     235
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     235
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             59     236
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     236
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             67     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1             68     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2             71     270
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3             64     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             60     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             64     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             94     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             94     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             90     369
6 months    ki1000108-IRC              INDIA                          Wealth Q4             99     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1            105     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2            100     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3            103     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            135     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            156     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            164     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            149     604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            502    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2020
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            140     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            141     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            148     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            135     564
6 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3             52     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            339     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            175     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            195     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            216     925
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            743    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            570    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            485    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            910    2708
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            217     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            203     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            199     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            197     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4984   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3586   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           3907   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4326   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1199    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1196    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1201    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1229    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             30     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             61     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             60     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             26     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51     169
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             58     227
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58     227
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             55     228
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59     228
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             65     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             42     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             38     201
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             56     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             49     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             61     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             94     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             91     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             95     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             91     371
24 months   ki1000108-IRC              INDIA                          Wealth Q4            100     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1            105     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2            101     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3            103     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            121     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            155     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            157     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            145     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            124     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            122     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            128     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            114     488
24 months   ki1114097-CONTENT          PERU                           Wealth Q4             41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1             40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2             42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3             41     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            402    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            202    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            212    1035
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            219    1035
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            688    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            489    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            423    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            845    2445
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            160     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            129     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            146     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            139     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2366    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2001    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2106    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2150    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1193    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1156    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1173    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1225    4747


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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/766e194e-5b0f-413e-ae1a-61feb2ad59f9/207fd9a4-d396-48e0-b997-3bc2cef4e2f4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/766e194e-5b0f-413e-ae1a-61feb2ad59f9/207fd9a4-d396-48e0-b997-3bc2cef4e2f4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/766e194e-5b0f-413e-ae1a-61feb2ad59f9/207fd9a4-d396-48e0-b997-3bc2cef4e2f4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.7589572   -0.9938974   -0.5240170
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.3482989   -1.6225853   -1.0740126
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.2271306   -1.5311122   -0.9231490
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.9342400   -1.2097487   -0.6587313
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.7071473   -1.4827870    0.0684924
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.8502330   -1.4050103   -0.2954558
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.6665470   -1.1546151   -0.1784789
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                -0.5001972   -1.3124807    0.3120863
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.0537500   -1.5024873   -0.6050127
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.1307143   -1.7957911   -0.4656374
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.4622222   -2.0687425   -0.8557019
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.2070000   -1.8208171   -0.5931829
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.9968165   -1.1984031   -0.7952299
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.7982303   -0.9927604   -0.6037002
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.9808989   -1.1971085   -0.7646893
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.9141347   -1.1444650   -0.6838044
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.3925750   -0.7513455   -0.0338045
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.6078627   -1.0074831   -0.2082424
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.4954184   -0.8497658   -0.1410709
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.3850572   -0.7499567   -0.0201577
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.2502069   -1.7778754   -0.7225384
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.2622298   -1.7073255   -0.8171341
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.1859021   -1.6488554   -0.7229487
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.0007437   -1.3869330   -0.6145544
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.0329568   -1.3772138   -0.6886998
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.5691840   -1.1853721    0.0470041
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7961195   -1.2788288   -0.3134102
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.2156603   -1.6452906   -0.7860300
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2283396   -0.5458203    0.0891411
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.1577502   -0.4311397    0.1156392
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.3754944   -0.6649432   -0.0860456
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.3979429   -0.6540190   -0.1418669
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.0293728   -1.1341057   -0.9246398
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.9051953   -1.0494287   -0.7609618
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.8122877   -0.9280169   -0.6965586
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.8694022   -1.0060834   -0.7327210
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0181995   -1.1741023   -0.8622968
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1805538   -1.3204143   -1.0406933
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.0522382   -1.2056480   -0.8988285
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0857839   -1.2445065   -0.9270613
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2178916    0.0738144    0.3619688
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                 0.0412994   -0.1283558    0.2109545
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0849436   -0.1185211    0.2884082
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                 0.1528130   -0.0290238    0.3346498
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1245912   -0.1937213   -0.0554611
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.3277735   -0.4061887   -0.2493584
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.3051549   -0.3980114   -0.2122983
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2810058   -0.3474955   -0.2145162
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.5754583   -1.6096280   -1.5412886
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.6122052   -1.6416382   -1.5827722
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.5930779   -1.6225784   -1.5635774
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.5843464   -1.6134107   -1.5552820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.3995154   -1.5051437   -1.2938870
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.6551721   -1.7479972   -1.5623469
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.5541770   -1.6452723   -1.4630816
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.4764229   -1.5730031   -1.3798428
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.9257778   -1.1454714   -0.7060843
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.3070668   -1.5647127   -1.0494209
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.3639754   -1.5896513   -1.1382994
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.2158636   -1.4432845   -0.9884426
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0121392   -0.2740327    0.2497544
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.0341169   -0.2408995    0.3091332
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.1524298   -0.1491623    0.4540219
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0500412   -0.2791908    0.3792733
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.1839365   -1.3532105   -1.0146625
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.3196679   -1.6052419   -1.0340938
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.2199618   -1.4932812   -0.9466424
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.0932544   -1.3093277   -0.8771812
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.4956987   -0.7330677   -0.2583297
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.5593076   -0.8011767   -0.3174385
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.4344285   -0.6541297   -0.2147272
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.7986690   -1.0110617   -0.5862764
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -1.2712818   -1.5078280   -1.0347356
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.1716873   -1.3986639   -0.9447106
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -1.4325443   -1.6317937   -1.2332949
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -1.4932408   -1.7229361   -1.2635454
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.8602158   -1.1452022   -0.5752294
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -1.1297793   -1.4318776   -0.8276810
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -1.2104106   -1.4559018   -0.9649193
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -1.0239145   -1.2466951   -0.8011339
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.4690603   -1.6877319   -1.2503887
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.2911345   -1.5374171   -1.0448520
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.3814610   -1.6154841   -1.1474379
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.3252615   -1.5925010   -1.0580221
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.7949125   -2.0578010   -1.5320239
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -1.0637925   -1.3214818   -0.8061032
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -1.4326028   -1.7080482   -1.1571574
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.4225721   -1.7095052   -1.1356389
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -1.0445321   -1.3256720   -0.7633923
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.4200364   -1.6610358   -1.1790369
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -1.4367692   -1.6758219   -1.1977165
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -1.0550806   -1.3118703   -0.7982909
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.3727491   -1.5292657   -1.2162324
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.9552316   -1.1112292   -0.7992340
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.9286673   -1.0631894   -0.7941451
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -1.1530372   -1.2978201   -1.0082543
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.7273411   -0.8225527   -0.6321296
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.4131871   -0.5021623   -0.3242119
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.5508538   -0.6576070   -0.4441005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.5171622   -0.6031521   -0.4311722
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.2866917   -1.4291888   -1.1441946
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.4266087   -1.5828284   -1.2703889
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.3251693   -1.4897648   -1.1605739
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.2997753   -1.4534782   -1.1460724
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.2267163   -0.5780903    0.1246578
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.3278766   -0.6576845    0.0019313
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.2483206   -0.6022713    0.1056301
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.3373125   -0.6868260    0.0122010
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -1.6790753   -1.7843499   -1.5738007
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -1.9537807   -2.1109429   -1.7966186
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -1.8970540   -2.0474179   -1.7466900
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -1.8274304   -1.9907836   -1.6640772
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.9280445   -1.0082095   -0.8478796
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -1.2507367   -1.3468480   -1.1546253
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -1.1664024   -1.2632301   -1.0695746
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -1.2402878   -1.3115682   -1.1690073
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -1.6148757   -1.7505412   -1.4792102
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -1.6034608   -1.7615192   -1.4454024
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -1.7020948   -1.8387009   -1.5654887
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -1.6428216   -1.7684429   -1.5172003
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.2018743   -1.2416077   -1.1621409
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.4456007   -1.4874160   -1.4037853
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.3992969   -1.4377869   -1.3608068
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.3150598   -1.3531612   -1.2769585
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.1560282   -1.2314597   -1.0805968
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.5006535   -1.5662395   -1.4350675
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.4205281   -1.4889217   -1.3521344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.3061432   -1.3752048   -1.2370815
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -1.7001741   -1.9445381   -1.4558101
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.9932002   -2.3498037   -1.6365967
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -2.2468018   -2.4891671   -2.0044365
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.9621966   -2.1660288   -1.7583643
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.1093646   -0.1985200    0.4172492
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.1503485   -0.5422928    0.2415959
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.0205939   -0.4080304    0.3668427
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0157658   -0.2989415    0.3304731
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.8152237   -2.0216040   -1.6088433
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -2.0743147   -2.3525625   -1.7960670
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.8127317   -2.1036574   -1.5218060
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.7972281   -2.0165137   -1.5779426
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -1.1641336   -1.4238353   -0.9044320
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -1.1747533   -1.4055782   -0.9439285
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -1.1749552   -1.4174841   -0.9324262
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -1.6934904   -1.9018211   -1.4851596
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -1.7558107   -1.9697131   -1.5419084
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.5641912   -1.8239829   -1.3043995
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -1.9204868   -2.1530359   -1.6879377
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -1.7642684   -2.0077974   -1.5207394
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -1.1514179   -1.3986886   -0.9041472
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -1.7263118   -2.0249176   -1.4277060
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -1.8493579   -2.1447987   -1.5539171
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -1.8220071   -2.0479485   -1.5960657
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -2.6758573   -2.9021650   -2.4495495
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -2.2432796   -2.6440034   -1.8425557
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -2.6972646   -2.9595512   -2.4349779
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -2.7435612   -3.0057576   -2.4813648
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -2.6102292   -2.8080235   -2.4124350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -2.5205903   -2.7137846   -2.3273959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -2.6123820   -2.8102156   -2.4145484
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -2.4913297   -2.7063617   -2.2762977
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -1.5143258   -1.7060329   -1.3226186
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.9628381   -2.1489896   -1.7766866
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -1.8945175   -2.0790634   -1.7099717
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -1.7756070   -1.9548595   -1.5963545
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -2.0574042   -2.1998501   -1.9149583
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -1.3370510   -1.5071169   -1.1669851
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -1.3997118   -1.5537384   -1.2456852
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -1.7266009   -1.8845978   -1.5686039
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.8205526   -1.9754388   -1.6656664
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -2.0611646   -2.2391811   -1.8831481
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.9215511   -2.0929045   -1.7501978
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.7411402   -1.9126411   -1.5696392
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.6116825   -0.9397361   -0.2836290
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.8662929   -1.2266233   -0.5059624
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.6405279   -0.9823999   -0.2986559
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.8370720   -1.1538837   -0.5202602
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -2.8075396   -2.9044430   -2.7106362
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -3.1254500   -3.2739102   -2.9769897
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -3.0816857   -3.2278199   -2.9355514
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -3.1256395   -3.2758076   -2.9754713
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -2.0192976   -2.1006265   -1.9379688
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -2.6658456   -2.7654538   -2.5662374
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -2.5291213   -2.6391617   -2.4190809
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -2.5457872   -2.6205305   -2.4710439
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -1.7645114   -1.9187550   -1.6102677
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -1.8730020   -2.0614267   -1.6845773
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -2.0607697   -2.2278094   -1.8937299
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -1.8333386   -1.9898860   -1.6767913
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.8292217   -1.8755061   -1.7829372
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -2.1751353   -2.2218919   -2.1283787
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -2.0979967   -2.1447129   -2.0512805
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -2.0243420   -2.0729916   -1.9756924
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.5597783   -1.6258426   -1.4937140
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.9575646   -2.0198206   -1.8953087
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.8795277   -1.9441789   -1.8148764
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.7340628   -1.7960440   -1.6720816


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2070732   -1.5254820   -0.8886644
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9141395   -1.0364098   -0.7918693
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1225000   -1.3335666   -0.9114334
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1452941    0.0610109    0.2295774
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2491505   -0.2881717   -0.2101294
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5897094   -1.6089856   -1.5704331
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2070638   -1.3255909   -1.0885368
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3248549   -1.4336721   -1.2160378
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0547925   -1.1843544   -0.9252306
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442232   -0.5932373   -0.4952090
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8112324   -1.8807284   -1.7417365
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6426961   -1.7120603   -1.5733318
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3132090   -1.3363486   -1.2900693
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9893430   -3.0546993   -2.9239867
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8822648   -1.9637218   -1.8008078
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0135591   -2.0412422   -1.9858759
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7803708   -1.8158650   -1.7448765


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.5893417   -0.9509637   -0.2277196
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.4681734   -0.8536534   -0.0826934
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1752827   -0.5375850    0.1870196
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.1430857   -1.1013495    0.8151781
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.0406003   -0.8803013    0.9615019
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.2069501   -0.9185918    1.3324920
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0769643   -0.8792687    0.7253402
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.4084722   -1.1629469    0.3460025
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.1532500   -0.9136030    0.6071030
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.1985862   -0.0628885    0.4600609
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0159176   -0.2617525    0.2935876
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0826818   -0.2048755    0.3702390
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2152878   -0.7330200    0.3024444
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1028434   -0.5918248    0.3861379
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0075178   -0.4819990    0.4970345
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0120229   -0.7100151    0.6859694
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0643048   -0.6464193    0.7750290
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.2494632   -0.4035345    0.9024609
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.4637728   -0.2435090    1.1710546
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.2368373   -0.3579992    0.8316738
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.1827035   -0.7337521    0.3683451
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0705893   -0.3285664    0.4697451
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1471548   -0.5545014    0.2601918
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1696034   -0.5558766    0.2166698
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1241775   -0.0429862    0.2913412
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.2170850    0.0724111    0.3617589
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.1599706   -0.0004215    0.3203627
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1623542   -0.3674744    0.0427659
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0340387   -0.2479981    0.1799207
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0675843   -0.2855905    0.1504218
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.1765922   -0.3994691    0.0462847
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1329480   -0.3821220    0.1162260
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0650786   -0.2969077    0.1667505
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2031824   -0.3056240   -0.1007408
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1805637   -0.2941660   -0.0669615
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1564147   -0.2498532   -0.0629762
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0367469   -0.0756833    0.0021896
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0176196   -0.0570596    0.0218205
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0088880   -0.0490522    0.0312761
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2556567   -0.3953401   -0.1159733
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1546616   -0.2937023   -0.0156209
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0769075   -0.2190285    0.0652134
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3812889   -0.7208857   -0.0416922
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.4381975   -0.7541718   -0.1222232
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.2900857   -0.6067177    0.0265462
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0462560   -0.3325070    0.4250190
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.1645689   -0.2363127    0.5654506
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0621804   -0.3580788    0.4824396
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.1357314   -0.4681191    0.1966564
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0360253   -0.3582457    0.2861951
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0906821   -0.1841128    0.3654769
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0636089   -0.4027827    0.2755649
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0612702   -0.2620148    0.3845553
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.3029703   -0.6214645    0.0155238
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0995945   -0.2292258    0.4284149
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.1612625   -0.4717036    0.1491786
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.2219589   -0.5507369    0.1068190
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2695635   -0.6853552    0.1462282
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3501948   -0.7265055    0.0261160
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1636987   -0.5258383    0.1984409
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1779258   -0.1495074    0.5053590
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0875993   -0.2309139    0.4061126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1437988   -0.1995817    0.4871793
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.7311200    0.3650431    1.0971968
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3623097   -0.0134923    0.7381117
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3723404   -0.0108522    0.7555330
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3755042   -0.7417958   -0.0092126
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3922371   -0.7577583   -0.0267158
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0105485   -0.3886105    0.3675136
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.4175175    0.1963452    0.6386899
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.4440818    0.2374805    0.6506832
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.2197119    0.0064120    0.4330118
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3141540    0.1861768    0.4421313
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1764874    0.0355461    0.3174286
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.2101790    0.0840773    0.3362807
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1399170   -0.3509423    0.0711083
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0384776   -0.2545288    0.1775736
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0130836   -0.2218382    0.1956710
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.1011603   -0.5815617    0.3792410
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0216043   -0.5201484    0.4769398
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1105962   -0.6051389    0.3839464
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2747054   -0.4640615   -0.0853494
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2179787   -0.4013686   -0.0345888
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1483551   -0.3425988    0.0458886
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.3226921   -0.4477646   -0.1976196
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.2383578   -0.3639552   -0.1127605
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.3122432   -0.4193961   -0.2050903
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0114149   -0.1977076    0.2205374
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0872191   -0.2806307    0.1061926
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0279459   -0.2133548    0.1574631
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2437264   -0.2997069   -0.1877458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1974225   -0.2469990   -0.1478460
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1131855   -0.1647095   -0.0616615
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3446253   -0.4430207   -0.2462299
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2644999   -0.3612062   -0.1677935
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1501149   -0.2527924   -0.0474375
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2930261   -0.7258712    0.1398190
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.5466277   -0.8928909   -0.2003645
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.2620225   -0.5810722    0.0570272
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.2597131   -0.7578327    0.2384066
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.1299585   -0.6243948    0.3644778
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0935988   -0.5331269    0.3459293
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.2590911   -0.6056313    0.0874492
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0024919   -0.3533710    0.3583549
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0179955   -0.2837658    0.3197569
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0106197   -0.3582449    0.3370055
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0108215   -0.3661317    0.3444887
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.5293567   -0.8624736   -0.1962399
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.1916195   -0.1433211    0.5265602
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.1646761   -0.4801709    0.1508188
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0084577   -0.3290203    0.3121050
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.5748939   -0.9599598   -0.1898279
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.6979400   -1.0841399   -0.3117401
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.6705892   -1.0070608   -0.3341177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.4325777   -0.0279851    0.8931405
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0214073   -0.3681606    0.3253460
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0677039   -0.4146995    0.2792916
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0896390   -0.1870379    0.3663158
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0021528   -0.2820151    0.2777096
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.1188996   -0.1733476    0.4111467
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4485123   -0.7161991   -0.1808255
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3801918   -0.6454550   -0.1149285
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.2612812   -0.5233483    0.0007859
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.7203532    0.5000670    0.9406394
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.6576924    0.4488830    0.8665017
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.3308033    0.1193408    0.5422659
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.2406120   -0.4757643   -0.0054598
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1009986   -0.3309437    0.1289466
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0794124   -0.1504735    0.3092984
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2546103   -0.7375161    0.2282955
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0288454   -0.5028639    0.4451731
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2253894   -0.6796480    0.2288691
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.3179104   -0.4949148   -0.1409060
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2741461   -0.4493022   -0.0989899
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.3180999   -0.4962333   -0.1399665
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.6465480   -0.7752106   -0.5178853
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.5098237   -0.6466530   -0.3729943
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.5264895   -0.6371150   -0.4158640
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1084907   -0.3521180    0.1351367
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.2962583   -0.5244719   -0.0680447
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0688273   -0.2893416    0.1516871
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3459136   -0.4077430   -0.2840843
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2687751   -0.3302387   -0.2073114
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1951203   -0.2589698   -0.1312709
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3977863   -0.4868603   -0.3087124
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.3197493   -0.4073155   -0.2321831
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1742845   -0.2601174   -0.0884515


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2940944   -0.5100040   -0.0781848
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0108140   -0.6896901    0.7113180
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1533232   -0.6267868    0.3201405
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0826769   -0.0845773    0.2499312
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1598209   -0.5004661    0.1808243
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1277069   -0.3507113    0.6061252
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0717611   -0.2215158    0.3650381
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0797017   -0.3375734    0.1781701
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1442707    0.0524734    0.2360680
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0669585   -0.1983795    0.0644625
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0725975   -0.1890397    0.0438448
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1245594   -0.1828023   -0.0663164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0142511   -0.0411683    0.0126662
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1240981   -0.2138448   -0.0343514
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2769027   -0.4713530   -0.0824524
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0597149   -0.1760090    0.2954388
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0231273   -0.1935109    0.1472562
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0658832   -0.2716215    0.1398550
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0535731   -0.2566143    0.1494680
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1945767   -0.4376377    0.0484843
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1003154   -0.0946965    0.2953273
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3714617    0.1448384    0.5980850
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1898741   -0.4271643    0.0474162
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2810576    0.1420887    0.4200264
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1831180    0.1022229    0.2640131
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0641475   -0.1909235    0.0626284
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0872054   -0.3926237    0.2182129
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1321572   -0.2204870   -0.0438273
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2125278   -0.2807483   -0.1443073
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0278204   -0.1449774    0.0893366
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.1113346   -0.1419286   -0.0807406
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1880194   -0.2509850   -0.1250539
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2782221   -0.4867606   -0.0696837
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.1032502   -0.3582388    0.1517384
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0709658   -0.2611387    0.1192072
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.1434541   -0.3617086    0.0748005
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0033397   -0.1706746    0.1773541
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.4936416   -0.7132172   -0.2740660
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0302965   -0.1693142    0.2299072
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0513613   -0.1195449    0.2222675
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2844517   -0.4508357   -0.1180678
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.4549821    0.3196322    0.5903319
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0668654   -0.2040446    0.0703137
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0845370   -0.3747751    0.2057011
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1818034   -0.2607733   -0.1028335
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.3948169   -0.4649723   -0.3246614
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.1177535   -0.2504892    0.0149823
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.1843374   -0.2213480   -0.1473268
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2205924   -0.2743805   -0.1668044
