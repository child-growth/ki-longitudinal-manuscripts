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

**Outcome Variable:** y_rate_len

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
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1            198     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1            159     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0              4     163  y_rate_len       
0-3 months     ki0047075b-MAL-ED       INDIA                          1             80     176  y_rate_len       
0-3 months     ki0047075b-MAL-ED       INDIA                          0             96     176  y_rate_len       
0-3 months     ki0047075b-MAL-ED       NEPAL                          1            154     155  y_rate_len       
0-3 months     ki0047075b-MAL-ED       NEPAL                          0              1     155  y_rate_len       
0-3 months     ki0047075b-MAL-ED       PERU                           1             60     246  y_rate_len       
0-3 months     ki0047075b-MAL-ED       PERU                           0            186     246  y_rate_len       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              2     194  y_rate_len       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            192     194  y_rate_len       
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     216  y_rate_len       
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            216     216  y_rate_len       
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1            218     566  y_rate_len       
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0            348     566  y_rate_len       
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1             13      13  y_rate_len       
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0              0      13  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            626     710  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             84     710  y_rate_len       
0-3 months     ki1114097-CONTENT       PERU                           1             25      29  y_rate_len       
0-3 months     ki1114097-CONTENT       PERU                           0              4      29  y_rate_len       
0-3 months     ki1135781-COHORTS       GUATEMALA                      1             42     445  y_rate_len       
0-3 months     ki1135781-COHORTS       GUATEMALA                      0            403     445  y_rate_len       
0-3 months     ki1135781-COHORTS       INDIA                          1           1732    4660  y_rate_len       
0-3 months     ki1135781-COHORTS       INDIA                          0           2928    4660  y_rate_len       
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1          13596   19862  y_rate_len       
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0           6266   19862  y_rate_len       
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1           1951    2513  y_rate_len       
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0            562    2513  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1            193     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1            204     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0              4     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED       INDIA                          1            105     228  y_rate_len       
3-6 months     ki0047075b-MAL-ED       INDIA                          0            123     228  y_rate_len       
3-6 months     ki0047075b-MAL-ED       NEPAL                          1            232     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED       NEPAL                          0              1     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED       PERU                           1             63     260  y_rate_len       
3-6 months     ki0047075b-MAL-ED       PERU                           0            197     260  y_rate_len       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     237  y_rate_len       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            233     237  y_rate_len       
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            231     231  y_rate_len       
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1            198     523  y_rate_len       
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0            325     523  y_rate_len       
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1             11      11  y_rate_len       
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0              0      11  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            601     684  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             83     684  y_rate_len       
3-6 months     ki1114097-CONTENT       PERU                           1            200     214  y_rate_len       
3-6 months     ki1114097-CONTENT       PERU                           0             14     214  y_rate_len       
3-6 months     ki1135781-COHORTS       GUATEMALA                      1             58     551  y_rate_len       
3-6 months     ki1135781-COHORTS       GUATEMALA                      0            493     551  y_rate_len       
3-6 months     ki1135781-COHORTS       INDIA                          1           1770    4719  y_rate_len       
3-6 months     ki1135781-COHORTS       INDIA                          0           2949    4719  y_rate_len       
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1           8993   12571  y_rate_len       
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0           3578   12571  y_rate_len       
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1           1431    1839  y_rate_len       
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0            408    1839  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1            186     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1            194     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0              4     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED       INDIA                          1            104     228  y_rate_len       
6-9 months     ki0047075b-MAL-ED       INDIA                          0            124     228  y_rate_len       
6-9 months     ki0047075b-MAL-ED       NEPAL                          1            229     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED       NEPAL                          0              1     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED       PERU                           1             56     238  y_rate_len       
6-9 months     ki0047075b-MAL-ED       PERU                           0            182     238  y_rate_len       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     227  y_rate_len       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            223     227  y_rate_len       
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     219  y_rate_len       
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219     219  y_rate_len       
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1            193     498  y_rate_len       
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0            305     498  y_rate_len       
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1              6       6  y_rate_len       
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0              0       6  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            589     678  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             89     678  y_rate_len       
6-9 months     ki1114097-CONTENT       PERU                           1            200     214  y_rate_len       
6-9 months     ki1114097-CONTENT       PERU                           0             14     214  y_rate_len       
6-9 months     ki1135781-COHORTS       GUATEMALA                      1             63     600  y_rate_len       
6-9 months     ki1135781-COHORTS       GUATEMALA                      0            537     600  y_rate_len       
6-9 months     ki1135781-COHORTS       INDIA                          1           1650    4328  y_rate_len       
6-9 months     ki1135781-COHORTS       INDIA                          0           2678    4328  y_rate_len       
6-9 months     ki1148112-LCNI-5        MALAWI                         1              3     556  y_rate_len       
6-9 months     ki1148112-LCNI-5        MALAWI                         0            553     556  y_rate_len       
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1           2379    3052  y_rate_len       
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0            673    3052  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1            190     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0             35     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1            190     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0              4     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED       INDIA                          1            103     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED       INDIA                          0            122     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED       NEPAL                          1            228     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED       NEPAL                          0              1     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED       PERU                           1             52     228  y_rate_len       
9-12 months    ki0047075b-MAL-ED       PERU                           0            176     228  y_rate_len       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            225     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     217  y_rate_len       
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            217     217  y_rate_len       
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1            189     482  y_rate_len       
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0            293     482  y_rate_len       
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1              6       6  y_rate_len       
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0              0       6  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            576     664  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             88     664  y_rate_len       
9-12 months    ki1114097-CONTENT       PERU                           1            198     212  y_rate_len       
9-12 months    ki1114097-CONTENT       PERU                           0             14     212  y_rate_len       
9-12 months    ki1135781-COHORTS       GUATEMALA                      1             67     679  y_rate_len       
9-12 months    ki1135781-COHORTS       GUATEMALA                      0            612     679  y_rate_len       
9-12 months    ki1135781-COHORTS       INDIA                          1           1456    3725  y_rate_len       
9-12 months    ki1135781-COHORTS       INDIA                          0           2269    3725  y_rate_len       
9-12 months    ki1148112-LCNI-5        MALAWI                         1              3     381  y_rate_len       
9-12 months    ki1148112-LCNI-5        MALAWI                         0            378     381  y_rate_len       
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1           2730    3499  y_rate_len       
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0            769    3499  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1            180     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0             32     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1            181     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0              3     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED       INDIA                          1            103     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED       INDIA                          0            121     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED       NEPAL                          1            229     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED       NEPAL                          0              1     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED       PERU                           1             51     218  y_rate_len       
12-15 months   ki0047075b-MAL-ED       PERU                           0            167     218  y_rate_len       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            220     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     219  y_rate_len       
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219     219  y_rate_len       
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1            181     461  y_rate_len       
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0            280     461  y_rate_len       
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1              8       8  y_rate_len       
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       8  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            562     649  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             87     649  y_rate_len       
12-15 months   ki1114097-CONTENT       PERU                           1            186     199  y_rate_len       
12-15 months   ki1114097-CONTENT       PERU                           0             13     199  y_rate_len       
12-15 months   ki1135781-COHORTS       GUATEMALA                      1             67     700  y_rate_len       
12-15 months   ki1135781-COHORTS       GUATEMALA                      0            633     700  y_rate_len       
12-15 months   ki1148112-LCNI-5        MALAWI                         1              0     126  y_rate_len       
12-15 months   ki1148112-LCNI-5        MALAWI                         0            126     126  y_rate_len       
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1           2757    3547  y_rate_len       
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0            790    3547  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1            179     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0             33     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1            172     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0              3     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED       INDIA                          1            104     224  y_rate_len       
15-18 months   ki0047075b-MAL-ED       INDIA                          0            120     224  y_rate_len       
15-18 months   ki0047075b-MAL-ED       NEPAL                          1            226     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED       NEPAL                          0              1     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED       PERU                           1             50     208  y_rate_len       
15-18 months   ki0047075b-MAL-ED       PERU                           0            158     208  y_rate_len       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     222  y_rate_len       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            218     222  y_rate_len       
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     211  y_rate_len       
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            211     211  y_rate_len       
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1            180     449  y_rate_len       
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0            269     449  y_rate_len       
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1             10      10  y_rate_len       
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0              0      10  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            510     593  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             83     593  y_rate_len       
15-18 months   ki1114097-CONTENT       PERU                           1            176     189  y_rate_len       
15-18 months   ki1114097-CONTENT       PERU                           0             13     189  y_rate_len       
15-18 months   ki1135781-COHORTS       GUATEMALA                      1             58     642  y_rate_len       
15-18 months   ki1135781-COHORTS       GUATEMALA                      0            584     642  y_rate_len       
15-18 months   ki1148112-LCNI-5        MALAWI                         1              0     119  y_rate_len       
15-18 months   ki1148112-LCNI-5        MALAWI                         0            119     119  y_rate_len       
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1           2760    3548  y_rate_len       
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0            788    3548  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1            179     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0             30     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1            164     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0              3     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED       INDIA                          1            103     224  y_rate_len       
18-21 months   ki0047075b-MAL-ED       INDIA                          0            121     224  y_rate_len       
18-21 months   ki0047075b-MAL-ED       NEPAL                          1            226     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED       NEPAL                          0              1     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED       PERU                           1             50     198  y_rate_len       
18-21 months   ki0047075b-MAL-ED       PERU                           0            148     198  y_rate_len       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     230  y_rate_len       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            226     230  y_rate_len       
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     198  y_rate_len       
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            198     198  y_rate_len       
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1            169     422  y_rate_len       
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0            253     422  y_rate_len       
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9  y_rate_len       
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            463     535  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             72     535  y_rate_len       
18-21 months   ki1114097-CONTENT       PERU                           1            171     183  y_rate_len       
18-21 months   ki1114097-CONTENT       PERU                           0             12     183  y_rate_len       
18-21 months   ki1135781-COHORTS       GUATEMALA                      1             61     657  y_rate_len       
18-21 months   ki1135781-COHORTS       GUATEMALA                      0            596     657  y_rate_len       
18-21 months   ki1148112-LCNI-5        MALAWI                         1              3     473  y_rate_len       
18-21 months   ki1148112-LCNI-5        MALAWI                         0            470     473  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1            178     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0             29     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1            162     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED       INDIA                          1            103     224  y_rate_len       
21-24 months   ki0047075b-MAL-ED       INDIA                          0            121     224  y_rate_len       
21-24 months   ki0047075b-MAL-ED       NEPAL                          1            226     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED       NEPAL                          0              1     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED       PERU                           1             47     184  y_rate_len       
21-24 months   ki0047075b-MAL-ED       PERU                           0            137     184  y_rate_len       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     232  y_rate_len       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            228     232  y_rate_len       
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     198  y_rate_len       
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            198     198  y_rate_len       
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1            163     411  y_rate_len       
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0            248     411  y_rate_len       
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1              8       8  y_rate_len       
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       8  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            409     479  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     479  y_rate_len       
21-24 months   ki1114097-CONTENT       PERU                           1             36      38  y_rate_len       
21-24 months   ki1114097-CONTENT       PERU                           0              2      38  y_rate_len       
21-24 months   ki1135781-COHORTS       GUATEMALA                      1             67     719  y_rate_len       
21-24 months   ki1135781-COHORTS       GUATEMALA                      0            652     719  y_rate_len       
21-24 months   ki1148112-LCNI-5        MALAWI                         1              2     405  y_rate_len       
21-24 months   ki1148112-LCNI-5        MALAWI                         0            403     405  y_rate_len       


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
![](/tmp/405a63cf-94bd-4fc9-aaeb-60174d4417b3/a10c027c-9779-4cc5-bfc3-cf85976fe906/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/405a63cf-94bd-4fc9-aaeb-60174d4417b3/a10c027c-9779-4cc5-bfc3-cf85976fe906/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/405a63cf-94bd-4fc9-aaeb-60174d4417b3/a10c027c-9779-4cc5-bfc3-cf85976fe906/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                3.3415716   3.2731861   3.4099570
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                3.3736455   3.1606235   3.5866675
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                3.3118086   3.1832053   3.4404118
0-3 months     ki0047075b-MAL-ED       INDIA        0                    NA                3.3383851   3.2104503   3.4663199
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                3.0398661   2.8635809   3.2161513
0-3 months     ki0047075b-MAL-ED       PERU         0                    NA                3.0665718   2.9940949   3.1390487
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                3.1322352   3.0385471   3.2259233
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                3.0937202   3.0289913   3.1584491
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                3.1433572   3.1039059   3.1828085
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                3.0604309   2.9639657   3.1568960
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                2.5224604   2.2789127   2.7660081
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    NA                2.6291746   2.5714520   2.6868972
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                3.5274935   3.4995266   3.5554605
0-3 months     ki1135781-COHORTS       INDIA        0                    NA                3.4710076   3.4494651   3.4925501
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                3.6737121   3.6622674   3.6851569
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                3.6509166   3.6329217   3.6689114
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                3.0068284   2.9452802   3.0683765
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                3.0093711   2.9078353   3.1109068
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                1.9436748   1.8882961   1.9990535
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                1.8381217   1.7081272   1.9681161
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                1.9033970   1.8133524   1.9934415
3-6 months     ki0047075b-MAL-ED       INDIA        0                    NA                1.8687705   1.7851970   1.9523440
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                1.9240050   1.7677664   2.0802437
3-6 months     ki0047075b-MAL-ED       PERU         0                    NA                2.0432744   1.9701397   2.1164091
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                1.8511567   1.7679569   1.9343566
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                1.8211553   1.7625063   1.8798044
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                1.9899004   1.9517772   2.0280236
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                2.0919986   1.9820603   2.2019368
3-6 months     ki1114097-CONTENT       PERU         1                    NA                2.0918849   2.0424471   2.1413227
3-6 months     ki1114097-CONTENT       PERU         0                    NA                1.9993480   1.7571892   2.2415069
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                1.8232193   1.7170045   1.9294342
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    NA                1.7515217   1.7107396   1.7923038
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                1.8864270   1.8635014   1.9093526
3-6 months     ki1135781-COHORTS       INDIA        0                    NA                1.8401765   1.8217939   1.8585591
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                1.9219162   1.9097204   1.9341119
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                1.9124959   1.8915469   1.9334448
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                1.8974183   1.8635146   1.9313219
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                1.8980089   1.8356535   1.9603643
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                1.2466920   1.2034708   1.2899131
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                1.2582142   1.1572666   1.3591617
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                1.3171103   1.2459372   1.3882833
6-9 months     ki0047075b-MAL-ED       INDIA        0                    NA                1.2128299   1.1481207   1.2775391
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                1.2600023   1.1209353   1.3990693
6-9 months     ki0047075b-MAL-ED       PERU         0                    NA                1.3513800   1.2830857   1.4196742
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                1.3153366   1.2434292   1.3872441
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                1.2191557   1.1701013   1.2682102
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                1.3290165   1.2966932   1.3613399
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                1.3083670   1.2382519   1.3784821
6-9 months     ki1114097-CONTENT       PERU         1                    NA                1.4008210   1.3516284   1.4500137
6-9 months     ki1114097-CONTENT       PERU         0                    NA                1.4153749   1.2296372   1.6011126
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                1.1624968   1.0536419   1.2713517
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    NA                1.0986908   1.0649298   1.1324517
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                1.1758778   1.1531448   1.1986107
6-9 months     ki1135781-COHORTS       INDIA        0                    NA                1.1827341   1.1656351   1.1998332
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                1.3347714   1.3103857   1.3591571
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                1.2846383   1.2416912   1.3275855
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.9943057   0.9523562   1.0362552
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.9322820   0.8225845   1.0419796
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                1.0134837   0.9610289   1.0659385
9-12 months    ki0047075b-MAL-ED       INDIA        0                    NA                0.9647414   0.9090482   1.0204345
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                1.2186864   1.0773250   1.3600478
9-12 months    ki0047075b-MAL-ED       PERU         0                    NA                1.0753047   1.0090086   1.1416008
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                1.0875799   1.0322787   1.1428812
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                1.0873793   1.0416315   1.1331271
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                1.1229386   1.0938879   1.1519893
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                1.1376497   1.0755084   1.1997910
9-12 months    ki1114097-CONTENT       PERU         1                    NA                1.2082202   1.1666629   1.2497776
9-12 months    ki1114097-CONTENT       PERU         0                    NA                1.1472708   1.0010245   1.2935171
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                0.9483199   0.8470006   1.0496392
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    NA                0.9403826   0.9096306   0.9711346
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                1.0139378   0.9912105   1.0366652
9-12 months    ki1135781-COHORTS       INDIA        0                    NA                0.9626449   0.9437229   0.9815668
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                1.0747785   1.0539827   1.0955743
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                1.0549572   1.0203002   1.0896142
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.9223765   0.8771776   0.9675753
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.8673145   0.7837762   0.9508527
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.9410212   0.8839329   0.9981096
12-15 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.8921517   0.8393576   0.9449458
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                0.8516908   0.7489338   0.9544478
12-15 months   ki0047075b-MAL-ED       PERU         0                    NA                0.8978200   0.8423056   0.9533343
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7566190   0.6955171   0.8177208
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.7061887   0.6439292   0.7684481
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.9779902   0.9513601   1.0046202
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.9290765   0.8601266   0.9980265
12-15 months   ki1114097-CONTENT       PERU         1                    NA                0.9356156   0.8917147   0.9795164
12-15 months   ki1114097-CONTENT       PERU         0                    NA                0.8358355   0.6694537   1.0022173
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.8058900   0.6865612   0.9252189
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.7891495   0.7581396   0.8201593
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.9465092   0.9291110   0.9639075
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.9143925   0.8793388   0.9494462
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.8148492   0.7741088   0.8555896
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.8750496   0.7854429   0.9646564
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.8259448   0.7767078   0.8751818
15-18 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.8599357   0.8062956   0.9135757
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                0.8762362   0.7538530   0.9986194
15-18 months   ki0047075b-MAL-ED       PERU         0                    NA                0.8469380   0.7976431   0.8962328
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7805601   0.7171643   0.8439558
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.7685307   0.7163505   0.8207108
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.9169165   0.8923570   0.9414759
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.9111050   0.8418382   0.9803718
15-18 months   ki1114097-CONTENT       PERU         1                    NA                0.9943720   0.9475994   1.0411446
15-18 months   ki1114097-CONTENT       PERU         0                    NA                0.7771835   0.5664115   0.9879555
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.7786275   0.6201502   0.9371049
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.7317716   0.6970492   0.7664939
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.8665955   0.8477049   0.8854860
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.8349056   0.8007621   0.8690490
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.8262587   0.7898229   0.8626944
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.7325217   0.6323892   0.8326542
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.9204714   0.8697772   0.9711656
18-21 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.8435411   0.7955370   0.8915452
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                0.9049211   0.8100347   0.9998075
18-21 months   ki0047075b-MAL-ED       PERU         0                    NA                0.8141972   0.7607082   0.8676861
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7314099   0.6736678   0.7891520
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.7270561   0.6808869   0.7732253
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.7954285   0.7698803   0.8209768
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.8122563   0.7501784   0.8743342
18-21 months   ki1114097-CONTENT       PERU         1                    NA                0.9180496   0.8724551   0.9636441
18-21 months   ki1114097-CONTENT       PERU         0                    NA                0.8508500   0.7060608   0.9956391
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.7046024   0.5816912   0.8275137
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.7504199   0.7165340   0.7843057
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.7668641   0.7288211   0.8049071
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.7928501   0.6779774   0.9077229
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.8115389   0.7701295   0.8529483
21-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.8375312   0.7915907   0.8834718
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                0.7087199   0.6222133   0.7952265
21-24 months   ki0047075b-MAL-ED       PERU         0                    NA                0.7796344   0.7252154   0.8340534
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7102444   0.6564481   0.7640407
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.7217378   0.6748720   0.7686035
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.7952019   0.7682365   0.8221673
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.8351206   0.7661532   0.9040879
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.6852572   0.5702424   0.8002719
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.6755045   0.6480872   0.7029218


### Parameter: E(Y)


agecat         studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     ki0047075b-MAL-ED       INDIA        NA                   NA                3.3257529   3.2359780   3.4155278
0-3 months     ki0047075b-MAL-ED       PERU         NA                   NA                3.0728777   3.0062000   3.1395554
0-3 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                3.1335342   3.0968946   3.1701738
0-3 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                2.6177358   2.5631597   2.6723119
0-3 months     ki1135781-COHORTS       INDIA        NA                   NA                3.4938034   3.4771179   3.5104888
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                3.6645010   3.6542693   3.6747327
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                3.0081001   2.9551156   3.0610847
3-6 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED       INDIA        NA                   NA                1.8780654   1.8173074   1.9388233
3-6 months     ki0047075b-MAL-ED       PERU         NA                   NA                2.0175680   1.9512051   2.0839310
3-6 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                2.0027540   1.9667312   2.0387768
3-6 months     ki1114097-CONTENT       PERU         NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                1.7541195   1.7166655   1.7915734
3-6 months     ki1135781-COHORTS       INDIA        NA                   NA                1.8572103   1.8432112   1.8712094
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                1.9202191   1.9097529   1.9306852
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                1.8987567   1.8688242   1.9286892
6-9 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED       INDIA        NA                   NA                1.2581259   1.2101884   1.3060633
6-9 months     ki0047075b-MAL-ED       PERU         NA                   NA                1.3204373   1.2649539   1.3759207
6-9 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                1.3277672   1.2982110   1.3573234
6-9 months     ki1114097-CONTENT       PERU         NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                1.1046168   1.0728025   1.1364310
6-9 months     ki1135781-COHORTS       INDIA        NA                   NA                1.1818282   1.1689263   1.1947301
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                1.3241671   1.3034835   1.3448507
9-12 months    ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED       INDIA        NA                   NA                0.9810598   0.9425271   1.0195925
9-12 months    ki0047075b-MAL-ED       PERU         NA                   NA                1.0938158   1.0421876   1.1454440
9-12 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                1.1253061   1.0988172   1.1517949
9-12 months    ki1114097-CONTENT       PERU         NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    ki1135781-COHORTS       GUATEMALA    NA                   NA                0.9427431   0.9140297   0.9714566
9-12 months    ki1135781-COHORTS       INDIA        NA                   NA                0.9844431   0.9705367   0.9983496
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                1.0714466   1.0534634   1.0894298
12-15 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.9129447   0.8748557   0.9510337
12-15 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.8895957   0.8424004   0.9367911
12-15 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.9714857   0.9466423   0.9963290
12-15 months   ki1114097-CONTENT       PERU         NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.7899732   0.7616006   0.8183457
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.9414130   0.9256041   0.9572219
15-18 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.8461081   0.8096109   0.8826053
15-18 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.8582871   0.8154498   0.9011244
15-18 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.9162288   0.8930973   0.9393604
15-18 months   ki1114097-CONTENT       PERU         NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.7357057   0.7024388   0.7689726
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.8599047   0.8433807   0.8764287
18-21 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.8786990   0.8431802   0.9142178
18-21 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.8405408   0.7957138   0.8853678
18-21 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.7977951   0.7741689   0.8214214
18-21 months   ki1114097-CONTENT       PERU         NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.7453230   0.7139167   0.7767294
21-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.8256267   0.7945621   0.8566913
21-24 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.7622936   0.7156467   0.8089404
21-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.8010871   0.7761614   0.8260128
21-24 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.6771703   0.6513485   0.7029921


### Parameter: ATE


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0320739   -0.1915341    0.2556819
0-3 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA        0                    1                  0.0265765   -0.1558089    0.2089620
0-3 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU         0                    1                  0.0267057   -0.1641715    0.2175829
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0385150   -0.1525123    0.0754823
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0829263   -0.1871646    0.0213120
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    1                  0.1067142   -0.1444197    0.3578481
0-3 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0564859   -0.0912865   -0.0216853
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0227956   -0.0417080   -0.0038832
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                  0.0025427   -0.1166062    0.1216915
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.1055531   -0.2478939    0.0367877
3-6 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.0346265   -0.1580465    0.0887935
3-6 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU         0                    1                  0.1192694   -0.0535601    0.2920988
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0300014   -0.1316349    0.0716320
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.1020981   -0.0141756    0.2183719
3-6 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU         0                    1                 -0.0925369   -0.3389643    0.1538906
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0716977   -0.1853335    0.0419382
3-6 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0462505   -0.0755312   -0.0169698
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0094203   -0.0329094    0.0140688
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                  0.0005906   -0.0701515    0.0713328
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0115222   -0.0985341    0.1215785
6-9 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.1042804   -0.2006444   -0.0079164
6-9 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU         0                    1                  0.0913777   -0.0636245    0.2463798
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0961809   -0.1837672   -0.0085947
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0206495   -0.0978231    0.0565241
6-9 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU         0                    1                  0.0145539   -0.1772826    0.2063903
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0638060   -0.1778363    0.0502243
6-9 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       INDIA        0                    1                  0.0068564   -0.0215771    0.0352898
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0501331   -0.0996615   -0.0006047
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0620236   -0.1798300    0.0557828
9-12 months    ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA        0                    1                 -0.0487423   -0.1251538    0.0276691
9-12 months    ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU         0                    1                 -0.1433817   -0.3001402    0.0133769
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0002006   -0.0718844    0.0714831
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0147112   -0.0538499    0.0832722
9-12 months    ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU         0                    1                 -0.0609494   -0.2129667    0.0910679
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0079373   -0.1138753    0.0980007
9-12 months    ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       INDIA        0                    1                 -0.0512930   -0.0808398   -0.0217462
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0198213   -0.0602814    0.0206388
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0550620   -0.1500992    0.0399752
12-15 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0488695   -0.1274044    0.0296653
12-15 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0461291   -0.0706224    0.1628807
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0504303   -0.1389799    0.0381193
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0489136   -0.1227069    0.0248796
12-15 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU         0                    1                 -0.0997801   -0.2719289    0.0723688
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0167406   -0.1403408    0.1068597
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0321167   -0.0705211    0.0062876
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0602005   -0.0382410    0.1586420
15-18 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA        0                    1                  0.0339909   -0.0385543    0.1065361
15-18 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU         0                    1                 -0.0292982   -0.1613975    0.1028011
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0120294   -0.0943248    0.0702660
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0058115   -0.0793838    0.0677609
15-18 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU         0                    1                 -0.2171885   -0.4337255   -0.0006516
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0468560   -0.2091615    0.1154496
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0316899   -0.0703747    0.0069949
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0937370   -0.2003759    0.0129019
18-21 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0769303   -0.1460773   -0.0077833
18-21 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU         0                    1                 -0.0907240   -0.1997258    0.0182779
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0043537   -0.0781358    0.0694283
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0168278   -0.0502129    0.0838684
18-21 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU         0                    1                 -0.0671996   -0.2197664    0.0853671
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    1                  0.0458174   -0.0820355    0.1736704
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0259860   -0.0951441    0.1471162
21-24 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA        0                    1                  0.0259923   -0.0361808    0.0881654
21-24 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0709144   -0.0311974    0.1730263
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0114934   -0.0596950    0.0826818
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0399187   -0.0344639    0.1143013
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0097526   -0.1282573    0.1087520


### Parameter: PAR


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0054386   -0.0266687    0.0375458
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                 0.0139443   -0.0855212    0.1134099
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0330116   -0.1206988    0.1867220
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0222236   -0.0933008    0.0488536
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0098229   -0.0221600    0.0025141
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0952754   -0.1390625    0.3296132
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0336902   -0.0564331   -0.0109473
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0092111   -0.0150484   -0.0033738
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0012717   -0.0260519    0.0285953
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0160341   -0.0389990    0.0069308
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0253316   -0.0923410    0.0416778
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0935630   -0.0481462    0.2352722
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0184652   -0.0819674    0.0450370
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0128536   -0.0008908    0.0265979
3-6 months     ki1114097-CONTENT       PERU         1                    NA                -0.0077008   -0.0211051    0.0057035
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0690999   -0.1725012    0.0343015
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0292167   -0.0479786   -0.0104549
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0016971   -0.0082629    0.0048687
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0013384   -0.0145266    0.0172035
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0013531   -0.0176552    0.0203615
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0589844   -0.1119691   -0.0059997
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0604350   -0.0707299    0.1916000
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0597416   -0.1139057   -0.0055775
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0012493   -0.0113334    0.0088348
6-9 months     ki1114097-CONTENT       PERU         1                    NA                -0.0033974   -0.0143109    0.0075161
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0578800   -0.1623102    0.0465502
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                 0.0059504   -0.0124109    0.0243118
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0106043   -0.0210768   -0.0001318
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0046611   -0.0223680    0.0130458
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                -0.0324239   -0.0742525    0.0094047
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                -0.1248706   -0.2559410    0.0061998
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0010009   -0.0426398    0.0446417
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0023675   -0.0066433    0.0113783
9-12 months    ki1114097-CONTENT       PERU         1                    NA                -0.0033434   -0.0128077    0.0061209
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0055768   -0.1039607    0.0928071
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                -0.0294947   -0.0479483   -0.0110411
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0033319   -0.0123335    0.0056698
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0082760   -0.0222940    0.0057419
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0280765   -0.0707932    0.0146401
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0379049   -0.0545750    0.1303848
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0324567   -0.0866807    0.0217673
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0065045   -0.0161476    0.0031386
12-15 months   ki1114097-CONTENT       PERU         1                    NA                -0.0064712   -0.0176002    0.0046578
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0159168   -0.1321060    0.1002723
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0050962   -0.0133667    0.0031742
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0092734   -0.0056379    0.0241847
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0201633   -0.0186874    0.0590140
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0179491   -0.1264945    0.0905962
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0077882   -0.0571296    0.0415533
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0006877   -0.0107023    0.0093270
15-18 months   ki1114097-CONTENT       PERU         1                    NA                -0.0083488   -0.0219280    0.0052303
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0429218   -0.1956813    0.1098377
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0066907   -0.0149109    0.0015295
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0128739   -0.0282611    0.0025132
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0417724   -0.0801008   -0.0034439
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0643803   -0.1499317    0.0211710
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0022630   -0.0469291    0.0424031
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0023666   -0.0061614    0.0108946
18-21 months   ki1114097-CONTENT       PERU         1                    NA                -0.0034158   -0.0140129    0.0071813
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0407206   -0.0783215    0.1597626
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0025542   -0.0124946    0.0176029
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0140878   -0.0195797    0.0477552
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0535736   -0.0227576    0.1299049
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0069734   -0.0360045    0.0499512
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0058852   -0.0049273    0.0166977
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0080868   -0.1185515    0.1023778
