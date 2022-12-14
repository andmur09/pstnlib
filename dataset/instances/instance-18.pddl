(define (problem instance-18)
(:domain drone-delivery)
(:objects
 d0 d1 - drone
 l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 - location
 m0 - medicine
 )
(:init

	;; depots
	(is-depot l9)
	(is-depot l2)

	;; drones
	(located-at d0 l2)
	(noloading d0)
	(nocharging d0)
	(= (load-capacity d0) 20)
	(= (battery-capacity d0) 100)
	(= (battery-level d0) 100)
	(= (battery-rate d0) 1)
	(= (recharge-rate d0) 5)
	(located-at d1 l2)
	(noloading d1)
	(nocharging d1)
	(= (load-capacity d1) 20)
	(= (battery-capacity d1) 100)
	(= (battery-level d1) 100)
	(= (battery-rate d1) 1)
	(= (recharge-rate d1) 5)

	;; medicines
	(located-at m0 l8)
	(noexpired m0)
	(at 120(not (noexpired m0)))
	(= (weight m0) 10)

	;; locations
	(connected l0 l1)
	(= (travel-time l0 l1) 100)
	(connected l0 l2)
	(= (travel-time l0 l2) 30)
	(connected l0 l3)
	(= (travel-time l0 l3) 50)
	(connected l0 l4)
	(= (travel-time l0 l4) 30)
	(connected l0 l6)
	(= (travel-time l0 l6) 30)
	(connected l0 l8)
	(= (travel-time l0 l8) 40)
	(connected l1 l0)
	(= (travel-time l1 l0) 100)
	(connected l1 l6)
	(= (travel-time l1 l6) 10)
	(connected l1 l8)
	(= (travel-time l1 l8) 80)
	(connected l2 l0)
	(= (travel-time l2 l0) 30)
	(connected l2 l3)
	(= (travel-time l2 l3) 40)
	(connected l2 l5)
	(= (travel-time l2 l5) 20)
	(connected l2 l7)
	(= (travel-time l2 l7) 30)
	(connected l3 l0)
	(= (travel-time l3 l0) 50)
	(connected l3 l2)
	(= (travel-time l3 l2) 40)
	(connected l3 l5)
	(= (travel-time l3 l5) 40)
	(connected l3 l6)
	(= (travel-time l3 l6) 40)
	(connected l3 l7)
	(= (travel-time l3 l7) 20)
	(connected l4 l0)
	(= (travel-time l4 l0) 30)
	(connected l4 l6)
	(= (travel-time l4 l6) 10)
	(connected l4 l7)
	(= (travel-time l4 l7) 80)
	(connected l4 l8)
	(= (travel-time l4 l8) 20)
	(connected l5 l2)
	(= (travel-time l5 l2) 20)
	(connected l5 l3)
	(= (travel-time l5 l3) 40)
	(connected l5 l6)
	(= (travel-time l5 l6) 30)
	(connected l5 l8)
	(= (travel-time l5 l8) 40)
	(connected l5 l9)
	(= (travel-time l5 l9) 80)
	(connected l6 l0)
	(= (travel-time l6 l0) 30)
	(connected l6 l1)
	(= (travel-time l6 l1) 10)
	(connected l6 l3)
	(= (travel-time l6 l3) 40)
	(connected l6 l4)
	(= (travel-time l6 l4) 10)
	(connected l6 l5)
	(= (travel-time l6 l5) 30)
	(connected l6 l7)
	(= (travel-time l6 l7) 60)
	(connected l6 l8)
	(= (travel-time l6 l8) 30)
	(connected l7 l2)
	(= (travel-time l7 l2) 30)
	(connected l7 l3)
	(= (travel-time l7 l3) 20)
	(connected l7 l4)
	(= (travel-time l7 l4) 80)
	(connected l7 l6)
	(= (travel-time l7 l6) 60)
	(connected l7 l8)
	(= (travel-time l7 l8) 60)
	(connected l8 l0)
	(= (travel-time l8 l0) 40)
	(connected l8 l1)
	(= (travel-time l8 l1) 80)
	(connected l8 l4)
	(= (travel-time l8 l4) 20)
	(connected l8 l5)
	(= (travel-time l8 l5) 40)
	(connected l8 l6)
	(= (travel-time l8 l6) 30)
	(connected l8 l7)
	(= (travel-time l8 l7) 60)
	(connected l9 l5)
	(= (travel-time l9 l5) 80)
)
(:goal (and
	(delivered m0 l0)
)))
