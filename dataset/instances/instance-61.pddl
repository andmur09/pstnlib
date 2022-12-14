(define (problem instance-61)
(:domain drone-delivery)
(:objects
 d0 d1 d2 - drone
 l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 - location
 m0 m1 - medicine
 )
(:init

	;; depots
	(is-depot l2)
	(is-depot l9)

	;; drones
	(located-at d0 l9)
	(noloading d0)
	(nocharging d0)
	(= (load-capacity d0) 50)
	(= (battery-capacity d0) 150)
	(= (battery-level d0) 150)
	(= (battery-rate d0) 1)
	(= (recharge-rate d0) 4)
	(located-at d1 l9)
	(noloading d1)
	(nocharging d1)
	(= (load-capacity d1) 50)
	(= (battery-capacity d1) 150)
	(= (battery-level d1) 150)
	(= (battery-rate d1) 1)
	(= (recharge-rate d1) 4)
	(located-at d2 l9)
	(noloading d2)
	(nocharging d2)
	(= (load-capacity d2) 50)
	(= (battery-capacity d2) 150)
	(= (battery-level d2) 150)
	(= (battery-rate d2) 1)
	(= (recharge-rate d2) 4)

	;; medicines
	(located-at m0 l5)
	(noexpired m0)
	(at 400(not (noexpired m0)))
	(= (weight m0) 2)
	(located-at m1 l8)
	(noexpired m1)
	(at 500(not (noexpired m1)))
	(= (weight m1) 5)

	;; locations
	(connected l0 l2)
	(= (travel-time l0 l2) 50)
	(connected l0 l5)
	(= (travel-time l0 l5) 80)
	(connected l0 l7)
	(= (travel-time l0 l7) 30)
	(connected l0 l9)
	(= (travel-time l0 l9) 20)
	(connected l1 l3)
	(= (travel-time l1 l3) 90)
	(connected l1 l4)
	(= (travel-time l1 l4) 30)
	(connected l1 l5)
	(= (travel-time l1 l5) 40)
	(connected l1 l6)
	(= (travel-time l1 l6) 40)
	(connected l1 l7)
	(= (travel-time l1 l7) 70)
	(connected l2 l0)
	(= (travel-time l2 l0) 50)
	(connected l2 l3)
	(= (travel-time l2 l3) 30)
	(connected l2 l4)
	(= (travel-time l2 l4) 60)
	(connected l2 l8)
	(= (travel-time l2 l8) 40)
	(connected l3 l1)
	(= (travel-time l3 l1) 90)
	(connected l3 l2)
	(= (travel-time l3 l2) 30)
	(connected l3 l4)
	(= (travel-time l3 l4) 90)
	(connected l3 l6)
	(= (travel-time l3 l6) 100)
	(connected l3 l8)
	(= (travel-time l3 l8) 80)
	(connected l4 l1)
	(= (travel-time l4 l1) 30)
	(connected l4 l2)
	(= (travel-time l4 l2) 60)
	(connected l4 l3)
	(= (travel-time l4 l3) 90)
	(connected l4 l5)
	(= (travel-time l4 l5) 90)
	(connected l4 l8)
	(= (travel-time l4 l8) 10)
	(connected l4 l9)
	(= (travel-time l4 l9) 90)
	(connected l5 l0)
	(= (travel-time l5 l0) 80)
	(connected l5 l1)
	(= (travel-time l5 l1) 40)
	(connected l5 l4)
	(= (travel-time l5 l4) 90)
	(connected l5 l6)
	(= (travel-time l5 l6) 20)
	(connected l5 l8)
	(= (travel-time l5 l8) 20)
	(connected l6 l1)
	(= (travel-time l6 l1) 40)
	(connected l6 l3)
	(= (travel-time l6 l3) 100)
	(connected l6 l5)
	(= (travel-time l6 l5) 20)
	(connected l6 l7)
	(= (travel-time l6 l7) 20)
	(connected l6 l9)
	(= (travel-time l6 l9) 20)
	(connected l7 l0)
	(= (travel-time l7 l0) 30)
	(connected l7 l1)
	(= (travel-time l7 l1) 70)
	(connected l7 l6)
	(= (travel-time l7 l6) 20)
	(connected l7 l8)
	(= (travel-time l7 l8) 60)
	(connected l7 l9)
	(= (travel-time l7 l9) 80)
	(connected l8 l2)
	(= (travel-time l8 l2) 40)
	(connected l8 l3)
	(= (travel-time l8 l3) 80)
	(connected l8 l4)
	(= (travel-time l8 l4) 10)
	(connected l8 l5)
	(= (travel-time l8 l5) 20)
	(connected l8 l7)
	(= (travel-time l8 l7) 60)
	(connected l9 l0)
	(= (travel-time l9 l0) 20)
	(connected l9 l4)
	(= (travel-time l9 l4) 90)
	(connected l9 l6)
	(= (travel-time l9 l6) 20)
	(connected l9 l7)
	(= (travel-time l9 l7) 80)
)
(:goal (and
	(delivered m0 l3)
	(delivered m1 l0)
)))
