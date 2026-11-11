# Roadmap: Colônia Micro

Colony sim 3D em estilo diorama: poucas células/criaturas com personalidade, histórias emergentes, ambientação microscópica (ex.: fungos num tronco). Single-player.

Premissa de tempo: ~6 a 10 horas por semana.

## Tecnologias

| Área | Escolha |
|---|---|
| Engine | Godot 4.7.2 (confirmar no site oficial) |
| Linguagem | GDScript tipado |
| Dados | Resources da Godot (`.tres`) |
| Testes | gdUnit4 ou GUT + simulação headless |
| Backup | Git + GitHub privado (Git LFS quando houver assets pesados) |
| Render | Forward+ (opção Compatibility para PCs fracos) |
| Arte | Blender + formas simples com shaders; IA 3D só se necessário |
| Steam | GodotSteam (conferir versão x SDK) |
| Idiomas | EN + PT via `tr()` desde o início |

## IA no jogo: regras

- Conteúdo de IA que o jogador vê deve ser declarado na Steam.
- Usar plano pago (Meshy/Tripo) e ler os termos; o plano grátis do Meshy exige atribuição (CC BY 4.0).
- Manter registro de cada asset de IA: ferramenta, data, plano.

## Arquitetura

- Simulação (dados) separada da visualização.
- Registro de histórias (log de eventos) é o coração do jogo.
- Fica para depois do teste de diversão: save/load completo, escalonamento de IA, sistema genérico de eventos.

## Fases

**Fase 0: Preparação (1 fim de semana).** Godot, Git, GitHub, esfera se movendo. Pronto: projeto abre na máquina.

**Fase 1: Protótipo cinza (3 a 4 fins de semana).** 6 a 8 células, 3 traços, 3 necessidades (comida, descanso, humor), relações simples, 1 ameaça, registro de histórias, câmera/seleção/ordens. Pronto: 30 min sem erros e o registro conta histórias legíveis.

**Fase 2: Validação (2 fins de semana, em paralelo).** Pesquisar concorrentes de colony sim com personalidade; 3 capas falsas da Steam; 5 pessoas fora do círculo íntimo jogam sem explicação. Decisão: contam histórias sobre as células? Se falhar 2 vezes, trocar de ideia.

**Fase 3: Profundidade (6 a 10 fins de semana).** Reprodução com mutação, eventos, save/load, tutorial, balanceamento, simulações automáticas. Pronto: partida de 1 hora se sustenta.

**Fase 4: Identidade visual (4 a 8 fins de semana).** Diorama, shaders, iluminação, partículas, animações, áudio com licença comercial.

**Fase 5: Steam (começa na Fase 4).** Conta Steamworks, dados bancários/fiscais, taxa (~US$ 100, confirmar), página (capa, screenshots, trailer, declaração de IA), GodotSteam, conquistas, demo.

**Fase 6: Beta e lançamento (4 a 6 fins de semana).** Testes fechados com chaves Steam, polimento, lançamento.

## Riscos

- Testar no Windows (público da Steam; o dev usa Mac): definir máquina/VM/amigo até a Fase 3.
- Escopo: ideia nova vai para lista de espera até depois da Fase 2.
- Receita: planejar como se pudesse vender pouco.
