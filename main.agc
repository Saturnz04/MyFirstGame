
// Project: StarCake 
// Created: 2022-04-20

//Sobre os sons:
//Não coloquei, eu realmente queria, mas não tem como
//Meu computador não tem caixa de som e a entrada de fone de ouvido está estragada
//Inclusive, por isso em atendimentos online que participo utilizo duas contas
//Então não tem como saber o que está acontecendo em questão de som
//Os computadores da biblioteca não tem instalado AGK e nem tenho permissão para instalar
//E a última aula que tivemos no laboratório foi muitas semanas atrás
//Espero que o senhor compreenda.

//Referências/Créditos das imagens utilizadas:
//Arte do fundo do menu: ansimuz https://opengameart.org/users/ansimuz
//Arte dos gatos: Artist: bluecarrot16 License: CC-BY 3.0 / GPL 3.0 / GPL 2.0 / OGA-BY 3.0 Please link to opengameart: http://opengameart.org/content/lpc-cats-and-dogs
//Arte dos vasos: Lanea Zimmerman; Extra Contributions or special thanks: William Thompson
//Arte da casa: copyrights to www.instagram.com/fethalis thank you.
//Arte dos cômodos da casa: https://musingsandotherfroufrou.blogspot.com/2021/03/pixel-art-house-interior.html
//Arte do Game Over: https://br.vexels.com/png-svg/previsualizar/231980/game-over-retro-lettering
//Arte da Cobra: Created by yolkati & Sebastian Riedel (Baŝto)
//Arte da grama: não consegui achar o autor
//Arte do botão de fechar: https://flyclipart.com/x-button-x-icon-png-327024
//Arte do restante: feito por mim mesmo, Luiz Fernando de Oliveira Corrêa
// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "StarCake" )
SetWindowSize( 1285, 800, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

//Declaração de Variáveis
posicaoPersonagemX = 0
posicaoPersonagemY = 0
maxY = 300
maxX = 480
gatosAchados = 0
criarImagensDoJogo()


do
	if ( GetPointerPressed ( ) = 1 )
		
		x# = GetPointerX ( )
		y# = GetPointerY ( )
		if(x#>=240-52)and(x#<=240-52+105)and(y#>=155-22)and(y#<=155-22+45)
			suma(15)
			suma(16)
			suma(17)
		elseif(x#>=240-52)and(x#<=240-52+105)and(y#>210-22)and(y#<=210-22+45)
			SetSpritePosition(20,240-150,0)
			SetSpritePosition(21,480-30,0)
		elseif(x#>=480-30)and(x#<=480)and(y#<=30)
			suma(20)
			suma(21)
		endif	
	endif
	
	if GetRawKeyState(86)
		PrintC("Gatos Catados =")
		Print(gatosAchados)
	endif
	
	if GetRawKeyState(87)
				if posicaoPersonagemY > 0
					posicaoPersonagemY = posicaoPersonagemY - 1
					
					if(GetSpriteCollision(1,3))
						//entra na sala
							suma(2)
							suma(3)
							SetSpritePosition(4,0,0)
							SetVirtualResolution(450,225)
							maxY = 225
							maxX = 456
							SetSpritePosition(1,0, 0)
							posicaoPersonagemX = 158
							posicaoPersonagemY = 163
							SetSpritePosition(7, Random(0,456), Random(0,225))
							SetSpritePosition(8, Random(0,456), Random(0,225))
							SetSpritePosition(9, Random(0,456), Random(0,225))
							SetSpritePosition(10, Random(0,456), Random(0,225))
							SetSpritePosition(11, Random(0,456), Random(0,225))
							SetSpritePosition(12, Random(0,456), Random(0,225))
							SetSpritePosition(13, Random(0,456), Random(0,225))
							SetSpritePosition(14, Random(0,456), Random(0,225))
					elseif(GetSpriteCollision(1,5))and(posicaoPersonagemY = 0)
						//sai do quarto
							suma(5)
							SetSpritePosition(4,0,0)
							SetVirtualResolution(450,225)
							maxY = 225
							maxX = 456
							SetSpritePosition(1,0, 0)
							posicaoPersonagemX = 12
							posicaoPersonagemY = 163
					elseif(GetSpriteCollision(1,6))and(posicaoPersonagemY = 0)
							suma(6)	
							SetSpritePosition(4,0,0)
							SetVirtualResolution(450,225)
							maxY = 225
							maxX = 456
							SetSpritePosition(1,0, 0)
							posicaoPersonagemX = 410
							posicaoPersonagemY = 163
						
					endif
				endif
				SetSpritePosition ( 1, posicaoPersonagemX, posicaoPersonagemY)
			
			elseif GetRawKeyState(65)
				if posicaoPersonagemX > 0
					posicaoPersonagemX = posicaoPersonagemX - 1
					
				endif
				SetSpritePosition ( 1, posicaoPersonagemX, posicaoPersonagemY)
			
			elseif GetRawKeyState(83)
				if posicaoPersonagemY < maxY - 60
					posicaoPersonagemY = posicaoPersonagemY + 1
				else
					if(GetSpriteCollision(1,4))
						if posicaoPersonagemX<32
							SetSpritePosition(5,0,0)
							SetVirtualResolution(400,300)
							posicaoPersonagemY = 1
							posicaoPersonagemX = 295
							maxY = 260
							maxX = 360
							suma(4)
							SetSpritePosition(8, Random(0,456), Random(0,225))
							SetSpritePosition(9, Random(0,456), Random(0,225))
							SetSpritePosition(10, Random(0,456), Random(0,225))
							SetSpritePosition(11, Random(0,456), Random(0,225))
							SetSpritePosition(12, Random(0,456), Random(0,225))
							SetSpritePosition(13, Random(0,456), Random(0,225))
						elseif posicaoPersonagemX>140 and posicaoPersonagemX<172
							SetSpritePosition(2,150,0)
							SetSpritePosition(3,176.5,107)
							SetVirtualResolution(480, 300)
							posicaoPersonagemX = 198
							posicaoPersonagemY = 120.5
							maxY = 300
							maxX = 480
							suma(4)
							SetSpritePosition(8, Random(0,456), Random(0,225))
							SetSpritePosition(9, Random(0,456), Random(0,225))
							SetSpritePosition(10, Random(0,456), Random(0,225))
							SetSpritePosition(11, Random(0,456), Random(0,225))
							SetSpritePosition(12, Random(0,456), Random(0,225))
							SetSpritePosition(13, Random(0,456), Random(0,225))
							SetSpritePosition(14, Random(0,456), Random(0,225))
						elseif posicaoPersonagemX>394
							SetSpritePosition(6,0,0)
							SetVirtualResolution(300,300)
							posicaoPersonagemY = 1
							posicaoPersonagemX = 225
							maxY = 290
							maxX = 275
							suma(4)
							SetSpritePosition(7, Random(0,275), Random(0,290))
							SetSpritePosition(8, Random(0,456), Random(0,225))
							SetSpritePosition(9, Random(0,456), Random(0,225))
							SetSpritePosition(10, Random(0,456), Random(0,225))
							SetSpritePosition(11, Random(0,456), Random(0,225))
							SetSpritePosition(12, Random(0,456), Random(0,225))
							SetSpritePosition(13, Random(0,456), Random(0,225))
						endif
					endif
				endif
				SetSpritePosition ( 1, posicaoPersonagemX, posicaoPersonagemY)
				
			elseif GetRawKeyState(68)
				if posicaoPersonagemX < maxX - 32
					posicaoPersonagemX = posicaoPersonagemX + 1
				endif
				SetSpritePosition ( 1, posicaoPersonagemX, posicaoPersonagemY)
			endif
			
			if(GetSpriteCollision(1,7))
				suma(7)
				gatosAchados= gatosAchados + 1
			endif
			
			if(GetSpriteCollision(1,8))
				suma(8)
				gatosAchados= gatosAchados + 1
			endif
			
			if(GetSpriteCollision(1,9))
				suma(9)
				gatosAchados= gatosAchados + 1
			endif
			
			if(GetSpriteCollision(1,10))
				suma(10)
				gatosAchados= gatosAchados + 1
			endif
			
			if(GetSpriteCollision(1,11))
				suma(11)
				gatosAchados= gatosAchados + 1
			endif
			
			if(GetSpriteCollision(1,13))
				suma(13)
				gatosAchados= gatosAchados + 1
			endif
			
			if(GetSpriteCollision(1,12))
				suma(12)
				gatosAchados= gatosAchados + 1
			endif
			
			if(GetSpriteCollision(1,14))
				suma(1)
				suma(2)
				suma(3)
				suma(4)
				suma(5)
				suma(6)
				suma(7)
				suma(8)
				suma(9)
				suma(10)
				suma(11)
				suma(12)
				suma(13)
				suma(14)
				suma(15)
				suma(16)
				suma(17)
				SetSpritePosition(18,0,0)
				SetSpritePosition(19,130,0)
			endif
	Sync()
loop

function criarImagensDoJogo()
	SetVirtualResolution(480, 300)
	CreateSprite(LoadImage("Grass_02.png"))
	
	LoadImage(2, "house1 (2).png")
	CreateSprite(2,2)
	SetSpriteSize(2,120,180)
	SetSpritePosition(2,150,0)
	
	LoadImage(4, "sala.png")
	CreateSprite(4,4)
	SetSpriteSize(4, 450, 225)
	suma(4)
	
	LoadImage(5, "quarto1.png")
	CreateSprite(5,5)
	SetSpriteSize(5,400,300)
	suma(5)
	
	LoadImage(6, "quarto2.png")
	CreateSprite(6,6)
	SetSpriteSize(6, 300,300)
	suma(6)
	
	LoadImage(3, "house21.png")
	CreateSprite(3,3)
	SetSpriteSize(3,67.7,13.4)
	SetSpritePosition(3,176.5,107)
	
	LoadImage(1, "opa.png")
	CreateSprite(1,1)
	SetSpriteSize(1,24,60)
	
	LoadImage(7, "gato.png")
	CreateSprite(7,7)
	SetSpriteSize(7,40,40)
	
	LoadImage(8, "snake.png")
	CreateSprite(14,8)
	SetSpriteSize(14,40,40)
	
	CreateSprite(8,7)
	SetSpriteSize(8,40,40)
	
	CreateSprite(9,7)
	SetSpriteSize(9,40,40)
	
	CreateSprite(10,7)
	SetSpriteSize(10,40,40)
	
	CreateSprite(11,7)
	SetSpriteSize(11,40,40)
	
	CreateSprite(12,7)
	SetSpriteSize(12,40,40)
	
	CreateSprite(13,7)
	SetSpriteSize(13,40,40)
	
	LoadImage(9, "inicio.png")
	CreateSprite(15,9)
	SetSpriteSize(15,480,300)
	
	LoadImage(10, "start.png")
	CreateSprite(16,10)
	SetSpriteSize(16,105,45)
	SetSpritePosition(16,240-52,155-22)
	
	LoadImage(11, "info.png")
	CreateSprite(17,11)
	SetSpriteSize(17,105,45)
	SetSpritePosition(17,240-52,210-22)
	
	LoadImage(12, "black.png")
	CreateSprite(18,12)
	SetSpriteSize(18,480,300)
	
	LoadImage(13, "gameover.png")
	CreateSprite(19,13)
	SetSpriteSize(19,210,180)
	
	LoadImage(14, "infoimage.png")
	CreateSprite(20,14)
	SetSpriteSize(20,300,300)
	
	LoadImage(15, "x.png")
	CreateSprite(21,15)
	SetSpriteSize(21,30,30)

	suma(21)
	suma(20)
	suma(19)
	suma(18)
	suma(10)
	suma(11)
	suma(12)
	suma(13)
	suma(9)
	suma(8)
	suma(7)
	suma(14)
endfunction

function suma(coisa)
	SetSpritePosition(coisa,-500,-225)
endfunction
