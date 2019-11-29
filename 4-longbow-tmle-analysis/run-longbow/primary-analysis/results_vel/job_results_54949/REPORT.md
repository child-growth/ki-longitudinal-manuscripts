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

**Outcome Variable:** y_rate_haz

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
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1            198     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1            159     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0              4     163  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       INDIA                          1             80     176  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       INDIA                          0             96     176  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       NEPAL                          1            154     155  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       NEPAL                          0              1     155  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       PERU                           1             60     246  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       PERU                           0            186     246  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              2     194  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            192     194  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     216  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            216     216  y_rate_haz       
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1            218     566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0            348     566  y_rate_haz       
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1             13      13  y_rate_haz       
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0              0      13  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            626     710  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             84     710  y_rate_haz       
0-3 months     ki1114097-CONTENT       PERU                           1             25      29  y_rate_haz       
0-3 months     ki1114097-CONTENT       PERU                           0              4      29  y_rate_haz       
0-3 months     ki1135781-COHORTS       GUATEMALA                      1             42     445  y_rate_haz       
0-3 months     ki1135781-COHORTS       GUATEMALA                      0            403     445  y_rate_haz       
0-3 months     ki1135781-COHORTS       INDIA                          1           1732    4660  y_rate_haz       
0-3 months     ki1135781-COHORTS       INDIA                          0           2928    4660  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1          13596   19862  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0           6266   19862  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1           1951    2513  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0            562    2513  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1            193     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1            204     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0              4     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       INDIA                          1            105     228  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       INDIA                          0            123     228  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       NEPAL                          1            232     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       NEPAL                          0              1     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       PERU                           1             63     260  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       PERU                           0            197     260  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     237  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            233     237  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            231     231  y_rate_haz       
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1            198     523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0            325     523  y_rate_haz       
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1             11      11  y_rate_haz       
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0              0      11  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            601     684  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             83     684  y_rate_haz       
3-6 months     ki1114097-CONTENT       PERU                           1            200     214  y_rate_haz       
3-6 months     ki1114097-CONTENT       PERU                           0             14     214  y_rate_haz       
3-6 months     ki1135781-COHORTS       GUATEMALA                      1             58     551  y_rate_haz       
3-6 months     ki1135781-COHORTS       GUATEMALA                      0            493     551  y_rate_haz       
3-6 months     ki1135781-COHORTS       INDIA                          1           1770    4719  y_rate_haz       
3-6 months     ki1135781-COHORTS       INDIA                          0           2949    4719  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1           8993   12571  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0           3578   12571  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1           1431    1839  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0            408    1839  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1            186     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1            194     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0              4     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       INDIA                          1            104     228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       INDIA                          0            124     228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       NEPAL                          1            229     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       NEPAL                          0              1     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       PERU                           1             56     238  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       PERU                           0            182     238  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     227  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            223     227  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     219  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219     219  y_rate_haz       
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1            193     498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0            305     498  y_rate_haz       
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1              6       6  y_rate_haz       
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0              0       6  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            589     678  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             89     678  y_rate_haz       
6-9 months     ki1114097-CONTENT       PERU                           1            200     214  y_rate_haz       
6-9 months     ki1114097-CONTENT       PERU                           0             14     214  y_rate_haz       
6-9 months     ki1135781-COHORTS       GUATEMALA                      1             63     600  y_rate_haz       
6-9 months     ki1135781-COHORTS       GUATEMALA                      0            537     600  y_rate_haz       
6-9 months     ki1135781-COHORTS       INDIA                          1           1650    4328  y_rate_haz       
6-9 months     ki1135781-COHORTS       INDIA                          0           2678    4328  y_rate_haz       
6-9 months     ki1148112-LCNI-5        MALAWI                         1              3     556  y_rate_haz       
6-9 months     ki1148112-LCNI-5        MALAWI                         0            553     556  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1           2379    3052  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0            673    3052  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1            190     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0             35     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1            190     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0              4     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       INDIA                          1            103     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       INDIA                          0            122     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       NEPAL                          1            228     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       NEPAL                          0              1     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       PERU                           1             52     228  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       PERU                           0            176     228  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            225     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     217  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            217     217  y_rate_haz       
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1            189     482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0            293     482  y_rate_haz       
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1              6       6  y_rate_haz       
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0              0       6  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            576     664  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             88     664  y_rate_haz       
9-12 months    ki1114097-CONTENT       PERU                           1            198     212  y_rate_haz       
9-12 months    ki1114097-CONTENT       PERU                           0             14     212  y_rate_haz       
9-12 months    ki1135781-COHORTS       GUATEMALA                      1             67     679  y_rate_haz       
9-12 months    ki1135781-COHORTS       GUATEMALA                      0            612     679  y_rate_haz       
9-12 months    ki1135781-COHORTS       INDIA                          1           1456    3725  y_rate_haz       
9-12 months    ki1135781-COHORTS       INDIA                          0           2269    3725  y_rate_haz       
9-12 months    ki1148112-LCNI-5        MALAWI                         1              3     381  y_rate_haz       
9-12 months    ki1148112-LCNI-5        MALAWI                         0            378     381  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1           2730    3499  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0            769    3499  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1            180     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0             32     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1            181     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0              3     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       INDIA                          1            103     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       INDIA                          0            121     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       NEPAL                          1            229     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       NEPAL                          0              1     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       PERU                           1             51     218  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       PERU                           0            167     218  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            220     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     219  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219     219  y_rate_haz       
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1            181     461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0            280     461  y_rate_haz       
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1              8       8  y_rate_haz       
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       8  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            562     649  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             87     649  y_rate_haz       
12-15 months   ki1114097-CONTENT       PERU                           1            186     199  y_rate_haz       
12-15 months   ki1114097-CONTENT       PERU                           0             13     199  y_rate_haz       
12-15 months   ki1135781-COHORTS       GUATEMALA                      1             67     700  y_rate_haz       
12-15 months   ki1135781-COHORTS       GUATEMALA                      0            633     700  y_rate_haz       
12-15 months   ki1148112-LCNI-5        MALAWI                         1              0     126  y_rate_haz       
12-15 months   ki1148112-LCNI-5        MALAWI                         0            126     126  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1           2757    3547  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0            790    3547  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1            179     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0             33     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1            172     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0              3     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       INDIA                          1            104     224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       INDIA                          0            120     224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       NEPAL                          1            226     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       NEPAL                          0              1     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       PERU                           1             50     208  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       PERU                           0            158     208  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     222  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            218     222  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     211  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            211     211  y_rate_haz       
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1            180     449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0            269     449  y_rate_haz       
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1             10      10  y_rate_haz       
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0              0      10  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            510     593  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             83     593  y_rate_haz       
15-18 months   ki1114097-CONTENT       PERU                           1            176     189  y_rate_haz       
15-18 months   ki1114097-CONTENT       PERU                           0             13     189  y_rate_haz       
15-18 months   ki1135781-COHORTS       GUATEMALA                      1             58     642  y_rate_haz       
15-18 months   ki1135781-COHORTS       GUATEMALA                      0            584     642  y_rate_haz       
15-18 months   ki1148112-LCNI-5        MALAWI                         1              0     119  y_rate_haz       
15-18 months   ki1148112-LCNI-5        MALAWI                         0            119     119  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1           2760    3548  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0            788    3548  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1            179     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0             30     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1            164     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0              3     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       INDIA                          1            103     224  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       INDIA                          0            121     224  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       NEPAL                          1            226     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       NEPAL                          0              1     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       PERU                           1             50     198  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       PERU                           0            148     198  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     230  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            226     230  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     198  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            198     198  y_rate_haz       
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1            169     422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0            253     422  y_rate_haz       
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9  y_rate_haz       
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            463     535  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             72     535  y_rate_haz       
18-21 months   ki1114097-CONTENT       PERU                           1            171     183  y_rate_haz       
18-21 months   ki1114097-CONTENT       PERU                           0             12     183  y_rate_haz       
18-21 months   ki1135781-COHORTS       GUATEMALA                      1             61     657  y_rate_haz       
18-21 months   ki1135781-COHORTS       GUATEMALA                      0            596     657  y_rate_haz       
18-21 months   ki1148112-LCNI-5        MALAWI                         1              3     473  y_rate_haz       
18-21 months   ki1148112-LCNI-5        MALAWI                         0            470     473  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1            178     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0             29     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1            162     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       INDIA                          1            103     224  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       INDIA                          0            121     224  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       NEPAL                          1            226     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       NEPAL                          0              1     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       PERU                           1             47     184  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       PERU                           0            137     184  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     232  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            228     232  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     198  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            198     198  y_rate_haz       
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1            163     411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0            248     411  y_rate_haz       
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1              8       8  y_rate_haz       
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       8  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            409     479  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     479  y_rate_haz       
21-24 months   ki1114097-CONTENT       PERU                           1             36      38  y_rate_haz       
21-24 months   ki1114097-CONTENT       PERU                           0              2      38  y_rate_haz       
21-24 months   ki1135781-COHORTS       GUATEMALA                      1             67     719  y_rate_haz       
21-24 months   ki1135781-COHORTS       GUATEMALA                      0            652     719  y_rate_haz       
21-24 months   ki1148112-LCNI-5        MALAWI                         1              2     405  y_rate_haz       
21-24 months   ki1148112-LCNI-5        MALAWI                         0            403     405  y_rate_haz       


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
![](/tmp/ff7f0244-fc9a-4100-bbb6-b086ddc604ae/a66b4019-42a7-4787-b040-ed7574516bfb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ff7f0244-fc9a-4100-bbb6-b086ddc604ae/a66b4019-42a7-4787-b040-ed7574516bfb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ff7f0244-fc9a-4100-bbb6-b086ddc604ae/a66b4019-42a7-4787-b040-ed7574516bfb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.1221058   -0.1573450   -0.0868666
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0953484   -0.2041325    0.0134357
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0752965   -0.1407830   -0.0098100
0-3 months     ki0047075b-MAL-ED       INDIA        0                    NA                -0.0690399   -0.1357072   -0.0023727
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                -0.2703831   -0.3552492   -0.1855170
0-3 months     ki0047075b-MAL-ED       PERU         0                    NA                -0.2544861   -0.2930319   -0.2159403
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.2291332   -0.2752246   -0.1830418
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.2327828   -0.2654795   -0.2000861
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.2254202   -0.2444129   -0.2064275
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.2567450   -0.3017428   -0.2117472
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.5221814   -0.6184976   -0.4258652
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    NA                -0.5110618   -0.5398978   -0.4822258
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0554753   -0.0695204   -0.0414302
0-3 months     ki1135781-COHORTS       INDIA        0                    NA                -0.0767317   -0.0873136   -0.0661497
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0623179    0.0567671    0.0678687
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0516024    0.0422226    0.0609823
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.2759419   -0.3086059   -0.2432780
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.2711045   -0.3260515   -0.2161575
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0145488   -0.0407158    0.0116182
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0580003   -0.1119031   -0.0040976
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0330056   -0.0746549    0.0086437
3-6 months     ki0047075b-MAL-ED       INDIA        0                    NA                -0.0509506   -0.0895346   -0.0123667
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                -0.0296197   -0.0998992    0.0406598
3-6 months     ki0047075b-MAL-ED       PERU         0                    NA                 0.0421964    0.0064122    0.0779806
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0455037   -0.0837678   -0.0072396
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0528489   -0.0799128   -0.0257850
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0192521    0.0016079    0.0368962
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0771454    0.0252546    0.1290362
3-6 months     ki1114097-CONTENT       PERU         1                    NA                 0.0153138   -0.0079083    0.0385360
3-6 months     ki1114097-CONTENT       PERU         0                    NA                -0.0180174   -0.1222501    0.0862153
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.1056588   -0.1561225   -0.0551952
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    NA                -0.0975075   -0.1168135   -0.0782016
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0538603   -0.0644789   -0.0432416
3-6 months     ki1135781-COHORTS       INDIA        0                    NA                -0.0681529   -0.0766860   -0.0596198
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0028484   -0.0085283    0.0028314
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0077400   -0.0178428    0.0023627
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0098254   -0.0254410    0.0057901
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0103361   -0.0381280    0.0174559
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0712329   -0.0900834   -0.0523825
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0663813   -0.1103194   -0.0224432
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0387069   -0.0703072   -0.0071065
6-9 months     ki0047075b-MAL-ED       INDIA        0                    NA                -0.0859551   -0.1148760   -0.0570342
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                -0.0705490   -0.1218498   -0.0192482
6-9 months     ki0047075b-MAL-ED       PERU         0                    NA                -0.0196469   -0.0483307    0.0090369
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0401812   -0.0711051   -0.0092574
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0722663   -0.0938772   -0.0506555
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0300182   -0.0440521   -0.0159842
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0308461   -0.0611660   -0.0005261
6-9 months     ki1114097-CONTENT       PERU         1                    NA                -0.0233135   -0.0452088   -0.0014181
6-9 months     ki1114097-CONTENT       PERU         0                    NA                -0.0395231   -0.1165042    0.0374581
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.1072383   -0.1528505   -0.0616261
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    NA                -0.1218677   -0.1366890   -0.1070464
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                -0.1079098   -0.1179098   -0.0979098
6-9 months     ki1135781-COHORTS       INDIA        0                    NA                -0.0987989   -0.1062550   -0.0913429
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0249865   -0.0355848   -0.0143883
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0437370   -0.0640615   -0.0234126
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0869846   -0.1044898   -0.0694794
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0947653   -0.1388921   -0.0506386
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                -0.0854178   -0.1070808   -0.0637547
9-12 months    ki0047075b-MAL-ED       INDIA        0                    NA                -0.0972079   -0.1205391   -0.0738768
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                 0.0015815   -0.0453538    0.0485169
9-12 months    ki0047075b-MAL-ED       PERU         0                    NA                -0.0568722   -0.0827187   -0.0310257
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0482987   -0.0713379   -0.0252595
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0384295   -0.0571361   -0.0197229
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0342171   -0.0462757   -0.0221585
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0288294   -0.0559390   -0.0017198
9-12 months    ki1114097-CONTENT       PERU         1                    NA                -0.0216162   -0.0390382   -0.0041941
9-12 months    ki1114097-CONTENT       PERU         0                    NA                -0.0396069   -0.0908377    0.0116238
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0826799   -0.1150746   -0.0502852
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    NA                -0.0916303   -0.1042783   -0.0789822
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                -0.0816351   -0.0910457   -0.0722245
9-12 months    ki1135781-COHORTS       INDIA        0                    NA                -0.0980820   -0.1056628   -0.0905013
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0514789   -0.0601317   -0.0428260
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0558487   -0.0706839   -0.0410135
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0525883   -0.0699276   -0.0352489
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0755621   -0.1058430   -0.0452813
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0443696   -0.0658283   -0.0229109
12-15 months   ki0047075b-MAL-ED       INDIA        0                    NA                -0.0630207   -0.0835168   -0.0425246
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0758004   -0.1194752   -0.0321256
12-15 months   ki0047075b-MAL-ED       PERU         0                    NA                -0.0625591   -0.0838557   -0.0412625
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.1171309   -0.1406896   -0.0935721
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.1322340   -0.1564332   -0.1080348
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0350659   -0.0453889   -0.0247428
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0524449   -0.0792214   -0.0256683
12-15 months   ki1114097-CONTENT       PERU         1                    NA                -0.0714894   -0.0886063   -0.0543724
12-15 months   ki1114097-CONTENT       PERU         0                    NA                -0.1050463   -0.1633605   -0.0467320
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0684598   -0.1115940   -0.0253257
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    NA                -0.0863669   -0.0982604   -0.0744734
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0436192   -0.0502812   -0.0369572
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0524126   -0.0657102   -0.0391150
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0489137   -0.0635714   -0.0342560
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0306304   -0.0695620    0.0083011
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0484130   -0.0661797   -0.0306463
15-18 months   ki0047075b-MAL-ED       INDIA        0                    NA                -0.0299906   -0.0483650   -0.0116162
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0146793   -0.0523081    0.0229495
15-18 months   ki0047075b-MAL-ED       PERU         0                    NA                -0.0400937   -0.0572329   -0.0229545
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0601042   -0.0837280   -0.0364805
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0565189   -0.0755751   -0.0374626
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0176469   -0.0265096   -0.0087842
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0156685   -0.0416575    0.0103204
15-18 months   ki1114097-CONTENT       PERU         1                    NA                -0.0065420   -0.0240124    0.0109284
15-18 months   ki1114097-CONTENT       PERU         0                    NA                -0.0596221   -0.1344667    0.0152226
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0594978   -0.1122202   -0.0067754
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    NA                -0.0584490   -0.0712338   -0.0456641
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0314447   -0.0383813   -0.0245080
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0381835   -0.0505931   -0.0257739
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0101622   -0.0224708    0.0021464
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0403510   -0.0721814   -0.0085206
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0171387    0.0006397    0.0336377
18-21 months   ki0047075b-MAL-ED       INDIA        0                    NA                -0.0049370   -0.0209822    0.0111082
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0133709   -0.0166459    0.0433877
18-21 months   ki0047075b-MAL-ED       PERU         0                    NA                -0.0169485   -0.0349370    0.0010399
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0415141   -0.0610376   -0.0219906
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0359821   -0.0523041   -0.0196601
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0286101   -0.0374677   -0.0197524
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0246502   -0.0454813   -0.0038190
18-21 months   ki1114097-CONTENT       PERU         1                    NA                -0.0055903   -0.0213674    0.0101868
18-21 months   ki1114097-CONTENT       PERU         0                    NA                 0.0050640   -0.0508781    0.0610062
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0307235   -0.0700273    0.0085804
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    NA                -0.0192681   -0.0310155   -0.0075208
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0271970    0.0140125    0.0403815
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                 0.0143043   -0.0167268    0.0453354
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0184177    0.0028938    0.0339416
21-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0356852    0.0200945    0.0512760
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0351714    0.0083523    0.0619904
21-24 months   ki0047075b-MAL-ED       PERU         0                    NA                 0.0633361    0.0455258    0.0811463
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0379847    0.0202094    0.0557601
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0464837    0.0309456    0.0620218
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0551137    0.0460936    0.0641337
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0814425    0.0589052    0.1039797
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0042497   -0.0299812    0.0384805
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    NA                -0.0096290   -0.0187917   -0.0004662


### Parameter: E(Y)


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.1175527   -0.1512522   -0.0838531
0-3 months     ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0719353   -0.1184447   -0.0254258
0-3 months     ki0047075b-MAL-ED       PERU         NA                   NA                -0.2525734   -0.2867261   -0.2184208
0-3 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.2292592   -0.2467953   -0.2117232
0-3 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.5135086   -0.5410819   -0.4859353
0-3 months     ki1135781-COHORTS       INDIA        NA                   NA                -0.0687822   -0.0769373   -0.0606271
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                 0.0588475    0.0539293    0.0637657
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.2749035   -0.3031728   -0.2466342
3-6 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0426392   -0.0707991   -0.0144793
3-6 months     ki0047075b-MAL-ED       PERU         NA                   NA                 0.0268518   -0.0044749    0.0581786
3-6 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                 0.0251987    0.0085620    0.0418354
3-6 months     ki1114097-CONTENT       PERU         NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.0974774   -0.1153733   -0.0795815
3-6 months     ki1135781-COHORTS       INDIA        NA                   NA                -0.0631107   -0.0695595   -0.0566618
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                -0.0034191   -0.0082871    0.0014488
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.0088470   -0.0225757    0.0048816
6-9 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0651417   -0.0864064   -0.0438771
6-9 months     ki0047075b-MAL-ED       PERU         NA                   NA                -0.0334667   -0.0581003   -0.0088331
6-9 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.0315216   -0.0443389   -0.0187043
6-9 months     ki1114097-CONTENT       PERU         NA                   NA                -0.0242292   -0.0452610   -0.0031973
6-9 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.1205556   -0.1344677   -0.1066436
6-9 months     ki1135781-COHORTS       INDIA        NA                   NA                -0.1011329   -0.1068243   -0.0954414
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.0289856   -0.0379823   -0.0199890
9-12 months    ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0915410   -0.1074964   -0.0755855
9-12 months    ki0047075b-MAL-ED       PERU         NA                   NA                -0.0440965   -0.0657987   -0.0223943
9-12 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.0335095   -0.0445391   -0.0224799
9-12 months    ki1114097-CONTENT       PERU         NA                   NA                -0.0224698   -0.0391090   -0.0058306
9-12 months    ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.0911807   -0.1029986   -0.0793628
9-12 months    ki1135781-COHORTS       INDIA        NA                   NA                -0.0910334   -0.0967095   -0.0853573
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.0521361   -0.0596399   -0.0446324
12-15 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0555642   -0.0703434   -0.0407850
12-15 months   ki0047075b-MAL-ED       PERU         NA                   NA                -0.0662315   -0.0844054   -0.0480576
12-15 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.0381954   -0.0477928   -0.0285980
12-15 months   ki1114097-CONTENT       PERU         NA                   NA                -0.0734290   -0.0899048   -0.0569533
12-15 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.0854255   -0.0963439   -0.0745071
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.0451119   -0.0511864   -0.0390374
15-18 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0375818   -0.0504856   -0.0246779
15-18 months   ki0047075b-MAL-ED       PERU         NA                   NA                -0.0342880   -0.0499824   -0.0185936
15-18 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.0174101   -0.0258150   -0.0090052
15-18 months   ki1114097-CONTENT       PERU         NA                   NA                -0.0091366   -0.0260209    0.0077477
15-18 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.0582735   -0.0704983   -0.0460486
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.0328956   -0.0389474   -0.0268439
18-21 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED       INDIA        NA                   NA                 0.0056055   -0.0059067    0.0171177
18-21 months   ki0047075b-MAL-ED       PERU         NA                   NA                -0.0084828   -0.0237553    0.0067897
18-21 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.0279065   -0.0360459   -0.0197670
18-21 months   ki1114097-CONTENT       PERU         NA                   NA                -0.0059547   -0.0211395    0.0092302
18-21 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.0208348   -0.0316711   -0.0099986
21-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                 0.0295051    0.0184714    0.0405388
21-24 months   ki0047075b-MAL-ED       PERU         NA                   NA                 0.0575271    0.0423309    0.0727234
21-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                 0.0590484    0.0506790    0.0674177
21-24 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.0086469   -0.0173431    0.0000492


### Parameter: ATE


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0267574   -0.0876700    0.1411848
0-3 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA        0                    1                  0.0062565   -0.0873512    0.0998643
0-3 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU         0                    1                  0.0158970   -0.0772102    0.1090041
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0036496   -0.0602345    0.0529353
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0313248   -0.0801620    0.0175123
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    1                  0.0111196   -0.0893733    0.1116124
0-3 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0212563   -0.0387904   -0.0037222
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0107155   -0.0206854   -0.0007455
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                  0.0048374   -0.0595705    0.0692454
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0434515   -0.1033286    0.0164255
3-6 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.0179450   -0.0749723    0.0390823
3-6 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU         0                    1                  0.0718161   -0.0074160    0.1510482
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0073453   -0.0542505    0.0395599
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0578934    0.0029483    0.1128384
3-6 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU         0                    1                 -0.0333312   -0.1400522    0.0733897
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    1                  0.0081513   -0.0456732    0.0619759
3-6 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0142927   -0.0279083   -0.0006770
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0048916   -0.0161318    0.0063486
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0005106   -0.0323100    0.0312887
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0048516   -0.0430022    0.0527054
6-9 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.0472483   -0.0903976   -0.0040989
6-9 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU         0                    1                  0.0509021   -0.0079811    0.1097853
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0320851   -0.0698191    0.0056489
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0008279   -0.0343670    0.0327112
6-9 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU         0                    1                 -0.0162096   -0.0961752    0.0637560
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0146294   -0.0625822    0.0333234
6-9 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       INDIA        0                    1                  0.0091109   -0.0033707    0.0215924
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0187505   -0.0417134    0.0042124
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0077807   -0.0552793    0.0397180
9-12 months    ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA        0                    1                 -0.0117902   -0.0436807    0.0201004
9-12 months    ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU         0                    1                 -0.0584537   -0.1120569   -0.0048506
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0098692   -0.0197711    0.0395095
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0053877   -0.0242877    0.0350631
9-12 months    ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU         0                    1                 -0.0179908   -0.0721937    0.0362122
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0089504   -0.0437415    0.0258407
9-12 months    ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       INDIA        0                    1                 -0.0164470   -0.0285401   -0.0043538
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0043698   -0.0215155    0.0127759
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0229739   -0.0578688    0.0119211
12-15 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0186511   -0.0484926    0.0111904
12-15 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0132413   -0.0351425    0.0616251
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0151031   -0.0491090    0.0189027
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0173790   -0.0460305    0.0112725
12-15 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU         0                    1                 -0.0335569   -0.0944005    0.0272867
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0179071   -0.0626173    0.0268032
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0087934   -0.0233965    0.0058097
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0182833   -0.0233815    0.0599481
15-18 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA        0                    1                  0.0184224   -0.0071816    0.0440263
15-18 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU         0                    1                 -0.0254144   -0.0668302    0.0160014
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0035854   -0.0271575    0.0343283
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0019783   -0.0255111    0.0294678
15-18 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU         0                    1                 -0.0530801   -0.1300926    0.0239325
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    1                  0.0010489   -0.0532208    0.0553185
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0067388   -0.0208138    0.0073362
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0301888   -0.0644927    0.0041151
18-21 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0220757   -0.0451509    0.0009994
18-21 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU         0                    1                 -0.0303194   -0.0654389    0.0048000
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0055320   -0.0199373    0.0310014
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0039599   -0.0186450    0.0265648
18-21 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU         0                    1                  0.0106543   -0.0471360    0.0684447
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    1                  0.0114554   -0.0297346    0.0526453
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0128927   -0.0466508    0.0208654
21-24 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA        0                    1                  0.0172675   -0.0048209    0.0393559
21-24 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0281647   -0.0042911    0.0606205
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0084990   -0.0153421    0.0323401
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0263288    0.0020275    0.0506301
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0138786   -0.0493657    0.0216084


### Parameter: PAR


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0045531   -0.0125999    0.0217061
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                 0.0033612   -0.0474707    0.0541931
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0178097   -0.0550481    0.0906674
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0028533   -0.0379829    0.0322763
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0038391   -0.0094207    0.0017426
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0086728   -0.0832094    0.1005550
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0133069   -0.0248323   -0.0017815
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0034704   -0.0065341   -0.0004067
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0010385   -0.0137511    0.0158281
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0078920   -0.0178509    0.0020669
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0096336   -0.0403893    0.0211221
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0564715   -0.0058731    0.1188161
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0053970   -0.0347308    0.0239368
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0059466   -0.0006463    0.0125396
3-6 months     ki1114097-CONTENT       PERU         1                    NA                -0.0025576   -0.0087301    0.0036149
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0081814   -0.0407892    0.0571521
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0092504   -0.0179742   -0.0005266
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0005707   -0.0036436    0.0025023
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0009784   -0.0063606    0.0083175
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0012098   -0.0070740    0.0094935
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0264349   -0.0500606   -0.0028092
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0370823   -0.0115690    0.0857337
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0193736   -0.0424799    0.0037328
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0015034   -0.0059818    0.0029750
6-9 months     ki1114097-CONTENT       PERU         1                    NA                -0.0009157   -0.0058476    0.0040162
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0133174   -0.0571073    0.0304725
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                 0.0067769   -0.0013238    0.0148776
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0039991   -0.0085711    0.0005729
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0002208   -0.0071647    0.0067232
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                -0.0061232   -0.0234146    0.0111682
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                -0.0456780   -0.0882526   -0.0031034
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0058239   -0.0122970    0.0239448
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0007076   -0.0031356    0.0045508
9-12 months    ki1114097-CONTENT       PERU         1                    NA                -0.0008536   -0.0045699    0.0028627
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0085008   -0.0401952    0.0231935
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                -0.0093983   -0.0170500   -0.0017467
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0006573   -0.0044279    0.0031134
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0031241   -0.0083610    0.0021129
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0111946   -0.0273878    0.0049986
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0095689   -0.0297482    0.0488859
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0088279   -0.0292556    0.0115997
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0031295   -0.0069295    0.0006705
12-15 months   ki1114097-CONTENT       PERU         1                    NA                -0.0019397   -0.0061747    0.0022954
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0169656   -0.0587442    0.0248129
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0014927   -0.0047219    0.0017366
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0031194   -0.0026240    0.0088629
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0108312   -0.0029508    0.0246133
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0196087   -0.0518854    0.0126681
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0024136   -0.0159867    0.0208139
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0002368   -0.0035188    0.0039923
15-18 months   ki1114097-CONTENT       PERU         1                    NA                -0.0025946   -0.0073254    0.0021362
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0012243   -0.0495276    0.0519763
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0014510   -0.0044895    0.0015875
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0053597   -0.0106391   -0.0000802
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0115332   -0.0241286    0.0010622
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0218537   -0.0485616    0.0048543
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0031251   -0.0121645    0.0184147
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0007036   -0.0022414    0.0036485
18-21 months   ki1114097-CONTENT       PERU         1                    NA                -0.0003644   -0.0039195    0.0031907
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0098886   -0.0281073    0.0478846
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0015788   -0.0064355    0.0032779
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0110874   -0.0012069    0.0233818
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0223558   -0.0020320    0.0467435
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0027067   -0.0119119    0.0173254
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0039347    0.0003659    0.0075035
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0128966   -0.0457317    0.0199385
