# BRQ

### Explicação da Solução 

Foi escolhi o SQLITE como SGDB, devido a facilidade de impletamentação, e integração com python usando a lib sqlite3.
Inicialmente foi avaliado em usar uma instância em PostgreSQL, porém o Postgre não possui boas funções para formatar/arredondar números

No script python relatorio.py pode ser encontrado um script que operaciona as ações no sqlite.
Cria um novo arquivo .db,  lê o arquivo create_insert_sqlite.sql com as querys de criação de tabela e inserção de dados e depois executa a query em query_sqlite.sql para gerar o relatório.
Por fim o script python exporta o relatório para um arquivo excel.


Em mais detalhes sobre a query de query_sqlite.sql.
Utilizei sub querys to tipo WITH, como melhor forma de organizar as informações.
Em geral é de constume de usar sub querys dentro de uma query, no from, mas prefiro usar with para organizar melhor  a query e para testes faz mas sentido assim.
Para testar performance, poderia fazer algumas mudanças, mas preferi manter desse jeito.


A query também funcoina em postgre, com exceção das funções para arrendondar o valores.
