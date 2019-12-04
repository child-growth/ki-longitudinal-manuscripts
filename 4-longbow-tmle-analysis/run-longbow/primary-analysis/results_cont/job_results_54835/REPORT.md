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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            64     175  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             60     175  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          51     175  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         High            18      62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Low             17      62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium          27      62  whz              
Birth       ki0047075b-MAL-ED          INDIA                          High             8      38  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Low             18      38  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Medium          12      38  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          High             5      24  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Low             12      24  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           7      24  whz              
Birth       ki0047075b-MAL-ED          PERU                           High            65     228  whz              
Birth       ki0047075b-MAL-ED          PERU                           Low             83     228  whz              
Birth       ki0047075b-MAL-ED          PERU                           Medium          80     228  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            35     120  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             59     120  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          26     120  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7      97  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             32      97  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          58      97  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High            49      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low             15      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium          22      86  whz              
Birth       ki1000108-IRC              INDIA                          High           101     343  whz              
Birth       ki1000108-IRC              INDIA                          Low            126     343  whz              
Birth       ki1000108-IRC              INDIA                          Medium         116     343  whz              
Birth       ki1000109-EE               PAKISTAN                       High             5     177  whz              
Birth       ki1000109-EE               PAKISTAN                       Low            156     177  whz              
Birth       ki1000109-EE               PAKISTAN                       Medium          16     177  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          High           233    1103  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low            500    1103  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium         370    1103  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     High           163     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low            210     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium         202     575  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     High           169     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low            164     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium         199     532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High           236     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low            226     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium         245     707  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          High            81     639  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Low            444     639  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium         114     639  whz              
Birth       ki1119695-PROBIT           BELARUS                        High          2241   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        Low           4944   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        Medium        6645   13830  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High          7015   12897  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2697   12897  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        3185   12897  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      High           157     748  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Low            344     748  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         247     748  whz              
Birth       ki1135781-COHORTS          INDIA                          High           656    4879  whz              
Birth       ki1135781-COHORTS          INDIA                          Low           1602    4879  whz              
Birth       ki1135781-COHORTS          INDIA                          Medium        2621    4879  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1128    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            838    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         933    2899  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          5631   17988  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           6897   17988  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        5460   17988  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High           805    2391  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            829    2391  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium         757    2391  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            73     196  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             64     196  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          59     196  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         High            71     208  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Low             56     208  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium          81     208  whz              
6 months    ki0047075b-MAL-ED          INDIA                          High            59     208  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Low             72     208  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Medium          77     208  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          High            53     221  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Low             93     221  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          75     221  whz              
6 months    ki0047075b-MAL-ED          PERU                           High            81     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           Low             94     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           Medium          97     272  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            70     254  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low            127     254  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          57     254  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             9     203  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             62     203  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         132     203  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High           157     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low            104     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium         107     368  whz              
6 months    ki1000108-IRC              INDIA                          High           124     408  whz              
6 months    ki1000108-IRC              INDIA                          Low            145     408  whz              
6 months    ki1000108-IRC              INDIA                          Medium         139     408  whz              
6 months    ki1000109-EE               PAKISTAN                       High            15     372  whz              
6 months    ki1000109-EE               PAKISTAN                       Low            324     372  whz              
6 months    ki1000109-EE               PAKISTAN                       Medium          33     372  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           289    1334  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            596    1334  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         449    1334  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            35     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            304     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          41     380  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     High           155     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low            195     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         187     537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           209     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            187     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         207     603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           240     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         246     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2020  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2020  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1434    2020  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High           117     277  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             73     277  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          87     277  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          High            68     561  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            399     561  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium          94     561  whz              
6 months    ki1119695-PROBIT           BELARUS                        High          2657   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        Low           5642   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        Medium        7459   15758  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          4604    8492  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1766    8492  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2122    8492  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      High           185     953  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Low            449     953  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         319     953  whz              
6 months    ki1135781-COHORTS          INDIA                          High           737    5407  whz              
6 months    ki1135781-COHORTS          INDIA                          Low           1774    5407  whz              
6 months    ki1135781-COHORTS          INDIA                          Medium        2896    5407  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    High          1015    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            824    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         867    2706  whz              
6 months    ki1148112-LCNI-5           MALAWI                         High           298     813  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Low            261     813  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Medium         254     813  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          5909   16767  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           5612   16767  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5246   16767  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High          1717    4820  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1584    4820  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium        1519    4820  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            64     171  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             59     171  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          48     171  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         High            62     168  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Low             42     168  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium          64     168  whz              
24 months   ki0047075b-MAL-ED          INDIA                          High            55     199  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Low             69     199  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Medium          75     199  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          High            48     213  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Low             91     213  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          74     213  whz              
24 months   ki0047075b-MAL-ED          PERU                           High            59     200  whz              
24 months   ki0047075b-MAL-ED          PERU                           Low             74     200  whz              
24 months   ki0047075b-MAL-ED          PERU                           Medium          67     200  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            67     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low            120     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          51     238  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7     175  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             54     175  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         114     175  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           158     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium         109     372  whz              
24 months   ki1000108-IRC              INDIA                          High           124     409  whz              
24 months   ki1000108-IRC              INDIA                          Low            146     409  whz              
24 months   ki1000108-IRC              INDIA                          Medium         139     409  whz              
24 months   ki1000109-EE               PAKISTAN                       High             6     166  whz              
24 months   ki1000109-EE               PAKISTAN                       Low            143     166  whz              
24 months   ki1000109-EE               PAKISTAN                       Medium          17     166  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     High           130     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            152     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         146     428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           201     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            174     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         204     579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           191     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            146     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         177     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          High            55     484  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            344     484  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium          85     484  whz              
24 months   ki1119695-PROBIT           BELARUS                        High           654    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        Low           1382    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        Medium        1936    3972  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           184     433  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            118     433  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         131     433  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      High           209    1068  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Low            512    1068  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         347    1068  whz              
24 months   ki1135781-COHORTS          INDIA                          High           601    4166  whz              
24 months   ki1135781-COHORTS          INDIA                          Low           1264    4166  whz              
24 months   ki1135781-COHORTS          INDIA                          Medium        2301    4166  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    High           911    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            748    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         790    2449  whz              
24 months   ki1148112-LCNI-5           MALAWI                         High           214     556  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Low            172     556  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Medium         170     556  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2912    8592  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           2999    8592  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2681    8592  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High          1688    4724  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1528    4724  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium        1508    4724  whz              


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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
![](/tmp/f45dd3a6-9478-41ea-9c58-5fa868a9f50f/e71b5770-42b2-4f4e-9046-f7f6abfcf344/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f45dd3a6-9478-41ea-9c58-5fa868a9f50f/e71b5770-42b2-4f4e-9046-f7f6abfcf344/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f45dd3a6-9478-41ea-9c58-5fa868a9f50f/e71b5770-42b2-4f4e-9046-f7f6abfcf344/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.8044826   -1.0367597   -0.5722056
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.9552775   -1.2365479   -0.6740070
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.9539228   -1.3435462   -0.5642995
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.6588347    0.0230541    1.2946154
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.8172984    0.2350422    1.3995547
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.1042201   -0.3548050    0.5632452
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -1.0262500   -1.5172747   -0.5352253
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.7572222   -1.2526878   -0.2617566
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.0366667   -1.5769678   -0.4963655
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.7180000   -2.4635498   -0.9724502
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.4158333   -0.7761719   -0.0554948
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.7314286   -1.5015148    0.0386577
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.1773739   -0.3650040    0.0102562
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                 0.1419498   -0.0728896    0.3567892
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.1912420   -0.4015119    0.0190280
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2239504   -0.5378485    0.0899476
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1737296   -0.4957910    0.1483319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.3596127   -0.8245217    0.1052963
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 1.1228571    0.7098698    1.5358445
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.9103125    0.5359266    1.2846984
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.6998276    0.4307367    0.9689185
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.2439589   -0.6379679    0.1500502
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1645243   -0.8282721    0.4992235
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.5987378   -1.2311971    0.0337215
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.8938561   -1.1971183   -0.5905939
Birth       ki1000108-IRC              INDIA                          Low                  NA                -0.9980410   -1.2788122   -0.7172697
Birth       ki1000108-IRC              INDIA                          Medium               NA                -1.1126984   -1.3855909   -0.8398060
Birth       ki1000109-EE               PAKISTAN                       High                 NA                 0.6080000    0.0422458    1.1737542
Birth       ki1000109-EE               PAKISTAN                       Low                  NA                -0.3569551   -0.5627099   -0.1512003
Birth       ki1000109-EE               PAKISTAN                       Medium               NA                -0.3968750   -0.8274988    0.0337488
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.6307641   -0.8028385   -0.4586897
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.6472751   -0.8587327   -0.4358175
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6783427   -0.9099240   -0.4467615
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.2965466   -1.4871617   -1.1059316
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.2941723   -1.4486038   -1.1397409
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -1.4603337   -1.6277316   -1.2929358
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.3025887   -1.4208751   -1.1843023
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.2427471   -1.3843294   -1.1011649
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.3344413   -1.4683873   -1.2004953
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.2973054   -1.4363278   -1.1582830
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2584399   -1.4047853   -1.1120944
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2053105   -1.3500847   -1.0605363
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.3071902   -1.5467824   -1.0675980
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.0770298   -1.1785956   -0.9754641
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2180802   -1.4300414   -1.0061190
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -1.1421423   -1.3397742   -0.9445104
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                -1.1569476   -1.4201883   -0.8937070
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                -1.1514711   -1.3570657   -0.9458765
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.5349101   -0.5702560   -0.4995643
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4917935   -0.5479373   -0.4356497
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5203136   -0.5699934   -0.4706338
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.0048279   -1.2454128   -0.7642430
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.0799879   -1.2220962   -0.9378795
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.0726370   -1.2589879   -0.8862861
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.9410089   -1.0317053   -0.8503126
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.9819543   -1.0474493   -0.9164593
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.9784841   -1.0232108   -0.9337574
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.7897116   -0.8645606   -0.7148626
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.7252816   -0.8126256   -0.6379375
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.7284876   -0.8136884   -0.6432868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.7858479   -0.8189662   -0.7527295
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.7925250   -0.8257731   -0.7592770
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.7597896   -0.7925427   -0.7270365
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.6910041   -0.7882835   -0.5937247
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.7101608   -0.7965719   -0.6237496
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.6723390   -0.7571502   -0.5875278
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0120317   -0.2430023    0.2189389
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2126072   -0.4925417    0.0673273
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                 0.0395604   -0.1941562    0.2732770
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 1.1927207    0.9180945    1.4673470
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.7638079    0.4387513    1.0888644
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 1.0505053    0.7893034    1.3117072
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.7448684   -0.9723863   -0.5173506
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.7070750   -0.9540299   -0.4601202
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.6838135   -0.9205804   -0.4470465
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.4448588    0.1920862    0.6976314
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0916156   -0.1042033    0.2874345
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0332660   -0.2770341    0.2105021
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 1.1365901    0.9167237    1.3564565
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 1.0211567    0.8048567    1.2374567
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                 1.0325028    0.8298137    1.2351919
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.7340496    0.4689003    0.9991989
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.4090075    0.1847856    0.6332293
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.6779228    0.3569962    0.9988494
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.6633333    0.1592828    1.1673839
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6255108    0.3542717    0.8967498
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.5124747    0.3361530    0.6887964
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.4838849   -0.7195103   -0.2482595
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.5246460   -0.7898590   -0.2594330
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.4742550   -0.7839471   -0.1645629
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.4831464   -0.7253426   -0.2409503
6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.5468923   -0.7690971   -0.3246875
6 months    ki1000108-IRC              INDIA                          Medium               NA                -0.7422013   -0.9845104   -0.4998923
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.6888931   -1.0606418   -0.3171445
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.8038003   -0.9291982   -0.6784024
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                -0.5405617   -0.9068262   -0.1742971
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.5986221   -0.6803392   -0.5169049
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7896292   -0.9560823   -0.6231761
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.5574126   -0.7772574   -0.3375678
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.7263120   -1.0382977   -0.4143263
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.0471363   -1.1769965   -0.9172760
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.0355334   -1.4410845   -0.6299823
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.2869501   -0.4725022   -0.1013981
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.5655124   -0.7086471   -0.4223778
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.4267265   -0.5789057   -0.2745473
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1563454   -0.3114863   -0.0012046
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3518953   -0.5120449   -0.1917458
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.1471986   -0.3000399    0.0056426
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0813327   -0.0436758    0.2063412
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1042789   -0.2424023    0.0338444
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.1315635   -0.0174420    0.2805690
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0919625   -0.0158052    0.1997303
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1581213   -0.0927975    0.4090401
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0786053    0.0159563    0.1412543
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.1102803   -0.2832957    0.0627351
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                 0.0619852   -0.1842347    0.3082052
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -0.0877100   -0.2970797    0.1216596
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1939492   -0.4867021    0.0988037
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.6373557   -0.7372934   -0.5374180
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.6096876   -0.8674853   -0.3518898
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.5685492    0.4999287    0.6371698
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.5742930    0.4980901    0.6504959
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.5841241    0.5197892    0.6484590
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3724485    0.3372592    0.4076379
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1812133    0.1190184    0.2434082
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.2540040    0.1997711    0.3082369
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1940239   -0.0025170    0.3905647
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.2219126    0.1186915    0.3251336
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1875622    0.0579219    0.3172025
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.4760650   -0.5750475   -0.3770825
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.8385080   -0.9075260   -0.7694901
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.6543461   -0.7000391   -0.6086531
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3159128   -0.3807709   -0.2510547
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3335420   -0.4192857   -0.2477982
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2760832   -0.3535257   -0.1986406
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5520651    0.4310917    0.6730385
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.3831244    0.2638804    0.5023685
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                 0.3727165    0.2403612    0.5050719
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.5514507   -0.5850896   -0.5178118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.6418368   -0.6778742   -0.6057993
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.5825722   -0.6195021   -0.5456422
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2937815   -0.3501958   -0.2373672
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.5089109   -0.5737047   -0.4441171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.3764611   -0.4422996   -0.3106226
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.5936166   -0.8315060   -0.3557273
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.9995807   -1.2364942   -0.7626673
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.7490396   -1.0030778   -0.4950013
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.6718792    0.3251901    1.0185683
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.2058472   -0.2590302    0.6707245
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.4315914    0.1253808    0.7378021
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9455989   -1.1662272   -0.7249706
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0686448   -1.2783273   -0.8589623
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.8501898   -1.0666741   -0.6337055
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1111549   -0.3879637    0.1656539
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.3965434   -0.5703483   -0.2227386
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.4477742   -0.6500575   -0.2454910
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.1835796   -0.0136693    0.3808285
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.1734617   -0.0560944    0.4030179
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0139491   -0.2269821    0.1990839
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.4703046    0.2254786    0.7151306
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3317279    0.1613870    0.5020688
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.4888562    0.2528099    0.7249025
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1528571   -0.6553600    0.3496457
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0770370   -0.3623459    0.2082718
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1849561    0.0243806    0.3455316
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.3841954   -0.5338360   -0.2345548
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.7768592   -0.9765575   -0.5771610
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.5876851   -0.7877264   -0.3876438
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.6533652   -0.8226618   -0.4840685
24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.7210989   -0.8800341   -0.5621637
24 months   ki1000108-IRC              INDIA                          Medium               NA                -0.8571284   -1.0010142   -0.7132425
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -0.8850000   -1.5331947   -0.2368053
24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -1.0096270   -1.1665790   -0.8526751
24 months   ki1000109-EE               PAKISTAN                       Medium               NA                -1.0013725   -1.5431822   -0.4595629
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.7803513   -0.9598137   -0.6008889
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.0665520   -1.2181781   -0.9149260
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.8998011   -1.0872812   -0.7123210
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.9017143   -1.0271062   -0.7763225
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.0015425   -1.1476109   -0.8554741
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8784815   -1.0341713   -0.7227917
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.4450181   -0.6127983   -0.2772379
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.8269799   -0.9773275   -0.6766323
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.6135677   -0.7790662   -0.4480693
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.9051067   -1.1820686   -0.6281447
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1072878   -1.2105075   -1.0040682
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2538354   -1.5380002   -0.9696706
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.7450786    0.5863236    0.9038336
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.6677429    0.5022565    0.8332293
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                 0.6846396    0.5819917    0.7872874
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.1830111   -1.3364263   -1.0295958
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.2539718   -1.4450319   -1.0629118
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1270938   -1.3015759   -0.9526116
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.2736773   -0.3983980   -0.1489567
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.2783109   -0.3554116   -0.2012103
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.2695748   -0.3718242   -0.1673255
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.2819955   -0.3791882   -0.1848027
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.9587756   -1.0292661   -0.8882850
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.5492727   -0.5944965   -0.5040488
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.5425536   -0.6054648   -0.4796424
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.7106260   -0.7801172   -0.6411348
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6354548   -0.7036328   -0.5672767
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1799537    0.0416973    0.3182101
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.2596450   -0.3922007   -0.1270893
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.1335704   -0.2802610    0.0131202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2954154   -1.3435271   -1.2473036
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.2803057   -1.3227828   -1.2378286
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3288041   -1.3745321   -1.2830762
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1983468   -1.2505705   -1.1461230
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.2660501   -1.3222189   -1.2098813
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.2152505   -1.2713223   -1.1591787


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9109143   -1.0715205   -0.7503080
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9021053   -1.2132997   -0.5909108
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7791667   -1.1649642   -0.3933692
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7997938    0.5930740    1.0065137
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1182629   -1.2060675   -1.0304584
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5152927   -0.5411678   -0.4894176
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0590508   -1.1604735   -0.9576281
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9831277   -1.0164986   -0.9497568
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7779831   -0.7969771   -0.7589891
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6895483   -0.7419864   -0.6371102
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0723895   -0.2148128    0.0700339
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9744591    0.8094713    1.1394470
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6859816   -0.8229470   -0.5490162
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1223152   -0.0106456    0.2552761
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0566544    0.9348515    1.1784573
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5536864    0.4102695    0.6971033
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7785977   -0.8934940   -0.6637013
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0807224    0.0278917    0.1335530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0568833   -0.1722874    0.0585208
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6087819   -0.6949591   -0.5226048
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3101107    0.2844075    0.3358139
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1972718    0.1253735    0.2691700
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7006307   -0.7314213   -0.6698400
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4399754    0.3683855    0.5115653
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932740   -0.6128028   -0.5737451
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3903558   -0.4277318   -0.3529799
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.7626901   -0.8991383   -0.6262418
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4620139    0.2549144    0.6691133
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9438945   -1.0682517   -0.8195372
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3583333   -0.4767474   -0.2399193
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1112042   -0.0124506    0.2348589
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0906000   -0.0489294    0.2301294
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0042771   -1.1523338   -0.8562205
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1372176   -1.2263063   -1.0481290
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1825404   -1.2814625   -1.0836183
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2765075   -0.3306839   -0.2223311
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6386606   -0.6699072   -0.6074140
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0441457   -0.1265899    0.0382985
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2974744   -1.3207756   -1.2741732
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2243057   -1.2562915   -1.1923198


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1507948   -0.5154709    0.2138812
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1494402   -0.6027382    0.3038578
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  High               0.1584637   -0.7058916    1.0228190
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.5546147   -1.3424728    0.2332435
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High               0.2690278   -0.4285333    0.9665889
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0104167   -0.7405061    0.7196728
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High               1.3021667    0.4741036    2.1302297
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High               0.9865714   -0.0852855    2.0584284
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High               0.3193237    0.0330945    0.6055530
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0138681   -0.2968218    0.2690857
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0502209   -0.3882374    0.4886792
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.1356622   -0.6863430    0.4150186
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2125446   -0.7699703    0.3448810
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.4230296   -0.9159478    0.0698887
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               0.0794345   -0.6944067    0.8532757
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.3547789   -1.0987326    0.3891747
Birth       ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low                  High              -0.1041849   -0.4867038    0.2783341
Birth       ki1000108-IRC              INDIA                          Medium               High              -0.2188423   -0.5975899    0.1599053
Birth       ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low                  High              -0.9649551   -1.5669625   -0.3629478
Birth       ki1000109-EE               PAKISTAN                       Medium               High              -1.0048750   -1.7158705   -0.2938795
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.0165110   -0.2250481    0.1920261
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0475786   -0.3026963    0.2075391
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  High               0.0023743   -0.2428328    0.2475814
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1637871   -0.4174803    0.0899062
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High               0.0598416   -0.1184164    0.2380996
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0318526   -0.2035990    0.1398938
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               0.0388655   -0.1572204    0.2349515
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0919949   -0.1028238    0.2868136
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.2301604   -0.0238825    0.4842032
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0891100   -0.2260460    0.4042660
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0148053   -0.1399439    0.1103332
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0093288   -0.0856032    0.0669456
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               0.0431167   -0.0206930    0.1069263
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0145966   -0.0436108    0.0728039
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0751600   -0.3470233    0.1967033
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0678092   -0.3647705    0.2291522
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.0409454   -0.1495784    0.0676877
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0374752   -0.1349969    0.0600466
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.0644301   -0.0484249    0.1772851
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.0612241   -0.0498826    0.1723307
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0066772   -0.0505101    0.0371557
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               0.0260582   -0.0157458    0.0678623
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0191567   -0.1453102    0.1069968
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0186651   -0.1087242    0.1460544
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2005755   -0.5639087    0.1627578
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.0515921   -0.2774225    0.3806068
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.4289129   -0.8562168   -0.0016090
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.1422155   -0.5244328    0.2400019
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0377934   -0.2989601    0.3745469
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High               0.0610550   -0.2676217    0.3897317
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3532432   -0.6716300   -0.0348565
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.4781248   -0.8270795   -0.1291701
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.1154334   -0.4238724    0.1930056
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.1040873   -0.4041206    0.1959460
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.3250422   -0.6721868    0.0221025
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0561268   -0.4728624    0.3606087
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0378226   -0.6102189    0.5345738
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1508586   -0.6848589    0.3831417
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.0407611   -0.3963679    0.3148458
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               0.0096299   -0.3786926    0.3979525
6 months    ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low                  High              -0.0637459   -0.3929338    0.2654421
6 months    ki1000108-IRC              INDIA                          Medium               High              -0.2590549   -0.6018620    0.0837522
6 months    ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low                  High              -0.1149071   -0.5073587    0.2775445
6 months    ki1000109-EE               PAKISTAN                       Medium               High               0.1483315   -0.3724859    0.6691489
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1910071   -0.3388861   -0.0431281
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.0412095   -0.1503765    0.2327954
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.3208243   -0.6590011    0.0173524
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.3092215   -0.8214552    0.2030123
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.2785623   -0.5131955   -0.0439291
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1397764   -0.3799097    0.1003569
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1955499   -0.4186510    0.0275512
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High               0.0091468   -0.2085557    0.2268494
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1856116   -0.3718781    0.0006548
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0502308   -0.1444797    0.2449412
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0661588   -0.2068394    0.3391570
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0133573   -0.1376012    0.1108867
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High               0.1722655   -0.1291704    0.4737014
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High               0.0225703   -0.2500556    0.2951961
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.4434065   -0.7530839   -0.1337292
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.4157384   -0.8056071   -0.0258696
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0057438   -0.0716499    0.0831374
6 months    ki1119695-PROBIT           BELARUS                        Medium               High               0.0155749   -0.0531070    0.0842567
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1912352   -0.2623578   -0.1201125
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1184445   -0.1827775   -0.0541115
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0278887   -0.1942148    0.2499922
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0064616   -0.2418327    0.2289094
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.3624430   -0.4832684   -0.2416176
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.1782811   -0.2874387   -0.0691234
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.0176292   -0.1249951    0.0897367
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.0398296   -0.0606313    0.1402906
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.1689407   -0.3391297    0.0012484
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.1793486   -0.3583492   -0.0003479
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0903861   -0.1381886   -0.0425836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0311215   -0.0795034    0.0172604
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2151294   -0.2978292   -0.1324296
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0826796   -0.1674253    0.0020661
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.4059641   -0.7419731   -0.0699551
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1554229   -0.5042255    0.1933796
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.4660320   -1.0433221    0.1112580
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.2402877   -0.7020988    0.2215233
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.1230459   -0.4278159    0.1817242
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High               0.0954091   -0.2146265    0.4054447
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2853885   -0.6119642    0.0411872
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3366193   -0.6810283    0.0077897
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.0101179   -0.3098872    0.2896514
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.1975287   -0.4850852    0.0900278
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1385768   -0.4364458    0.1592923
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0185516   -0.3211624    0.3582656
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0758201   -0.5020296    0.6536698
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.3378133   -0.1897221    0.8653487
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.3926638   -0.6427082   -0.1426195
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.2034897   -0.4537390    0.0467596
24 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low                  High              -0.0677337   -0.2995739    0.1641065
24 months   ki1000108-IRC              INDIA                          Medium               High              -0.2037632   -0.4254707    0.0179443
24 months   ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low                  High              -0.1246270   -0.7915530    0.5422989
24 months   ki1000109-EE               PAKISTAN                       Medium               High              -0.1163725   -0.9611885    0.7284434
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.2862007   -0.5211001   -0.0513013
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1194498   -0.3791121    0.1402125
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0998282   -0.2909476    0.0912913
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High               0.0232328   -0.1748634    0.2213291
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.3819618   -0.6065391   -0.1573845
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1685496   -0.4030952    0.0659959
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.2021811   -0.4970219    0.0926596
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3487287   -0.7446400    0.0471826
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.0773357   -0.2335172    0.0788459
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.0604390   -0.2029166    0.0820386
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0709608   -0.3156368    0.1737153
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0559173   -0.1765225    0.2883572
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0046336   -0.1513105    0.1420432
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0041025   -0.1571994    0.1654044
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.6767801   -0.7975017   -0.5560585
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.2672772   -0.3748489   -0.1597055
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1680724   -0.2609810   -0.0751638
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0929012   -0.1847204   -0.0010820
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.4395987   -0.6296040   -0.2495934
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.3135241   -0.5136269   -0.1134213
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               0.0151097   -0.0466617    0.0768810
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0333887   -0.1028727    0.0360953
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0677034   -0.1434524    0.0080457
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0169037   -0.0953285    0.0615210


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1064316   -0.3122487    0.0993854
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.2559315   -0.7846242    0.2727611
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1241447   -0.3620952    0.6103847
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.9388333    0.2510235    1.6266432
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.1253564   -0.0487557    0.2994684
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0313671   -0.2535525    0.3162867
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3230633   -0.7574306    0.1113039
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.2208667   -0.4854978    0.0437644
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.1167270   -0.3572479    0.1237939
Birth       ki1000109-EE               PAKISTAN                       High                 NA                -0.9413051   -1.5220076   -0.3606026
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0392812   -0.2164986    0.1379361
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0533751   -0.2119780    0.1052278
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0041301   -0.0963191    0.1045792
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0531540   -0.0601087    0.1664168
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1889273   -0.0355714    0.4134259
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0027210   -0.0636925    0.0582504
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0196174   -0.0041609    0.0433958
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0542229   -0.2665744    0.1581285
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0421187   -0.1280790    0.0438415
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0469866   -0.0117938    0.1057670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0078648   -0.0184689    0.0341984
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0014558   -0.0741438    0.0770554
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0603577   -0.2456306    0.1249152
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.2182616   -0.4488164    0.0122932
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0588869   -0.1463792    0.2641529
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.3225436   -0.5446114   -0.1004758
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0799357   -0.2687509    0.1088795
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1918712   -0.4277129    0.0439706
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1096470   -0.6117498    0.3924559
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0187917   -0.1993007    0.1617173
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.1157833   -0.3212775    0.0897109
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.0897045   -0.4650115    0.2856024
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0670863   -0.1835607    0.0493880
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.2858459   -0.5916791    0.0199872
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1604537   -0.3156802   -0.0052272
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0427452   -0.1710921    0.0856017
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0515705   -0.1579650    0.0548241
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0112402   -0.1043134    0.0818331
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0533970   -0.0827325    0.1895265
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.4148328   -0.6947251   -0.1349404
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0106946   -0.0469470    0.0683363
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0623378   -0.0877416   -0.0369340
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0032479   -0.1728523    0.1793481
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2245657   -0.3210195   -0.1281119
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0220695   -0.0318840    0.0760229
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1120897   -0.2084419   -0.0157375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0418233   -0.0700278   -0.0136188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0965743   -0.1426641   -0.0504845
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1690734   -0.3573522    0.0192053
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.2098653   -0.4857907    0.0660601
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0017044   -0.1926412    0.1960501
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2471784   -0.4887734   -0.0055834
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0723754   -0.2480812    0.1033304
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0612745   -0.2646122    0.1420631
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2434571   -0.2583165    0.7452308
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1729551   -0.2913671   -0.0545432
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0924498   -0.2326273    0.0477277
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -0.1192771   -0.7609190    0.5223648
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1312277   -0.2816595    0.0192041
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0088473   -0.0950163    0.1127109
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1653321   -0.2918639   -0.0388003
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2321110   -0.4969256    0.0327037
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0576491   -0.1734153    0.0581172
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0004707   -0.1145248    0.1154661
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0028301   -0.1162180    0.1105577
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.3566651   -0.4518771   -0.2614531
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0674056   -0.1182970   -0.0165141
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.2240994   -0.3292423   -0.1189564
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0020590   -0.0450474    0.0409294
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0259589   -0.0685891    0.0166712
