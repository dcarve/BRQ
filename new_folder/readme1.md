# name_project_gitlab



## Abstract
<p> This project is a ETL that process data from ___ for ___


## Team



## ETL info


#### data Sources

Type: hdfs <br>
tables:
 - mp.mpdt007 &emsp;&emsp;&emsp;&emsp; (documentation link)
 - mp.mpdt163 &emsp;&emsp;&emsp;&emsp; (documentation link)
 - mp.mpdt009 &emsp;&emsp;&emsp;&emsp; (documentation link)



#### data Targets
Type: hdfs <br>
tables:
 - db.contrato 
 - db.table_2
***


### Tables

#### contrato

##### Definition



##### Columns Mapping 

| Logic Column Name | Definition |
| :---                  |:---:|
| penumper              |   |
| qtd_cartoes_visa      |   | 
| qtd_cartoes_master    |   | 
| vlr_limite_cart_total |   | 


##### SQL-ish statement

```
SELECT
    a.identcli AS penumper,
    COUNT(a.cartao_visa) AS qtd_cartoes_visa,
    COUNT(a.cartao_master) AS qtd_cartoes_master,
    SUM(a.limcrecta) AS vlr_limite_cart_total
FROM
    (
        SELECT
            mpdt007.identcli,
            mpdt007.codent,
            mpdt007.centalta,
            mpdt007.cuenta,
            CASE mpdt009.CODMAR
                WHEN 1 THEN 'MASTERCARD'
                END AS cartao_master,
            CASE mpdt009.CODMAR
                WHEN 2 THEN 'VISA'
                END AS cartao_visa,
            mpdt163.limcrecta
        FROM
            mp.mpdt007 as mpdt007
            LEFT JOIN mp.mpdt009 AS mpdt009
                ON mpdt007.codent = mpdt009.codent
                AND mpdt007.centalta = mpdt009.centalta
                AND mpdt007.cuenta = mpdt009.cuenta
            LEFT JOIN mp.mpdt163 as mpdt163
                ON mpdt007.codent = mpdt163.codent
                AND mpdt007.centalta = mpdt163.centalta
                AND mpdt007.cuenta = mpdt163.cuenta
    ) AS a
GROUP BY a.identcli
```

##### Supplement infos
