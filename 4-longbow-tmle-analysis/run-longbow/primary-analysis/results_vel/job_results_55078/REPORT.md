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

**Intervention Variable:** perdiar24

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
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
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
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        perdiar24    n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  ----------  -------  -----  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                8    246  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        145    246  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              93    246  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0%              115    218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                5    238  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        190    238  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%              43    238  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%               14    232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%              78    232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           0%               10    282  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        113    282  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           >5%             159    282  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               90    272  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        179    272  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    272  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%               10    237  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        172    237  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    237  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       0%              219    320  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]        101    320  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       >5%               0    320  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%               29    565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        340    565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             196    565  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%               21    640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        425    640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             194    640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              136    725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             203    725  y_rate_wtkg      
0-3 months     ki1114097-CMIN             BANGLADESH                     0%                0     43  y_rate_wtkg      
0-3 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         19     43  y_rate_wtkg      
0-3 months     ki1114097-CMIN             BANGLADESH                     >5%              24     43  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           0%                1     29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           (0%, 5%]         14     29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           >5%              14     29  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               71   2500  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2175   2500  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             254   2500  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6    233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        138    233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              89    233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0%              105    208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          0%                3    230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        185    230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          >5%              42    230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%               13    233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%              79    233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           0%                6    267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        106    267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           >5%             155    267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               75    243  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    243  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    243  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        170    239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              60    239  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       0%              186    275  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         89    275  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       >5%               0    275  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%               15    522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        326    522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             181    522  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%               12    601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        406    601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             183    601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              129    702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        377    702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             196    702  y_rate_wtkg      
3-6 months     ki1114097-CMIN             BANGLADESH                     0%                0    184  y_rate_wtkg      
3-6 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         89    184  y_rate_wtkg      
3-6 months     ki1114097-CMIN             BANGLADESH                     >5%              95    184  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           0%                6    214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]        142    214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           >5%              66    214  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               38   1818  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       1606   1818  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             174   1818  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6    224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        133    224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              85    224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0%               95    198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          0%                3    230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        185    230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          >5%              42    230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%               12    230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%              77    230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           0%                3    245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]         99    245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           >5%             143    245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               73    231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        156    231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        163    225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              57    225  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       0%              205    301  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         96    301  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       >5%               0    301  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%               53    309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         35    309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%             221    309  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                9    498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        320    498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             169    498  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%               10    576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        388    576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             178    576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              131    693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        374    693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             188    693  y_rate_wtkg      
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                9    214  y_rate_wtkg      
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         57    214  y_rate_wtkg      
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%             148    214  y_rate_wtkg      
6-9 months     ki1114097-CMIN             BANGLADESH                     0%                0    177  y_rate_wtkg      
6-9 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         75    177  y_rate_wtkg      
6-9 months     ki1114097-CMIN             BANGLADESH                     >5%             102    177  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           0%                6    214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]        141    214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           >5%              67    214  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               91   3073  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2668   3073  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             314   3073  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        134    225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              85    225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0%               93    194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         99    194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          0%                3    227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          >5%              42    227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%               12    229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          >5%              77    229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           0%                2    235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]         96    235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           >5%             137    235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               70    233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        161    233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        164    224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    224  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       0%              225    325  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       (0%, 5%]        100    325  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       >5%               0    325  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               51    298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         35    298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             212    298  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                9    481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        309    481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             163    481  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                9    569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        384    569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             176    569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              130    683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        369    683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             184    683  y_rate_wtkg      
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                8    186  y_rate_wtkg      
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         48    186  y_rate_wtkg      
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             130    186  y_rate_wtkg      
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%              134   1120  y_rate_wtkg      
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        611   1120  y_rate_wtkg      
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             375   1120  y_rate_wtkg      
9-12 months    ki1114097-CMIN             BANGLADESH                     0%                0    160  y_rate_wtkg      
9-12 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]         68    160  y_rate_wtkg      
9-12 months    ki1114097-CMIN             BANGLADESH                     >5%              92    160  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           0%                6    212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]        140    212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           >5%              66    212  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              125   3518  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3039   3518  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             354   3518  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        128    212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              78    212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0%               86    184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         96    184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        181    226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          >5%              42    226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%               12    230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          >5%              77    230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           0%                1    224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         90    224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           >5%             133    224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               67    228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        160    228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        164    226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              56    226  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       0%              202    298  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         96    298  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       >5%               0    298  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               54    300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         35    300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%             211    300  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                9    461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        299    461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             153    461  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        359    537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             170    537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              127    666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        355    666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             184    666  y_rate_wtkg      
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                2     96  y_rate_wtkg      
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         30     96  y_rate_wtkg      
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%              64     96  y_rate_wtkg      
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%               88    982  y_rate_wtkg      
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        551    982  y_rate_wtkg      
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             343    982  y_rate_wtkg      
12-15 months   ki1114097-CMIN             BANGLADESH                     0%                2    159  y_rate_wtkg      
12-15 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         69    159  y_rate_wtkg      
12-15 months   ki1114097-CMIN             BANGLADESH                     >5%              88    159  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           0%                5    199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]        132    199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           >5%              62    199  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              132   3551  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3070   3551  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             349   3551  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127    212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              79    212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0%               79    175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         94    175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%               12    227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        139    227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           0%                1    214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86    214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           >5%             127    214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               68    225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        156    225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        159    220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    220  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       0%              188    277  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         89    277  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       >5%               0    277  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               56    290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         33    290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%             201    290  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                7    449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        295    449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             147    449  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        358    533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             167    533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              125    605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        321    605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             159    605  y_rate_wtkg      
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%               80   1053  y_rate_wtkg      
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        605   1053  y_rate_wtkg      
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             368   1053  y_rate_wtkg      
15-18 months   ki1114097-CMIN             BANGLADESH                     0%                3    163  y_rate_wtkg      
15-18 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         70    163  y_rate_wtkg      
15-18 months   ki1114097-CMIN             BANGLADESH                     >5%              90    163  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           0%                5    189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]        124    189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           >5%              60    189  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              119   3510  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3045   3510  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             346   3510  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        129    209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              74    209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0%               75    167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         90    167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%               12    227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        139    227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           0%                1    202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86    202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           >5%             115    202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               69    233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        150    208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    208  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       0%              174    255  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         81    255  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       >5%               0    255  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        274    422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             143    422  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                7    542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        368    542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             167    542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        291    547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             133    547  y_rate_wtkg      
18-21 months   ki1114097-CMIN             BANGLADESH                     0%                2    165  y_rate_wtkg      
18-21 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         72    165  y_rate_wtkg      
18-21 months   ki1114097-CMIN             BANGLADESH                     >5%              91    165  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           0%                4    183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           (0%, 5%]        122    183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           >5%              57    183  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127    207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              74    207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0%               73    165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               1    165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%               11    227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           0%                1    189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         80    189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           >5%             108    189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        150    206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50    206  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       0%               75    106  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         31    106  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       >5%               0    106  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        267    411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             139    411  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        328    485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             149    485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              122    493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        261    493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             110    493  y_rate_wtkg      
21-24 months   ki1114097-CMIN             BANGLADESH                     0%                2    133  y_rate_wtkg      
21-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         61    133  y_rate_wtkg      
21-24 months   ki1114097-CMIN             BANGLADESH                     >5%              70    133  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           0%                0     38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]         26     38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           >5%              12     38  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/fe05861e-2d4d-41cf-9bf5-4fa98821b2cb/4dd47f73-32d5-4889-952d-7f8cabfcc1ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fe05861e-2d4d-41cf-9bf5-4fa98821b2cb/4dd47f73-32d5-4889-952d-7f8cabfcc1ba/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fe05861e-2d4d-41cf-9bf5-4fa98821b2cb/4dd47f73-32d5-4889-952d-7f8cabfcc1ba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.9482045    0.8548350   1.0415740
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.8826296    0.8526112   0.9126480
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.8666716    0.8286540   0.9046893
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   NA                0.7826866    0.6826237   0.8827494
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                0.7596252    0.7350040   0.7842464
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%                  NA                0.7559222    0.7005207   0.8113237
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                0.8915215    0.7498232   1.0332198
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                0.9426594    0.9087259   0.9765930
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                0.9829669    0.9366738   1.0292600
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   NA                0.8975196    0.8142558   0.9807834
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                0.9492887    0.9077628   0.9908146
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                0.9820714    0.9487061   1.0154368
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8508786    0.6464905   1.0552667
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8852073    0.8482885   0.9221262
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8848754    0.8330988   0.9366520
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.7881559    0.7238211   0.8524907
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.8123547    0.7899796   0.8347298
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.8249411    0.7973390   0.8525432
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                0.8972425    0.8091194   0.9853657
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.8950533    0.8769221   0.9131845
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                0.9150536    0.8889851   0.9411220
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.8894783    0.8565489   0.9224077
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.8797930    0.8598771   0.8997089
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.8887587    0.8608669   0.9166504
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.6275144    0.5247073   0.7303215
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.7443956    0.7300705   0.7587208
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.7264673    0.6853611   0.7675735
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.5185723    0.4373284   0.5998162
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.4750128    0.4548227   0.4952029
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.4711266    0.4413059   0.5009473
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                0.5541761    0.4564581   0.6518941
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                0.5246510    0.4969691   0.5523330
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                0.5163490    0.4846853   0.5480127
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   NA                0.4573821    0.3803718   0.5343923
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                0.4915364    0.4641275   0.5189453
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                0.5043947    0.4779293   0.5308602
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.4145590    0.3150654   0.5140527
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.4488320    0.4195651   0.4780988
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.4870255    0.4422917   0.5317594
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.4383448    0.3582788   0.5184108
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.4623620    0.4399645   0.4847595
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.4514903    0.4228255   0.4801550
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                0.4477382    0.3946439   0.5008325
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.4835132    0.4672594   0.4997670
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                0.5025975    0.4802561   0.5249389
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.4954568    0.4683203   0.5225932
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.4927933    0.4788979   0.5066888
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.5087009    0.4853506   0.5320512
3-6 months     ki1114097-CONTENT          PERU                           0%                   NA                0.6081501    0.5303361   0.6859640
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             NA                0.5831318    0.5573713   0.6088923
3-6 months     ki1114097-CONTENT          PERU                           >5%                  NA                0.5978115    0.5584149   0.6372080
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.4712610    0.4366846   0.5058374
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.4376877    0.4282977   0.4470777
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.4487933    0.4207333   0.4768532
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.2098061    0.0936993   0.3259128
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.2366790    0.2188227   0.2545353
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.2548520    0.2302781   0.2794258
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                0.3156257    0.2721205   0.3591308
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                0.2784272    0.2598446   0.2970097
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                0.2537907    0.2276118   0.2799697
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1747407    0.0838264   0.2656550
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.2616129    0.2367324   0.2864934
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1774470    0.1181553   0.2367387
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                0.2544580    0.2396989   0.2692171
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1750524    0.0770110   0.2730937
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                0.2001422    0.1787010   0.2215834
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.2571397    0.1717517   0.3425276
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.2353907    0.2186929   0.2520885
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.2367928    0.2123525   0.2612331
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                0.2068091    0.1512412   0.2623770
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.2481479    0.2326484   0.2636474
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                0.2540001    0.2348711   0.2731290
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.2981251    0.2732510   0.3229992
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.2637153    0.2490587   0.2783719
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.2558726    0.2368844   0.2748608
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                0.2094165    0.1486658   0.2701672
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                0.2315695    0.2030816   0.2600575
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                0.2535564    0.2306703   0.2764425
6-9 months     ki1114097-CONTENT          PERU                           0%                   NA                0.2764306    0.1864002   0.3664610
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]             NA                0.3219927    0.2973163   0.3466690
6-9 months     ki1114097-CONTENT          PERU                           >5%                  NA                0.3208977    0.2877016   0.3540938
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.2454521    0.2002154   0.2906889
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.2405121    0.2350735   0.2459507
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.2333049    0.2172924   0.2493174
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.2437701    0.1845535   0.3029867
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1716742    0.1542935   0.1890549
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.1701861    0.1472988   0.1930735
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                0.2152473    0.1784017   0.2520928
9-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                0.1896285    0.1725452   0.2067118
9-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                0.1745529    0.1436821   0.2054237
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1755024    0.0489702   0.3020346
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1755260    0.1523100   0.1987420
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1403511    0.0982775   0.1824248
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                0.1024572    0.0675612   0.1373532
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1434417    0.0639767   0.2229067
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                0.1398546    0.1165033   0.1632059
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.1613334    0.0940561   0.2286107
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.1704021    0.1563364   0.1844679
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.1508932    0.1233008   0.1784857
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                0.1750036    0.1409474   0.2090598
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1801369    0.1691869   0.1910870
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                0.1719765    0.1537717   0.1901813
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.2133824    0.1902525   0.2365124
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1916729    0.1772747   0.2060712
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.1990674    0.1789502   0.2191846
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                0.1530875    0.0968166   0.2093584
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                0.2116576    0.1731347   0.2501804
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                0.2092510    0.1833996   0.2351024
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                0.2717652    0.2282035   0.3153268
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                0.2426375    0.2275566   0.2577185
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                0.2315997    0.2157183   0.2474810
9-12 months    ki1114097-CONTENT          PERU                           0%                   NA                0.1524186    0.0828871   0.2219500
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                0.2299644    0.2085949   0.2513339
9-12 months    ki1114097-CONTENT          PERU                           >5%                  NA                0.2187822    0.1832869   0.2542775
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.1562294    0.1380951   0.1743637
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.1544116    0.1498327   0.1589904
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.1555702    0.1432083   0.1679321
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.1280951   -0.0554597   0.3116499
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1415821    0.1223288   0.1608355
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.1257044    0.1005616   0.1508473
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                0.2083331    0.1323763   0.2842899
12-15 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                0.1511124    0.1313029   0.1709219
12-15 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                0.1480233    0.1159791   0.1800675
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2560672    0.1544730   0.3576613
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1517760    0.1224466   0.1811054
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1715477    0.1230609   0.2200344
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                0.1358397    0.1202870   0.1513923
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1346365    0.0436594   0.2256136
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                0.1850451    0.1596183   0.2104719
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.1862096    0.1167904   0.2556289
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.1282324    0.1139477   0.1425171
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.1316733    0.1092871   0.1540594
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                0.1253398    0.0851013   0.1655782
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1774823    0.1634984   0.1914662
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                0.1879913    0.1660818   0.2099008
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.1499615    0.1243323   0.1755908
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1660590    0.1508631   0.1812548
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.1698094    0.1517376   0.1878812
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                0.1684104    0.1300421   0.2067787
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                0.1998306    0.1862518   0.2134094
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                0.1887723    0.1628646   0.2146800
12-15 months   ki1114097-CONTENT          PERU                           0%                   NA                0.1746260    0.0841935   0.2650586
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]             NA                0.1938999    0.1709485   0.2168512
12-15 months   ki1114097-CONTENT          PERU                           >5%                  NA                0.1542613    0.1215150   0.1870077
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.1335017    0.1137819   0.1532216
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.1301399    0.1257684   0.1345114
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.1317250    0.1191207   0.1443294
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.1103982   -0.0199936   0.2407900
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1340033    0.1147718   0.1532347
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.1593708    0.1333576   0.1853840
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                0.1836948    0.1136823   0.2537074
15-18 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                0.1786166    0.1578260   0.1994071
15-18 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                0.1645066    0.1376331   0.1913801
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1299329    0.0017684   0.2580974
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1475884    0.1217691   0.1734076
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1303698    0.0788003   0.1819394
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                0.2297997    0.1995910   0.2600085
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1512934    0.0791254   0.2234613
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                0.1672055    0.1456672   0.1887438
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.1235269    0.0686434   0.1784104
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.1554873    0.1368336   0.1741409
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.1493640    0.1258636   0.1728643
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                0.0942782    0.0506144   0.1379421
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1561557    0.1415025   0.1708089
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                0.1597447    0.1395568   0.1799325
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.1757927    0.1477432   0.2038422
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1615034    0.1470910   0.1759159
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.1479284    0.1265653   0.1692915
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                0.1871716    0.1624395   0.2119037
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                0.1822565    0.1687485   0.1957645
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                0.1606313    0.1405201   0.1807424
15-18 months   ki1114097-CONTENT          PERU                           0%                   NA                0.0999091   -0.0070922   0.2069103
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]             NA                0.1755184    0.1514513   0.1995855
15-18 months   ki1114097-CONTENT          PERU                           >5%                  NA                0.1686917    0.1411393   0.1962440
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.1343613    0.1111679   0.1575548
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.1612832    0.1561899   0.1663765
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.1512603    0.1374000   0.1651206
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.0819354   -0.0037817   0.1676526
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1349158    0.1148689   0.1549626
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.1612380    0.1300105   0.1924656
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                0.0188775   -0.1326633   0.1704183
18-21 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                0.1427237    0.1228440   0.1626034
18-21 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                0.1691486    0.1387623   0.1995350
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1790104    0.0838409   0.2741798
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1553768    0.1266226   0.1841309
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1165580    0.0634435   0.1696726
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.0914335    0.0711077   0.1117593
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.1624848    0.1424008   0.1825688
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.1943450    0.1668654   0.2218247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                0.1191791    0.0822611   0.1560971
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1343572    0.1202741   0.1484402
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                0.1289276    0.1087556   0.1490996
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.1399016    0.1139571   0.1658461
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1403220    0.1257095   0.1549346
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.1519844    0.1309335   0.1730352
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.1482128    0.1206417   0.1757840
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1589932    0.1394091   0.1785773
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.1406285    0.1152439   0.1660131
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                0.2301038    0.1679917   0.2922158
21-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                0.1727072    0.1464455   0.1989689
21-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                0.1527237    0.1176075   0.1878399
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1257023    0.0495553   0.2018493
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1388567    0.1086344   0.1690790
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1505787    0.0821796   0.2189778
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.2050493    0.1530641   0.2570344
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.1379214    0.1184856   0.1573573
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.1474866    0.1228956   0.1720776
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                0.1261917    0.0970910   0.1552923
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1455640    0.1315653   0.1595627
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                0.1349070    0.1142113   0.1556028
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.2025601    0.1754511   0.2296692
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1753702    0.1580450   0.1926954
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.1430875    0.1183783   0.1677967


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7594406   0.7372368   0.7816445
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7391078   0.7253570   0.7528586
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                0.5883606   0.5672514   0.6094698
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4391655   0.4303725   0.4479585
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1982186   0.1818458   0.2145914
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2458437   0.2280295   0.2636580
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                0.3203724   0.3008854   0.3398595
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2397565   0.2344749   0.2450382
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2074564   0.1866255   0.2282874
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2429668   0.2299104   0.2560232
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2242885   0.2061680   0.2424089
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1545451   0.1502955   0.1587946
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1929712   0.1819725   0.2039700
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1810659   0.1624244   0.1997074
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1304878   0.1263700   0.1346055
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1648845   0.1491151   0.1806540
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1748246   0.1641572   0.1854921
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1713509   0.1529966   0.1897053
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1594949   0.1548064   0.1641834
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0655749   -0.1636512    0.0325015
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0815328   -0.1823455    0.0192799
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                -0.0230614   -0.1261088    0.0799861
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%                  0%                -0.0267644   -0.1411405    0.0876118
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0511379   -0.0946839    0.1969598
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.0914454   -0.0576142    0.2405050
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                 0.0517691   -0.0410782    0.1446164
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  0%                 0.0845519   -0.0047464    0.1738501
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0343287   -0.1736410    0.2422984
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0339968   -0.1771886    0.2451823
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.0241988   -0.0438769    0.0922745
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.0367852   -0.0330956    0.1066660
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0021893   -0.0921489    0.0877704
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0178111   -0.0741154    0.1097376
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0096853   -0.0479321    0.0285615
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0007196   -0.0436480    0.0422087
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.1168812    0.0129387    0.2208238
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                 0.0989529   -0.0114819    0.2093877
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0435595   -0.1272746    0.0401555
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0474458   -0.1339897    0.0390981
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0295251   -0.1310962    0.0720460
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0378271   -0.1406930    0.0650387
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                 0.0341543   -0.0475881    0.1158968
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  0%                 0.0470127   -0.0344183    0.1284436
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0342729   -0.0694360    0.1379819
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0724665   -0.0366211    0.1815541
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.0240172   -0.0592092    0.1072436
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.0131455   -0.0720226    0.0983135
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0357750   -0.0197288    0.0912789
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0548593   -0.0026209    0.1123395
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0026634   -0.0330598    0.0277330
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0132441   -0.0224871    0.0489754
3-6 months     ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             0%                -0.0250183   -0.1069855    0.0569489
3-6 months     ki1114097-CONTENT          PERU                           >5%                  0%                -0.0103386   -0.0975573    0.0768801
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0335733   -0.0695664    0.0024199
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0224677   -0.0658221    0.0208867
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0268730   -0.0905988    0.1443448
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0450459   -0.0736329    0.1637247
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0371985   -0.0845917    0.0101947
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0618349   -0.1125463   -0.0111236
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0868722   -0.0073852    0.1811296
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0027063   -0.1058337    0.1112462
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0794056   -0.1784574    0.0196461
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0543158   -0.0802221   -0.0284094
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0217489   -0.1087542    0.0652564
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.0203468   -0.1091637    0.0684700
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0413389   -0.0163786    0.0990563
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0471910   -0.0116878    0.1060698
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0344098   -0.0634215   -0.0053981
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0422525   -0.0735693   -0.0109356
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                 0.0221530   -0.0449455    0.0892515
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                 0.0441399   -0.0207786    0.1090585
6-9 months     ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.0455621   -0.0477888    0.1389130
6-9 months     ki1114097-CONTENT          PERU                           >5%                  0%                 0.0444671   -0.0514883    0.1404226
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0049400   -0.0502207    0.0403406
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0121472   -0.0599414    0.0356469
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0720959   -0.1338105   -0.0103813
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0735839   -0.1370696   -0.0100982
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0256188   -0.0662852    0.0150476
9-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0406944   -0.0888084    0.0074197
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0000236   -0.1286208    0.1286680
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0351513   -0.1684951    0.0981926
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.0409845   -0.0458391    0.1278081
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                 0.0373974   -0.0045451    0.0793399
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.0090687   -0.0596633    0.0778006
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.0104402   -0.0831559    0.0622755
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0051334   -0.0306399    0.0409067
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.0030271   -0.0416437    0.0355895
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0217095   -0.0489157    0.0054967
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0143150   -0.0449913    0.0163613
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                 0.0585701   -0.0096239    0.1267641
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                 0.0561635   -0.0057615    0.1180885
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0%                -0.0291276   -0.0730363    0.0147810
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0%                -0.0401655   -0.0821923    0.0018613
9-12 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.0775458    0.0048047    0.1502870
9-12 months    ki1114097-CONTENT          PERU                           >5%                  0%                 0.0663636   -0.0117039    0.1444311
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0018178   -0.0204345    0.0167988
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0006592   -0.0219598    0.0206415
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0134870   -0.1710748    0.1980488
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0023907   -0.1876595    0.1828781
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0572207   -0.1356540    0.0212125
12-15 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0603098   -0.1428353    0.0222157
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1042912   -0.2100342    0.0014518
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0845195   -0.1970910    0.0280519
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0012032   -0.0937242    0.0913179
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                 0.0492054    0.0194952    0.0789156
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0579772   -0.1288509    0.0128965
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.0545364   -0.1274759    0.0184031
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0521425    0.0095435    0.0947416
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0626516    0.0168350    0.1084681
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0160974   -0.0137145    0.0459093
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0198479   -0.0116033    0.0512991
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0%                 0.0314202   -0.0154608    0.0783012
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0%                 0.0203619   -0.0264033    0.0671271
12-15 months   ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.0192738   -0.0740258    0.1125734
12-15 months   ki1114097-CONTENT          PERU                           >5%                  0%                -0.0203647   -0.1165436    0.0758141
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0033618   -0.0235110    0.0167874
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0017767   -0.0251581    0.0216048
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0236051   -0.1081973    0.1554074
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0489726   -0.0839887    0.1819338
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0050783   -0.0782023    0.0680457
15-18 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0191882   -0.0935782    0.0552018
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0176555   -0.1130839    0.1483949
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0004370   -0.1377136    0.1385875
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0785064   -0.1567791   -0.0002336
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0625942   -0.0998980   -0.0252905
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.0319604   -0.0260065    0.0899273
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.0258371   -0.0338660    0.0855402
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0618775    0.0158205    0.1079345
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0654664    0.0173615    0.1135713
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0142893   -0.0459932    0.0174147
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0278643   -0.0633089    0.0075803
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0%                -0.0049151   -0.0310384    0.0212083
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0%                -0.0265403   -0.0608816    0.0078009
15-18 months   ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.0756093   -0.0340652    0.1852838
15-18 months   ki1114097-CONTENT          PERU                           >5%                  0%                 0.0687826   -0.0417090    0.1792742
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0269219    0.0032084    0.0506354
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                 0.0168990   -0.0101577    0.0439557
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0529803   -0.0350498    0.1410105
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0793026   -0.0119256    0.1705309
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                 0.1238463   -0.0289872    0.2766797
18-21 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.1502711   -0.0040784    0.3046207
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0236336   -0.1230521    0.0757848
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0624524   -0.1714403    0.0465356
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.0710513    0.0424768    0.0996259
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.1029116    0.0687316    0.1370915
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0151781   -0.0243349    0.0546910
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0097485   -0.0323211    0.0518181
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0004205   -0.0293632    0.0302042
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0120828   -0.0213115    0.0454770
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0107803   -0.0230384    0.0445991
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0075843   -0.0450616    0.0298930
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0573966   -0.1252306    0.0104374
21-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0773801   -0.1487366   -0.0060236
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0131544   -0.0687708    0.0950797
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0248764   -0.0774798    0.1272326
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0671278   -0.1226274   -0.0116282
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.0575627   -0.1150707   -0.0000546
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0193724   -0.0129202    0.0516650
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0087154   -0.0269940    0.0444248
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0271899   -0.0594089    0.0050291
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0594726   -0.0962067   -0.0227384


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0694752   -0.1626587    0.0237083
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.0232459   -0.1232707    0.0767789
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.0654286   -0.0709212    0.2017784
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   NA                 0.0725519   -0.0115459    0.1566498
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0337227   -0.1660788    0.2335242
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0281941   -0.0352454    0.0916335
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0044046   -0.0822046    0.0910139
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0049564   -0.0348265    0.0249137
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.1115934    0.0105004    0.2126864
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0439223   -0.1247842    0.0369397
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0324599   -0.1274451    0.0625254
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   NA                 0.0408514   -0.0365652    0.1182680
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0425707   -0.0560827    0.1412241
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0210527   -0.0588961    0.1010015
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0413229   -0.0120291    0.0946750
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0025976   -0.0215623    0.0267576
3-6 months     ki1114097-CONTENT          PERU                           0%                   NA                -0.0197895   -0.0982820    0.0587030
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0320955   -0.0669895    0.0027986
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0330491   -0.0808344    0.1469327
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0460524   -0.0901537   -0.0019510
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0636197   -0.0282073    0.1554467
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.0562394   -0.0735055   -0.0389733
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0208801   -0.1052310    0.0634709
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0423563   -0.0133844    0.0980969
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0306154   -0.0530887   -0.0081422
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.0364273   -0.0243804    0.0972349
6-9 months     ki1114097-CONTENT          PERU                           0%                   NA                 0.0439418   -0.0456723    0.1335560
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0056956   -0.0495963    0.0382050
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0707355   -0.1299498   -0.0115211
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0292553   -0.0671738    0.0086633
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0086136   -0.1335915    0.1163642
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.0385900    0.0051497    0.0720303
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0022879   -0.0645889    0.0691647
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0025280   -0.0319535    0.0370095
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0155375   -0.0367799    0.0057048
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.0543689   -0.0033195    0.1120574
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                -0.0287983   -0.0646202    0.0070235
9-12 months    ki1114097-CONTENT          PERU                           0%                   NA                 0.0718699    0.0019462    0.1417935
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0016843   -0.0195190    0.0161504
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0072635   -0.1717170    0.1862440
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0556392   -0.1297777    0.0184993
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0966232   -0.1985227    0.0052763
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.0393693    0.0205252    0.0582134
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0557034   -0.1244250    0.0130183
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0546926    0.0137636    0.0956216
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0140987   -0.0088690    0.0370664
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 0.0245608   -0.0164453    0.0655669
12-15 months   ki1114097-CONTENT          PERU                           0%                   NA                 0.0064399   -0.0836412    0.0965209
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0030140   -0.0223894    0.0163614
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0323900   -0.0952156    0.1599956
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0102038   -0.0779323    0.0575247
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0128693   -0.1138503    0.1395890
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.0649152   -0.0948054   -0.0350250
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0294574   -0.0259778    0.0848926
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0620732    0.0179176    0.1062288
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0145954   -0.0392285    0.0100377
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                -0.0123470   -0.0375938    0.0128999
15-18 months   ki1114097-CONTENT          PERU                           0%                   NA                 0.0714419   -0.0342954    0.1771791
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0251336    0.0022615    0.0480057
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0607792   -0.0241435    0.1457020
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.1286222   -0.0164685    0.2737130
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0326566   -0.1283348    0.0630216
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0810057    0.0554660    0.1065455
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0133091   -0.0244502    0.0510684
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0027593   -0.0196651    0.0251837
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0039027   -0.0268363    0.0346418
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0610626   -0.1233763    0.0012511
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0156164   -0.0632887    0.0945216
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0630763   -0.1159748   -0.0101777
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0157788   -0.0148040    0.0463617
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0275101   -0.0508851   -0.0041351
