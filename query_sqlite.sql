
-- nessa creio uma visão basica de projeto e custo total


with orcamento_total as (
select
	Pd.projeto_id as projeto_id,
	sum(Pd.orcamento) as total
from projeto_detalhe as Pd
	group by 
		Pd.projeto_id
),


-- aqui separo o custo dos projetos apenas com tarefas aceitas


orcamento_aprovado as (
select
	Pd.projeto_id as projeto_id,
	sum(Pd.orcamento) as aprovado
from projeto_detalhe as Pd
where Pd.aceito>0
	group by 
		Pd.projeto_id
),

-- aqui separo o custo dos projetos apenas com tarefas aceitas e que foram iniciados

orcamento_iniciado_aceito as (
select
	Pd.projeto_id as projeto_id,
	sum(Pd.orcamento) as total
from projeto_detalhe as Pd
where Pd.completo>0.00 and Pd.aceito>0
group by 
	Pd.projeto_id
),



-- a seguinte tabela é uma temporária no processo para pegar os dados relacionados a quantidade de projetos aceitos

media_andamento_1 as (
select
	Pd.projeto_id as projeto_id,
	count(Pd.projeto_id) as total,
	sum(Pd.orcamento) as valor_total
from projeto_detalhe as Pd
where Pd.aceito>0
group by 
	Pd.projeto_id
),


-- a seguinte tabela é uma temporária no processo para pegar os dados relacionados a quantidade de tarefas aceitas e que ainda não foram completadas

media_andamento_2 as (
select
	Pd.projeto_id as projeto_id,
	count(Pd.projeto_id) as total
from projeto_detalhe as Pd
where Pd.completo<1 and Pd.aceito>0
group by 
	Pd.projeto_id
),

-- a seguinte tabela é uma temporária no processo para pegar o total de custo de tarefas que ja foram iniciadas e ja foram aceitas

media_andamento_3 as (
select
	Pd.projeto_id as projeto_id,
	sum(Pd.orcamento) as valor_total
from projeto_detalhe as Pd
where Pd.aceito>0 and Pd.completo>0
group by 
	Pd.projeto_id
),


-- nessa tabela junto as 3 tabelas anteiores para calcular o percentual entre tarefas aceitas e não concluidas
media_andamento as (select 
	media_andamento_1.projeto_id,
	media_andamento_3.valor_total,
	cast(media_andamento_2.total as float)/cast(media_andamento_1.total as float) as perct
from media_andamento_1
left join media_andamento_2
on media_andamento_1.projeto_id = media_andamento_2.projeto_id
left join media_andamento_3
on media_andamento_1.projeto_id = media_andamento_3.projeto_id
)




-- aqui temos a tabela final, juntos as tabelas anteriores nos joins e aplicando tratamento de dados nulos nos campos e arredondamento nos valores
select 
	case 
		when P.nome is null then 'N/A'
		else P.nome 
		end as Pais,
	case 
		when C.nome is null then 'N/A'
		else C.nome 
		end as Cliente,
	
	case 
		when Pr.nome is null then 'N/A'
		else Pr.nome 
		end as Nome_do_Projeto,
	
	case 
		when orcamento_total.total is null then '0.0'
		else printf("%.2f", orcamento_total.total) 
		end as orcamento_total,
	
	case 
		when orcamento_aprovado.aprovado is null then '0.0'
		else printf("%.2f", orcamento_aprovado.aprovado) 
		end as orcamento_total_aprovado,
		
	
	case 
		when (orcamento_aprovado.aprovado/orcamento_total.total) is null then '0.00'
		else printf("%.1f", orcamento_aprovado.aprovado/orcamento_total.total*100) 
		end as orcamento_aprovado_percent,
		
	
	case 
		when media_andamento.valor_total is null then '0.0'
		else printf("%.2f", media_andamento.valor_total)
		end as orcamento_total_de_tarefas_aprovadas_iniciadas,
	
	
	case 
		when media_andamento.perct is null then '0.00'
		else printf("%.1f", media_andamento.perct*100)
		end as percent_media_tarefa_em_andamento
from orcamento_total 
left join orcamento_aprovado
on orcamento_aprovado.projeto_id = orcamento_total.projeto_id
left join orcamento_iniciado_aceito
on orcamento_iniciado_aceito.projeto_id = orcamento_total.projeto_id
left join media_andamento
on media_andamento.projeto_id = orcamento_total.projeto_id
left join projeto as Pr
on Pr.id = orcamento_total.projeto_id
left join cliente as C
on C.id = Pr.cliente_id
left join pais as P
on P.id = C.pais_id

where orcamento_total.total>1000

order by pais, cliente asc