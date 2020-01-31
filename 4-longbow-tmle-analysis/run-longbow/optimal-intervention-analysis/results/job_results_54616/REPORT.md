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







# Results Detail

## Results Plots
![](/tmp/901c57fd-7340-4322-95b6-fff73ab2e3b5/9ee8d1c1-e815-47ad-b38a-a20c82accdee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7941642   -1.0420455   -0.5462828
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -1.0758123   -1.7873913   -0.3642333
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5810878   -2.4706853   -0.6914903
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.7936498   -0.9913688   -0.5959307
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4065900   -0.8021578   -0.0110223
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9774532   -1.3830441   -0.5718624
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4165932   -0.9799229    0.1467366
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2900789   -0.5665082   -0.0136497
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9373543   -1.0362747   -0.8384338
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0954731   -1.2684614   -0.9224849
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1302238   -0.0232598    0.2837073
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1234136   -0.1933131   -0.0535140
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5860108   -1.6191457   -1.5528760
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4384987   -1.5477567   -1.3292407
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9219169   -1.1386257   -0.7052081
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0054181   -0.3090169    0.3198531
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1371466   -1.3529200   -0.9213732
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5299282   -0.7435630   -0.3162934
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1647805   -1.3963368   -0.9332242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7926589   -1.0720292   -0.5132886
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4495105   -1.7224479   -1.1765730
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0612193   -1.3175695   -0.8048692
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0957952   -1.3994047   -0.7921857
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9677212   -1.0963727   -0.8390698
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4021160   -0.4932383   -0.3109936
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.4613108   -1.6074336   -1.3151881
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.2983903   -0.6490442    0.0522637
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6756662   -1.7895807   -1.5617516
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9204493   -1.0006880   -0.8402106
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7657328   -1.9062545   -1.6252111
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1999622   -1.2400928   -1.1598316
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1600762   -1.2345123   -1.0856402
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.6681344   -1.9081037   -1.4281652
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1431495   -0.4244983    0.1381993
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -2.0406408   -2.2556415   -1.8256400
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.3442582   -1.5677695   -1.1207470
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6265927   -1.9056592   -1.3475262
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1338591   -1.3850265   -0.8826916
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.3102089   -2.7499067   -1.8705111
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5999929   -2.8008254   -2.3991604
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.5251179   -1.7156839   -1.3345519
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2747269   -1.4233131   -1.1261406
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.7924782   -1.9751013   -1.6098551
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.8507448   -1.1818041   -0.5196855
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8133259   -2.9099025   -2.7167493
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0104901   -2.0933991   -1.9275811
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7516379   -1.9040019   -1.5992738
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8283125   -1.8752599   -1.7813651
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5588735   -1.6248264   -1.4929205


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2070732   -1.5254820   -0.8886644
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9141395   -1.0364098   -0.7918693
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1225000   -1.3335666   -0.9114334
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1452941    0.0610109    0.2295774
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2491505   -0.2881717   -0.2101294
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5897094   -1.6089856   -1.5704331
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2026806   -1.3203025   -1.0850586
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2070638   -1.3255909   -1.0885368
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3248549   -1.4336721   -1.2160378
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0547925   -1.1843544   -0.9252306
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442232   -0.5932373   -0.4952090
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8112324   -1.8807284   -1.7417365
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6426961   -1.7120603   -1.5733318
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3132090   -1.3363486   -1.2900693
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9893430   -3.0546993   -2.9239867
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8822648   -1.9637218   -1.8008078
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0135591   -2.0412422   -1.9858759
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7803708   -1.8158650   -1.7448765


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2588875   -0.4796634   -0.0381115
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3794790   -0.2638549    1.0228128
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3740146   -0.3501974    1.0982266
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1204898   -0.2824788    0.0414993
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1458058   -0.4776513    0.1860397
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1450468   -0.5053877    0.2152942
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5446025   -1.0536010   -0.0356039
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0179623   -0.2497196    0.2137950
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0522522   -0.0357993    0.1403037
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0103151   -0.1317042    0.1523343
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0150703   -0.1138863    0.1440270
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1257370   -0.1851338   -0.0663402
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0036986   -0.0308767    0.0234796
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0851148   -0.1782872    0.0080575
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2807636   -0.4727625   -0.0887648
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0421577   -0.2261647    0.3104800
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0699172   -0.2649707    0.1251362
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0316537   -0.2216419    0.1583345
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1600744   -0.3590426    0.0388938
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2621336   -0.5039101   -0.0203571
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0807656   -0.1474818    0.3090129
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3622314   -0.5937075   -0.1307554
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1386110   -0.3908075    0.1135855
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1239703   -0.2390187   -0.0089219
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1421072   -0.2171353   -0.0670792
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1104716   -0.0188791    0.2398223
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.0155315   -0.3237750    0.2927121
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1355663   -0.2328512   -0.0382814
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2201231   -0.2883682   -0.1518780
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1230367    0.0014123    0.2446612
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1132468   -0.1446975   -0.0817960
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1839714   -0.2453440   -0.1225988
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3102618   -0.5143827   -0.1061409
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1492639   -0.0967416    0.3952694
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1544513   -0.0398967    0.3487993
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0366705   -0.1614435    0.2347846
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1258783   -0.3594279    0.1076713
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5112004   -0.7323713   -0.2900296
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3353518   -0.7446056    0.0739019
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0411250   -0.1348675    0.2171174
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2736596   -0.4389828   -0.1083364
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3276953   -0.4572896   -0.1981009
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0949398   -0.2516378    0.0617581
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.1545253   -0.1314324    0.4404829
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1760171   -0.2549973   -0.0970369
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4036245   -0.4754384   -0.3318105
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1306269   -0.2609484   -0.0003055
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1852466   -0.2229605   -0.1475327
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2214973   -0.2753603   -0.1676343
