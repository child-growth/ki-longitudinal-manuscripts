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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** impsan

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
* single
* W_nrooms
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country                        impsan    n_cell       n  outcome_variable 
-------------  ----------------------  -----------------------------  -------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1            201     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1            206     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0              4     210  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       INDIA                          1            106     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       INDIA                          0            124     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       NEPAL                          1            229     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       NEPAL                          0              1     230  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       PERU                           1             64     262  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       PERU                           0            198     262  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     248  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            244     248  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     224  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            224     224  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1            217     565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0            348     565  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1             13      13  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0              0      13  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            629     714  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             85     714  y_rate_wtkg      
0-3 months     ki1114097-CONTENT       PERU                           1             25      29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT       PERU                           0              4      29  y_rate_wtkg      
0-3 months     ki1135781-COHORTS       GUATEMALA                      1             55     514  y_rate_wtkg      
0-3 months     ki1135781-COHORTS       GUATEMALA                      0            459     514  y_rate_wtkg      
0-3 months     ki1135781-COHORTS       INDIA                          1           1808    4802  y_rate_wtkg      
0-3 months     ki1135781-COHORTS       INDIA                          0           2994    4802  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1          13895   20271  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0           6376   20271  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1           1937    2496  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0            559    2496  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1            195     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1            204     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0              4     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       INDIA                          1            105     228  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       INDIA                          0            123     228  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       NEPAL                          1            232     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       NEPAL                          0              1     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       PERU                           1             63     260  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       PERU                           0            197     260  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     237  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            233     237  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     231  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            231     231  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1            198     522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0            324     522  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1             11      11  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0              0      11  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            607     691  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             84     691  y_rate_wtkg      
3-6 months     ki1114097-CONTENT       PERU                           1            200     214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT       PERU                           0             14     214  y_rate_wtkg      
3-6 months     ki1135781-COHORTS       GUATEMALA                      1             58     553  y_rate_wtkg      
3-6 months     ki1135781-COHORTS       GUATEMALA                      0            495     553  y_rate_wtkg      
3-6 months     ki1135781-COHORTS       INDIA                          1           1844    4859  y_rate_wtkg      
3-6 months     ki1135781-COHORTS       INDIA                          0           3015    4859  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1           9100   12710  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0           3610   12710  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1           1414    1817  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0            403    1817  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1            186     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1            194     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0              4     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       INDIA                          1            104     228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       INDIA                          0            124     228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       NEPAL                          1            229     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       NEPAL                          0              1     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       PERU                           1             56     238  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       PERU                           0            182     238  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     227  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            223     227  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     219  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219     219  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1            193     498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0            305     498  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1              6       6  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0              0       6  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            594     683  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             89     683  y_rate_wtkg      
6-9 months     ki1114097-CONTENT       PERU                           1            200     214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT       PERU                           0             14     214  y_rate_wtkg      
6-9 months     ki1135781-COHORTS       GUATEMALA                      1             63     601  y_rate_wtkg      
6-9 months     ki1135781-COHORTS       GUATEMALA                      0            538     601  y_rate_wtkg      
6-9 months     ki1135781-COHORTS       INDIA                          1           1669    4345  y_rate_wtkg      
6-9 months     ki1135781-COHORTS       INDIA                          0           2676    4345  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5        MALAWI                         1              3     553  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5        MALAWI                         0            550     553  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1           2394    3071  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0            677    3071  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1            190     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0             35     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1            190     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0              4     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       INDIA                          1            103     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       INDIA                          0            122     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       NEPAL                          1            228     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       NEPAL                          0              1     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       PERU                           1             52     228  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       PERU                           0            176     228  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            225     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     217  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            217     217  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1            189     481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0            292     481  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1              6       6  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0              0       6  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            585     673  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             88     673  y_rate_wtkg      
9-12 months    ki1114097-CONTENT       PERU                           1            198     212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT       PERU                           0             14     212  y_rate_wtkg      
9-12 months    ki1135781-COHORTS       GUATEMALA                      1             67     680  y_rate_wtkg      
9-12 months    ki1135781-COHORTS       GUATEMALA                      0            613     680  y_rate_wtkg      
9-12 months    ki1135781-COHORTS       INDIA                          1           1475    3747  y_rate_wtkg      
9-12 months    ki1135781-COHORTS       INDIA                          0           2272    3747  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5        MALAWI                         1              3     378  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5        MALAWI                         0            375     378  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1           2747    3516  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0            769    3516  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1            180     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0             32     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1            181     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0              3     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       INDIA                          1            103     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       INDIA                          0            121     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       NEPAL                          1            229     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       NEPAL                          0              1     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       PERU                           1             51     218  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       PERU                           0            167     218  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            220     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     219  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219     219  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1            181     461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0            280     461  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1              8       8  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       8  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            568     655  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             87     655  y_rate_wtkg      
12-15 months   ki1114097-CONTENT       PERU                           1            186     199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT       PERU                           0             13     199  y_rate_wtkg      
12-15 months   ki1135781-COHORTS       GUATEMALA                      1             67     705  y_rate_wtkg      
12-15 months   ki1135781-COHORTS       GUATEMALA                      0            638     705  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5        MALAWI                         1              0     125  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5        MALAWI                         0            125     125  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1           2761    3549  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0            788    3549  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1            179     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0             33     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1            172     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0              3     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       INDIA                          1            104     224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       INDIA                          0            120     224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       NEPAL                          1            226     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       NEPAL                          0              1     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       PERU                           1             50     209  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       PERU                           0            159     209  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     222  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            218     222  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            214     214  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1            180     449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0            269     449  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1             10      10  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0              0      10  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            511     594  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             83     594  y_rate_wtkg      
15-18 months   ki1114097-CONTENT       PERU                           1            176     189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT       PERU                           0             13     189  y_rate_wtkg      
15-18 months   ki1135781-COHORTS       GUATEMALA                      1             59     652  y_rate_wtkg      
15-18 months   ki1135781-COHORTS       GUATEMALA                      0            593     652  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5        MALAWI                         1              0     118  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5        MALAWI                         0            118     118  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1           2734    3508  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0            774    3508  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1            179     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0             30     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1            164     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0              3     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       INDIA                          1            103     224  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       INDIA                          0            121     224  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       NEPAL                          1            226     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       NEPAL                          0              1     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       PERU                           1             50     198  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       PERU                           0            148     198  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     230  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            226     230  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            202     202  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1            169     422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0            253     422  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            464     536  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             72     536  y_rate_wtkg      
18-21 months   ki1114097-CONTENT       PERU                           1            171     183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT       PERU                           0             12     183  y_rate_wtkg      
18-21 months   ki1135781-COHORTS       GUATEMALA                      1             63     674  y_rate_wtkg      
18-21 months   ki1135781-COHORTS       GUATEMALA                      0            611     674  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5        MALAWI                         1              3     451  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5        MALAWI                         0            448     451  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1            178     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0             29     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1            162     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       INDIA                          1            103     224  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       INDIA                          0            121     224  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       NEPAL                          1            226     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       NEPAL                          0              1     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       PERU                           1             47     184  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       PERU                           0            137     184  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     232  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            228     232  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     200  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            200     200  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1            163     411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0            248     411  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1              8       8  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       8  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            412     482  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     482  y_rate_wtkg      
21-24 months   ki1114097-CONTENT       PERU                           1             36      38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT       PERU                           0              2      38  y_rate_wtkg      
21-24 months   ki1135781-COHORTS       GUATEMALA                      1             68     733  y_rate_wtkg      
21-24 months   ki1135781-COHORTS       GUATEMALA                      0            665     733  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5        MALAWI                         1              3     382  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5        MALAWI                         0            379     382  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0a9d42b7-e39c-47e3-ad9c-cf2c7c1e4ca5/8314b1cc-1f1d-400e-94e6-b30c99e3544e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0a9d42b7-e39c-47e3-ad9c-cf2c7c1e4ca5/8314b1cc-1f1d-400e-94e6-b30c99e3544e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0a9d42b7-e39c-47e3-ad9c-cf2c7c1e4ca5/8314b1cc-1f1d-400e-94e6-b30c99e3544e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.8815008   0.8558139   0.9071877
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.8529386   0.7871300   0.9187472
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                0.7654233   0.7348688   0.7959778
0-3 months     ki0047075b-MAL-ED       INDIA        0                    NA                0.7636429   0.7305121   0.7967737
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                0.9788711   0.9294498   1.0282924
0-3 months     ki0047075b-MAL-ED       PERU         0                    NA                0.9673722   0.9373594   0.9973850
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.8375377   0.8138893   0.8611861
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.8017932   0.7796859   0.8239006
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.8828578   0.8675195   0.8981960
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.8949821   0.8480756   0.9418887
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                0.8205633   0.7655924   0.8755341
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    NA                0.7825878   0.7603494   0.8048261
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                0.8281532   0.8187794   0.8375270
0-3 months     ki1135781-COHORTS       INDIA        0                    NA                0.7909995   0.7839539   0.7980452
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.8621053   0.8585635   0.8656470
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.8472932   0.8418757   0.8527107
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.7405934   0.7252710   0.7559158
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.7364422   0.7096914   0.7631930
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.4754021   0.4574820   0.4933222
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.4741395   0.4250893   0.5231897
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                0.4456657   0.4187108   0.4726207
3-6 months     ki0047075b-MAL-ED       INDIA        0                    NA                0.4395787   0.4157998   0.4633577
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                0.4874248   0.4458891   0.5289606
3-6 months     ki0047075b-MAL-ED       PERU         0                    NA                0.5032080   0.4800101   0.5264059
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.4726052   0.4483183   0.4968922
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.4508688   0.4274786   0.4742590
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.4955607   0.4837693   0.5073522
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.5032617   0.4698989   0.5366245
3-6 months     ki1114097-CONTENT       PERU         1                    NA                0.5910684   0.5688965   0.6132403
3-6 months     ki1114097-CONTENT       PERU         0                    NA                0.5758420   0.5042454   0.6474386
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                0.4408359   0.4062961   0.4753757
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    NA                0.4503793   0.4363089   0.4644498
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                0.4915497   0.4841004   0.4989990
3-6 months     ki1135781-COHORTS       INDIA        0                    NA                0.4641699   0.4583746   0.4699651
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4433871   0.4399383   0.4468358
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.4344825   0.4284989   0.4404661
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.4421767   0.4322971   0.4520564
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.4286629   0.4109471   0.4463786
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.2463381   0.2297607   0.2629155
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.2262585   0.1924840   0.2600331
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                0.2454488   0.2228721   0.2680254
6-9 months     ki0047075b-MAL-ED       INDIA        0                    NA                0.2162428   0.1961773   0.2363082
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                0.2361011   0.2002780   0.2719243
6-9 months     ki0047075b-MAL-ED       PERU         0                    NA                0.2630135   0.2453527   0.2806743
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2494317   0.2259334   0.2729300
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2284876   0.2114797   0.2454954
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2665171   0.2548180   0.2782163
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.2703117   0.2460040   0.2946193
6-9 months     ki1114097-CONTENT       PERU         1                    NA                0.3234970   0.3034639   0.3435302
6-9 months     ki1114097-CONTENT       PERU         0                    NA                0.2904458   0.1867723   0.3941192
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                0.2515178   0.2137617   0.2892738
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    NA                0.2098349   0.1978685   0.2218013
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                0.2839865   0.2764037   0.2915693
6-9 months     ki1135781-COHORTS       INDIA        0                    NA                0.2657487   0.2596121   0.2718853
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2394142   0.2333854   0.2454430
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2430393   0.2299744   0.2561043
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1785242   0.1630959   0.1939526
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.1445215   0.1116472   0.1773959
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                0.1745187   0.1513010   0.1977364
9-12 months    ki0047075b-MAL-ED       INDIA        0                    NA                0.1827316   0.1652462   0.2002170
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                0.2011729   0.1590172   0.2433286
9-12 months    ki0047075b-MAL-ED       PERU         0                    NA                0.1836784   0.1653875   0.2019693
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1718874   0.1517330   0.1920418
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1610425   0.1437757   0.1783094
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1983789   0.1869659   0.2097920
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1868003   0.1609921   0.2126085
9-12 months    ki1114097-CONTENT       PERU         1                    NA                0.2271860   0.2085348   0.2458373
9-12 months    ki1114097-CONTENT       PERU         0                    NA                0.1861757   0.1011759   0.2711756
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                0.1631139   0.1315015   0.1947264
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    NA                0.1492378   0.1383057   0.1601698
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                0.2204032   0.2125511   0.2282553
9-12 months    ki1135781-COHORTS       INDIA        0                    NA                0.2071429   0.2006412   0.2136446
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1540356   0.1493085   0.1587627
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1538756   0.1439258   0.1638255
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1422729   0.1254793   0.1590665
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.1062443   0.0589068   0.1535819
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1920173   0.1670767   0.2169579
12-15 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.1603433   0.1402406   0.1804460
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                0.1378717   0.0962196   0.1795238
12-15 months   ki0047075b-MAL-ED       PERU         0                    NA                0.1442848   0.1239327   0.1646368
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1228487   0.1038278   0.1418697
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1358107   0.1199103   0.1517111
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1649027   0.1534066   0.1763989
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1651167   0.1372803   0.1929531
12-15 months   ki1114097-CONTENT       PERU         1                    NA                0.1817923   0.1620619   0.2015228
12-15 months   ki1114097-CONTENT       PERU         0                    NA                0.1601932   0.1044835   0.2159030
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.1862375   0.1410086   0.2314664
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.1500836   0.1389272   0.1612399
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1327686   0.1280224   0.1375149
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1230116   0.1148738   0.1311494
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1362854   0.1194512   0.1531195
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.1863760   0.1481244   0.2246275
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1661495   0.1414811   0.1908179
15-18 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.1641648   0.1456739   0.1826558
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                0.1122992   0.0683711   0.1562273
15-18 months   ki0047075b-MAL-ED       PERU         0                    NA                0.1471683   0.1234178   0.1709189
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1598350   0.1375874   0.1820825
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1467402   0.1269218   0.1665587
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1594425   0.1480306   0.1708544
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1695306   0.1374685   0.2015928
15-18 months   ki1114097-CONTENT       PERU         1                    NA                0.1677970   0.1489660   0.1866279
15-18 months   ki1114097-CONTENT       PERU         0                    NA                0.1007052   0.0068666   0.1945438
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.0980699   0.0642266   0.1319132
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.1404234   0.1274553   0.1533915
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1599759   0.1543855   0.1655662
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1576608   0.1490545   0.1662670
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1501478   0.1334238   0.1668717
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.1411666   0.0812548   0.2010783
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1779880   0.1543675   0.2016084
18-21 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.1664189   0.1470095   0.1858283
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                0.1536411   0.1122052   0.1950770
18-21 months   ki0047075b-MAL-ED       PERU         0                    NA                0.1675727   0.1454612   0.1896841
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1626808   0.1383452   0.1870164
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1781762   0.1566487   0.1997036
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1409999   0.1291775   0.1528223
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1545208   0.1259806   0.1830610
18-21 months   ki1114097-CONTENT       PERU         1                    NA                0.1906546   0.1708856   0.2104236
18-21 months   ki1114097-CONTENT       PERU         0                    NA                0.2180481   0.1611496   0.2749465
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.1584733   0.1146093   0.2023373
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.1625516   0.1505744   0.1745289
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1532787   0.1366064   0.1699509
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.1440952   0.1045144   0.1836760
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1661092   0.1454333   0.1867851
21-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.1461254   0.1290701   0.1631808
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                0.1666616   0.1194635   0.2138597
21-24 months   ki0047075b-MAL-ED       PERU         0                    NA                0.1780052   0.1554821   0.2005283
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1551187   0.1313080   0.1789293
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1350190   0.1151844   0.1548536
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1678762   0.1540009   0.1817515
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.2193896   0.1862331   0.2525461
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.2063477   0.1730995   0.2395958
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.1857610   0.1735740   0.1979479


