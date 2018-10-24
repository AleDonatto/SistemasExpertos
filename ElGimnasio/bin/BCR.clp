(deftemplate experiencia
	"experiencia de la persona en otro gimnasio"
	(slot tiene_exp)
    )

(deftemplate salud
	"sujeto con buena salud"
    (slot tiene_salud)
	)

(deftemplate estructura
	"estructura del cuerpo de la persona"
	(slot osea (type string))
    (slot altura (type string))
    (slot extremidades (type string))
    )

(deftemplate metabolismo
	"Metabolismo del cuerpo de la persona"
	(slot cap_aumento(type string))
    (slot energia(type string))
    )

(deftemplate cuerpo
	"cuerpo de la persona"
	(slot peso (type string))
    (slot grasa (type string))
    )

;***************** reglas ***************
(defrule ver_Experiencia_no 
    "no tiene experiencia"
    (experiencia (tiene_exp no))
    (salud (tiene_salud no))
    =>
    (printout t "no mames wey" crlf)
    )

(defrule salud_and_exp
	"salud y esperiencia"
    (experiencia (tiene_exp si))
    (salud (tiene_salud si))
	=>
    (printout t "Excelente Tienes salud y experiencia puedes empezar en el gimnasio " crlf)
    )

(defrule not_salu_and_exp
	"no tiene salud ni experiencia"
    (experiencia (tiene_exp no))
    (salud (tiene_salud si))
	=>
    (printout t "Nosotros te ayudamos" crlf)
    )

(defrule Saber_ectomorfo
	"saber si el tipo de cuerpo es ectomorfo"
    (estructura (osea Delgada)(altura Alta)(extremidades Largas))
    (metabolismo (cap_aumento Minima)(energia Baja))
    (cuerpo (peso Ligero)(grasa Baja))
	=>
    (printout t "SOMATIPO ES: ECTOMORFO" crlf)
    ) 

(defrule saber_endomorfo
	"saber tipo de cuerpo endomorfo"
    (estructura (osea Rollisa)(altura Baja)(extremidades Cortas))
    (metabolismo (cap_aumento Alta)(energia Media))
    (cuerpo (peso Slto)(grasa Mucha))
	=>
    (printout t "SOMATIPO ES: ENDOMORFO" crlf)
    )

(defrule saber_mesomorfo
	"saber tipo de cuerpo mesomorfo"
    (estructura (osea Atletica)(altura Media)(extremidades Medias))
    (metabolismo (cap_aumento Media)(energia Alta))
    (cuerpo (peso Medio)(grasa Suficiente))
	=>
    (printout t "SOMATIPO ES: MESOMORFO" crlf)
    )

(assert (estructura (osea Atletica)(altura Media)(extremidades Medias))
    	(metabolismo (cap_aumento Media)(energia Alta))
    	(cuerpo (peso Medio)(grasa Suficiente))
 )

(run)

/*(deftemplate Mesotipo_ectomorfo
	"tipo cuerpo ectomorfo"
    (slot estruc_osea (type string))
    (slot altura (type string))
    (slot extremidades (type string))
    (slot cap_aumento (type string))
    (slot energia (type string))
    (slot peso (type string))
    (slot grasa (type string))
	)*/

