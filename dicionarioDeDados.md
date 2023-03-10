# dicionario de dados

## estacoes
- triagramação : est

- est_id : identificador unico da estação
- est_nome : nome da estação
- PK_EST : est_id (primary key)

## eventos
- triagramação : evt
- evt_id : identificador unico do evento
- evt_nome : nome do evento
- evt_reg_id : identificador da região do evento
- evt_data_inicio : data de inicio do evento
- evt_data_fim : data de fim do evento
- evt_presencial : evento presencial ou não
- evt_loc_id : identificador do local do evento
- evt_est_id : identificador da estação do evento
- PK_EVT : evt_id (primary key)
- FK_EVT_REG : evt_reg_id (foreign key)
- FK_EVT_LOC : evt_loc_id (foreign key)
- FK_EVT_EST : evt_est_id (foreign key)

## regiões
- triagramação : reg
- reg_id : identificador unico da região
- reg_nome : nome da região
- PK_REG : reg_id (primary key)

## localizacoes
- triagramação : loc
- loc_id : identificador unico da localização
- loc_arena : nome da arena
- loc_cidade : nome da cidade
- loc_pis_id : identificador do pais da localização
- PK_LOC : loc_id (primary key)
- FK_LOC_PIS : loc_pis_id (foreign key)

## paises
- triagramação : pis
- pis_id : identificador unico do pais
- pis_nome : nome do pais
- pis_sigla : sigla do pais
- PK_PIS : pis_id (primary key)

## times
- triagramação : tim
- tim_id : identificador unico do time
- tim_nome : nome do time
- tim_reg_id : identificador da região do time
- PK_TIM : tim_id (primary key)
- FK_TIM_REG : tim_reg_id (foreign key)

## jogadores
- triagramação : jgd
- jgd_id : identificador unico do jogador
- jgd_nome : nome do jogador
- jgd_tag : tag do jogador
- jgd_pis_id : identificador do pais do jogador
- PK_JGD : jgd_id (primary key)
- FK_JGD_PIS : jgd_pis_id (foreign key)

## contratacoes
- triagramação : ctt
- ctt_id : identificador unico da contratação
- ctt_tim_id : identificador do time da contratação
- ctt_jgd_id : identificador do jogador da contratação
- ctt_inicio : data de inicio da contratação
- ctt_fim : data de fim da contratação
- PK_CTT : ctt_id (primary key)
- FK_CTT_TIM : ctt_tim_id (foreign key)
- FK_CTT_JGD : ctt_jgd_id (foreign key)

## formatos
- triagramação : for
- for_id : identificador unico do formato
- for_nome : nome do formato
- PK_FOR : for_id (primary key)

## series
- triagramação : ser
- ser_id : identificador unico da serie
- ser_numero : numero da serie
- ser_rnd_id : identificador da rodada da serie
- ser_for_id : identificador do formato da serie
- PK_SER : ser_id (primary key)
- FK_SER_RND : ser_rnd_id (foreign key)
- FK_SER_FOR : ser_for_id (foreign key)

## rounds
- triagramação : rnd
- rnd_id : identificador unico da rodada
- rnd_nome : nome da rodada
- PK_RND : rnd_id (primary key)

## jogos
- triagramação : jog
- jog_id : identificador unico do jogo
- jog_numero : numero do jogo
- jog_data : data do jogo
- jog_duracao : duração do jogo
- jog_ser_id : identificador da serie do jogo
- jog_tim_laranja : identificador do time laranja do jogo
- jog_tim_azul : identificador do time azul do jogo
- PK_JOG : jog_id (primary key)
- FK_JOG_SER : jog_ser_id (foreign key)
- FK_JOG_TIM_L : jog_tim_laranja (foreign key)
- FK_JOG_TIM_A : jog_tim_azul (foreign key)

## estatisticas
- triagramação : stt
- stt_jog_id : identificador do jogo da estatistica
- stt_jgd_id : identificador do jogador da estatistica
- stt_chutes_ao_gol : numero de chutes ao gol
- stt_gols : numero de gols
- stt_defesas : numero de defesas
- stt_assistencias : numero de assistencias
- stt_pontuacao : pontuação do jogador no jogo
- stt_relacao_chute_gol : relação entre chutes ao gol e gols
- stt_impulso_por_minuto : impulso por minuto usado
- stt_med_impulso : média de impulso usado
- stt_impulso_coletado :  total de impulso coletado
- stt_impulso_roubado : total de impulso roubado
- stt_impulso_grande_coletado : total de impulso grande coletado
- stt_impulso_grande_roubado : total de impulso grande roubado
- stt_impulso_pequeno_coletado : total de impulso pequeno coletado
- stt_impulso_pequeno_roubado : total de impulso pequeno roubado
- stt_blocos_grandes_coletados : total de blocos grandes coletados
- stt_blocos_grandes_roubados : total de blocos grandes roubados
- stt_blocos_pequenos_colados : total de blocos pequenos coletados
- stt_blocos_pequenos_roubados : total de blocos pequenos roubados
- stt_velocidade_media : velocidade média do jogador
- stt_distancia_percorrida : distancia percorrida pelo jogador
- stt_distancia_med_da_bola : distancia média da bola
- stt_distancia_med_posse : distancia média da bola quando time esta com a posse
- stt_distancia_med_s/posse : distancia média da bola quando time esta sem a posse
- stt_distancia_med_dos_aliados : distancia média dos aliados
- stt_demolicoes_causadas : total de demolicoes causadas
- stt_demolicoes_recebidas : total de demolicoes sofridas
- stt_participacoes_gols : total de participações em gols(gols e assistencias)
- PK_STT : stt_jog_id, stt_jgd_id (primary key)
- FK_STT_JOG : stt_jog_id (foreign key)
- FK_STT_JGD : stt_jgd_id (foreign key)