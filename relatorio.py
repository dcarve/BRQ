# -*- coding: utf-8 -*-
"""
Created on Thu Jun 17 21:19:10 2021

@author: daniel carvalho
"""



import pandas as pd
import sqlite3



con_sql  = sqlite3.connect('BRQ.db')


cur = con_sql.cursor()
cur.executescript(open('create_insert_sqlite.sql','r').read())
con_sql.commit()


rel = pd.read_sql(open('query_sqlite.sql','r').read(), con_sql)

con_sql.close()


rel.rename(columns={'pais':'Pais', 
'cliente':'Cliente',
'nome_do_projeto':'Nome do Projeto',
'orcamento_total':'Orçamento total',
'orcamento_total_aprovado':'Orçamento total aprovado (em R$)',
'orcamento_aprovado_percent':'Orçamento total aprovado (em %)',
'orcamento_total_de_tarefas_aprovadas_iniciadas':'Orçamento total de tarefas aprovadas e já iniciadas (em R$)',
'percent_media_tarefa_em_andamento':'Percentual médio de tarefas em andamento'}, inplace=True)


rel.to_excel('relatorio.xlsx', sheet_name='relatorio', index=False)