### Parameter: E(Y)


agecat         studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.8772390   0.8535646   0.9009134
0-3 months     ki0047075b-MAL-ED       INDIA        NA                   NA                0.7620085   0.7394216   0.7845954
0-3 months     ki0047075b-MAL-ED       PERU         NA                   NA                0.9689288   0.9429768   0.9948807
0-3 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.8845080   0.8697896   0.8992264
0-3 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                0.7842946   0.7633006   0.8052885
0-3 months     ki1135781-COHORTS       INDIA        NA                   NA                0.8055731   0.8001316   0.8110146
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.8576914   0.8546747   0.8607082
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.7394732   0.7257200   0.7532264
3-6 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED       INDIA        NA                   NA                0.4449792   0.4272939   0.4626645
3-6 months     ki0047075b-MAL-ED       PERU         NA                   NA                0.4981398   0.4788320   0.5174477
3-6 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.4982529   0.4871014   0.5094044
3-6 months     ki1114097-CONTENT       PERU         NA                   NA                0.5883606   0.5672514   0.6094698
3-6 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                0.4507062   0.4376433   0.4637691
3-6 months     ki1135781-COHORTS       INDIA        NA                   NA                0.4758823   0.4714157   0.4803490
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.4413966   0.4384254   0.4443678
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.4391710   0.4303780   0.4479640
6-9 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED       INDIA        NA                   NA                0.2329150   0.2179398   0.2478901
6-9 months     ki0047075b-MAL-ED       PERU         NA                   NA                0.2596511   0.2439596   0.2753427
6-9 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2668023   0.2561807   0.2774240
6-9 months     ki1114097-CONTENT       PERU         NA                   NA                0.3203724   0.3008854   0.3398595
6-9 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                0.2132733   0.2018429   0.2247038
6-9 months     ki1135781-COHORTS       INDIA        NA                   NA                0.2732584   0.2685932   0.2779236
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2398525   0.2345783   0.2451267
9-12 months    ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED       INDIA        NA                   NA                0.1787090   0.1645315   0.1928865
9-12 months    ki0047075b-MAL-ED       PERU         NA                   NA                0.1877302   0.1721772   0.2032832
9-12 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1982735   0.1877823   0.2087647
9-12 months    ki1114097-CONTENT       PERU         NA                   NA                0.2242885   0.2061680   0.2424089
9-12 months    ki1135781-COHORTS       GUATEMALA    NA                   NA                0.1506988   0.1402747   0.1611229
9-12 months    ki1135781-COHORTS       INDIA        NA                   NA                0.2137973   0.2089688   0.2186259
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1545123   0.1502488   0.1587759
12-15 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.1737542   0.1580843   0.1894241
12-15 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.1412986   0.1241913   0.1584059
12-15 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1649159   0.1542644   0.1755674
12-15 months   ki1114097-CONTENT       PERU         NA                   NA                0.1810659   0.1624244   0.1997074
12-15 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.1509490   0.1404302   0.1614679
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1304576   0.1263404   0.1345747
15-18 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.1620281   0.1470182   0.1770381
15-18 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.1449378   0.1257292   0.1641464
15-18 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1608018   0.1501273   0.1714764
15-18 months   ki1114097-CONTENT       PERU         NA                   NA                0.1713509   0.1529966   0.1897053
15-18 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.1376203   0.1254069   0.1498336
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1595310   0.1548323   0.1642296
18-21 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.1741118   0.1592007   0.1890230
18-21 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.1632287   0.1439532   0.1825042
18-21 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1417284   0.1308558   0.1526011
18-21 months   ki1114097-CONTENT       PERU         NA                   NA                0.1921232   0.1732877   0.2109588
18-21 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.1624730   0.1508586   0.1740875
21-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.1561228   0.1429524   0.1692932
21-24 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.1789625   0.1588192   0.1991058
21-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1750178   0.1622174   0.1878182
21-24 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.1872542   0.1759502   0.1985583


