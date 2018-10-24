;(deftemplate Persona
;	"Definucion del arbol de comprtamiento"
;	(slot edad)
;    (slot Tipo_cuerpo)
;    (slot pregunta)
;    (slot respuesta (type STRING) )
;    (slot nodo-si)
;    (slot nodo-no) 
;)

;(deftemplate Respuetas 
;	"Obtener las respuetas"
;	(slot respuestas)
;    )
(deftemplate experiencia
	"experiencia de la persona en otro gimnasio"
	(slot tiene_exp)
    )

(deftemplate buena_salud
	"¿La persona tiene buena salud?"
	(slot salud)
    )

(deftemplate estructura
	"estructura del cuerpo de la persona"
	(slot osea )
    (slot altura )
    (slot extremidades)
    )

(deftemplate metabolismo
	"Metabolismo del cuerpo de la persona"
	(slot capacidad_aumento)
    (slot energia)
    )

(deftemplate cuerpo
	"cuerpo de la persona"
	(slot peso)
    (slot grasa)
    )

; ********** REGLAS **************
(defrule endomorfo
	"tipo de cuerpo endomorfo"
    (estructura (osea rollisa)(altura baja)(extremidades cortas))
    (metabolismo (capacidad_aumento alta)(energia media))
    (cuerpo (peso alto)(grasa mucha))
	=>
    (printout t "SOMATIPO Endomorfo" crlf)
    )

(defrule ectomorfo
	"tipo de cuerpo ectomorfo"
    (estructura (osea delgada)(altura alta)(extremidades largas))
    (metabolismo (capacidad_aumento minima)(energia baja))
    (cuerpo (peso ligero)(grasa minima))
	=>
    (printout t "SOMATIPO Ectomorfo" crlf)
    )

(defrule mesomorfo
	"comment"
    (estructura (osea atletica)(altura media)(extremidades medias))
    (metabolismo (capacidad_aumento media)(energia alta))
    (cuerpo (peso medio)(grasa suficiente))
	=>
    (printout t "SOMATIPO Mesomorfo" crlf)
    )

;(defrule Concer_edad
;	"Concer la edadad del morro"
;    (Persona (edad menor_de_edad))
;	=>
;    (assert (respuestas muy_joven_para_entrar_al_gimnasio))
;    )

;(defrule iniciar_gimnasio
;	"comment"
;    (Persona (edad ?edad1&no)(Tipo_cuerpo ?cuerpo))
;	=>
;    (printout t "debeb ir a la chosa de los pequeñines" crlf)
;  )

;(clear) ;elimina hechos, deffacts, defrules, reglas, activaciones…
;(deftemplate persona (slot nombre) (slot ojos) (slot pelo))
;(deffacts personas
;(persona (nombre Julia) (ojos azules) (pelo pelirroja))
;(persona (nombre Juan) (ojos verdes) (pelo rubio))
;(persona (nombre Javier) (ojos azules) (pelo moreno))
;(persona (nombre Jesus) (ojos verdes) (pelo rubio)))
;(defrule encontrar-ojos-azules
;(persona (nombre ?nombre) (ojos azules))
;=>
;(printout t ?nombre " tiene los ojos azules." crlf))
;(reset)
;(run)




