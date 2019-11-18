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

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nchldlt5
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
* delta_W_nchldlt5
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

agecat      studyid                    country                        nrooms    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+            12     213  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            130     213  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             46     213  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             25     213  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         4+            30      60  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0      60  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         2             10      60  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         3             20      60  haz              
Birth       ki0047075b-MAL-ED          INDIA                          4+             2      41  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1             18      41  haz              
Birth       ki0047075b-MAL-ED          INDIA                          2             17      41  haz              
Birth       ki0047075b-MAL-ED          INDIA                          3              4      41  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          4+            15      26  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1              7      26  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          2              2      26  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          3              2      26  haz              
Birth       ki0047075b-MAL-ED          PERU                           4+           107     215  haz              
Birth       ki0047075b-MAL-ED          PERU                           1             13     215  haz              
Birth       ki0047075b-MAL-ED          PERU                           2             45     215  haz              
Birth       ki0047075b-MAL-ED          PERU                           3             50     215  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+            67      96  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              5      96  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             12      96  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             12      96  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            49     120  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     120  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             31     120  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             31     120  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             5      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             38      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             29      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             20      92  haz              
Birth       ki1000108-IRC              INDIA                          4+            17     386  haz              
Birth       ki1000108-IRC              INDIA                          1            175     386  haz              
Birth       ki1000108-IRC              INDIA                          2            161     386  haz              
Birth       ki1000108-IRC              INDIA                          3             33     386  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+            19     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            390     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     2             83     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     3             47     539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+            93     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            353     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2            187     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3             99     732  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          4+           321     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1             49     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          2            145     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          3            181     696  haz              
Birth       ki1114097-CONTENT          PERU                           4+             1       2  haz              
Birth       ki1114097-CONTENT          PERU                           1              0       2  haz              
Birth       ki1114097-CONTENT          PERU                           2              1       2  haz              
Birth       ki1114097-CONTENT          PERU                           3              0       2  haz              
Birth       ki1135781-COHORTS          INDIA                          4+            92    4769  haz              
Birth       ki1135781-COHORTS          INDIA                          1           3125    4769  haz              
Birth       ki1135781-COHORTS          INDIA                          2           1385    4769  haz              
Birth       ki1135781-COHORTS          INDIA                          3            167    4769  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+           755   22429  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          13942   22429  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           5846   22429  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           1886   22429  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+           128    2820  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           1705    2820  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            709    2820  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3            278    2820  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+            12     240  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            150     240  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     2             50     240  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     3             28     240  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         4+           126     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1              4     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         2             20     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         3             59     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          4+            25     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1             84     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          2             78     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          3             48     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          4+           131     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1             52     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          2             31     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          3             22     236  haz              
6 months    ki0047075b-MAL-ED          PERU                           4+           139     270  haz              
6 months    ki0047075b-MAL-ED          PERU                           1             19     270  haz              
6 months    ki0047075b-MAL-ED          PERU                           2             50     270  haz              
6 months    ki0047075b-MAL-ED          PERU                           3             62     270  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           191     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             14     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             21     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     249  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           108     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             62     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             64     247  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            198     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            106     369  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             51     369  haz              
6 months    ki1000108-IRC              INDIA                          4+            17     405  haz              
6 months    ki1000108-IRC              INDIA                          1            183     405  haz              
6 months    ki1000108-IRC              INDIA                          2            170     405  haz              
6 months    ki1000108-IRC              INDIA                          3             35     405  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+            21     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            431     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     2             94     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     3             58     604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            339     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            184     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3            101     715  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          4+           268     564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1             40     564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          2            115     564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          3            141     564  haz              
6 months    ki1114097-CONTENT          PERU                           4+            78     215  haz              
6 months    ki1114097-CONTENT          PERU                           1             44     215  haz              
6 months    ki1114097-CONTENT          PERU                           2             54     215  haz              
6 months    ki1114097-CONTENT          PERU                           3             39     215  haz              
6 months    ki1135781-COHORTS          INDIA                          4+            93    4962  haz              
6 months    ki1135781-COHORTS          INDIA                          1           3213    4962  haz              
6 months    ki1135781-COHORTS          INDIA                          2           1474    4962  haz              
6 months    ki1135781-COHORTS          INDIA                          3            182    4962  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           744   16800  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           9625   16800  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           4740   16800  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1691   16800  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           262    4825  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2850    4825  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           1225    4825  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3            488    4825  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            134     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     2             40     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         4+           104     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         2             16     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         3             49     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          4+            25     227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1             82     227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          2             74     227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          3             46     227  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          4+           127     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1             48     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          2             31     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          3             22     228  haz              
24 months   ki0047075b-MAL-ED          PERU                           4+           110     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           1             16     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           2             32     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           3             43     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           183     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     238  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            98     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             50     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             57     214  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            201     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            105     371  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             51     371  haz              
24 months   ki1000108-IRC              INDIA                          4+            17     407  haz              
24 months   ki1000108-IRC              INDIA                          1            184     407  haz              
24 months   ki1000108-IRC              INDIA                          2            170     407  haz              
24 months   ki1000108-IRC              INDIA                          3             36     407  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            407     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     2             92     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     3             57     578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            82     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            217     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            137     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78     514  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          4+           231     488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1             35     488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          2            106     488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          3            116     488  haz              
24 months   ki1114097-CONTENT          PERU                           4+            63     164  haz              
24 months   ki1114097-CONTENT          PERU                           1             30     164  haz              
24 months   ki1114097-CONTENT          PERU                           2             39     164  haz              
24 months   ki1114097-CONTENT          PERU                           3             32     164  haz              
24 months   ki1135781-COHORTS          INDIA                          4+            76    3746  haz              
24 months   ki1135781-COHORTS          INDIA                          1           2299    3746  haz              
24 months   ki1135781-COHORTS          INDIA                          2           1221    3746  haz              
24 months   ki1135781-COHORTS          INDIA                          3            150    3746  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           367    8620  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5051    8620  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2400    8620  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            802    8620  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           251    4747  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2789    4747  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           1216    4747  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            491    4747  haz              


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
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

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
![](/tmp/a6dd94b0-d65c-4443-a1b1-f28236980217/66798f21-2520-4987-9fde-817617291adf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a6dd94b0-d65c-4443-a1b1-f28236980217/66798f21-2520-4987-9fde-817617291adf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a6dd94b0-d65c-4443-a1b1-f28236980217/66798f21-2520-4987-9fde-817617291adf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.4181893   -0.9761462    0.1397676
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1297178   -1.3096661   -0.9497694
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.1240564   -1.4199777   -0.8281351
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.0065516   -1.3364072   -0.6766961
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.8616050   -1.0630403   -0.6601697
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.0296015   -1.5547533   -0.5044497
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -0.9555812   -1.1599209   -0.7512416
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                -0.9306826   -1.1421224   -0.7192428
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.4688060   -0.7283817   -0.2092303
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1980000   -0.4674799    0.0714799
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.0133333   -1.4164289   -0.6102377
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.7058333   -1.2016555   -0.2100111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.2567347   -1.5615935   -0.9518759
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8588889   -1.4085413   -0.3092365
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.1070968   -1.6324652   -0.5817283
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.0022581   -1.3571466   -0.6473695
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.8740000   -1.4739904   -0.2740096
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.8946053   -1.2459292   -0.5432813
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.1229310   -1.4808250   -0.7650370
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.8750000   -1.3685904   -0.3814096
Birth       ki1000108-IRC              INDIA                          4+                   NA                 0.4878105   -0.4714065    1.4470274
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2772098   -0.5178087   -0.0366109
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.4127224   -0.6677967   -0.1576480
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.2545468   -0.7920007    0.2829071
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.9586282   -1.4081651   -0.5090912
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8726644   -0.9588316   -0.7864972
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.9207342   -1.1370914   -0.7043770
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.8816814   -1.1338704   -0.6294924
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.8253428   -1.0294832   -0.6212023
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9656786   -1.0643768   -0.8669803
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.9087838   -1.0652927   -0.7522749
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.8043315   -1.0016027   -0.6070604
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.9909906   -1.1094221   -0.8725590
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2611548   -1.5771217   -0.9451879
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.1274009   -1.2998281   -0.9549738
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.1556206   -1.3105231   -1.0007181
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.3935788   -0.5419380   -0.2452196
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7633306   -0.8044702   -0.7221910
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.5215394   -0.5872007   -0.4558782
Birth       ki1135781-COHORTS          INDIA                          3                    NA                -0.4746877   -0.6577975   -0.2915779
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.3027199   -1.3672132   -1.2382266
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.6329862   -1.6563662   -1.6096061
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.5637965   -1.6009055   -1.5266875
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.4773489   -1.5446806   -1.4100171
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.5782039   -1.8077241   -1.3486836
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5772136   -1.6406096   -1.5138176
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.4531061   -1.5500853   -1.3561268
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.3511202   -1.5045697   -1.1976707
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -1.1798438   -1.8610736   -0.4986140
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2337271   -1.3751528   -1.0923013
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.2359294   -1.5534063   -0.9184525
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.0135227   -1.3022596   -0.7247858
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.9615285   -1.2261514   -0.6969056
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1021254   -1.3151233   -0.8891275
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -1.4127097   -1.6228182   -1.2026012
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -1.0491481   -1.2907001   -0.8075960
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.5052157   -0.6550738   -0.3553576
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.6597273   -0.9042344   -0.4152202
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.6637471   -0.9681588   -0.3593353
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.5512908   -0.9391099   -0.1634716
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -1.3487534   -1.5090642   -1.1884426
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.7389561   -2.2139082   -1.2640041
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                -1.2248481   -1.4775523   -0.9721438
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                -1.2821245   -1.5011322   -1.0631167
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -1.0643557   -1.2223173   -0.9063940
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.2244538   -1.7110430   -0.7378647
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.7867506   -1.1853504   -0.3881508
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.0635944   -1.4124252   -0.7147635
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.3634785   -1.5321968   -1.1947602
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3996421   -2.1219928   -0.6772914
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.4750962   -1.7672206   -1.1829719
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.2295590   -1.4467667   -1.0123514
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -1.1561516   -1.7333726   -0.5789305
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.3738176   -1.5538680   -1.1937671
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.5791983   -1.8683557   -1.2900409
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -1.2729201   -1.7544227   -0.7914174
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.9847938   -1.7889214   -0.1806661
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2269610   -1.4230203   -1.0309016
6 months    ki1000108-IRC              INDIA                          2                    NA                -1.3006740   -1.5000134   -1.1013346
6 months    ki1000108-IRC              INDIA                          3                    NA                -1.3913169   -1.8303693   -0.9522645
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.9412803   -1.3388253   -0.5437352
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1320481   -1.2204030   -1.0436932
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.0241157   -1.2161324   -0.8320989
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.0172285   -1.2509545   -0.7835025
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.1032077   -1.2762207   -0.9301946
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2839062   -1.3888185   -1.1789938
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.2389590   -1.3872803   -1.0906377
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.9200193   -1.1098550   -0.7301836
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.2992338   -1.4114540   -1.1870135
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.5893086   -1.8976452   -1.2809721
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.3749445   -1.5585734   -1.1913156
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.3101587   -1.4610957   -1.1592216
6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.3244276   -0.6177870   -0.0310682
6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.5534060   -0.9543612   -0.1524508
6 months    ki1114097-CONTENT          PERU                           2                    NA                -0.1424089   -0.4778529    0.1930351
6 months    ki1114097-CONTENT          PERU                           3                    NA                -0.2459987   -0.6552460    0.1632486
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.4854081   -0.5984003   -0.3724159
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.2017740   -1.2439853   -1.1595627
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.7637358   -0.8243945   -0.7030770
6 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.7070122   -0.8698528   -0.5441715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.0365839   -1.1121429   -0.9610249
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3572341   -1.3852317   -1.3292365
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.2991770   -1.3399300   -1.2584240
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.2119509   -1.2699897   -1.1539122
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.1265952   -1.3238269   -0.9293634
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.4084988   -1.4546285   -1.3623691
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.3056489   -1.3747470   -1.2365509
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.2074671   -1.3093773   -1.1055570
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -1.6512834   -2.1454218   -1.1571450
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.0585330   -2.2163604   -1.9007055
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.9864306   -2.3232084   -1.6496527
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.8545011   -2.1593826   -1.5496195
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -1.8847345   -2.2186518   -1.5508172
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7453292   -1.9629994   -1.5276590
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -2.1196112   -2.3433865   -1.8958359
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.8601854   -2.1019735   -1.6183973
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -1.2780984   -1.4369162   -1.1192806
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.3975983   -1.6148099   -1.1803867
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.2147276   -1.5523184   -0.8771368
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -1.4509142   -1.9743843   -0.9274440
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -1.7208468   -1.8949728   -1.5467208
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -2.0609669   -2.4779517   -1.6439821
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -1.6332497   -1.8939904   -1.3725090
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -1.7085869   -1.9564873   -1.4606865
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -1.6331655   -1.7841376   -1.4821933
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.8285106   -2.4666590   -1.1903623
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.2192426   -1.6899409   -0.7485444
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.8700606   -2.3941808   -1.3459404
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -2.5722449   -2.7682142   -2.3762756
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5316667   -3.4733393   -1.5899941
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -3.0096000   -3.2841137   -2.7350863
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -2.4702632   -2.7008840   -2.2396423
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -2.3006230   -2.6992472   -1.9019988
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.6485577   -2.7848166   -2.5122988
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -2.4919476   -2.6765493   -2.3073458
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -2.4508006   -2.7506959   -2.1509054
24 months   ki1000108-IRC              INDIA                          4+                   NA                -1.9317626   -2.4720168   -1.3915084
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8740037   -2.0174873   -1.7305200
24 months   ki1000108-IRC              INDIA                          2                    NA                -1.6656686   -1.8084948   -1.5228425
24 months   ki1000108-IRC              INDIA                          3                    NA                -2.0064659   -2.2660839   -1.7468479
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.9184684   -1.4036910   -0.4332459
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6826695   -1.7790398   -1.5862992
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.4942709   -1.7166289   -1.2719128
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.4224242   -1.6629057   -1.1819428
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -1.2054380   -1.3877822   -1.0230939
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.5384479   -1.6657359   -1.4111598
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -1.6021957   -1.7731892   -1.4312021
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -1.0948163   -1.3073055   -0.8823272
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -1.7975269   -1.9199496   -1.6751042
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.3182952   -2.6474511   -1.9891393
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -2.0077539   -2.1837542   -1.8317536
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -1.8676798   -2.0452387   -1.6901209
24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.5762851   -0.8491565   -0.3034136
24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.9979352   -1.3981461   -0.5977243
24 months   ki1114097-CONTENT          PERU                           2                    NA                -0.6493544   -1.0228549   -0.2758539
24 months   ki1114097-CONTENT          PERU                           3                    NA                -0.6226173   -0.9821604   -0.2630742
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -1.2739465   -1.4477752   -1.1001177
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.4578609   -2.5090407   -2.4066812
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -1.8715127   -1.9392110   -1.8038144
24 months   ki1135781-COHORTS          INDIA                          3                    NA                -1.7378974   -1.9372446   -1.5385502
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -1.6524125   -1.7671906   -1.5376344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.0655485   -2.1009566   -2.0301403
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.9901992   -2.0416713   -1.9387270
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.8756806   -1.9569475   -1.7944137
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -1.4166673   -1.5818551   -1.2514794
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.8657901   -1.9096056   -1.8219746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.7429404   -1.8059876   -1.6798932
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.5653189   -1.6610873   -1.4695505


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9141395   -1.0364098   -0.7918693
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1225000   -1.3335666   -0.9114334
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3079016   -0.4694769   -0.1463262
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6777626   -0.7107167   -0.6448086
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5898426   -1.6091216   -1.5705636
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2070638   -1.3255909   -1.0885368
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3248549   -1.4336721   -1.2160378
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0547925   -1.1843544   -0.9252306
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2470123   -1.3779341   -1.1160906
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0413281   -1.0740395   -1.0086167
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3132988   -1.3364412   -1.2901565
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.8014906   -1.8952579   -1.7077232
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.2131714   -2.2523749   -2.1739679
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0137471   -2.0414306   -1.9860636
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7803708   -1.8158650   -1.7448765


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.7115284   -1.2979473   -0.1251096
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.7058671   -1.3375257   -0.0742085
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.5883623   -1.2366742    0.0599496
Birth       ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    4+                -0.1679965   -0.7297476    0.3937546
Birth       ki0047075b-MAL-ED          PERU                           2                    4+                -0.0939762   -0.3789989    0.1910464
Birth       ki0047075b-MAL-ED          PERU                           3                    4+                -0.0690776   -0.3600580    0.2219028
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.2708060   -0.1033584    0.6449703
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.5445274   -1.0239704   -0.0650843
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.2370274   -0.7966873    0.3226325
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.3978458   -0.2306895    1.0263811
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.1496379   -0.4577754    0.7570512
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.2544766   -0.2133746    0.7223279
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0206053   -0.7158872    0.6746767
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.2489310   -0.9475558    0.4496938
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0010000   -0.7779299    0.7759299
Birth       ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    4+                -0.7650203   -1.7546827    0.2246422
Birth       ki1000108-IRC              INDIA                          2                    4+                -0.9005328   -1.8941286    0.0930629
Birth       ki1000108-IRC              INDIA                          3                    4+                -0.7423572   -1.8436087    0.3588943
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.0859638   -0.3724809    0.5444086
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.0378940   -0.4623768    0.5381648
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.0769468   -0.4396835    0.5935770
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.1403358   -0.3668960    0.0862243
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0834410   -0.3405763    0.1736942
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0210112   -0.2627852    0.3048077
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.2701642   -0.6074751    0.0671466
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.1364104   -0.3456600    0.0728392
Birth       ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.1646300   -0.3597991    0.0305391
Birth       ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    4+                -0.3697518   -0.5235831   -0.2159205
Birth       ki1135781-COHORTS          INDIA                          2                    4+                -0.1279607   -0.2900477    0.0341264
Birth       ki1135781-COHORTS          INDIA                          3                    4+                -0.0811089   -0.3166755    0.1544576
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.3302662   -0.3986289   -0.2619036
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.2610766   -0.3336588   -0.1884944
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.1746289   -0.2675942   -0.0816637
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.0009902   -0.2355083    0.2374888
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.1250978   -0.1236582    0.3738538
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.2270837   -0.0522980    0.5064654
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0538832   -0.7491003    0.6413338
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0560856   -0.8081303    0.6959591
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.1663211   -0.5738354    0.9064775
6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                -0.1405969   -0.4804966    0.1993028
6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                -0.4511812   -0.7891325   -0.1132300
6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0876196   -0.4448932    0.2696541
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1545116   -0.4414661    0.1324428
6 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.1585314   -0.4979775    0.1809147
6 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0460751   -0.4619747    0.3698246
6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.3902027   -0.8922063    0.1118009
6 months    ki0047075b-MAL-ED          PERU                           2                    4+                 0.1239053   -0.1752535    0.4230642
6 months    ki0047075b-MAL-ED          PERU                           3                    4+                 0.0666289   -0.2035953    0.3368531
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1600982   -0.6715481    0.3513518
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.2776051   -0.1510005    0.7062106
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0007613   -0.3818738    0.3833964
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0361636   -0.7782127    0.7058856
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1116177   -0.4491942    0.2259588
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1339195   -0.1417965    0.4096356
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.2176660   -0.8229689    0.3876369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.4230467   -1.0703846    0.2242912
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.1167685   -0.8694382    0.6359012
6 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    4+                -0.2421672   -1.0712178    0.5868834
6 months    ki1000108-IRC              INDIA                          2                    4+                -0.3158802   -1.1433665    0.5116060
6 months    ki1000108-IRC              INDIA                          3                    4+                -0.4065232   -1.3234148    0.5103684
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.1907678   -0.5979905    0.2164550
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0828354   -0.5248354    0.3591646
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0759482   -0.5370036    0.3851071
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.1806985   -0.3831152    0.0217182
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.1357513   -0.3637269    0.0922242
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1831884   -0.0737930    0.4401697
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.2900749   -0.6181531    0.0380033
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0757107   -0.2906999    0.1392785
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0109249   -0.1997096    0.1778598
6 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    4+                -0.2289784   -0.7263891    0.2684323
6 months    ki1114097-CONTENT          PERU                           2                    4+                 0.1820187   -0.2652517    0.6292891
6 months    ki1114097-CONTENT          PERU                           3                    4+                 0.0784289   -0.4267368    0.5835946
6 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.7163659   -0.8368611   -0.5958707
6 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.2783277   -0.4064515   -0.1502038
6 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.2216041   -0.4197414   -0.0234668
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.3206502   -0.4010581   -0.2402423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.2625931   -0.3480311   -0.1771551
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.1753670   -0.2678015   -0.0829325
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.2819036   -0.4841208   -0.0796864
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.1790538   -0.3881531    0.0300455
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0808720   -0.3006360    0.1388920
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.4072496   -0.9249770    0.1104779
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.3351472   -0.9325888    0.2622945
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.2032177   -0.7856044    0.3791691
24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.1394054   -0.2582417    0.5370524
24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.2348767   -0.6359494    0.1661959
24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0245491   -0.3869267    0.4360250
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.1194999   -0.3882088    0.1492090
24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0633708   -0.3092624    0.4360039
24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.1728158   -0.7201173    0.3744858
24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.3401201   -0.7900432    0.1098030
24 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.0875971   -0.2249861    0.4001803
24 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0122599   -0.2903237    0.3148434
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.1953451   -0.8495516    0.4588613
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.4139228   -0.0793316    0.9071772
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.2368952   -0.7831049    0.3093146
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0405782   -0.9212696    1.0024261
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4373551   -0.7746409   -0.1000693
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1019817   -0.2006566    0.4046200
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.3479347   -0.7675405    0.0716710
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1913246   -0.6291833    0.2465342
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.1501776   -0.6500303    0.3496750
24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    4+                 0.0577590   -0.5012690    0.6167869
24 months   ki1000108-IRC              INDIA                          2                    4+                 0.2660940   -0.2927346    0.8249226
24 months   ki1000108-IRC              INDIA                          3                    4+                -0.0747033   -0.6741942    0.5247877
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.7642010   -1.2586418   -0.2697603
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.5758024   -1.1090700   -0.0425348
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.5039558   -1.0452084    0.0372968
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.3330098   -0.5557355   -0.1102842
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.3967576   -0.6465733   -0.1469419
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.1106217   -0.1697874    0.3910308
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.5207683   -0.8720491   -0.1694874
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.2102270   -0.4239813    0.0035274
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0701529   -0.2854252    0.1451194
24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    4+                -0.4216501   -0.9063455    0.0630453
24 months   ki1114097-CONTENT          PERU                           2                    4+                -0.0730693   -0.5360605    0.3899219
24 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0463322   -0.4968691    0.4042046
24 months   ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    4+                -1.1839145   -1.3650639   -1.0027651
24 months   ki1135781-COHORTS          INDIA                          2                    4+                -0.5975662   -0.7840977   -0.4110348
24 months   ki1135781-COHORTS          INDIA                          3                    4+                -0.4639510   -0.7283499   -0.1995520
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                -0.4131360   -0.5287280   -0.2975441
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                -0.3377867   -0.4563021   -0.2192713
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                -0.2232681   -0.3622122   -0.0843240
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.4491228   -0.6178584   -0.2803872
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.3262731   -0.5035068   -0.1490394
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.1486516   -0.3379037    0.0406005


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.6348623   -1.1794898   -0.0902349
Birth       ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0525345   -0.1756460    0.0705769
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0835899   -0.2035080    0.0363283
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1342347   -0.1139344    0.3824038
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0871957   -0.6936048    0.5192134
Birth       ki1000108-IRC              INDIA                          4+                   NA                -0.7957120   -1.7301792    0.1387552
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0735261   -0.3679714    0.5150237
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0841518   -0.2751735    0.1068699
Birth       ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0941675   -0.1808499   -0.0074851
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                -0.2841839   -0.4319608   -0.1364069
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.2871227   -0.3513285   -0.2229169
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0545904   -0.1693200    0.2785008
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0228367   -0.6914186    0.6457451
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.2455353   -0.5104676    0.0193970
6 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0563662   -0.1576905    0.0449581
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0238985   -0.0830529    0.1308498
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0095632   -0.0548802    0.0740065
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0052664   -0.1424330    0.1319002
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2672992   -0.8432566    0.3086582
6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.2622186   -1.0458930    0.5214559
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.1504112   -0.5414997    0.2406773
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0954707   -0.2614044    0.0704631
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0516055   -0.1345009    0.0312899
6 months    ki1114097-CONTENT          PERU                           4+                   NA                 0.0105059   -0.2235948    0.2446065
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.5559200   -0.6704075   -0.4414324
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.2767149   -0.3522102   -0.2012196
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.2174525   -0.4075290   -0.0273760
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.3271128   -0.8162598    0.1620341
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0014549   -0.3231928    0.3202829
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0294893   -0.1358901    0.0769114
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0316242   -0.1403842    0.0771358
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0118941   -0.0865671    0.0627790
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0733158   -0.2199439    0.0733122
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2582449   -0.6552543    0.1387644
24 months   ki1000108-IRC              INDIA                          4+                   NA                 0.1302721   -0.3967683    0.6573124
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.6839537   -1.1586842   -0.2092232
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.2358266   -0.4091498   -0.0625034
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0898911   -0.1792481   -0.0005342
24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.1199344   -0.3386677    0.0987988
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.9392249   -1.1126536   -0.7657963
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.3613346   -0.4710845   -0.2515848
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.3637035   -0.5221533   -0.2052537
