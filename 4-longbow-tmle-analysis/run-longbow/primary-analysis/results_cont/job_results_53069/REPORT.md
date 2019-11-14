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
![](/tmp/6dbd2b0f-0b2b-496e-82a7-ab467d42d82c/cfc99655-078b-4675-995b-30821df85665/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6dbd2b0f-0b2b-496e-82a7-ab467d42d82c/cfc99655-078b-4675-995b-30821df85665/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6dbd2b0f-0b2b-496e-82a7-ab467d42d82c/cfc99655-078b-4675-995b-30821df85665/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.7338819   -0.9623477   -0.5054161
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.3171812   -1.6002817   -1.0340808
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.2374611   -1.5408590   -0.9340632
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.9128849   -1.1746374   -0.6511324
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.7121747   -1.5239437    0.0995943
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.8531277   -1.4037781   -0.3024774
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.3964385   -0.9321489    0.1392719
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                -0.3005904   -1.1863254    0.5851447
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.0537500   -1.5024873   -0.6050127
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.1307143   -1.7957911   -0.4656374
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.4622222   -2.0687425   -0.8557019
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.2070000   -1.8208171   -0.5931829
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.9928051   -1.1822155   -0.8033948
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.8145979   -1.0068326   -0.6223632
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.9985872   -1.2048859   -0.7922886
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.9651235   -1.1852014   -0.7450456
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.5664441   -0.8536667   -0.2792214
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.7137926   -1.1020227   -0.3255624
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.6053114   -0.9458790   -0.2647438
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.4877174   -0.8613192   -0.1141157
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.1395810   -1.6419148   -0.6372473
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.2679956   -1.6901258   -0.8458654
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.2120531   -1.6612229   -0.7628834
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.9935686   -1.3654771   -0.6216600
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.0484941   -1.3923916   -0.7045967
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6282334   -1.2417963   -0.0146706
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.8736986   -1.3684091   -0.3789882
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.2576167   -1.6834373   -0.8317961
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2645257   -0.5817355    0.0526840
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.1866215   -0.4637411    0.0904980
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.3898145   -0.6810687   -0.0985602
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.4294298   -0.6861196   -0.1727400
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.0057970   -1.1116411   -0.8999530
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.8938704   -1.0402191   -0.7475218
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.7931427   -0.9076023   -0.6786831
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.8548944   -0.9915389   -0.7182500
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0298780   -1.1860083   -0.8737476
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1766826   -1.3181827   -1.0351824
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.0548731   -1.2088002   -0.9009460
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0829246   -1.2403909   -0.9254584
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2260091    0.0850178    0.3670005
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                 0.0401647   -0.1307043    0.2110336
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0858112   -0.1159705    0.2875929
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                 0.1496748   -0.0259468    0.3252964
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1133563   -0.1815806   -0.0451320
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.3248534   -0.4042215   -0.2454852
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.3124187   -0.4048038   -0.2200337
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2833922   -0.3497119   -0.2170724
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.1253055   -1.1709061   -1.0797050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.2339637   -1.2832444   -1.1846831
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.1933633   -1.2403645   -1.1463621
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.1703142   -1.2154984   -1.1251300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.4142797   -1.5208638   -1.3076955
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.6451482   -1.7383385   -1.5519578
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.5561100   -1.6478279   -1.4643922
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.4840583   -1.5803704   -1.3877462
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.9255090   -1.1463220   -0.7046960
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.3070547   -1.5621500   -1.0519594
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -1.3713853   -1.5978594   -1.1449112
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.2105930   -1.4358966   -0.9852895
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0113567   -0.2614879    0.2387745
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.0051775   -0.2740843    0.2844392
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.1355774   -0.1550623    0.4262172
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0063278   -0.3233433    0.3359990
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.1440822   -1.3146640   -0.9735003
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -1.3076921   -1.5928318   -1.0225524
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.1818487   -1.4581371   -0.9055603
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.0785148   -1.2926522   -0.8643773
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.4835716   -0.7186867   -0.2484564
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.5514689   -0.7878906   -0.3150472
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.4304429   -0.6454679   -0.2154179
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.7992863   -1.0125480   -0.5860247
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -1.2610753   -1.4951150   -1.0270356
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.1733918   -1.4026524   -0.9441311
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -1.4144638   -1.6119927   -1.2169348
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -1.4628545   -1.6868932   -1.2388158
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.8600818   -1.1419902   -0.5781735
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -1.1306134   -1.4390829   -0.8221439
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -1.2226626   -1.4698547   -0.9754705
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -1.0060361   -1.2295136   -0.7825586
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.4726794   -1.6864969   -1.2588619
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.3167076   -1.5627246   -1.0706906
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.3787311   -1.6197623   -1.1376999
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.3075554   -1.5725106   -1.0426002
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.7680520   -2.0422194   -1.4938846
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -1.0425001   -1.2934941   -0.7915062
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -1.4019345   -1.6953368   -1.1085322
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.4179541   -1.7102290   -1.1256792
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -1.0478081   -1.3290473   -0.7665690
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.4145689   -1.6520456   -1.1770921
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -1.4136946   -1.6517466   -1.1756426
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -1.0391260   -1.2956222   -0.7826299
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -1.3599708   -1.5125321   -1.2074096
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.9500153   -1.1055846   -0.7944460
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.9402421   -1.0728852   -0.8075991
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -1.1639349   -1.3022709   -1.0255989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.7287243   -0.8241856   -0.6332631
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.4106161   -0.4994240   -0.3218081
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.5439719   -0.6512185   -0.4367253
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.5183321   -0.6042610   -0.4324032
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.2955403   -1.4400115   -1.1510691
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.4375489   -1.5943692   -1.2807285
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.3322555   -1.4959541   -1.1685570
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.3131131   -1.4674606   -1.1587656
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.3167168   -0.6665922    0.0331585
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.4140488   -0.7329374   -0.0951602
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.3129819   -0.6599478    0.0339840
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.3891014   -0.7417249   -0.0364780
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -1.6745875   -1.7797629   -1.5694122
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -1.9454874   -2.1036920   -1.7872827
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -1.8984206   -2.0482159   -1.7486253
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -1.8242820   -1.9865896   -1.6619744
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.9240099   -1.0047889   -0.8432308
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -1.2520996   -1.3490611   -1.1551381
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -1.1693085   -1.2678647   -1.0707523
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -1.2399910   -1.3112340   -1.1687480
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -1.6195649   -1.7561381   -1.4829916
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -1.6163518   -1.7759213   -1.4567823
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -1.6887992   -1.8261594   -1.5514391
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -1.6439095   -1.7705411   -1.5172779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.2355011   -1.2746414   -1.1963607
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -1.4670887   -1.5080166   -1.4261607
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -1.4107934   -1.4497649   -1.3718218
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -1.3314273   -1.3696892   -1.2931654
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.1507275   -1.2265391   -1.0749159
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.5034779   -1.5692513   -1.4377045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.4204637   -1.4887203   -1.3522072
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.3045844   -1.3731410   -1.2360277
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -1.7012777   -1.9525837   -1.4499717
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -1.9833461   -2.3278433   -1.6388490
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -2.2517365   -2.4881105   -2.0153624
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -1.9897303   -2.1968349   -1.7826258
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0765173   -0.2341162    0.3871508
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.1943732   -0.6020821    0.2133356
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.0697919   -0.4737366    0.3341529
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0167787   -0.2914386    0.3249959
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -1.8306122   -2.0426169   -1.6186074
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -2.0842605   -2.3512001   -1.8173208
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -1.8312046   -2.1144468   -1.5479625
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -1.8141018   -2.0391114   -1.5890921
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -1.1785595   -1.4405338   -0.9165852
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -1.1809925   -1.4104646   -0.9515204
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -1.1821723   -1.4301206   -0.9342240
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -1.6880536   -1.8940893   -1.4820179
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -1.7196710   -1.9288937   -1.5104483
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -1.5020498   -1.7595757   -1.2445239
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -1.8993531   -2.1315240   -1.6671823
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -1.7586584   -2.0059025   -1.5114143
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -1.1681214   -1.4052884   -0.9309543
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -1.7134935   -2.0194066   -1.4075804
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -1.8319192   -2.1080238   -1.5558147
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -1.8247248   -2.0513532   -1.5980963
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -2.6808439   -2.9028234   -2.4588644
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -2.3650858   -2.7525549   -1.9776167
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -2.7422269   -3.0051652   -2.4792886
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -2.7750654   -3.0332982   -2.5168327
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -2.6242485   -2.8218131   -2.4266839
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -2.5448071   -2.7355314   -2.3540827
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -2.6365831   -2.8354595   -2.4377066
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -2.4912171   -2.7092456   -2.2731886
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -1.5058862   -1.6979379   -1.3138346
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -1.9668138   -2.1530156   -1.7806119
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -1.8925207   -2.0771444   -1.7078970
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -1.7778285   -1.9588551   -1.5968020
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -2.0547296   -2.1968777   -1.9125815
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -1.3306411   -1.5015544   -1.1597278
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -1.4032186   -1.5596006   -1.2468367
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -1.7324758   -1.8944404   -1.5705112
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.7984669   -1.9535196   -1.6434142
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -2.0465917   -2.2236337   -1.8695498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.9085847   -2.0766623   -1.7405071
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.7164794   -1.8886784   -1.5442805
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.5540102   -0.8793618   -0.2286585
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.8120919   -1.1711199   -0.4530640
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.6798774   -1.0495810   -0.3101738
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.7838605   -1.1152326   -0.4524883
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -2.8103466   -2.9081468   -2.7125465
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -3.1288599   -3.2768004   -2.9809193
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -3.0648231   -3.2099088   -2.9197374
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -3.1272847   -3.2798676   -2.9747018
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -2.0208994   -2.1025916   -1.9392072
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -2.6756262   -2.7756109   -2.5756416
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -2.5233489   -2.6325359   -2.4141619
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -2.5421545   -2.6171710   -2.4671381
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -1.7454434   -1.8979584   -1.5929284
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -1.8744064   -2.0616977   -1.6871151
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -2.0601811   -2.2221594   -1.8982027
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -1.8102580   -1.9625661   -1.6579500
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -1.8450771   -1.8917502   -1.7984040
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -2.1725611   -2.2206177   -2.1245046
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -2.0987209   -2.1454982   -2.0519435
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -2.0264964   -2.0766136   -1.9763792
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -1.5589083   -1.6240678   -1.4937489
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -1.9615216   -2.0237619   -1.8992813
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -1.8804424   -1.9453350   -1.8155498
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -1.7321667   -1.7941079   -1.6702256


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1729995   -1.2010694   -1.1449297
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2031806   -1.3209873   -1.0853738
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2069078   -1.3255669   -1.0882487
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3293333   -1.4383829   -1.2202838
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0554016   -1.1850591   -0.9257441
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3357056   -1.3587889   -1.3126223
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9893430   -3.0546993   -2.9239867
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8822648   -1.9637218   -1.8008078
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0194951   -2.0471365   -1.9918537
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7803708   -1.8158650   -1.7448765


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.5832993   -0.9474387   -0.2191599
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.5035792   -0.8822689   -0.1248895
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1790030   -0.5251191    0.1671131
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.1409530   -1.1414379    0.8595318
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.3157362   -0.6534505    1.2849229
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.4115843   -0.7832418    1.6064104
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0769643   -0.8792687    0.7253402
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.4084722   -1.1629469    0.3460025
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.1532500   -0.9136030    0.6071030
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.1782072   -0.0711297    0.4275441
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0057821   -0.2641523    0.2525882
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0276816   -0.2403554    0.2957187
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1473485   -0.6088027    0.3141057
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0388673   -0.4702922    0.3925576
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0787266   -0.3732853    0.5307386
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.1284145   -0.7926070    0.5357780
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0724721   -0.7578702    0.6129261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1460125   -0.4810875    0.7731124
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.4202607   -0.2860329    1.1265544
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.1747955   -0.4298103    0.7794013
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.2091226   -0.7579077    0.3396626
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0779042   -0.3226191    0.4784275
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1252887   -0.5337009    0.2831235
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1649041   -0.5512438    0.2214357
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1119266   -0.0568366    0.2806898
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.2126543    0.0680570    0.3572517
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.1509026   -0.0102781    0.3120833
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1468046   -0.3533847    0.0597755
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0249952   -0.2397377    0.1897474
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0530467   -0.2704444    0.1643510
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.1858445   -0.4075707    0.0358818
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1401979   -0.3863265    0.1059306
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0763343   -0.3014780    0.1488094
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2114971   -0.3141008   -0.1088933
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1990624   -0.3118198   -0.0863051
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1700359   -0.2628020   -0.0772697
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1086582   -0.1681505   -0.0491659
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0680577   -0.1271631   -0.0089523
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0450086   -0.1028218    0.0128045
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2308685   -0.3713804   -0.0903566
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1418303   -0.2819229   -0.0017377
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0697786   -0.2127290    0.0731718
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3815457   -0.7196758   -0.0434156
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.4458763   -0.7627895   -0.1289630
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.2850840   -0.6008155    0.0306475
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0165342   -0.3572958    0.3903641
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.1469341   -0.2357837    0.5296520
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0176845   -0.3964908    0.4318598
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.1636099   -0.4971172    0.1698974
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0377665   -0.3631882    0.2876551
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0655674   -0.2081479    0.3392828
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0678973   -0.4015732    0.2657786
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0531287   -0.2661876    0.3724449
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.3157148   -0.6333018    0.0018723
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0876835   -0.2407050    0.4160720
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.1533885   -0.4600941    0.1533172
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.2017792   -0.5245365    0.1209780
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2705316   -0.6896673    0.1486041
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3625808   -0.7388886    0.0137270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1459543   -0.5069568    0.2150482
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1559718   -0.1666057    0.4785493
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0939483   -0.2260444    0.4139411
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1651240   -0.1732763    0.5035243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.7255519    0.3545528    1.0965509
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3661175   -0.0350769    0.7673120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3500979   -0.0501143    0.7503102
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3667608   -0.7305410   -0.0029805
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3658865   -0.7304787   -0.0012942
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0086821   -0.3689261    0.3862903
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.4099556    0.1931544    0.6267567
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.4197287    0.2185052    0.6209522
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.1960359   -0.0089278    0.4009997
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3181082    0.1900635    0.4461530
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1847525    0.0431657    0.3263392
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.2103923    0.0838677    0.3369169
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1420086   -0.3545839    0.0705667
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0367152   -0.2542226    0.1807921
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0175728   -0.2280511    0.1929055
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0973320   -0.5692216    0.3745577
6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0037350   -0.4846276    0.4920975
6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0723846   -0.5650033    0.4202341
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2708998   -0.4608763   -0.0809234
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2238331   -0.4068669   -0.0407993
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1496945   -0.3431525    0.0437636
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.3280897   -0.4543173   -0.2018622
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.2452986   -0.3727334   -0.1178639
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.3159811   -0.4237090   -0.2082533
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0032130   -0.2080332    0.2144592
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0692344   -0.2641817    0.1257129
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0243447   -0.2113907    0.1627014
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2315876   -0.2858492   -0.1773260
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1752923   -0.2253579   -0.1252268
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0959263   -0.1471769   -0.0446756
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3527504   -0.4511241   -0.2543767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2697362   -0.3668023   -0.1726702
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1538569   -0.2564677   -0.0512460
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.2820684   -0.7077491    0.1436122
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.5504588   -0.8968083   -0.2041093
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.2884526   -0.6144639    0.0375587
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.2708906   -0.7815057    0.2397246
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.1463092   -0.6563646    0.3637462
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0597386   -0.4965532    0.3770759
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.2536483   -0.5929552    0.0856586
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0005925   -0.3518453    0.3506603
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0165104   -0.2920435    0.3250643
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0024330   -0.3510295    0.3461635
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0036128   -0.3645188    0.3572933
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.5094940   -0.8431961   -0.1757920
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.2176212   -0.1128960    0.5481383
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.1796822   -0.4917806    0.1324163
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0389875   -0.3611175    0.2831426
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.5453722   -0.9308645   -0.1598798
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.6637979   -1.0272448   -0.3003510
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.6566034   -0.9872098   -0.3259970
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3157581   -0.1314654    0.7629816
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0613830   -0.4059232    0.2831572
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0942215   -0.4343932    0.2459501
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0794414   -0.1944245    0.3533074
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0123345   -0.2920162    0.2673471
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.1330314   -0.1612098    0.4272726
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4609276   -0.7282050   -0.1936501
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3866345   -0.6525023   -0.1207666
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.2719423   -0.5356313   -0.0082533
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.7240885    0.5028480    0.9453289
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.6515110    0.4408359    0.8621861
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.3222539    0.1075626    0.5369451
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.2481248   -0.4824190   -0.0138307
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1101178   -0.3370534    0.1168177
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0819875   -0.1481531    0.3121280
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2580818   -0.7404056    0.2242420
24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.1258673   -0.6171449    0.3654104
24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2298503   -0.6919791    0.2322785
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.3185132   -0.4955529   -0.1414735
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2544765   -0.4291682   -0.0797848
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.3169381   -0.4977250   -0.1361512
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.6547269   -0.7838992   -0.5255545
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.5024495   -0.6388120   -0.3660870
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.5212551   -0.6323713   -0.4101389
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1289630   -0.3706127    0.1126868
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.3147376   -0.5369408   -0.0925345
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0648146   -0.2804845    0.1508552
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.3274840   -0.3917162   -0.2632518
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.2536438   -0.3160931   -0.1911944
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1814193   -0.2475693   -0.1152693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.4026133   -0.4910707   -0.3141558
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.3215340   -0.4085153   -0.2345528
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1732584   -0.2584009   -0.0881159


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.3191697   -0.5277101   -0.1106294
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0158414   -0.7289451    0.7606278
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1533232   -0.6267868    0.3201405
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0786656   -0.0770577    0.2343889
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0140482   -0.2667700    0.2948665
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0170810   -0.4389572    0.4731193
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0872985   -0.2055361    0.3801331
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0435155   -0.3007845    0.2137535
Birth       ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1206950    0.0283923    0.2129977
Birth       ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0552801   -0.1870587    0.0764985
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0807150   -0.1945625    0.0331325
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1357943   -0.1933494   -0.0782391
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0476940   -0.0811092   -0.0142789
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1093338   -0.1999950   -0.0186727
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2776715   -0.4731528   -0.0821902
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0623774   -0.1639889    0.2887438
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0628256   -0.2349427    0.1092915
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0774877   -0.2814221    0.1264466
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0682580   -0.2697485    0.1332324
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1953198   -0.4355013    0.0448617
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1039345   -0.0864496    0.2943186
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3446012    0.1066629    0.5825395
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1865981   -0.4237118    0.0505156
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2682793    0.1336466    0.4029121
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1845012    0.1033915    0.2656108
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0552989   -0.1838714    0.0732735
6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0027951   -0.3004629    0.3060531
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1366449   -0.2249786   -0.0483112
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2165625   -0.2854819   -0.1476431
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0231312   -0.1413499    0.0950874
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.1002045   -0.1307039   -0.0697052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1933202   -0.2564482   -0.1301922
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.2776374   -0.4902299   -0.0650448
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0694167   -0.3267641    0.1879307
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0542337   -0.2470140    0.1385466
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.1333045   -0.3529340    0.0863250
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0348066   -0.2063743    0.1367611
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.4810593   -0.6923848   -0.2697339
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0356803   -0.1601671    0.2315278
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0653806   -0.1055542    0.2363153
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2928913   -0.4597528   -0.1260298
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.4523075    0.3168129    0.5878020
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0889511   -0.2262244    0.0483222
24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.1422094   -0.4277656    0.1433468
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1789964   -0.2587303   -0.0992625
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.3932151   -0.4636897   -0.3227406
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.1368214   -0.2674221   -0.0062207
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.1744180   -0.2127125   -0.1361235
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2214624   -0.2744701   -0.1684547
