(define (problem instance-103)
(:domain drone-delivery)
(:objects
 d0 d1 d2 - drone
 l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 - location
 m0 m1 m2 m3 - medicine
 )
(:init

	;; depots
	(is-depot l5)
	(is-depot l0)

	;; drones
	(located-at d0 l0)
	(noloading d0)
	(nocharging d0)
	(= (load-capacity d0) 10)
	(= (battery-capacity d0) 50)
	(= (battery-level d0) 50)
	(= (battery-rate d0) 1)
	(= (recharge-rate d0) 10)
	(located-at d1 l0)
	(noloading d1)
	(nocharging d1)
	(= (load-capacity d1) 10)
	(= (battery-capacity d1) 50)
	(= (battery-level d1) 50)
	(= (battery-rate d1) 1)
	(= (recharge-rate d1) 10)
	(located-at d2 l0)
	(noloading d2)
	(nocharging d2)
	(= (load-capacity d2) 50)
	(= (battery-capacity d2) 150)
	(= (battery-level d2) 150)
	(= (battery-rate d2) 1)
	(= (recharge-rate d2) 4)

	;; medicines
	(located-at m0 l7)
	(noexpired m0)
	(at 400(not (noexpired m0)))
	(= (weight m0) 2)
	(located-at m1 l6)
	(noexpired m1)
	(at 100(not (noexpired m1)))
	(= (weight m1) 20)
	(located-at m2 l2)
	(noexpired m2)
	(at 300(not (noexpired m2)))
	(= (weight m2) 3)
	(located-at m3 l2)
	(noexpired m3)
	(at 180(not (noexpired m3)))
	(= (weight m3) 1)

	;; locations
	(connected l0 l1)
	(= (travel-time l0 l1) 50)
	(connected l0 l3)
	(= (travel-time l0 l3) 80)
	(connected l0 l4)
	(= (travel-time l0 l4) 100)
	(connected l0 l5)
	(= (travel-time l0 l5) 20)
	(connected l0 l8)
	(= (travel-time l0 l8) 50)
	(connected l0 l9)
	(= (travel-time l0 l9) 30)
	(connected l1 l0)
	(= (travel-time l1 l0) 50)
	(connected l1 l2)
	(= (travel-time l1 l2) 20)
	(connected l1 l3)
	(= (travel-time l1 l3) 100)
	(connected l1 l5)
	(= (travel-time l1 l5) 80)
	(connected l1 l7)
	(= (travel-time l1 l7) 60)
	(connected l2 l1)
	(= (travel-time l2 l1) 20)
	(connected l2 l5)
	(= (travel-time l2 l5) 80)
	(connected l2 l6)
	(= (travel-time l2 l6) 40)
	(connected l2 l8)
	(= (travel-time l2 l8) 50)
	(connected l3 l0)
	(= (travel-time l3 l0) 80)
	(connected l3 l1)
	(= (travel-time l3 l1) 100)
	(connected l3 l5)
	(= (travel-time l3 l5) 60)
	(connected l3 l8)
	(= (travel-time l3 l8) 100)
	(connected l4 l0)
	(= (travel-time l4 l0) 100)
	(connected l4 l7)
	(= (travel-time l4 l7) 30)
	(connected l5 l0)
	(= (travel-time l5 l0) 20)
	(connected l5 l1)
	(= (travel-time l5 l1) 80)
	(connected l5 l2)
	(= (travel-time l5 l2) 80)
	(connected l5 l3)
	(= (travel-time l5 l3) 60)
	(connected l5 l8)
	(= (travel-time l5 l8) 70)
	(connected l5 l9)
	(= (travel-time l5 l9) 80)
	(connected l6 l2)
	(= (travel-time l6 l2) 40)
	(connected l6 l7)
	(= (travel-time l6 l7) 30)
	(connected l6 l8)
	(= (travel-time l6 l8) 100)
	(connected l7 l1)
	(= (travel-time l7 l1) 60)
	(connected l7 l4)
	(= (travel-time l7 l4) 30)
	(connected l7 l6)
	(= (travel-time l7 l6) 30)
	(connected l7 l8)
	(= (travel-time l7 l8) 80)
	(connected l8 l0)
	(= (travel-time l8 l0) 50)
	(connected l8 l2)
	(= (travel-time l8 l2) 50)
	(connected l8 l3)
	(= (travel-time l8 l3) 100)
	(connected l8 l5)
	(= (travel-time l8 l5) 70)
	(connected l8 l6)
	(= (travel-time l8 l6) 100)
	(connected l8 l7)
	(= (travel-time l8 l7) 80)
	(connected l8 l9)
	(= (travel-time l8 l9) 60)
	(connected l9 l0)
	(= (travel-time l9 l0) 30)
	(connected l9 l5)
	(= (travel-time l9 l5) 80)
	(connected l9 l8)
	(= (travel-time l9 l8) 60)
)
(:goal (and
	(delivered m0 l6)
	(delivered m1 l2)
	(delivered m2 l3)
	(delivered m3 l4)
)))