### Parameter: ATE


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0285622   -0.0992720    0.0421475
0-3 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.0017804   -0.0469502    0.0433894
0-3 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU         0                    1                 -0.0114989   -0.0691629    0.0461651
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0357445   -0.0674547   -0.0040343
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0121244   -0.0369023    0.0611510
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0379755   -0.0971578    0.0212068
0-3 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0371537   -0.0488266   -0.0254807
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0148121   -0.0208300   -0.0087941
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0041511   -0.0343343    0.0260320
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0012626   -0.0535346    0.0510095
3-6 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.0060870   -0.0426529    0.0304789
3-6 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU         0                    1                  0.0157832   -0.0318542    0.0634205
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0217365   -0.0555868    0.0121139
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0077010   -0.0277517    0.0431536
3-6 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU         0                    1                 -0.0152264   -0.0901714    0.0597187
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    1                  0.0095434   -0.0274695    0.0465563
3-6 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0273798   -0.0367103   -0.0180494
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0089045   -0.0156398   -0.0021693
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0135139   -0.0340015    0.0069737
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0200795   -0.0578481    0.0176891
6-9 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.0292060   -0.0593020    0.0008899
6-9 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU         0                    1                  0.0269124   -0.0139543    0.0677791
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0209442   -0.0502690    0.0083807
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0037945   -0.0232071    0.0307962
6-9 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU         0                    1                 -0.0330513   -0.1384974    0.0723948
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0416829   -0.0814578   -0.0019080
6-9 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0182378   -0.0279188   -0.0085569
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                  0.0036251   -0.0106794    0.0179296
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0340027   -0.0704431    0.0024377
9-12 months    ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA        0                    1                  0.0082129   -0.0209740    0.0373997
9-12 months    ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU         0                    1                 -0.0174945   -0.0633919    0.0284029
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0108448   -0.0374954    0.0158057
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0115786   -0.0397371    0.0165799
9-12 months    ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU         0                    1                 -0.0410103   -0.1282319    0.0462113
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0138762   -0.0473389    0.0195866
9-12 months    ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       INDIA        0                    1                 -0.0132603   -0.0234334   -0.0030872
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0001599   -0.0110849    0.0107650
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0360285   -0.0866995    0.0146424
12-15 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0316740   -0.0637034    0.0003554
12-15 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0064131   -0.0398496    0.0526757
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0129620   -0.0120245    0.0379484
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0002140   -0.0297839    0.0302119
12-15 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU         0                    1                 -0.0215991   -0.0810167    0.0378184
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0361540   -0.0827874    0.0104795
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0097570   -0.0192305   -0.0002836
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0500906    0.0082095    0.0919718
15-18 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0019847   -0.0329329    0.0289636
15-18 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0348691   -0.0152312    0.0849695
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0130947   -0.0433567    0.0171672
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0100881   -0.0242169    0.0443932
15-18 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU         0                    1                 -0.0670918   -0.1633503    0.0291667
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    1                  0.0423535    0.0062583    0.0784487
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0023151   -0.0127102    0.0080800
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0089812   -0.0715786    0.0536163
18-21 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0115691   -0.0422488    0.0191106
18-21 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0139316   -0.0328226    0.0606858
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0154954   -0.0171245    0.0481152
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0135209   -0.0174816    0.0445234
18-21 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU         0                    1                  0.0273935   -0.0327894    0.0875763
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    1                  0.0040783   -0.0413646    0.0495212
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0091834   -0.0521394    0.0337726
21-24 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0199837   -0.0467198    0.0067524
21-24 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0113436   -0.0409150    0.0636022
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0200996   -0.0512092    0.0110100
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0515134    0.0154687    0.0875581
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0205867   -0.0559504    0.0147769


