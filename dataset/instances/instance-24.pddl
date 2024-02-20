(define (problem instance-24)
(:domain drone-delivery)
(:objects
 d0 d1 d2 - drone
 l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 - location
 m0 - medicine
 )
(:init

	;; depots
	(is-depot l0)
	(is-depot l9)

	;; drones
	(located-at d0 l9)
	(noloading d0)
	(nocharging d0)
	(= (load-capacity d0) 20)
	(= (battery-capacity d0) 100)
	(= (battery-level d0) 100)
	(= (battery-rate d0) 1)
	(= (recharge-rate d0) 5)
	(located-at d1 l9)
	(noloading d1)
	(nocharging d1)
	(= (load-capacity d1) 20)
	(= (battery-capacity d1) 100)
	(= (battery-level d1) 100)
	(= (battery-rate d1) 1)
	(= (recharge-rate d1) 5)
	(located-at d2 l9)
	(noloading d2)
	(nocharging d2)
	(= (load-capacity d2) 20)
	(= (battery-capacity d2) 100)
	(= (battery-level d2) 100)
	(= (battery-rate d2) 1)
	(= (recharge-rate d2) 5)

	;; medicines
	(located-at m0 l1)
	(noexpired m0)
	(at 200(not (noexpired m0)))
	(= (weight m0) 2)

	;; locations
	(connected l0 l1)
	(= (travel-time l0 l1) 30)
	(connected l0 l2)
	(= (travel-time l0 l2) 30)
	(connected l0 l6)
	(= (travel-time l0 l6) 60)
	(connected l0 l7)
	(= (travel-time l0 l7) 40)
	(connected l1 l0)
	(= (travel-time l1 l0) 30)
	(connected l1 l2)
	(= (travel-time l1 l2) 20)
	(connected l1 l3)
	(= (travel-time l1 l3) 30)
	(connected l1 l4)
	(= (travel-time l1 l4) 90)
	(connected l1 l7)
	(= (travel-time l1 l7) 30)
	(connected l2 l0)
	(= (travel-time l2 l0) 30)
	(connected l2 l1)
	(= (travel-time l2 l1) 20)
	(connected l2 l5)
	(= (travel-time l2 l5) 30)
	(connected l2 l6)
	(= (travel-time l2 l6) 70)
	(connected l2 l7)
	(= (travel-time l2 l7) 40)
	(connected l2 l8)
	(= (travel-time l2 l8) 40)
	(connected l3 l1)
	(= (travel-time l3 l1) 30)
	(connected l3 l5)
	(= (travel-time l3 l5) 30)
	(connected l3 l6)
	(= (travel-time l3 l6) 90)
	(connected l3 l8)
	(= (travel-time l3 l8) 100)
	(connected l4 l1)
	(= (travel-time l4 l1) 90)
	(connected l4 l6)
	(= (travel-time l4 l6) 20)
	(connected l4 l7)
	(= (travel-time l4 l7) 70)
	(connected l4 l8)
	(= (travel-time l4 l8) 90)
	(connected l4 l9)
	(= (travel-time l4 l9) 30)
	(connected l5 l2)
	(= (travel-time l5 l2) 30)
	(connected l5 l3)
	(= (travel-time l5 l3) 30)
	(connected l5 l6)
	(= (travel-time l5 l6) 60)
	(connected l5 l7)
	(= (travel-time l5 l7) 90)
	(connected l5 l9)
	(= (travel-time l5 l9) 40)
	(connected l6 l0)
	(= (travel-time l6 l0) 60)
	(connected l6 l2)
	(= (travel-time l6 l2) 70)
	(connected l6 l3)
	(= (travel-time l6 l3) 90)
	(connected l6 l4)
	(= (travel-time l6 l4) 20)
	(connected l6 l5)
	(= (travel-time l6 l5) 60)
	(connected l6 l7)
	(= (travel-time l6 l7) 40)
	(connected l6 l9)
	(= (travel-time l6 l9) 20)
	(connected l7 l0)
	(= (travel-time l7 l0) 40)
	(connected l7 l1)
	(= (travel-time l7 l1) 30)
	(connected l7 l2)
	(= (travel-time l7 l2) 40)
	(connected l7 l4)
	(= (travel-time l7 l4) 70)
	(connected l7 l5)
	(= (travel-time l7 l5) 90)
	(connected l7 l6)
	(= (travel-time l7 l6) 40)
	(connected l7 l8)
	(= (travel-time l7 l8) 20)
	(connected l7 l9)
	(= (travel-time l7 l9) 20)
	(connected l8 l2)
	(= (travel-time l8 l2) 40)
	(connected l8 l3)
	(= (travel-time l8 l3) 100)
	(connected l8 l4)
	(= (travel-time l8 l4) 90)
	(connected l8 l7)
	(= (travel-time l8 l7) 20)
	(connected l9 l4)
	(= (travel-time l9 l4) 30)
	(connected l9 l5)
	(= (travel-time l9 l5) 40)
	(connected l9 l6)
	(= (travel-time l9 l6) 20)
	(connected l9 l7)
	(= (travel-time l9 l7) 20)
)
(:goal (and
	(delivered m0 l3)
)))