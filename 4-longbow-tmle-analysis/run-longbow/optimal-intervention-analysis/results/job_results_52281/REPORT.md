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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           6982   26644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           6451   26644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           6521   26644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           6690   26644
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4965   16745
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           3575   16745
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           3896   16745
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4309   16745
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2342    8556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           1988    8556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2092    8556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2134    8556
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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/4f017978-9197-4fc7-b17b-f1c80bb63a32/23724800-c08f-4dc1-b5f7-0429f79c0c80/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7638036   -1.0323708   -0.4952365
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -1.3326919   -2.0620137   -0.6033701
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3407657   -2.0274341   -0.6540973
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8028837   -0.9990282   -0.6067392
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5935790   -1.0192832   -0.1678747
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2383815   -1.6424092   -0.8343538
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6553370   -1.3675883    0.0569144
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2506632   -0.5519871    0.0506607
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8892342   -1.0062185   -0.7722499
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1159517   -1.2651991   -0.9667044
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3114738    0.1636499    0.4592977
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1433551   -0.2137789   -0.0729313
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1531186   -1.2100946   -1.0961425
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5370160   -1.6682095   -1.4058225
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9603165   -1.1875113   -0.7331217
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1325892   -0.1223217    0.3875001
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1949242   -1.4223356   -0.9675128
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2805259   -0.5020394   -0.0590124
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1510238   -1.3728309   -0.9292167
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8536654   -1.1435058   -0.5638250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6009409   -1.8487873   -1.3530945
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0579014   -1.3093096   -0.8064932
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0718289   -1.3429160   -0.8007418
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9475440   -1.0958621   -0.7992258
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4186194   -0.5046962   -0.3325426
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3754867   -1.5399758   -1.2109977
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.7576263   -1.1060979   -0.4091548
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7414096   -1.8685772   -1.6142420
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9676935   -1.0500101   -0.8853768
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8306296   -1.9666701   -1.6945891
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3227399   -1.3753110   -1.2701688
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2611082   -1.3564549   -1.1657614
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.6090631   -1.8482125   -1.3699137
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0837198   -0.3669994    0.1995597
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.8340356   -2.0268919   -1.6411793
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0558005   -1.3621133   -0.7494877
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.7293404   -2.0178885   -1.4407923
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1641011   -1.4073303   -0.9208719
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.2647706   -2.6648835   -1.8646578
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.7278002   -2.9141125   -2.5414878
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.5278344   -1.7204415   -1.3352274
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.3701374   -1.5392519   -1.2010229
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.7328145   -1.9125466   -1.5530824
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.5936832   -0.9725244   -0.2148421
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8488716   -2.9472127   -2.7505304
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0541444   -2.1373996   -1.9708892
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7569771   -1.9099875   -1.6039666
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9023450   -1.9657009   -1.8389891
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6734854   -1.7530484   -1.5939224


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1729995   -1.2010694   -1.1449297
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2031806   -1.3209873   -1.0853738
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2069078   -1.3255669   -1.0882487
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3293333   -1.4383829   -1.2202838
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0554016   -1.1850591   -0.9257441
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3357056   -1.3587889   -1.3126223
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9893430   -3.0546993   -2.9239867
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8822648   -1.9637218   -1.8008078
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0194951   -2.0471365   -1.9918537
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7803708   -1.8158650   -1.7448765


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2892480   -0.5245689   -0.0539271
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6363586   -0.0142490    1.2869661
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1336925   -0.4913175    0.7587026
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1112558   -0.2715438    0.0490321
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0411831   -0.3226618    0.4050281
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1158815   -0.2154779    0.4472409
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3058587   -0.9209988    0.3092814
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0573780   -0.3028885    0.1881324
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0041322   -0.0950317    0.1032961
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0307937   -0.0973772    0.1589646
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1661797   -0.3011209   -0.0312384
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1057955   -0.1663209   -0.0452700
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0198810   -0.0683105    0.0285486
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0134025   -0.1050975    0.1319025
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2428641   -0.4428326   -0.0428955
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0815685   -0.3121439    0.1490070
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0119836   -0.2166179    0.1926507
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2805334   -0.4840472   -0.0770196
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1783095   -0.3711892    0.0145701
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2017362   -0.4499778    0.0465054
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2321960    0.0211939    0.4431980
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3655494   -0.5941004   -0.1369983
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1625773   -0.3921085    0.0669539
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1441475   -0.2728736   -0.0154215
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1256038   -0.1960596   -0.0551479
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0246475   -0.1163386    0.1656337
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.4437046    0.1430794    0.7443298
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0698228   -0.1795766    0.0399309
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1728789   -0.2442875   -0.1014703
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1879335    0.0705384    0.3053287
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0129656   -0.0572014    0.0312701
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0829395   -0.1680485    0.0021695
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3698520   -0.5773882   -0.1623158
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0908204   -0.1711097    0.3527505
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0508102   -0.2338449    0.1322245
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2560635   -0.5154687    0.0033417
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0251372   -0.2665708    0.2162964
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4850796   -0.7015416   -0.2686176
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3803929   -0.7523629   -0.0084230
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1689323    0.0022163    0.3356482
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2709431   -0.4381911   -0.1036951
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2322847   -0.3744704   -0.0900990
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1546035   -0.3096503    0.0004433
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.1025363   -0.4194308    0.2143582
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1404714   -0.2233970   -0.0575459
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3599701   -0.4335644   -0.2863759
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1252877   -0.2564567    0.0058812
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1171501   -0.1732340   -0.0610662
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1068854   -0.1763211   -0.0374496