### Parameter: PAR


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0042618   -0.0144939    0.0059702
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0034148   -0.0278361    0.0210066
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                -0.0099423   -0.0539823    0.0340977
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0211877   -0.0409536   -0.0014219
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0016502   -0.0041732    0.0074737
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0362687   -0.0891699    0.0166326
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0225801   -0.0302443   -0.0149159
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0044138   -0.0061958   -0.0026318
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0011201   -0.0083302    0.0060899
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0007520   -0.0087596    0.0072556
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0006865   -0.0203081    0.0189350
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0107150   -0.0275778    0.0490078
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0132078   -0.0343393    0.0079238
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0026921   -0.0018035    0.0071878
3-6 months     ki1114097-CONTENT       PERU         1                    NA                -0.0027078   -0.0070652    0.0016496
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0098703   -0.0236582    0.0433988
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0156674   -0.0216774   -0.0096574
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0019905   -0.0037445   -0.0002365
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0030057   -0.0076738    0.0016624
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0034829   -0.0092379    0.0022722
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0125338   -0.0290595    0.0039919
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0235500   -0.0099152    0.0570152
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0131721   -0.0311893    0.0048450
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0002852   -0.0032179    0.0037883
6-9 months     ki1114097-CONTENT       PERU         1                    NA                -0.0031246   -0.0087796    0.0025304
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0382445   -0.0743249   -0.0021640
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0107281   -0.0168939   -0.0045623
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0004383   -0.0023020    0.0031786
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0054896   -0.0108979   -0.0000814
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                 0.0041903   -0.0117436    0.0201242
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                -0.0134427   -0.0522926    0.0254072
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0082661   -0.0245727    0.0080406
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0001054   -0.0037463    0.0035355
9-12 months    ki1114097-CONTENT       PERU         1                    NA                -0.0028976   -0.0083854    0.0025903
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0124151   -0.0426752    0.0178450
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                -0.0066059   -0.0129501   -0.0002617
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0004768   -0.0018271    0.0027806
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0069142   -0.0147907    0.0009622
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0182631   -0.0357149   -0.0008114
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0034269   -0.0346116    0.0414654
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0076575   -0.0076382    0.0229532
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0000132   -0.0038381    0.0038645
12-15 months   ki1114097-CONTENT       PERU         1                    NA                -0.0007264   -0.0048621    0.0034092
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0352885   -0.0791999    0.0086229
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0023111   -0.0043716   -0.0002505
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0065028   -0.0007049    0.0137106
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0041214   -0.0207388    0.0124961
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0326386   -0.0083004    0.0735776
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0068507   -0.0249554    0.0112540
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0013593   -0.0034083    0.0061270
15-18 months   ki1114097-CONTENT       PERU         1                    NA                 0.0035540   -0.0019481    0.0090560
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0395503    0.0066112    0.0724895
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0004449   -0.0028758    0.0019860
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0074331   -0.0169480    0.0020818
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0038761   -0.0204750    0.0127227
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0095876   -0.0279745    0.0471497
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0097584   -0.0096301    0.0291469
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0007286   -0.0034692    0.0049263
18-21 months   ki1114097-CONTENT       PERU         1                    NA                 0.0014686   -0.0026517    0.0055889
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0039997   -0.0380944    0.0460939
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0011631   -0.0065134    0.0041871
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0099864   -0.0245308    0.0045580
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0123009   -0.0292955    0.0538972
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0131457   -0.0319990    0.0057077
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0071416    0.0018387    0.0124445
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0190935   -0.0518498    0.0136628
