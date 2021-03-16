/* ATIVIDADE 3

Aluno: Aimê Gomes da Nobrega
RGM: 21862222
Curso: Ciências de Dados
Universidade Cruzeiro do Sul*/


/*Resposta da questão 1 */
select
	pi.id_piloto,
	pi.nm_piloto,
	eq.id_equipe,
	eq.nm_equipe
from tb_piloto pi
left join tb_equipe eq
	on eq.id_equipe = pi.id_equipe
where eq.nm_equipe like 'Ferrari';


/* Resposta da questão 2: */
select
	to_char(pi.dt_nascimento, 'yyyy') ano,
	count(pi.dt_nascimento) pilotos
from tb_piloto pi
group by to_char(pi.dt_nascimento, 'yyyy')
order by 1;


/* Resposta da questão 3: */
select
	pi.nm_piloto as "Piloto",
	pa.nm_pais as "País do Piloto",
	eq.nm_equipe as "Equipe",
	pa2.nm_pais as "País da Equipe",
	re.nr_coloc_final as "Colocação Final",
	ci.nm_circuito as "Circuito",
	pr.dt_prova as "Data da Prova"
from tb_piloto pi
inner join tb_equipe eq
	on eq.id_equipe = pi.id_equipe
inner join tb_pais pa
	on pa.id_pais = pi.id_pais
inner join tb_pais pa2
	on pa2.id_pais = eq.id_pais
inner join tb_resultado re
	on re.id_piloto = pi.id_piloto
inner join tb_prova pr
	on pr.id_prova = re.id_prova
inner join tb_circuito ci
	on ci.id_circuito = pr.id_circuito
inner join tb_pais pa3
	on pa3.id_pais = ci.id_pais
Where pa3.nm_pais like 'Australia'
order by 5;
